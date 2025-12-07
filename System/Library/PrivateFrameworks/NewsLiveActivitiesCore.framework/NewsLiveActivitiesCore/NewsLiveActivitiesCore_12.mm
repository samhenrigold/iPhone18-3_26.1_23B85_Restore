unint64_t sub_21A04872C()
{
  result = qword_27CCDC230;
  if (!qword_27CCDC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC230);
  }

  return result;
}

unint64_t sub_21A0487B4()
{
  result = qword_27CCDC240;
  if (!qword_27CCDC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC240);
  }

  return result;
}

uint64_t sub_21A048808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21A048864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21A0488F0()
{
  result = qword_27CCDC248;
  if (!qword_27CCDC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC248);
  }

  return result;
}

unint64_t sub_21A048948()
{
  result = qword_27CCDC250;
  if (!qword_27CCDC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC250);
  }

  return result;
}

unint64_t sub_21A0489A0()
{
  result = qword_27CCDC258[0];
  if (!qword_27CCDC258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CCDC258);
  }

  return result;
}

uint64_t sub_21A0489F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A048A74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21A048BF8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_21A048EA4(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC2E0, &qword_21A0FB440);
  swift_getTupleTypeMetadata2();
  sub_21A0E5E6C();
  swift_getWitnessTable();
  v4 = sub_21A0E5DDC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16[-v11];
  v13 = *(a1 + 24);
  v17 = v3;
  v18 = v13;
  v19 = v1;
  sub_21A0E5E3C();
  sub_21A0E5DCC();
  swift_getWitnessTable();
  sub_21A099F68();
  v14 = *(v5 + 8);
  v14(v9, v4);
  sub_21A099F68();
  return (v14)(v12, v4);
}

uint64_t sub_21A04909C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v8 = type metadata accessor for InternalMessagePlaceholderView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v28[-v12];
  v14 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v11, v15);
  v32 = &v28[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v28[-v19];
  v34 = a3;
  sub_21A099F68();
  sub_21A0E4E0C();
  if (sub_21A0E4DFC())
  {
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_21A0E686C();

    *&v47 = 0xD000000000000010;
    *(&v47 + 1) = 0x800000021A10A9F0;
    MEMORY[0x21CED1980](*a1, a1[1]);
    v30 = *(&v47 + 1);
    v31 = v47;
    v29 = sub_21A0E577C();
    LOBYTE(v47) = 0;
    LOBYTE(v46[0]) = 1;
    (*(v9 + 16))(v13, a1, v8);
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = swift_allocObject();
    v23 = v34;
    *(v22 + 16) = a2;
    *(v22 + 24) = v23;
    (*(v9 + 32))(v22 + v21, v13, v8);
    *&v47 = v31;
    *(&v47 + 1) = v30;
    LOBYTE(v48) = 0;
    *(&v48 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v49) = v29;
    *(&v49 + 1) = 0;
    *&v50 = 0;
    BYTE8(v51) = 1;
    v24 = sub_21A0498F8;
  }

  else
  {
    v24 = 0;
    v22 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    *(&v51 + 1) = 0;
    *&v50 = 0;
  }

  *(&v50 + 1) = 0;
  *&v51 = 0;
  *&v52 = v24;
  *(&v52 + 1) = v22;
  v53 = 0uLL;
  v25 = v32;
  (*(v14 + 16))(v32, v20, a2);
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v45[0] = v25;
  v45[1] = &v38;
  sub_21A04968C(&v47, v46);
  v37[0] = a2;
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC2E0, &qword_21A0FB440);
  v35 = v34;
  v36 = sub_21A0496FC();
  sub_21A095C18(v45, 2uLL, v37);
  sub_21A049890(&v47);
  v26 = *(v14 + 8);
  v26(v20, a2);
  v46[4] = v42;
  v46[5] = v43;
  v46[6] = v44;
  v46[0] = v38;
  v46[1] = v39;
  v46[2] = v40;
  v46[3] = v41;
  sub_21A049890(v46);
  return v26(v25, a2);
}

void sub_21A049450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for InternalMessagePlaceholderView(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v19 - v8);
  if (qword_27CCD90D0 != -1)
  {
    swift_once();
  }

  v10 = sub_21A0E516C();
  __swift_project_value_buffer(v10, qword_27CCD97D8);
  (*(v6 + 16))(v9, a1, v5);
  v11 = sub_21A0E514C();
  v12 = sub_21A0E669C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = *v9;
    v16 = v9[1];
    v17 = *(v6 + 8);

    v17(v9, v5);
    v18 = sub_219F50144(v15, v16, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_219F39000, v11, v12, "InternalMessagePlaceholderView: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CED2D30](v14, -1, -1);
    MEMORY[0x21CED2D30](v13, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_21A04968C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC2E0, &qword_21A0FB440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0496FC()
{
  result = qword_27CCDC2E8;
  if (!qword_27CCDC2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC2E0, &qword_21A0FB440);
    sub_21A049780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC2E8);
  }

  return result;
}

unint64_t sub_21A049780()
{
  result = qword_27CCDC2F0;
  if (!qword_27CCDC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC2F8, &qword_21A0FB448);
    sub_21A04980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC2F0);
  }

  return result;
}

unint64_t sub_21A04980C()
{
  result = qword_27CCDC300;
  if (!qword_27CCDC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC308, &unk_21A0FB450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC300);
  }

  return result;
}

uint64_t sub_21A049890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC2E0, &qword_21A0FB440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A0498F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for InternalMessagePlaceholderView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_21A049450(v9, v5, v6, v7);
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityFooterThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 184);
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

uint64_t sub_21A0499A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A0499F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A049AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v132, (a1 + 112), sizeof(v132));
  memcpy(v134, (a1 + 112), sizeof(v134));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v134) == 1)
  {
    sub_219F639B0(&v135);
  }

  else
  {
    v133[10] = v134[10];
    v133[11] = v134[11];
    *&v133[12] = *&v134[12];
    v133[6] = v134[6];
    v133[7] = v134[7];
    v133[8] = v134[8];
    v133[9] = v134[9];
    v133[2] = v134[2];
    v133[3] = v134[3];
    v133[4] = v134[4];
    v133[5] = v134[5];
    v133[0] = v134[0];
    v133[1] = v134[1];
    sub_219F45500(v133, &v135, &qword_27CCD95B8, &unk_21A0EB450);
    v145 = v133[10];
    v146 = v133[11];
    v147 = *&v133[12];
    v141 = v133[6];
    v142 = v133[7];
    v143 = v133[8];
    v144 = v133[9];
    v137 = v133[2];
    v138 = v133[3];
    v139 = v133[4];
    v140 = v133[5];
    v135 = v133[0];
    v136 = v133[1];
  }

  v124 = v144;
  v125 = v145;
  v126 = v146;
  v120 = v140;
  v121 = v141;
  v122 = v142;
  v123 = v143;
  v116 = v136;
  v117 = v137;
  v118 = v138;
  v119 = v139;
  v127 = v147;
  v115 = v135;
  if (qword_27CCD91C0 != -1)
  {
    swift_once();
  }

  v128[2] = xmmword_27CCDC330;
  v128[3] = unk_27CCDC340;
  v128[4] = xmmword_27CCDC350;
  v129 = dword_27CCDC360;
  v128[0] = xmmword_27CCDC310;
  v128[1] = unk_27CCDC320;
  v111 = xmmword_27CCDC330;
  v112 = unk_27CCDC340;
  v113 = xmmword_27CCDC350;
  v114 = dword_27CCDC360;
  v109 = xmmword_27CCDC310;
  v110 = unk_27CCDC320;
  v108 = 9;
  v8 = *a1;
  v9 = *(a1 + 16);
  *(v131 + 9) = *(a1 + 25);
  v130 = v8;
  v131[0] = v9;
  v46 = BYTE8(v131[1]);
  v44 = *(&v8 + 1);
  v45 = v3;
  v51 = v8;
  v42 = *(&v9 + 1);
  v43 = v9;
  v41 = *&v131[1];
  if (BYTE8(v131[1]) == 1)
  {
    v105 = v8;
    v106 = v9;
    v107 = *&v131[1];
    sub_219F639D4(v128, v133);
    sub_219F45500(&v130, v133, &qword_27CCD9580, &qword_21A0E8988);
  }

  else
  {
    sub_219F639D4(v128, v133);
    sub_219F45500(&v130, v133, &qword_27CCD9580, &qword_21A0E8988);
    sub_21A0E66AC();
    v10 = v7;
    v11 = sub_21A0E575C();
    sub_21A0E512C();

    v7 = v10;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(&v130, &qword_27CCD9580, &qword_21A0E8988);
    (*(v4 + 8))(v10, v3);
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v133[0] = v105;
  v133[1] = v106;
  *&v133[2] = v107;
  v16 = Text.activityTextModifier(_:fallback:font:environment:)(&v115, &v109, &v108, v133, v12, v13, v14, v15);
  v47 = v17;
  v48 = v16;
  LODWORD(v19) = v18;
  v49 = v20;
  v99[0] = v133[0];
  v99[1] = v133[1];
  v100 = *&v133[2];
  sub_219F5ED9C(v99);
  v101[2] = v111;
  v101[3] = v112;
  v101[4] = v113;
  v102 = v114;
  v101[0] = v109;
  v101[1] = v110;
  sub_219F6409C(v101, &qword_27CCD95B0, &unk_21A0E89E0);
  v103[9] = v124;
  v103[10] = v125;
  v103[11] = v126;
  v104 = v127;
  v103[5] = v120;
  v103[6] = v121;
  v103[7] = v122;
  v103[8] = v123;
  v103[1] = v116;
  v103[2] = v117;
  v103[3] = v118;
  v103[4] = v119;
  v103[0] = v115;
  sub_219F6409C(v103, &qword_27CCD95B8, &unk_21A0EB450);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = *(a1 + 96);
  v24 = *(a1 + 104);
  if (v24)
  {
    v40 = v19;
    memcpy(v133, v132, sizeof(v133));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v133) == 1)
    {
      sub_219F639B0(&v86);
    }

    else
    {
      v83 = *(&v133[24] + 1);
      v73 = *(&v133[14] + 8);
      v74 = *(&v133[15] + 8);
      v71 = *(&v133[12] + 8);
      v72 = *(&v133[13] + 8);
      v81 = *(&v133[22] + 8);
      v82 = *(&v133[23] + 8);
      v77 = *(&v133[18] + 8);
      v78 = *(&v133[19] + 8);
      v79 = *(&v133[20] + 8);
      v80 = *(&v133[21] + 8);
      v75 = *(&v133[16] + 8);
      v76 = *(&v133[17] + 8);
      sub_219F45500(&v71, &v86, &qword_27CCD95B8, &unk_21A0EB450);
      v96 = v81;
      v97 = v82;
      v98 = v83;
      v92 = v77;
      v93 = v78;
      v94 = v79;
      v95 = v80;
      v88 = v73;
      v89 = v74;
      v90 = v75;
      v91 = v76;
      v86 = v71;
      v87 = v72;
    }

    v81 = v96;
    v82 = v97;
    v83 = v98;
    v77 = v92;
    v78 = v93;
    v79 = v94;
    v80 = v95;
    v73 = v88;
    v74 = v89;
    v75 = v90;
    v76 = v91;
    v71 = v86;
    v72 = v87;
    sub_219F63A40(v21, v22, v23 & 1);
    v26 = qword_27CCD91C8;

    if (v26 != -1)
    {
      swift_once();
    }

    v84[2] = xmmword_27CCDC388;
    v84[3] = unk_27CCDC398;
    v84[4] = xmmword_27CCDC3A8;
    v85 = dword_27CCDC3B8;
    v84[0] = xmmword_27CCDC368;
    v84[1] = unk_27CCDC378;
    v67 = xmmword_27CCDC388;
    v68 = unk_27CCDC398;
    v69 = xmmword_27CCDC3A8;
    v70 = dword_27CCDC3B8;
    v65 = xmmword_27CCDC368;
    v66 = unk_27CCDC378;
    v64 = 9;
    if (v46)
    {
      *&v61 = v51;
      *(&v61 + 1) = v44;
      *&v62 = v43;
      *(&v62 + 1) = v42;
      v63 = v41;
      sub_219F45500(&v130, v59, &qword_27CCD9580, &qword_21A0E8988);
      sub_219F639D4(v84, v59);
    }

    else
    {
      sub_219F45500(&v130, v59, &qword_27CCD9580, &qword_21A0E8988);
      sub_219F639D4(v84, v59);
      sub_21A0E66AC();
      v27 = sub_21A0E575C();
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(&v130, &qword_27CCD9580, &qword_21A0E8988);
      (*(v4 + 8))(v7, v45);
    }

    v52 = v61;
    v53 = v62;
    v54 = v63;
    v19 = Text.activityTextModifier(_:fallback:font:environment:)(&v71, &v65, &v64, &v52, v21, v22, v23 & 1, v24);
    v29 = v28;
    v31 = v30;
    v25 = v32;
    sub_219F63A30(v21, v22, v23 & 1);

    v55[0] = v52;
    v55[1] = v53;
    v56 = v54;
    sub_219F5ED9C(v55);
    v57[2] = v67;
    v57[3] = v68;
    v57[4] = v69;
    v58 = v70;
    v57[0] = v65;
    v57[1] = v66;
    sub_219F6409C(v57, &qword_27CCD95B0, &unk_21A0E89E0);
    v59[10] = v81;
    v59[11] = v82;
    v60 = v83;
    v59[6] = v77;
    v59[7] = v78;
    v59[8] = v79;
    v59[9] = v80;
    v59[2] = v73;
    v59[3] = v74;
    v59[4] = v75;
    v59[5] = v76;
    v59[0] = v71;
    v59[1] = v72;
    sub_219F6409C(v59, &qword_27CCD95B8, &unk_21A0EB450);
    v23 = v31 & 1;
    sub_219F63A40(v19, v29, v31 & 1);

    v21 = v19;
    v22 = v29;
    LOBYTE(v19) = v40;
  }

  else
  {
    v25 = 0;
  }

  v33 = v19 & 1;
  v35 = v47;
  v34 = v48;
  sub_219F63A40(v48, v47, v33);
  v36 = v49;

  sub_21A006EE4(v21, v22, v23, v25);
  sub_21A006F28(v21, v22, v23, v25);
  LOBYTE(v86) = v33;
  v37 = v50;
  *v50 = v34;
  v37[1] = v35;
  *(v37 + 16) = v33;
  v37[3] = v36;
  v37[4] = v21;
  v37[5] = v22;
  v37[6] = v23;
  v37[7] = v25;
  sub_21A006F28(v21, v22, v23, v25);
  sub_219F63A30(v34, v35, v33);
}

__n128 sub_21A04A414@<Q0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_21A0E55BC();
  sub_21A049AE0(__dst, v7);
  *&v5[55] = v7[3];
  *&v5[39] = v7[2];
  *&v5[23] = v7[1];
  *&v5[7] = v7[0];
  *(a1 + 33) = *&v5[16];
  result = *&v5[32];
  *(a1 + 49) = *&v5[32];
  *(a1 + 65) = *&v5[48];
  *a1 = v3;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v5[63];
  *(a1 + 17) = *v5;
  return result;
}

double sub_21A04A4B4()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC310 = v0;
  BYTE4(xmmword_27CCDC350) = 32;
  LODWORD(xmmword_27CCDC350) = 0;
  *(&xmmword_27CCDC350 + 1) = 0;
  dword_27CCDC360 = 50464513;
  return result;
}

double sub_21A04A534()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC368 = v0;
  BYTE4(xmmword_27CCDC3A8) = 32;
  LODWORD(xmmword_27CCDC3A8) = 0;
  *(&xmmword_27CCDC3A8 + 1) = 0;
  dword_27CCDC3B8 = 50726657;
  return result;
}

unint64_t sub_21A04A5B4()
{
  result = qword_27CCDC3C0;
  if (!qword_27CCDC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC3C8, &unk_21A0FB9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3C0);
  }

  return result;
}

uint64_t ElectionEntityBadge.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ElectionEntityBadge.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ElectionEntityBadge.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  return sub_219F79C1C(v2, v3);
}

uint64_t ElectionEntityBadge.symbol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  result = sub_219F79CD8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  return result;
}

uint64_t sub_21A04A730()
{
  if (*v0)
  {
    return 0x6C6F626D7973;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_21A04A764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A04A838(uint64_t a1)
{
  v2 = sub_21A04B0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A04A874(uint64_t a1)
{
  v2 = sub_21A04B0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectionEntityBadge.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC3D0, &qword_21A0FBA00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v8;
  v22 = *(v1 + 32);
  LODWORD(v8) = *(v1 + 33);
  v12 = *(v1 + 34);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04B0A4();
  sub_21A0E6EAC();
  LOBYTE(v17) = 0;
  v9 = v16;
  sub_21A0E6B7C();
  if (!v9)
  {
    v17 = v15;
    v18 = v14;
    v19 = v22;
    v20 = v13;
    v21 = v12;
    v23 = 1;
    sub_219F79C1C(v15, v14);
    sub_219F913D8();
    sub_21A0E6BBC();
    sub_219F79CD8(v17, v18);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ElectionEntityBadge.hash(into:)(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[33];
  v4 = v1[34];
  sub_21A0E626C();
  MEMORY[0x21CED2490](v2);
  sub_21A0E626C();
  if (v3 != 9)
  {
    sub_21A0E6DCC();
    sub_219F7A96C();
    if (v4 != 3)
    {
      goto LABEL_3;
    }

    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  if (v4 == 3)
  {
    return sub_21A0E6DCC();
  }

LABEL_3:
  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t ElectionEntityBadge.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v5[9] = *v0;
  v5[10] = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  v8 = v3;
  sub_21A0E6DAC();
  ElectionEntityBadge.hash(into:)(v5);
  return sub_21A0E6DFC();
}

uint64_t ElectionEntityBadge.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC3E0, &qword_21A0FBA08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04B0A4();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v13 = v10;
  v24 = 1;
  sub_219F90414();
  sub_21A0E6ADC();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 33) = v17;

  sub_219F79C1C(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_219F79CD8(v14, v15);
}

uint64_t sub_21A04AE54()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v5[9] = *v0;
  v5[10] = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  v8 = v3;
  sub_21A0E6DAC();
  ElectionEntityBadge.hash(into:)(v5);
  return sub_21A0E6DFC();
}

uint64_t sub_21A04AEBC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v6[9] = *v1;
  v6[10] = v2;
  v7 = *(v1 + 16);
  v8 = v3;
  v9 = v4;
  sub_21A0E6DAC();
  ElectionEntityBadge.hash(into:)(v6);
  return sub_21A0E6DFC();
}

void sub_21A04AF50()
{
  qword_27CCFE700 = 0x72656E6E6957;
  *algn_27CCFE708 = 0xE600000000000000;
  qword_27CCFE710 = 0xD000000000000015;
  unk_27CCFE718 = 0x800000021A10AA10;
  byte_27CCFE720 = 0;
  *&byte_27CCFE721 = 777;
}

BOOL _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v12 = *(a1 + 33), v13 = sub_21A0E6C5C(), v5 = v12, v14 = 0, (v13 & 1) != 0))
  {
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    sub_219F79C1C(v2, v3);
    sub_219F79C1C(v7, v8);
    v14 = _s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(&v21, &v16);
    sub_219F79CD8(v16, v17);
    sub_219F79CD8(v21, v22);
  }

  return v14;
}

unint64_t sub_21A04B0A4()
{
  result = qword_27CCDC3D8;
  if (!qword_27CCDC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3D8);
  }

  return result;
}

unint64_t sub_21A04B0FC()
{
  result = qword_27CCDC3E8;
  if (!qword_27CCDC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3E8);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21A04B164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_21A04B1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A04B218()
{
  result = qword_27CCDC3F0;
  if (!qword_27CCDC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3F0);
  }

  return result;
}

unint64_t sub_21A04B270()
{
  result = qword_27CCDC3F8;
  if (!qword_27CCDC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3F8);
  }

  return result;
}

unint64_t sub_21A04B2C8()
{
  result = qword_27CCDC400;
  if (!qword_27CCDC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC400);
  }

  return result;
}

uint64_t static NationalElectionStaticAttributes.bidenVSTrump.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158, &unk_21A0F1000);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v128 = &v118 - v3;
  v4 = type metadata accessor for ActivityAsset(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v118 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v118 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v118 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v119 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v136 = &v118 - v20;
  v121 = type metadata accessor for NationalElectionTheme(0);
  MEMORY[0x28223BE20](v121, v21);
  v122 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC408, &qword_21A0FBD00);
  v135 = type metadata accessor for ElectionEntityTheme(0);
  v24 = *(*(v135 - 8) + 72);
  v25 = *(*(v135 - 8) + 80);
  v26 = (v25 + 32) & ~v25;
  v133 = v23;
  v134 = v24;
  v130 = v26 + 2 * v24;
  v131 = v25;
  v27 = swift_allocObject();
  v129 = xmmword_21A0FBC80;
  *(v27 + 16) = xmmword_21A0FBC80;
  v120 = v27;
  v132 = v26;
  *&v127 = v27 + v26;
  v125 = v14;
  *v14 = xmmword_21A0FBC90;
  v14[16] = 0;
  *(v14 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC410, &qword_21A0FBD08);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440);
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  *&v124 = 4 * v29;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21A0FBCA0;
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x800000021A10AA30;
  v126 = v31;
  v32 = v31 + v30;
  v11[16] = 0;
  *(v11 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  v33 = sub_219FE95B4(&unk_282B1C7D0);
  sub_21A04D070(v11, v32, type metadata accessor for ActivityAsset);
  *(v32 + *(v28 + 28)) = v33;
  v34 = MEMORY[0x277D84F90];
  *(v32 + *(v28 + 32)) = MEMORY[0x277D84F90];
  v35 = v34;
  v36 = v32 + v29;
  *v11 = xmmword_21A0FBCB0;
  v11[16] = 0;
  *(v11 + 17) = 770;
  swift_storeEnumTagMultiPayload();
  v37 = sub_219FE95B4(&unk_282B1C800);
  sub_21A04D070(v11, v32 + v29, type metadata accessor for ActivityAsset);
  *(v36 + *(v28 + 28)) = v37;
  *(v36 + *(v28 + 32)) = v35;
  v38 = v32 + 2 * v29;
  *v11 = xmmword_21A0FBCC0;
  v11[16] = 0;
  *(v11 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  v39 = sub_219FE95B4(&unk_282B1C830);
  sub_21A04D070(v11, v38, type metadata accessor for ActivityAsset);
  *(v38 + *(v28 + 28)) = v39;
  *(v38 + *(v28 + 32)) = MEMORY[0x277D84F90];
  v40 = 3 * v29;
  v41 = v125;
  v42 = v32 + v40;
  *v11 = xmmword_21A0FBCD0;
  v11[16] = 0;
  *(v11 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  v43 = sub_219FE95B4(&unk_282B1C860);
  sub_21A04D070(v11, v42, type metadata accessor for ActivityAsset);
  *(v42 + *(v28 + 28)) = v43;
  v44 = MEMORY[0x277D84F90];
  *(v42 + *(v28 + 32)) = MEMORY[0x277D84F90];
  v45 = v32 + v124;
  *v11 = 0xD000000000000010;
  *(v11 + 1) = 0x800000021A10AA50;
  v11[16] = 0;
  *(v11 + 17) = 777;
  *&v124 = v4;
  swift_storeEnumTagMultiPayload();
  v46 = sub_219FE95B4(&unk_282B1C890);
  sub_21A04D070(v11, v45, type metadata accessor for ActivityAsset);
  *(v45 + *(v28 + 28)) = v46;
  *(v45 + *(v28 + 32)) = v44;
  sub_21A04D2A8(v41, v136, type metadata accessor for ActivityAsset);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v47 = qword_27CCDBDB0;

  sub_21A04D310(v41, type metadata accessor for ActivityAsset);
  v48 = v136;
  *&v136[*(v28 + 28)] = v47;
  *(v48 + *(v28 + 32)) = v126;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v50 = *(*(v49 - 8) + 56);
  v50(v48, 0, 1, v49);
  if (qword_27CCD9170 != -1)
  {
    swift_once();
  }

  v170 = xmmword_27CCFE6A0;
  v171 = unk_27CCFE6B0;
  v172 = xmmword_27CCFE6C0;
  v173 = qword_27CCFE6D0;
  v168 = xmmword_27CCFE680;
  v169 = *algn_27CCFE690;
  v51 = v135;
  v52 = *(v135 + 28);
  v53 = v127;
  v50((v127 + v52), 1, 1, v49);
  *v53 = 49;
  v53[1] = 0xE100000000000000;
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = 0x6E65646942;
  v53[5] = 0xE500000000000000;
  sub_219FB63A4(&v168, &v162);
  sub_219FC63EC(v136, v53 + v52);
  v54 = v53 + *(v51 + 32);
  v55 = v171;
  *(v54 + 2) = v170;
  *(v54 + 3) = v55;
  *(v54 + 4) = v172;
  *(v54 + 10) = v173;
  v56 = v169;
  *v54 = v168;
  *(v54 + 1) = v56;
  v57 = v128;
  sub_21A0E47CC();
  v58 = sub_21A0E481C();
  v59 = *(v58 - 8);
  result = (*(v59 + 48))(v57, 1, v58);
  v125 = v50;
  v126 = v49;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v61 = v53 + v134;
    v62 = v118;
    (*(v59 + 32))(v118, v57, v58);
    type metadata accessor for URLAssetConfiguration.Format(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v63 = v119;
    sub_21A04D2A8(v62, v119, type metadata accessor for ActivityAsset);
    v64 = qword_27CCDBDB0;

    sub_21A04D310(v62, type metadata accessor for ActivityAsset);
    *(v63 + *(v28 + 28)) = v64;
    *(v63 + *(v28 + 32)) = MEMORY[0x277D84F90];
    v65 = v125;
    v66 = v126;
    v125(v63, 0, 1, v126);
    v67 = v65;
    v68 = v66;
    if (qword_27CCD9168 != -1)
    {
      swift_once();
    }

    v141 = unk_27CCFE650;
    v142 = xmmword_27CCFE660;
    v143 = qword_27CCFE670;
    v139 = *algn_27CCFE630;
    v140 = xmmword_27CCFE640;
    v138 = xmmword_27CCFE620;
    v69 = *(v135 + 28);
    v70 = v135;
    v67(&v61[v69], 1, 1, v66);
    *v61 = 50;
    *(v61 + 1) = 0xE100000000000000;
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    *(v61 + 4) = 0x706D757254;
    *(v61 + 5) = 0xE500000000000000;
    sub_219FB63A4(&v138, &v162);
    sub_219FC63EC(v63, &v61[v69]);
    v71 = &v61[*(v70 + 32)];
    v72 = v141;
    v73 = v142;
    *(v71 + 2) = v140;
    *(v71 + 3) = v72;
    *(v71 + 4) = v73;
    *(v71 + 10) = v143;
    v74 = v139;
    *v71 = v138;
    *(v71 + 1) = v74;
    v75 = swift_allocObject();
    *(v75 + 16) = v129;
    v128 = v75;
    v76 = v75 + v132;
    v77 = v136;
    v67(v136, 1, 1, v66);
    v146 = xmmword_27CCFE6A0;
    v147 = unk_27CCFE6B0;
    v148 = xmmword_27CCFE6C0;
    v149 = qword_27CCFE6D0;
    v144 = xmmword_27CCFE680;
    v145 = *algn_27CCFE690;
    v78 = v135;
    v79 = *(v135 + 28);
    v67((v76 + v79), 1, 1, v68);
    *v76 = 0x642D6574616E6573;
    *(v76 + 8) = 0xEA00000000006D65;
    v127 = xmmword_21A0FBCE0;
    *(v76 + 16) = xmmword_21A0FBCE0;
    *(v76 + 32) = 0x746172636F6D6544;
    *(v76 + 40) = 0xE800000000000000;
    sub_219FB63A4(&v144, &v162);
    sub_219FC63EC(v77, v76 + v79);
    v80 = v78;
    v81 = v76 + *(v78 + 32);
    v82 = v147;
    *(v81 + 32) = v146;
    *(v81 + 48) = v82;
    *(v81 + 64) = v148;
    *(v81 + 80) = v149;
    v83 = v145;
    v84 = v76 + v134;
    *v81 = v144;
    *(v81 + 16) = v83;
    v85 = v77;
    v67(v77, 1, 1, v68);
    v152 = xmmword_27CCFE640;
    v153 = unk_27CCFE650;
    v154 = xmmword_27CCFE660;
    v155 = qword_27CCFE670;
    v150 = xmmword_27CCFE620;
    v151 = *algn_27CCFE630;
    v86 = v80;
    v87 = *(v80 + 28);
    v67((v84 + v87), 1, 1, v68);
    *v84 = 0x672D6574616E6573;
    *(v84 + 8) = 0xEA0000000000706FLL;
    v124 = xmmword_21A0FBCF0;
    *(v84 + 16) = xmmword_21A0FBCF0;
    *(v84 + 32) = 0x63696C6275706552;
    *(v84 + 40) = 0xEA00000000006E61;
    sub_219FB63A4(&v150, &v162);
    v88 = v84 + v87;
    v89 = v85;
    sub_219FC63EC(v85, v88);
    v90 = v84 + *(v86 + 32);
    v91 = v153;
    *(v90 + 32) = v152;
    *(v90 + 48) = v91;
    *(v90 + 64) = v154;
    *(v90 + 80) = v155;
    v92 = v151;
    *v90 = v150;
    *(v90 + 16) = v92;
    v93 = swift_allocObject();
    *(v93 + 16) = v129;
    v133 = v93;
    v94 = v93 + v132;
    v95 = v89;
    v67(v89, 1, 1, v68);
    v158 = xmmword_27CCFE6A0;
    v159 = unk_27CCFE6B0;
    v160 = xmmword_27CCFE6C0;
    v161 = qword_27CCFE6D0;
    v156 = xmmword_27CCFE680;
    v157 = *algn_27CCFE690;
    v96 = *(v86 + 28);
    v67((v94 + v96), 1, 1, v68);
    *v94 = 0x65642D6573756F68;
    *(v94 + 8) = 0xE90000000000006DLL;
    *(v94 + 16) = v127;
    *(v94 + 32) = 0x746172636F6D6544;
    *(v94 + 40) = 0xE800000000000000;
    sub_219FB63A4(&v156, &v162);
    sub_219FC63EC(v95, v94 + v96);
    v97 = v94 + *(v86 + 32);
    v98 = v159;
    *(v97 + 32) = v158;
    *(v97 + 48) = v98;
    *(v97 + 64) = v160;
    *(v97 + 80) = v161;
    v99 = v157;
    v100 = v94 + v134;
    *v97 = v156;
    *(v97 + 16) = v99;
    v67(v95, 1, 1, v68);
    v164 = xmmword_27CCFE640;
    v165 = unk_27CCFE650;
    v166 = xmmword_27CCFE660;
    v167 = qword_27CCFE670;
    v162 = xmmword_27CCFE620;
    v163 = *algn_27CCFE630;
    v101 = *(v86 + 28);
    v67((v100 + v101), 1, 1, v68);
    *v100 = 0x6F672D6573756F68;
    *(v100 + 8) = 0xE900000000000070;
    *(v100 + 16) = v124;
    *(v100 + 32) = 0x63696C6275706552;
    *(v100 + 40) = 0xEA00000000006E61;
    sub_219FB63A4(&v162, &v137);
    sub_219FC63EC(v95, v100 + v101);
    v102 = v100 + *(v86 + 32);
    v103 = v165;
    *(v102 + 32) = v164;
    *(v102 + 48) = v103;
    *(v102 + 64) = v166;
    *(v102 + 80) = v167;
    v104 = v163;
    *v102 = v162;
    *(v102 + 16) = v104;
    if (qword_27CCD91D0 != -1)
    {
      swift_once();
    }

    v105 = qword_27CCFE700;
    v106 = *algn_27CCFE708;
    v107 = qword_27CCFE710;
    v108 = unk_27CCFE718;
    v109 = byte_27CCFE720;
    v110 = *&byte_27CCFE721;
    v111 = v121;
    v112 = *(v121 + 32);
    v113 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
    v114 = v122;
    (*(*(v113 - 8) + 56))(&v122[v112], 1, 1, v113);
    *v114 = v120;
    *(v114 + 8) = 0x4E45444953455250;
    *(v114 + 16) = 0xE900000000000054;
    *(v114 + 24) = 538;
    *(v114 + 32) = v128;
    *(v114 + 40) = 0x4554414E4553;
    *(v114 + 48) = 0xE600000000000000;
    *(v114 + 56) = 100;
    *(v114 + 64) = v133;
    *(v114 + 72) = 0x4553554F48;
    *(v114 + 80) = 0xE500000000000000;
    *(v114 + 88) = 435;
    *(v114 + 96) = v105;
    *(v114 + 104) = v106;
    *(v114 + 112) = v107;
    *(v114 + 120) = v108;
    *(v114 + 128) = v109;
    *(v114 + 129) = v110;
    v115 = v114 + v111[9];
    *v115 = 0u;
    *(v115 + 16) = 0u;
    *(v115 + 32) = 0u;
    *(v115 + 48) = xmmword_21A0EB370;
    *(v115 + 68) = 2;
    *(v115 + 64) = 0;
    v116 = v114 + v111[10];
    *v116 = 0u;
    *(v116 + 16) = 0u;
    *(v116 + 32) = 0u;
    *(v116 + 48) = xmmword_21A0EB370;
    *(v116 + 64) = 0x200000000;
    *(v116 + 72) = 0;
    *(v116 + 80) = 0;
    v117 = v114 + v111[11];
    *v117 = 0u;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = xmmword_21A0EB370;
    *(v117 + 72) = 0;
    *(v117 + 80) = 0;
    *(v117 + 64) = 0x200000000;
    sub_21A04D070(v114, v123, type metadata accessor for NationalElectionTheme);

    return sub_219F79C1C(v107, v108);
  }

  return result;
}

uint64_t sub_21A04C300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A0E6C5C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A04C384(uint64_t a1)
{
  v2 = sub_21A04D01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A04C3C0(uint64_t a1)
{
  v2 = sub_21A04D01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NationalElectionStaticAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC418, &qword_21A0FBD10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04D01C();
  sub_21A0E6EAC();
  type metadata accessor for NationalElectionTheme(0);
  sub_21A04D120(&qword_27CCDC428, type metadata accessor for NationalElectionTheme, &protocol conformance descriptor for NationalElectionTheme);
  sub_21A0E6BBC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t NationalElectionStaticAttributes.hashValue.getter()
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t NationalElectionStaticAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for NationalElectionTheme(0);
  MEMORY[0x28223BE20](v4, v5);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC430, &qword_21A0FBD18);
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for NationalElectionStaticAttributes(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04D01C();
  sub_21A0E6E7C();
  if (!v2)
  {
    v15 = v18;
    sub_21A04D120(&qword_27CCDC438, type metadata accessor for NationalElectionTheme, &protocol conformance descriptor for NationalElectionTheme);
    v16 = v20;
    sub_21A0E6ADC();
    (*(v19 + 8))(v10, v7);
    sub_21A04D070(v16, v14, type metadata accessor for NationalElectionTheme);
    sub_21A04D070(v14, v15, type metadata accessor for NationalElectionStaticAttributes);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A04C844(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC418, &qword_21A0FBD10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04D01C();
  sub_21A0E6EAC();
  type metadata accessor for NationalElectionTheme(0);
  sub_21A04D120(&qword_27CCDC428, type metadata accessor for NationalElectionTheme, &protocol conformance descriptor for NationalElectionTheme);
  sub_21A0E6BBC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21A04C9BC()
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A04CA00(uint64_t a1)
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v2);
  return sub_21A0E6DFC();
}

void *sub_21A04CA40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v49 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v53 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v45 = &v45 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v46 = &v45 - v20;
  v21 = type metadata accessor for ElectionEntityTheme(0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v48 = v0;
  v28 = *v0;
  v29 = *(*v0 + 16);
  v51 = v9;
  if (v29)
  {
    v52 = *(v23 + 28);
    v30 = v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v31 = *(v24 + 72);
    v50 = v8;
    do
    {
      sub_21A04D2A8(v30, v26, type metadata accessor for ElectionEntityTheme);
      sub_219F45500(&v26[v52], v4, &qword_27CCD98D8, &unk_21A0EA100);
      sub_21A04D310(v26, type metadata accessor for ElectionEntityTheme);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {
        sub_219F6409C(v4, &qword_27CCD98D8, &unk_21A0EA100);
      }

      else
      {
        sub_219F73094(v4, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_219FA17F8(0, v27[2] + 1, 1, v27);
        }

        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          v27 = sub_219FA17F8((v32 > 1), v33 + 1, 1, v27);
        }

        v27[2] = v33 + 1;
        sub_219F73094(v53, v27 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v33);
        v8 = v50;
      }

      v30 += v31;
      --v29;
    }

    while (v29);
  }

  sub_21A03F738(v27);
  v34 = type metadata accessor for NationalElectionTheme(0);
  v35 = v49;
  sub_219F45500(v48 + *(v34 + 32), v49, &qword_27CCD9628, &qword_21A0E9610);
  v36 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    sub_219F6409C(v35, &qword_27CCD9628, &qword_21A0E9610);
    return v54;
  }

  else
  {
    v38 = v45;
    sub_219F45500(v35, v45, &qword_27CCD98D0, &unk_21A0E9C90);
    sub_21A04D310(v35, type metadata accessor for ActivityMinimalAppearanceTheme);
    v39 = v46;
    sub_219F73094(v38, v46);
    v40 = v47;
    sub_219F45500(v39, v47, &qword_27CCD98D0, &unk_21A0E9C90);
    v37 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_219FA17F8(0, v37[2] + 1, 1, v37);
    }

    v41 = v51;
    v43 = v37[2];
    v42 = v37[3];
    if (v43 >= v42 >> 1)
    {
      v37 = sub_219FA17F8((v42 > 1), v43 + 1, 1, v37);
    }

    sub_219F6409C(v39, &qword_27CCD98D0, &unk_21A0E9C90);
    v37[2] = v43 + 1;
    sub_219F73094(v40, v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43);
  }

  return v37;
}

uint64_t sub_21A04CFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionTheme(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A04D01C()
{
  result = qword_27CCDC420;
  if (!qword_27CCDC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC420);
  }

  return result;
}

uint64_t sub_21A04D070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A04D120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21A04D1A4()
{
  result = qword_27CCDC448;
  if (!qword_27CCDC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC448);
  }

  return result;
}

unint64_t sub_21A04D1FC()
{
  result = qword_27CCDC450;
  if (!qword_27CCDC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC450);
  }

  return result;
}

unint64_t sub_21A04D254()
{
  result = qword_27CCDC458[0];
  if (!qword_27CCDC458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CCDC458);
  }

  return result;
}

uint64_t sub_21A04D2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A04D310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A04D370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408, &qword_21A0F3030);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  (*(v5 + 16))(&v16 - v7, v2, v4);
  sub_21A0E4CDC();
  v9 = type metadata accessor for NewsLiveActivityContent(0);
  v10 = v9[5];
  v11 = sub_21A0E495C();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  sub_21A0E4CEC();
  sub_21A0E4CBC();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  result = (v12)(a1 + v9[9], 1, 1, v11);
  *(a1 + v9[7]) = v14;
  *(a1 + v9[8]) = 2;
  return result;
}

unint64_t sub_21A04D528(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A0E6A0C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21A04D578@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v40 = &v36 - v14;
  v39 = *(a2 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  _s12CodingBufferV10CodingKeysOMa(255, &v48);
  swift_getWitnessTable();
  v46 = sub_21A0E6B1C();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v17);
  v19 = &v36 - v18;
  v45 = a2;
  v48 = a2;
  v49 = a3;
  v42 = a3;
  v50 = a4;
  v51 = a5;
  v20 = _s12CodingBufferVMa(0, &v48);
  v37 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v36 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v19;
  v24 = v47;
  sub_21A0E6E7C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v39;
  v26 = v40;
  v47 = a1;
  LOBYTE(v48) = 0;
  v27 = v41;
  v28 = v45;
  v29 = v43;
  sub_21A0E6ADC();
  (*(v25 + 32))(v23, v27, v28);
  sub_21A0E495C();
  LOBYTE(v48) = 1;
  sub_21A04DD9C();
  sub_21A0E6A8C();
  v30 = v26;
  v31 = v20;
  sub_219FC26CC(v30, &v23[*(v20 + 52)]);
  LOBYTE(v48) = 2;
  sub_21A0E6ABC();
  v33 = v32;
  (*(v44 + 8))(v29, v46);
  *&v23[*(v20 + 56)] = v33;
  v34 = v37;
  (*(v37 + 16))(v38, v23, v31);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return (*(v34 + 8))(v23, v31);
}

uint64_t sub_21A04D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A04DA6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_21A04DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A04DB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_21A04DBB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21A04D528(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21A04DBF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219F5A710(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21A04DC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A04D574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A04DC6C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_21A04E474();
  *a2 = result;
  return result;
}

uint64_t sub_21A04DCA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21A04DCF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_21A04DD9C()
{
  result = qword_27CCD9838;
  if (!qword_27CCD9838)
  {
    sub_21A0E495C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9838);
  }

  return result;
}

uint64_t sub_21A04DDF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A04DE6C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_219F40500(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A04DEFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_21A0E495C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (v12 < a2)
  {
    v16 = ((v14 + *(*(v8 - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v12 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    v20 = v18 >= 2 ? v19 : 0;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v16);
        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = *(a1 + v16);
        if (v21)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v16);
      if (v21)
      {
LABEL_26:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v12 + (v23 | v22) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  else
  {
    v24 = (*(v9 + 48))((a1 + v15) & ~v13);
    if (v24 >= 2)
    {
      return v24 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_21A04E124(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_21A0E495C() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a3 - v14 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v14 + a2;
      bzero(a1, ((v17 + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v22;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v18) = v21;
      }

      else
      {
        *(a1 + v18) = v21;
      }
    }

    else if (v10)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v18) = 0;
  }

  else if (v10)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 >= v13)
  {
    v27 = *(v29 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v23 = ((a1 + v16) & ~v15);
    if (v13 >= a2)
    {
      v28 = *(v11 + 56);

      v28(v23, (a2 + 1));
    }

    else
    {
      if (v17 <= 3)
      {
        v24 = ~(-1 << (8 * v17));
      }

      else
      {
        v24 = -1;
      }

      if (v17)
      {
        v25 = v24 & (~v13 + a2);
        if (v17 <= 3)
        {
          v26 = v17;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v17);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }
}

void *sub_21A04E49C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a4;
  v116 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC560, &qword_21A0FC0F0);
  v113 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v94 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC568, &qword_21A0FC0F8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v16 = &v94 - v15;
  if (!a3 || !*(a3 + 16))
  {
    off_2816FCD98(v124, v116, a2, &type metadata for ActivityTextBuilder);
    return v124[0];
  }

  v98 = a3;
  v96 = v14;
  v112 = v4;
  v17 = v13;
  sub_21A0E50FC();
  v18 = v116;
  v117 = v116;
  v118 = a2;
  sub_219FACDEC();
  sub_219F3E490(&qword_27CCDC570, &qword_27CCDC568, &qword_21A0FC0F8, MEMORY[0x277D85AC0]);
  v19 = sub_21A0E616C();
  v106 = *(v19 + 16);
  if (!v106)
  {

    off_2816FCD98(v124, v18, a2, &type metadata for ActivityTextBuilder);
    (*(v96 + 8))(v16, v17);
    return v124[0];
  }

  v94 = v16;
  v95 = v17;
  v97 = off_2816FCD98;
  result = (off_2816FCD98)(&v120);
  v21 = 0;
  v110 = v19 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
  v111 = a2;
  v108 = v19;
  v109 = v113 + 16;
  v107 = (v113 + 8);
  v115 = 15;
  v104 = v10;
  v105 = v7;
  v22 = v18;
  while (v21 < *(v19 + 16))
  {
    (*(v113 + 16))(v10, v110 + *(v113 + 72) * v21, v7);
    swift_getKeyPath();
    sub_21A0E510C();

    v23 = v115;
    v24 = v115 >> 14;
    v129 = v21;
    if (v115 >> 14 < v117 >> 14)
    {
      swift_getKeyPath();
      v114 = v23 >> 14;
      sub_21A0E510C();

      if (v114 > v117 >> 14)
      {
        goto LABEL_32;
      }

      v25 = sub_21A0E62EC();
      v26 = MEMORY[0x21CED1930](v25);
      v28 = v27;

      v97(&v117, v26, v28, &type metadata for ActivityTextBuilder);

      v29 = v120;
      v30 = v121;
      LOBYTE(v28) = v122;
      v32 = v117;
      v31 = v118;
      v33 = v119;
      v34 = sub_21A0E598C();
      v101 = v35;
      v102 = v34;
      v100 = v36;
      v103 = v37;
      v38 = v32;
      v21 = v129;
      LOBYTE(v36) = v33;
      v22 = v116;
      sub_219F63A30(v38, v31, v36);
      v7 = v105;

      v39 = v30;
      v24 = v114;
      v40 = v28;
      v10 = v104;
      sub_219F63A30(v29, v39, v40);

      v120 = v102;
      v121 = v101;
      v122 = v100 & 1;
      v123 = v103;
    }

    swift_getKeyPath();
    sub_21A0E510C();

    if (v24 > v117 >> 14)
    {
      result = (*v107)(v10, v7);
      v19 = v108;
    }

    else
    {
      swift_getKeyPath();
      sub_21A0E510C();

      v41 = sub_21A0E629C();
      swift_getKeyPath();
      sub_21A0E510C();

      if (v41 >> 14 >= sub_21A0E629C() >> 14)
      {

        sub_21A05121C();
        swift_allocError();
        *v77 = 0;
        *(v77 + 8) = 0;
        v78 = 2;
LABEL_25:
        *(v77 + 16) = v78;
        swift_willThrow();
LABEL_30:
        (*v107)(v10, v7);
        (*(v96 + 8))(v94, v95);
        sub_219F63A30(v120, v121, v122);
      }

      v42 = sub_21A0E62EC();
      v43 = MEMORY[0x21CED1930](v42);
      v45 = v44;

      v46 = v98;
      if (!*(v98 + 16) || (v47 = sub_219F477B4(v43, v45), (v48 & 1) == 0))
      {

        sub_21A05121C();
        swift_allocError();
        *v77 = v43;
        *(v77 + 8) = v45;
        v78 = 1;
        goto LABEL_25;
      }

      v49 = v47;

      v50 = (*(v46 + 56) + 224 * v49);
      v51 = v50[1];
      v127[0] = *v50;
      v127[1] = v51;
      v52 = v50[5];
      v54 = v50[2];
      v53 = v50[3];
      v127[4] = v50[4];
      v127[5] = v52;
      v127[2] = v54;
      v127[3] = v53;
      v55 = v50[6];
      v56 = v50[7];
      v57 = v50[9];
      v127[8] = v50[8];
      v127[9] = v57;
      v127[6] = v55;
      v127[7] = v56;
      v58 = v50[10];
      v59 = v50[11];
      v60 = v50[12];
      *(v128 + 9) = *(v50 + 201);
      v127[11] = v59;
      v128[0] = v60;
      v127[10] = v58;
      sub_219F7DC04(v127, &v117);
      v61 = v112;
      v62 = sub_21A04FFE8(v127, v46, v99);
      if (v61)
      {

        sub_219F7DC60(v127);
        goto LABEL_30;
      }

      v66 = v64;
      v112 = 0;
      v67 = v120;
      v68 = v121;
      v69 = v122;
      v114 = v62;
      v115 = v65;
      v103 = v63;
      v70 = sub_21A0E598C();
      v72 = v71;
      v74 = v73;
      v102 = v75;
      v76 = v69;
      v22 = v116;
      sub_219F63A30(v67, v68, v76);
      v7 = v105;

      v120 = v70;
      v121 = v72;
      v10 = v104;
      v122 = v74 & 1;
      v123 = v102;
      swift_getKeyPath();
      sub_21A0E510C();

      sub_219F7DC60(v127);
      sub_219F63A30(v114, v103, v66 & 1);

      result = (*v107)(v10, v7);
      v115 = v117;
      v19 = v108;
      v21 = v129;
    }

    if (v106 == ++v21)
    {

      v79 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v79 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v115 >> 14 >= 4 * v79)
      {
        (*(v96 + 8))(v94, v95);
        v87 = v120;
        v89 = v121;
        v91 = v122;
        v93 = v123;
      }

      else
      {
        v80 = sub_21A0E62EC();
        v81 = MEMORY[0x21CED1930](v80);
        v83 = v82;

        v97(&v117, v81, v83, &type metadata for ActivityTextBuilder);

        v115 = v121;
        v116 = v120;
        LODWORD(v114) = v122;
        v129 = v123;
        v85 = v117;
        v84 = v118;
        v86 = v119;
        v87 = sub_21A0E598C();
        v89 = v88;
        v91 = v90;
        v93 = v92;
        (*(v96 + 8))(v94, v95);
        sub_219F63A30(v85, v84, v86);

        sub_219F63A30(v116, v115, v114);
      }

      v124[0] = v87;
      v124[1] = v89;
      v125 = v91 & 1;
      v126 = v93;
      return v124[0];
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t ActivityTextBuilderType.buildText(baseString:properties:environment:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v135 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC560, &qword_21A0FC0F0);
  v131 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v13);
  v150 = &v111 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v119 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v120 = &v111 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v130 = &v111 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v132 = &v111 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC568, &qword_21A0FC0F8);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v33 = &v111 - v32;
  v34 = a4[1];
  v147 = *a4;
  v148 = v34;
  v149 = *(a4 + 4);
  if (!a3 || !*(a3 + 16))
  {
    return (*(a6 + 24))(a1, v135, a5, a6);
  }

  v118 = a3;
  v136 = a5;
  v138 = a6;
  v114 = a7;
  v115 = v31;
  v35 = v30;
  v36 = v33;
  sub_21A0E50FC();
  v145[0] = __PAIR128__(v135, a1);
  v134 = a1;
  v37 = v135;
  sub_219FACDEC();
  sub_219F3E490(&qword_27CCDC570, &qword_27CCDC568, &qword_21A0FC0F8, MEMORY[0x277D85AC0]);
  v38 = sub_21A0E616C();
  v124 = *(v38 + 16);
  if (v124)
  {
    v112 = v36;
    v113 = v35;
    v129 = AssociatedTypeWitness;
    v39 = v138;
    v116 = *(v138 + 24);
    v117 = v138 + 24;
    result = v116(0, 0xE000000000000000, v136, v138);
    v41 = 0;
    v127 = v38 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v128 = (v16 + 8);
    v122 = v39 + 40;
    v123 = (v16 + 32);
    v125 = (v131 + 8);
    v126 = v131 + 16;
    v42 = 15;
    v43 = v38;
    v121 = v38;
    while (v41 < *(v43 + 16))
    {
      v45 = v127 + *(v131 + 72) * v41;
      v46 = *(v131 + 16);
      v137 = v42;
      v46(v150, v45, v139);
      swift_getKeyPath();
      v42 = v137;
      sub_21A0E510C();

      v47 = v42 >> 14;
      if (v42 >> 14 < *&v145[0] >> 14)
      {
        swift_getKeyPath();
        sub_21A0E510C();

        if (v47 > *&v145[0] >> 14)
        {
          goto LABEL_31;
        }

        v48 = sub_21A0E62EC();
        v49 = MEMORY[0x21CED1930](v48);
        v50 = v41;
        v52 = v51;

        v53 = v130;
        v54 = v49;
        v55 = v136;
        v116(v54, v52, v136, v138);

        v56 = v120;
        v57 = v132;
        (*(v138 + 40))(v132, v53, v55, v138);
        v58 = v129;
        v59 = *v128;
        v60 = v53;
        v43 = v121;
        (*v128)(v60, v129);
        v59(v57, v58);
        v41 = v50;
        v42 = v137;
        v61 = v57;
        v39 = v138;
        (*v123)(v61, v56, v58);
      }

      swift_getKeyPath();
      sub_21A0E510C();

      if (v47 > *&v145[0] >> 14)
      {
        result = (*v125)(v150, v139);
        v44 = v136;
      }

      else
      {
        v137 = v41;
        swift_getKeyPath();
        sub_21A0E510C();

        v62 = sub_21A0E629C();
        swift_getKeyPath();
        sub_21A0E510C();

        v63 = sub_21A0E629C();
        v64 = v136;
        if (v62 >> 14 >= v63 >> 14)
        {

          sub_21A05121C();
          v95 = swift_allocError();
          *v96 = 0;
          *(v96 + 8) = 0;
          v97 = 2;
          goto LABEL_26;
        }

        v65 = sub_21A0E62EC();
        v66 = MEMORY[0x21CED1930](v65);
        v68 = v67;

        v69 = v118;
        if (!*(v118 + 16) || (v70 = sub_219F477B4(v66, v68), (v71 & 1) == 0))
        {

          sub_21A05121C();
          v95 = swift_allocError();
          *v96 = v66;
          *(v96 + 8) = v68;
          v97 = 1;
LABEL_26:
          *(v96 + 16) = v97;
          v133 = v95;
          swift_willThrow();
          (*v125)(v150, v139);
          (*v128)(v132, v129);
          return (*(v115 + 8))(v112, v113);
        }

        v72 = v70;

        v73 = (*(v69 + 56) + 224 * v72);
        v74 = v73[1];
        v145[0] = *v73;
        v145[1] = v74;
        v75 = v73[5];
        v77 = v73[2];
        v76 = v73[3];
        v145[4] = v73[4];
        v145[5] = v75;
        v145[2] = v77;
        v145[3] = v76;
        v78 = v73[6];
        v79 = v73[7];
        v80 = v73[9];
        v145[8] = v73[8];
        v145[9] = v80;
        v145[6] = v78;
        v145[7] = v79;
        v81 = v73[10];
        v82 = v73[11];
        v83 = v73[12];
        *(v146 + 9) = *(v73 + 201);
        v145[11] = v82;
        v146[0] = v83;
        v145[10] = v81;
        v143[10] = v73[10];
        v143[11] = v73[11];
        v144[0] = v73[12];
        *(v144 + 9) = *(v73 + 201);
        v143[6] = v73[6];
        v143[7] = v73[7];
        v143[8] = v73[8];
        v143[9] = v73[9];
        v143[2] = v73[2];
        v143[3] = v73[3];
        v143[4] = v73[4];
        v143[5] = v73[5];
        v143[0] = *v73;
        v143[1] = v73[1];
        v141[0] = v147;
        v141[1] = v148;
        v142 = v149;
        sub_219F7DC04(v145, &v140);
        v84 = v119;
        v85 = v138;
        v86 = v133;
        sub_21A050758(v143, v69, v141, v64, v138, v119);
        v133 = v86;
        if (v86)
        {

          (*v125)(v150, v139);
          (*v128)(v132, v129);
          (*(v115 + 8))(v112, v113);
          return sub_219F7DC60(v145);
        }

        v87 = v130;
        v88 = v132;
        (*(v85 + 40))(v132, v84, v64, v85);
        v89 = v129;
        v90 = *v128;
        (*v128)(v88, v129);
        (*v123)(v88, v87, v89);
        swift_getKeyPath();
        v91 = v139;
        v92 = v150;
        sub_21A0E510C();

        sub_219F7DC60(v145);
        v93 = v89;
        v44 = v136;
        v90(v84, v93);
        v39 = v138;
        v94 = v91;
        v43 = v121;
        result = (*v125)(v92, v94);
        v42 = *&v143[0];
        v41 = v137;
      }

      if (v124 == ++v41)
      {

        v98 = HIBYTE(v135) & 0xF;
        if ((v135 & 0x2000000000000000) == 0)
        {
          v98 = v134 & 0xFFFFFFFFFFFFLL;
        }

        if (v42 >> 14 >= 4 * v98)
        {
          (*(v115 + 8))(v112, v113);
          v110 = *v123;
          v108 = v129;
          v107 = v132;
        }

        else
        {
          v99 = sub_21A0E62EC();
          v100 = MEMORY[0x21CED1930](v99);
          v102 = v101;

          v103 = v130;
          v116(v100, v102, v44, v39);

          v104 = *(v39 + 40);
          v105 = v120;
          v106 = v39;
          v107 = v132;
          v104(v132, v103, v44, v106);
          v108 = v129;
          v109 = *v128;
          (*v128)(v103, v129);
          v109(v107, v108);
          (*(v115 + 8))(v112, v113);
          v110 = *v123;
          (*v123)(v107, v105, v108);
        }

        return (v110)(v114, v107, v108);
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    (*(v138 + 24))(v134, v37, v136);
    return (*(v115 + 8))(v36, v35);
  }

  return result;
}

uint64_t ActivityTextBuilder.buildText(_:)(uint64_t a1, uint64_t a2)
{
  sub_219F3F130();

  return sub_21A0E59EC();
}

uint64_t ActivityTextBuilder.buildText(_:)(uint64_t a1)
{
  v2 = sub_21A0E561C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  LOBYTE(a1) = *(a1 + 16);

  sub_21A0E560C();
  sub_21A0E55FC();
  if (a1)
  {
    sub_21A0E5CDC();
  }

  else
  {
    sub_21A0E5CBC();
  }

  sub_21A0E55DC();

  sub_21A0E55FC();
  sub_21A0E563C();
  return sub_21A0E59DC();
}

uint64_t ActivityTextBuilder.modifiedText(_:with:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5)
{
  v9 = a5[3];
  v49 = a5[2];
  v50 = v9;
  v51 = a5[4];
  v10 = a5[1];
  v47 = *a5;
  v48 = v10;
  v11 = *(a5 + 11);
  v12 = *(a5 + 14);
  v13 = *(a5 + 17);
  v14 = *(a5 + 20);
  v52 = *(a5 + 10);
  v53 = v11;
  v30 = a5[6];
  v54 = v30;
  v31 = *(a5 + 120);
  v56 = v31;
  v55 = v12;
  v57 = v13;
  v32 = a5[9];
  v58 = v32;
  v59 = v14;
  v33 = *(a5 + 168);
  v60 = v33;
  if (sub_219F5EBE4(&v47) == 1)
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = 1;
    v18 = 9;
    LOBYTE(v14) = 3;
    v19 = 0uLL;
    v20 = 0x3E00000000;
    v21 = 9;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  else
  {
    v37 = v50;
    v38 = v51;
    v35 = v48;
    v36 = v49;
    v39 = v52;
    v34 = v47;
    if (*(&v51 + 1))
    {
      v28 = v35;
      v29 = v34;
      v26 = v37;
      v27 = v36;
      v20 = v38 | (BYTE4(v38) << 32);
      sub_219F72F28(&v34, &v40);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v20 = 0x3E00000000;
      v26 = 0u;
      v27 = 0u;
    }

    v17 = v30 == 0;
    if (v30)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    if (v31)
    {
      v21 = v12;
    }

    else
    {
      v21 = 9;
    }

    if (v32)
    {
      v18 = v13;
    }

    else
    {
      v18 = 9;
    }

    if (!v33)
    {
      LOBYTE(v14) = 3;
    }

    v19 = v28;
    v16 = v29;
    v23 = v26;
    v22 = v27;
  }

  v46 = v17;
  v40 = v16;
  v41 = v19;
  v42 = v22;
  v43 = v23;
  BYTE4(v44) = BYTE4(v20);
  LODWORD(v44) = v20;
  *(&v44 + 1) = v15;
  LOBYTE(v45) = v17;
  BYTE1(v45) = v21;
  BYTE2(v45) = v18;
  HIBYTE(v45) = v14;
  v24 = sub_219F8CEDC(&v40, a1, a2, a3 & 1, a4);
  v36 = v42;
  v37 = v43;
  v38 = v44;
  LODWORD(v39) = v45;
  v34 = v40;
  v35 = v41;
  sub_219F6409C(&v34, &qword_27CCD95B0, &unk_21A0E89E0);
  return v24;
}

void *sub_21A04FE48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v7;
  v13 = *(a4 + 32);
  result = sub_21A04E49C(a1, a2, a3, v12);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v9;
    *(a5 + 16) = v10 & 1;
    *(a5 + 24) = v11;
  }

  return result;
}

uint64_t sub_21A04FE9C@<X0>(uint64_t a3@<X8>)
{
  sub_219F3F130();

  result = sub_21A0E59EC();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_21A04FF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ActivityTextBuilder.buildText(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21A04FF3C@<X0>(uint64_t a3@<X8>)
{
  result = sub_21A0E598C();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_21A04FF98@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = ActivityTextBuilder.modifiedText(_:with:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_21A04FFE8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v89 = a2;
  v5 = sub_21A0E468C();
  v88 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8, &qword_21A0F6F68);
  v87 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v86 - v17;
  v19 = a1[11];
  v110[10] = a1[10];
  v110[11] = v19;
  v111[0] = a1[12];
  *(v111 + 9) = *(a1 + 201);
  v20 = a1[7];
  v110[6] = a1[6];
  v110[7] = v20;
  v21 = a1[9];
  v110[8] = a1[8];
  v110[9] = v21;
  v22 = a1[3];
  v110[2] = a1[2];
  v110[3] = v22;
  v23 = a1[5];
  v110[4] = a1[4];
  v110[5] = v23;
  v24 = a1[1];
  v110[0] = *a1;
  v110[1] = v24;
  v25 = sub_219F9137C(v110);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      nullsub_1();
      v51 = *v50;
      v52 = *(v50 + 19);
      v106[8] = *(v50 + 17);
      v106[9] = v52;
      v106[10] = *(v50 + 21);
      v107 = v50[23];
      v53 = *(v50 + 11);
      v106[4] = *(v50 + 9);
      v106[5] = v53;
      v54 = *(v50 + 15);
      v106[6] = *(v50 + 13);
      v106[7] = v54;
      v55 = *(v50 + 3);
      v106[0] = *(v50 + 1);
      v106[1] = v55;
      v56 = *(v50 + 7);
      v106[2] = *(v50 + 5);
      v106[3] = v56;
      *&v93 = v51;
      sub_21A0E499C();
      sub_21A021038();
      sub_21A0E465C();
      sub_21A0E467C();
      MEMORY[0x21CECFD40](v8, v11);
      (*(v88 + 8))(v8, v5);
      v57 = *(v87 + 8);
      v57(v15, v11);
      sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8, &qword_21A0F6F68, MEMORY[0x277CC9158]);
      sub_21A0E60EC();
      v57(v18, v11);
      off_2816FCD98(v105, *v105, *&v105[8], &type metadata for ActivityTextBuilder);

      v58 = *v105;
      v59 = *&v105[8];
      v60 = v105[16];
      v61 = *&v105[24];
      v62 = v106;
    }

    else
    {
      nullsub_1();
      v77 = *v76;
      v78 = *(v76 + 19);
      v108[8] = *(v76 + 17);
      v108[9] = v78;
      v108[10] = *(v76 + 21);
      v109 = v76[23];
      v79 = *(v76 + 11);
      v108[4] = *(v76 + 9);
      v108[5] = v79;
      v80 = *(v76 + 15);
      v108[6] = *(v76 + 13);
      v108[7] = v80;
      v81 = *(v76 + 3);
      v108[0] = *(v76 + 1);
      v108[1] = v81;
      v82 = *(v76 + 7);
      v108[2] = *(v76 + 5);
      v108[3] = v82;
      *v105 = v77;
      v83 = sub_21A0E6BFC();
      off_2816FCD98(v105, v83, v84, &type metadata for ActivityTextBuilder);

      v58 = *v105;
      v59 = *&v105[8];
      v60 = v105[16];
      v61 = *&v105[24];
      v62 = v108;
    }

    v49 = ActivityTextBuilder.modifiedText(_:with:)(v58, v59, v60, v61, v62);
    sub_219F63A30(v58, v59, v60);
    goto LABEL_14;
  }

  if (v25)
  {
    nullsub_1();
    v64 = *(v63 + 16);
    v65 = *(v63 + 17);
    v66 = *(v63 + 163);
    *&v105[128] = *(v63 + 147);
    *&v105[144] = v66;
    *&v105[160] = *(v63 + 179);
    *&v105[173] = *(v63 + 192);
    v67 = *(v63 + 99);
    *&v105[64] = *(v63 + 83);
    *&v105[80] = v67;
    v68 = *(v63 + 131);
    *&v105[96] = *(v63 + 115);
    *&v105[112] = v68;
    v69 = *(v63 + 35);
    *v105 = *(v63 + 19);
    *&v105[16] = v69;
    v70 = *(v63 + 67);
    *&v105[32] = *(v63 + 51);
    *&v105[48] = v70;
    v93 = *v63;
    LOBYTE(v94) = v64 & 1;
    *(&v94 + 1) = v65;
    v71 = ActivityTextBuilder.buildText(_:)(&v93);
    v42 = v71;
    v44 = v72;
    v46 = v74;
    v101 = *&v105[133];
    v102 = *&v105[149];
    v103 = *&v105[165];
    v104 = *&v105[181];
    v97 = *&v105[69];
    v98 = *&v105[85];
    v99 = *&v105[101];
    v100 = *&v105[117];
    v93 = *&v105[5];
    v94 = *&v105[21];
    v95 = *&v105[37];
    v96 = *&v105[53];
    v75 = v74 & 1;
LABEL_13:
    v49 = ActivityTextBuilder.modifiedText(_:with:)(v71, v72, v75, v73, &v93);
    sub_219F63A30(v42, v44, v46 & 1);
LABEL_14:

    return v49;
  }

  nullsub_1();
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  v31 = *(v26 + 176);
  *&v105[128] = *(v26 + 160);
  *&v105[144] = v31;
  *&v105[160] = *(v26 + 192);
  *&v105[176] = *(v26 + 208);
  v32 = *(v26 + 112);
  *&v105[64] = *(v26 + 96);
  *&v105[80] = v32;
  v33 = *(v26 + 144);
  *&v105[96] = *(v26 + 128);
  *&v105[112] = v33;
  v34 = *(v26 + 48);
  *v105 = *(v26 + 32);
  *&v105[16] = v34;
  v35 = *(v26 + 80);
  *&v105[32] = *(v26 + 64);
  *&v105[48] = v35;
  v36 = *(a3 + 16);
  v93 = *a3;
  v94 = v36;
  v37 = *(a3 + 32);
  *&v97 = MEMORY[0x277D84F90];
  *&v95 = v37;
  sub_219F63900(a3, &v90);
  v38 = qword_27CCD9198;

  if (v38 != -1)
  {
    swift_once();
  }

  *(&v95 + 1) = v28;
  *&v96 = v27;
  *(&v96 + 1) = qword_27CCDBDB0;

  sub_219F8A9B0(&v93, v28, v27, v29, v30);
  v39 = *(&v95 + 1);
  v40 = v96;
  v91[2] = v95;
  v91[3] = v96;
  v92 = v97;
  v91[0] = v93;
  v91[1] = v94;

  sub_219F6409C(v91, &qword_27CCDC580, &unk_21A0FC2D0);
  v41 = v112;
  v42 = sub_21A04E49C(v39, v40, v89, a3);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v41;

  if (!v41)
  {
    v112 = 0;
    v101 = *&v105[128];
    v102 = *&v105[144];
    v103 = *&v105[160];
    v104 = *&v105[176];
    v97 = *&v105[64];
    v98 = *&v105[80];
    v99 = *&v105[96];
    v100 = *&v105[112];
    v93 = *v105;
    v94 = *&v105[16];
    v95 = *&v105[32];
    v96 = *&v105[48];
    v75 = v46 & 1;
    v71 = v42;
    v72 = v44;
    v73 = v48;
    goto LABEL_13;
  }

  return v49;
}

uint64_t sub_21A050758@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a6;
  v87 = a2;
  v85 = sub_21A0E468C();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v10);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8, &qword_21A0F6F68);
  v82 = *(v84 - 8);
  v15 = MEMORY[0x28223BE20](v84, v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v80 = &v80 - v19;
  v91 = a5;
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness, v22);
  v88 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v86 = &v80 - v26;
  v27 = a1[11];
  v110[10] = a1[10];
  v110[11] = v27;
  v111[0] = a1[12];
  *(v111 + 9) = *(a1 + 201);
  v28 = a1[7];
  v110[6] = a1[6];
  v110[7] = v28;
  v29 = a1[9];
  v110[8] = a1[8];
  v110[9] = v29;
  v30 = a1[3];
  v110[2] = a1[2];
  v110[3] = v30;
  v31 = a1[5];
  v110[4] = a1[4];
  v110[5] = v31;
  v32 = a1[1];
  v110[0] = *a1;
  v110[1] = v32;
  v33 = a3[1];
  v107 = *a3;
  v108 = v33;
  v109 = *(a3 + 4);
  v34 = sub_219F9137C(v110);
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      nullsub_1();
      v56 = v55;
      *&v93[0] = *v55;
      sub_21A0E499C();
      v86 = sub_21A021038();
      sub_21A0E465C();
      v57 = v81;
      sub_21A0E467C();
      v87 = v20;
      v58 = v80;
      v59 = v84;
      MEMORY[0x21CECFD40](v57, v84);
      (*(v83 + 8))(v57, v85);
      v85 = AssociatedTypeWitness;
      v60 = *(v82 + 8);
      v60(v17, v59);
      sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8, &qword_21A0F6F68, MEMORY[0x277CC9158]);
      sub_21A0E60EC();
      v60(v58, v59);
      v61 = v91;
      v62 = v87;
      v63 = v88;
      (*(v91 + 24))(v95, *(&v95 + 1), v87, v91);

      v103 = *(v56 + 17);
      v104 = *(v56 + 19);
      v105 = *(v56 + 21);
      v106 = v56[23];
      v99 = *(v56 + 9);
      v100 = *(v56 + 11);
      v101 = *(v56 + 13);
      v102 = *(v56 + 15);
      v95 = *(v56 + 1);
      v96 = *(v56 + 3);
      v97 = *(v56 + 5);
      v98 = *(v56 + 7);
      (*(v61 + 48))(v63, &v95, v62, v61);
      return (*(v89 + 8))(v63, v85);
    }

    else
    {
      nullsub_1();
      v75 = v74;
      *&v95 = *v74;
      v76 = sub_21A0E6BFC();
      v77 = AssociatedTypeWitness;
      v78 = v91;
      v79 = v88;
      (*(v91 + 24))(v76);

      v103 = *(v75 + 17);
      v104 = *(v75 + 19);
      v105 = *(v75 + 21);
      v106 = v75[23];
      v99 = *(v75 + 9);
      v100 = *(v75 + 11);
      v101 = *(v75 + 13);
      v102 = *(v75 + 15);
      v95 = *(v75 + 1);
      v96 = *(v75 + 3);
      v97 = *(v75 + 5);
      v98 = *(v75 + 7);
      (*(v78 + 48))(v79, &v95, v20, v78);
      return (*(v89 + 8))(v79, v77);
    }
  }

  else if (v34)
  {
    nullsub_1();
    v65 = v64;
    v66 = *(v64 + 16);
    v67 = *(v64 + 17);
    v95 = *v64;
    LOBYTE(v96) = v66;
    *(&v96 + 1) = v67;
    v68 = v91;
    v69 = v88;
    (*(v91 + 32))(&v95, v20, v91);
    v70 = *(v65 + 168);
    v103 = *(v65 + 152);
    v104 = v70;
    v105 = *(v65 + 184);
    v106 = *(v65 + 25);
    v71 = *(v65 + 104);
    v99 = *(v65 + 88);
    v100 = v71;
    v72 = *(v65 + 136);
    v101 = *(v65 + 120);
    v102 = v72;
    v95 = *(v65 + 24);
    v73 = *(v65 + 56);
    v96 = *(v65 + 40);
    v97 = v73;
    v98 = *(v65 + 72);
    (*(v68 + 48))(v69, &v95, v20, v68);
    return (*(v89 + 8))(v69, AssociatedTypeWitness);
  }

  else
  {
    v85 = AssociatedTypeWitness;
    v35 = v20;
    nullsub_1();
    v37 = v36;
    v38 = *v36;
    v39 = v36[1];
    v40 = v36[2];
    v41 = v36[3];
    v95 = v107;
    v96 = v108;
    *&v99 = MEMORY[0x277D84F90];
    *&v97 = v109;
    sub_219F63900(&v107, &v92);
    v42 = qword_27CCD9198;

    if (v42 != -1)
    {
      swift_once();
    }

    *(&v97 + 1) = v38;
    *&v98 = v39;
    *(&v98 + 1) = qword_27CCDBDB0;

    sub_219F8A9B0(&v95, v38, v39, v40, v41);
    v44 = *(&v97 + 1);
    v43 = v98;
    v93[2] = v97;
    v93[3] = v98;
    v94 = v99;
    v93[0] = v95;
    v93[1] = v96;

    sub_219F6409C(v93, &qword_27CCDC580, &unk_21A0FC2D0);
    v95 = v107;
    v96 = v108;
    *&v97 = v109;
    v45 = v91;
    v46 = v86;
    v47 = v112;
    (*(v91 + 16))(v44, v43, v87, &v95, v35, v91);

    if (!v47)
    {
      v49 = *(v37 + 11);
      v103 = *(v37 + 10);
      v104 = v49;
      v105 = *(v37 + 12);
      v106 = v37[26];
      v50 = *(v37 + 7);
      v99 = *(v37 + 6);
      v100 = v50;
      v51 = *(v37 + 9);
      v101 = *(v37 + 8);
      v102 = v51;
      v52 = *(v37 + 3);
      v95 = *(v37 + 2);
      v53 = *(v37 + 4);
      v54 = *(v37 + 5);
      v96 = v52;
      v97 = v53;
      v98 = v54;
      (*(v45 + 48))(v46, &v95, v35, v45);
      return (*(v89 + 8))(v46, v85);
    }
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore24ActivityTextBuilderErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21A0E6C5C();
        sub_21A0513C8(v6, v5, 0);
        sub_21A0513C8(v3, v2, 0);
        sub_21A0513E0(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_21A0513C8(v14, v2, 0);
      sub_21A0513C8(v3, v2, 0);
      sub_21A0513E0(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21A0E6C5C();
        sub_21A0513C8(v6, v5, 1u);
        sub_21A0513C8(v3, v2, 1u);
        sub_21A0513E0(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_21A0513E0(v11, v12, v13);
        return v10 & 1;
      }

      sub_21A0513C8(v8, v2, 1u);
      sub_21A0513C8(v3, v2, 1u);
      sub_21A0513E0(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_21A0513C8(*a2, a2[1], v7);
    sub_21A0513C8(v3, v2, v4);
    sub_21A0513E0(v3, v2, v4);
    sub_21A0513E0(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_21A0513E0(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_21A0513E0(v18, v19, v20);
  return 1;
}

unint64_t sub_21A05121C()
{
  result = qword_27CCDC578;
  if (!qword_27CCDC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC578);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore24ActivityTextBuilderErrorO(uint64_t a1)
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

uint64_t sub_21A05128C(uint64_t a1, unsigned int a2)
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

uint64_t sub_21A0512D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21A051318(uint64_t result, unsigned int a2)
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

double sub_21A0513C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21A0513E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t ActivityFooterData.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityFooterData.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ActivityFooterData.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActivityFooterData.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsLiveActivitiesCore::ActivityFooterData __swiftcall ActivityFooterData.init(title:subtitle:)(Swift::String title, Swift::String_optional subtitle)
{
  v2->value = title;
  v2[1] = subtitle;
  result.subtitle = subtitle;
  result.title = title;
  return result;
}

uint64_t static ActivityFooterData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21A0E6C5C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_21A0E6C5C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_21A0515B4()
{
  if (*v0)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_21A0515EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A0516C4(uint64_t a1)
{
  v2 = sub_21A0518D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A051700(uint64_t a1)
{
  v2 = sub_21A0518D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFooterData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC588, &qword_21A0FC2E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0518D0();
  sub_21A0E6EAC();
  v13 = 0;
  v9 = v11[3];
  sub_21A0E6B7C();
  if (!v9)
  {
    v12 = 1;
    sub_21A0E6B3C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21A0518D0()
{
  result = qword_27CCDC590;
  if (!qword_27CCDC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC590);
  }

  return result;
}

uint64_t ActivityFooterData.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_21A0E626C();
  if (!v2)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();

  return sub_21A0E626C();
}

uint64_t ActivityFooterData.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v1)
  {
    sub_21A0E626C();
  }

  return sub_21A0E6DFC();
}

uint64_t ActivityFooterData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC598, &qword_21A0FC2E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0518D0();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_21A0E6A5C();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A051C5C()
{
  v1 = *(v0 + 24);
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v1)
  {
    sub_21A0E626C();
  }

  return sub_21A0E6DFC();
}

uint64_t sub_21A051CE8(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_21A0E626C();
  if (!v2)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();

  return sub_21A0E626C();
}

uint64_t sub_21A051D64(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v2)
  {
    sub_21A0E626C();
  }

  return sub_21A0E6DFC();
}

unint64_t sub_21A051DF0()
{
  result = qword_27CCDC5A0;
  if (!qword_27CCDC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5A0);
  }

  return result;
}

uint64_t sub_21A051E44(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21A0E6C5C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_21A0E6C5C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21A051F08()
{
  result = qword_27CCDC5A8;
  if (!qword_27CCDC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5A8);
  }

  return result;
}

unint64_t sub_21A051F60()
{
  result = qword_27CCDC5B0;
  if (!qword_27CCDC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5B0);
  }

  return result;
}

unint64_t sub_21A051FB8()
{
  result = qword_27CCDC5B8;
  if (!qword_27CCDC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5B8);
  }

  return result;
}

uint64_t sub_21A05200C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a3;
  v43 = a4;
  v9 = sub_21A0E495C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - v16;
  v18 = *a1;
  v19 = a1[1];
  v40 = v18;
  v20 = [*(v5 + 16) appConfiguration];
  v21 = *(v10 + 16);
  v21(v17, a2, v9);
  v44 = v14;
  v39 = v21;
  v21(v14, a2, v9);
  LOBYTE(v21) = [v20 respondsToSelector_];
  v41 = v19;

  v22 = 10.0;
  if (v21)
  {
    [v20 liveActivityScheduleDelay];
    v22 = v23;
  }

  v24 = 30.0;
  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleRandomInitialDelay];
    v24 = v25;
  }

  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleTimeWindow];
    v27 = v26;
  }

  else
  {
    v27 = 0x4072C00000000000;
  }

  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleRetryInterval];
    v29 = v28;
  }

  else
  {
    v29 = 0x4072C00000000000;
  }

  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleRetryTimeWindow];
    v31 = v30;
  }

  else
  {
    v31 = 0x40AC200000000000;
  }

  if ([v20 respondsToSelector_])
  {
    v32 = [v20 liveActivityScheduleRetryCountMax];
  }

  else
  {
    v32 = 5;
  }

  v33 = type metadata accessor for ScheduledLiveActivity(0);
  v39(&a5[v33[5]], v17, v9);
  v45 = 0xD000000000000013;
  v46 = 0x800000021A10AB90;
  MEMORY[0x21CED1980](v42, v43);
  swift_unknownObjectRelease();
  v34 = v45;
  v35 = v46;
  (*(v10 + 8))(v17, v9);
  v36 = v41;
  *a5 = v40;
  *(a5 + 1) = v36;
  v37 = &a5[v33[6]];
  *v37 = v34;
  *(v37 + 1) = v35;
  result = (*(v10 + 32))(&a5[v33[7]], v44, v9);
  *&a5[v33[8]] = 0;
  *&a5[v33[9]] = v22;
  *&a5[v33[10]] = v24;
  *&a5[v33[11]] = v27;
  *&a5[v33[12]] = v29;
  *&a5[v33[13]] = v31;
  *&a5[v33[14]] = v32;
  *&a5[v33[15]] = 100000;
  return result;
}

uint64_t sub_21A0523B0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21A05240C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v8 = sub_21A0E495C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = *(v9 + 16);
  v15(v12, a2, v8);
  v16 = type metadata accessor for ScheduledLiveActivity(0);
  v15(&a5[v16[7]], a2, v8);
  v15(&a5[v16[5]], v12, v8);
  v23 = 0xD000000000000013;
  v24 = 0x800000021A10AB90;

  MEMORY[0x21CED1980](v21, v22);
  v17 = v23;
  v18 = v24;
  result = (*(v9 + 8))(v12, v8);
  *a5 = v14;
  *(a5 + 1) = v13;
  v20 = &a5[v16[6]];
  *v20 = v17;
  *(v20 + 1) = v18;
  *&a5[v16[8]] = 0;
  *&a5[v16[9]] = 0x4024000000000000;
  *&a5[v16[10]] = 0x403E000000000000;
  *&a5[v16[11]] = 0x4072C00000000000;
  *&a5[v16[12]] = 0x4072C00000000000;
  *&a5[v16[13]] = 0x40AC200000000000;
  *&a5[v16[14]] = 5;
  *&a5[v16[15]] = 100000;
  return result;
}

id sub_21A05266C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21A0526D4()
{
  v0[2] = v0[3];
  v1 = swift_task_alloc();
  v0[4] = v1;
  v1[2] = v0 + 2;
  v1[3] = &unk_21A0FC690;
  v1[4] = 0;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_21A0527D4;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v2, v3);
}

uint64_t sub_21A0527D4()
{

  return MEMORY[0x2822009F8](sub_21A052B08, 0, 0);
}

uint64_t sub_21A05290C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_21A052B04;

  return v6(v2, v3);
}

uint64_t sub_21A052A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_219F49B18;

  return sub_21A0526B4(a1, v4, v5, v6);
}

void sub_21A052B54(uint64_t a1)
{
  sub_219F888D8(319);
  if (v1 <= 0x3F)
  {
    sub_219F41930(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A052C44(uint64_t a1)
{
  sub_219F41930(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_219F888D8(319);
    if (v2 <= 0x3F)
    {
      sub_219F41930(319, &qword_27CCD9B20, &type metadata for ActivityHeaderTheme, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A052D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for ActivitySymbolView(0);
  v4 = MEMORY[0x28223BE20](v52, v3);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v50 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC838, &qword_21A0FC930);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v47 - v18;
  *v19 = sub_21A0E567C();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC840, &qword_21A0FC938);
  sub_21A053324(a1, &v19[*(v20 + 44)]);
  if (qword_27CCD9208 != -1)
  {
    swift_once();
  }

  v21 = xmmword_27CCDD760;
  v22 = byte_27CCDD770;
  v48 = byte_27CCDD772;
  v49 = byte_27CCDD771;
  v23 = (a1 + *(type metadata accessor for ActivityHeaderView(0) + 28));
  v24 = v23[7];
  v25 = v23[9];
  v83 = v23[8];
  v84 = v25;
  v26 = v23[9];
  v85 = v23[10];
  v27 = v23[3];
  v28 = v23[5];
  v79 = v23[4];
  v80 = v28;
  v29 = v23[5];
  v30 = v23[7];
  v81 = v23[6];
  v82 = v30;
  v31 = v23[1];
  v32 = v23[3];
  v77 = v23[2];
  v78 = v32;
  v33 = v23[1];
  v75 = *v23;
  v76 = v33;
  v86[8] = v83;
  v86[9] = v26;
  v86[10] = v23[10];
  v86[4] = v79;
  v86[5] = v29;
  v86[7] = v24;
  v86[6] = v81;
  v86[0] = v75;
  v86[1] = v31;
  v86[2] = v77;
  v86[3] = v27;
  if (sub_219F5EBE4(v86) == 1)
  {
    sub_219F79C1C(v21, *(&v21 + 1));
    if (qword_27CCD9200 != -1)
    {
      swift_once();
    }

    v62[3] = xmmword_27CCDCFF8;
    v62[4] = xmmword_27CCDD008;
    v62[5] = xmmword_27CCDD018;
    v61 = xmmword_27CCDCFB8;
    v62[0] = xmmword_27CCDCFC8;
    v62[1] = xmmword_27CCDCFD8;
    v62[2] = xmmword_27CCDCFE8;
    v57 = xmmword_27CCDCF78;
    v58 = unk_27CCDCF88;
    v59 = xmmword_27CCDCF98;
    v60 = xmmword_27CCDCFA8;
    sub_219F7F6D0(&v57, v55);
    v68 = *&v62[0];
    v65 = v59;
    v66 = v60;
    v67 = v61;
    v63 = v57;
    v64 = v58;
    v69 = *(v62 + 8);
    v70 = *(&v62[1] + 8);
    v74 = *(&v62[5] + 1);
    v72 = *(&v62[3] + 8);
    v73 = *(&v62[4] + 8);
    v71 = *(&v62[2] + 8);
  }

  else
  {
    v62[3] = v83;
    v62[4] = v84;
    v62[5] = v85;
    v61 = v79;
    v62[0] = v80;
    v62[1] = v81;
    v62[2] = v82;
    v57 = v75;
    v58 = v76;
    v59 = v77;
    v60 = v78;
    sub_219F79C1C(v21, *(&v21 + 1));
    v68 = *&v62[0];
    v65 = v59;
    v66 = v60;
    v67 = v61;
    v63 = v57;
    v64 = v58;
    v71 = *(&v62[2] + 8);
    v72 = *(&v62[3] + 8);
    v73 = *(&v62[4] + 8);
    v74 = *(&v62[5] + 1);
    v69 = *(v62 + 8);
    v70 = *(&v62[1] + 8);
  }

  v55[2] = v65;
  v55[3] = v66;
  v55[4] = v67;
  v55[0] = v63;
  v55[1] = v64;
  *(&v56[3] + 8) = v72;
  *(&v56[2] + 8) = v71;
  *(&v56[4] + 8) = v73;
  *&v56[0] = v68;
  *(&v56[5] + 1) = v74;
  *(v56 + 8) = v69;
  *(&v56[1] + 8) = v70;
  v57 = v63;
  v58 = v64;
  v61 = v67;
  v62[0] = v56[0];
  v59 = v65;
  v60 = v66;
  v62[4] = v56[4];
  v62[5] = v56[5];
  v62[2] = v56[2];
  v62[3] = v56[3];
  v62[1] = v56[1];
  nullsub_1();
  v34 = v62[1];
  *(v9 + 136) = v62[2];
  v35 = v62[4];
  *(v9 + 152) = v62[3];
  *(v9 + 168) = v35;
  *(v9 + 184) = v62[5];
  v36 = v59;
  *(v9 + 72) = v60;
  v37 = v62[0];
  *(v9 + 88) = v61;
  *(v9 + 104) = v37;
  *(v9 + 120) = v34;
  v38 = v58;
  *(v9 + 24) = v57;
  *(v9 + 40) = v38;
  *v9 = v21;
  v9[16] = v22;
  v39 = v48;
  v9[17] = v49;
  v9[18] = v39;
  *(v9 + 56) = v36;
  v40 = *(v52 + 24);
  *&v9[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38, &unk_21A0F35D0);
  swift_storeEnumTagMultiPayload();
  v41 = v50;
  sub_21A056ECC(v9, v50, type metadata accessor for ActivitySymbolView);
  sub_219F45500(v19, v16, &qword_27CCDC838, &qword_21A0FC930);
  v42 = v51;
  sub_21A056E68(v41, v51);
  v43 = v53;
  sub_219F45500(v16, v53, &qword_27CCDC838, &qword_21A0FC930);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC848, &qword_21A0FC940);
  v45 = v43 + *(v44 + 48);
  *v45 = 0x4024000000000000;
  *(v45 + 8) = 0;
  sub_21A056E68(v42, v43 + *(v44 + 64));
  sub_219F45500(&v75, &v54, &qword_27CCD9B40, &unk_21A0ED830);
  sub_21A056A78(v41, type metadata accessor for ActivitySymbolView);
  sub_219F6409C(v19, &qword_27CCDC838, &qword_21A0FC930);
  sub_21A056A78(v42, type metadata accessor for ActivitySymbolView);
  return sub_219F6409C(v16, &qword_27CCDC838, &qword_21A0FC930);
}

uint64_t sub_21A053324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC850, &unk_21A0FC948);
  v81 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v75 = (&v74 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v74 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC858, &unk_21A0FC958);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v88 = &v74 - v14;
  v15 = sub_21A0E554C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActivityHeaderView(0);
  v87 = (a1 + *(v20 + 20));
  v21 = v87[1];
  if (v21)
  {
    v22 = v20;
    *&v136[0] = *v87;
    *(&v136[0] + 1) = v21;
    sub_219F3F130();

    v23 = sub_21A0E59EC();
    v83 = v24;
    KeyPath = v23;
    LODWORD(v79) = v25;
    v80 = v26;
    memcpy(v136, a1 + *(v22 + 24), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v136) == 1)
    {
      sub_219F639B0(&v123);
    }

    else
    {
      sub_219F45500(v136, &v123, &qword_27CCD95B8, &unk_21A0EB450);
      v133 = v136[10];
      v134 = v136[11];
      v135 = *&v136[12];
      v129 = v136[6];
      v130 = v136[7];
      v131 = v136[8];
      v132 = v136[9];
      v125 = v136[2];
      v126 = v136[3];
      v127 = v136[4];
      v128 = v136[5];
      v123 = v136[0];
      v124 = v136[1];
    }

    v86 = v3;
    v118 = v133;
    v119 = v134;
    v120 = v135;
    v114 = v129;
    v115 = v130;
    v116 = v131;
    v117 = v132;
    v110 = v125;
    v111 = v126;
    v112 = v127;
    v113 = v128;
    v108 = v123;
    v109 = v124;
    if (qword_27CCD91D8 != -1)
    {
      swift_once();
    }

    v121[2] = xmmword_27CCDC650;
    v121[3] = unk_27CCDC660;
    v121[4] = xmmword_27CCDC670;
    v122 = dword_27CCDC680;
    v121[0] = xmmword_27CCDC630;
    v121[1] = unk_27CCDC640;
    v104 = xmmword_27CCDC650;
    v105 = unk_27CCDC660;
    v106 = xmmword_27CCDC670;
    v107 = dword_27CCDC680;
    v102 = xmmword_27CCDC630;
    v103 = unk_27CCDC640;
    v101 = 9;
    v29 = a1;
    v31 = *a1;
    v30 = a1[1];
    v33 = v29[2];
    v32 = v29[3];
    v34 = v29[4];
    v85 = v29;
    if (*(v29 + 40) == 1)
    {
      *&v98 = v31;
      *(&v98 + 1) = v30;
      *&v99 = v33;
      *(&v99 + 1) = v32;
      v100 = v34;
      sub_219F639D4(v121, v96);
      sub_219F7F800(v31, v30, v33, v32, v34, 1);
    }

    else
    {
      sub_219F639D4(v121, v96);
      sub_219F7F800(v31, v30, v33, v32, v34, 0);
      sub_21A0E66AC();
      v76 = v34;
      v35 = sub_21A0E575C();
      v77 = v15;
      v36 = v35;
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v31, v30, v33, v32, v76, 0);
      (*(v16 + 8))(v19, v77);
    }

    v89 = v98;
    v90 = v99;
    v91 = v100;
    v37 = v79;
    v38 = v83;
    v39 = KeyPath;
    v40 = Text.activityTextModifier(_:fallback:font:environment:)(&v108, &v102, &v101, &v89, KeyPath, v83, v79 & 1, v80);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_219F63A30(v39, v38, v37 & 1);

    v92[0] = v89;
    v92[1] = v90;
    v93 = v91;
    sub_219F5ED9C(v92);
    v94[2] = v104;
    v94[3] = v105;
    v94[4] = v106;
    v95 = v107;
    v94[0] = v102;
    v94[1] = v103;
    sub_219F6409C(v94, &qword_27CCD95B0, &unk_21A0E89E0);
    v96[10] = v118;
    v96[11] = v119;
    v97 = v120;
    v96[6] = v114;
    v96[7] = v115;
    v96[8] = v116;
    v96[9] = v117;
    v96[2] = v110;
    v96[3] = v111;
    v96[4] = v112;
    v96[5] = v113;
    v96[0] = v108;
    v96[1] = v109;
    sub_219F6409C(v96, &qword_27CCD95B8, &unk_21A0EB450);
    v47 = v44 & 1;
    v80 = v40;
    v27 = v42;
    v28 = v44 & 1;
    sub_219F63A40(v40, v42, v47);
    v79 = v46;

    a1 = v85;
    v3 = v86;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v27 = 0;
    v28 = 0;
  }

  v48 = sub_21A053C58();
  v85 = v49;
  v86 = v48;
  v77 = v50;
  v52 = v51;
  KeyPath = swift_getKeyPath();
  v76 = swift_getKeyPath();
  LODWORD(v83) = v52 & 1;
  LOBYTE(v136[0]) = v52 & 1;
  LOBYTE(v123) = 0;
  if (v87[11] || (v53 = type metadata accessor for ActivityHeaderViewModel(0), v54 = v74, sub_219F45500(v87 + *(v53 + 40), v74, &qword_27CCD98D8, &unk_21A0EA100), v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90), v56 = 1, v57 = a1, v58 = (*(*(v55 - 8) + 48))(v54, 1, v55), sub_219F6409C(v54, &qword_27CCD98D8, &unk_21A0EA100), v59 = v58 == 1, a1 = v57, !v59))
  {
    v60 = sub_21A0E55BC();
    v61 = v75;
    *v75 = v60;
    *(v61 + 8) = 0;
    *(v61 + 16) = 1;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC868, &qword_21A0FC970);
    sub_21A0545DC(a1, (v61 + *(v62 + 44)));
    sub_219F4D494(v61, v88, &qword_27CCDC850, &unk_21A0FC948);
    v56 = 0;
  }

  v63 = v88;
  (*(v81 + 56))(v88, v56, 1, v3);
  v64 = v82;
  sub_219F45500(v63, v82, &qword_27CCDC858, &unk_21A0FC958);
  v66 = v79;
  v65 = v80;
  v68 = v77;
  v67 = v78;
  *v78 = v80;
  v67[1] = v27;
  v67[2] = v28;
  v67[3] = v66;
  *&v123 = v86;
  *(&v123 + 1) = v68;
  LOBYTE(v124) = v83;
  *(&v124 + 1) = v85;
  *&v125 = KeyPath;
  *(&v125 + 1) = 0x3FE87AE147AE147BLL;
  v69 = v76;
  *&v126 = v76;
  *(&v126 + 1) = 1;
  LOBYTE(v127) = 0;
  *(v67 + 96) = 0;
  v70 = v126;
  *(v67 + 4) = v125;
  *(v67 + 5) = v70;
  v71 = v124;
  *(v67 + 2) = v123;
  *(v67 + 3) = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC860, &qword_21A0FC968);
  sub_219F45500(v64, v67 + *(v72 + 64), &qword_27CCDC858, &unk_21A0FC958);
  sub_21A006EE4(v65, v27, v28, v66);
  sub_219F45500(&v123, v136, &qword_27CCDC7F0, &qword_21A0FC898);
  sub_21A006F28(v65, v27, v28, v66);
  sub_219F6409C(v88, &qword_27CCDC858, &unk_21A0FC958);
  sub_219F6409C(v64, &qword_27CCDC858, &unk_21A0FC958);
  *&v136[0] = v86;
  *(&v136[0] + 1) = v68;
  LOBYTE(v136[1]) = v83;
  *(&v136[1] + 1) = v85;
  *&v136[2] = KeyPath;
  *(&v136[2] + 1) = 0x3FE87AE147AE147BLL;
  *&v136[3] = v69;
  *(&v136[3] + 1) = 1;
  LOBYTE(v136[4]) = 0;
  sub_219F6409C(v136, &qword_27CCDC7F0, &qword_21A0FC898);
  return sub_21A006F28(v65, v27, v28, v66);
}

uint64_t sub_21A053C58()
{
  v73 = sub_21A0E554C();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v1);
  v74 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ActivityHeaderView(0);
  v4 = v0 + *(v3 + 20);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v80 = v4;
  v148[0] = v5;
  v148[1] = v6;
  v7 = sub_219F3F130();

  v72 = v7;
  v8 = sub_21A0E59EC();
  v77 = v9;
  v78 = v8;
  LODWORD(v76) = v10;
  v79 = v11;
  v12 = *(v3 + 24);
  v81 = v0;
  v71 = v12;
  memcpy(v148, (v0 + v12), 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v148) == 1)
  {
    sub_219F639B0(&v135);
  }

  else
  {
    sub_219F45500(&v148[25], v116, &qword_27CCD95B8, &unk_21A0EB450);
    v144 = *&v148[43];
    v145 = *&v148[45];
    v146 = *&v148[47];
    v140 = *&v148[35];
    v141 = *&v148[37];
    v142 = *&v148[39];
    v143 = *&v148[41];
    v136 = *&v148[27];
    v137 = *&v148[29];
    v138 = *&v148[31];
    v147 = v148[49];
    v139 = *&v148[33];
    v135 = *&v148[25];
  }

  if (qword_27CCD91E0 != -1)
  {
    swift_once();
  }

  v133[2] = xmmword_27CCDC6A8;
  v133[3] = unk_27CCDC6B8;
  v133[4] = xmmword_27CCDC6C8;
  v134 = dword_27CCDC6D8;
  v133[0] = xmmword_27CCDC688;
  v133[1] = unk_27CCDC698;
  v129 = xmmword_27CCDC6A8;
  v130 = unk_27CCDC6B8;
  v131 = xmmword_27CCDC6C8;
  v132 = dword_27CCDC6D8;
  v127 = xmmword_27CCDC688;
  v128 = unk_27CCDC698;
  v126 = 9;
  v14 = *v81;
  v13 = *(v81 + 8);
  v16 = *(v81 + 16);
  v15 = *(v81 + 24);
  v17 = *(v81 + 32);
  if (*(v81 + 40) == 1)
  {
    *&v123 = *v81;
    *(&v123 + 1) = v13;
    *&v124 = v16;
    *(&v124 + 1) = v15;
    v125 = v17;
    sub_219F639D4(v133, v116);
    sub_219F7F800(v14, v13, v16, v15, v17, 1);
  }

  else
  {
    sub_219F639D4(v133, v116);
    sub_219F7F800(v14, v13, v16, v15, v17, 0);
    sub_21A0E66AC();
    v18 = sub_21A0E575C();
    v19 = v73;
    sub_21A0E512C();

    v20 = v74;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v14, v13, v16, v15, v17, 0);
    (*(v75 + 8))(v20, v19);
  }

  v116[0] = v123;
  v116[1] = v124;
  *&v116[2] = v125;
  v21 = v76;
  v23 = v77;
  v22 = v78;
  v24 = Text.activityTextModifier(_:fallback:font:environment:)(&v135, &v127, &v126, v116, v78, v77, v76 & 1, v79);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_219F63A30(v22, v23, v21 & 1);

  v117[0] = v116[0];
  v117[1] = v116[1];
  v118 = *&v116[2];
  sub_219F5ED9C(v117);
  v119[2] = v129;
  v119[3] = v130;
  v119[4] = v131;
  v120 = v132;
  v119[0] = v127;
  v119[1] = v128;
  sub_219F6409C(v119, &qword_27CCD95B0, &unk_21A0E89E0);
  v121[9] = v144;
  v121[10] = v145;
  v121[11] = v146;
  v122 = v147;
  v121[5] = v140;
  v121[6] = v141;
  v121[7] = v142;
  v121[8] = v143;
  v121[1] = v136;
  v121[2] = v137;
  v121[3] = v138;
  v121[4] = v139;
  v121[0] = v135;
  sub_219F6409C(v121, &qword_27CCD95B8, &unk_21A0EB450);
  v31 = *(v80 + 40);
  if (v31)
  {
    *&v116[0] = *(v80 + 32);
    *(&v116[0] + 1) = v31;

    v32 = sub_21A0E59EC();
    v77 = v33;
    LODWORD(v76) = v34;
    v36 = v35;
    memcpy(v116, (v81 + v71), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v116) == 1)
    {
      sub_219F639B0(&v103);
    }

    else
    {
      sub_219F45500(&v116[25], v89, &qword_27CCD95B8, &unk_21A0EB450);
      v113 = v116[35];
      v114 = v116[36];
      v115 = *&v116[37];
      v109 = v116[31];
      v110 = v116[32];
      v111 = v116[33];
      v112 = v116[34];
      v105 = v116[27];
      v106 = v116[28];
      v107 = v116[29];
      v108 = v116[30];
      v103 = v116[25];
      v104 = v116[26];
    }

    LODWORD(v78) = v28;
    v79 = v24;
    v80 = v30;
    if (qword_27CCD91E8 != -1)
    {
      swift_once();
    }

    v101[2] = xmmword_27CCDC700;
    v101[3] = unk_27CCDC710;
    v101[4] = xmmword_27CCDC720;
    v102 = dword_27CCDC730;
    v101[0] = xmmword_27CCDC6E0;
    v101[1] = *algn_27CCDC6F0;
    v97 = xmmword_27CCDC700;
    v98 = unk_27CCDC710;
    v99 = xmmword_27CCDC720;
    v100 = dword_27CCDC730;
    v95 = xmmword_27CCDC6E0;
    v96 = *algn_27CCDC6F0;
    v94 = 9;
    v38 = *v81;
    v37 = *(v81 + 8);
    v39 = *(v81 + 16);
    v40 = *(v81 + 24);
    v41 = *(v81 + 32);
    v42 = *(v81 + 40);
    v70 = v26;
    if (v42 == 1)
    {
      *&v91 = v38;
      *(&v91 + 1) = v37;
      *&v92 = v39;
      *(&v92 + 1) = v40;
      v93 = v41;
      sub_219F639D4(v101, v89);
      sub_219F7F800(v38, v37, v39, v40, v41, 1);
    }

    else
    {
      sub_219F639D4(v101, v89);
      sub_219F7F800(v38, v37, v39, v40, v41, 0);
      sub_21A0E66AC();
      v43 = v75;
      v81 = v36;
      v44 = sub_21A0E575C();
      v72 = v32;
      v45 = v44;
      sub_21A0E512C();

      v32 = v72;
      v46 = v74;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v38, v37, v39, v40, v41, 0);
      v47 = v46;
      v36 = v81;
      (*(v43 + 8))(v47, v73);
    }

    v82 = v91;
    v83 = v92;
    v84 = v93;
    v48 = v76;
    v49 = v77;
    v81 = Text.activityTextModifier(_:fallback:font:environment:)(&v103, &v95, &v94, &v82, v32, v77, v76 & 1, v36);
    v74 = v51;
    v75 = v50;
    LODWORD(v73) = v52;
    sub_219F63A30(v32, v49, v48 & 1);

    v85[0] = v82;
    v85[1] = v83;
    v86 = v84;
    sub_219F5ED9C(v85);
    v87[2] = v97;
    v87[3] = v98;
    v87[4] = v99;
    v88 = v100;
    v87[0] = v95;
    v87[1] = v96;
    sub_219F6409C(v87, &qword_27CCD95B0, &unk_21A0E89E0);
    v89[10] = v113;
    v89[11] = v114;
    v90 = v115;
    v89[6] = v109;
    v89[7] = v110;
    v89[8] = v111;
    v89[9] = v112;
    v89[2] = v105;
    v89[3] = v106;
    v89[4] = v107;
    v89[5] = v108;
    v89[0] = v103;
    v89[1] = v104;
    sub_219F6409C(v89, &qword_27CCD95B8, &unk_21A0EB450);
    sub_21A0E562C();
    v53 = sub_21A0E59DC();
    v55 = v54;
    v57 = v56;
    v58 = sub_21A0E598C();
    v60 = v59;
    LOBYTE(v49) = v61;
    sub_219F63A30(v53, v55, v57 & 1);

    v62 = v73;
    v63 = v81;
    v64 = v75;
    v65 = sub_21A0E598C();
    v76 = v66;
    v77 = v65;
    v72 = v67;
    sub_219F63A30(v58, v60, v49 & 1);

    sub_219F63A30(v63, v64, v62 & 1);

    sub_219F63A30(v79, v70, v78 & 1);

    return v77;
  }

  return v24;
}

uint64_t sub_21A0545DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v112 = a2;
  v103 = type metadata accessor for ActivityAssetView(0);
  v111 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v97 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v10 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v11);
  v102 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC870, &qword_21A0FC978);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v110 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v113 = &v97 - v18;
  v19 = sub_21A0E554C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v108 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ActivityHeaderView(0);
  v24 = a1 + *(v23 + 20);
  v25 = *(v24 + 88);
  v107 = v24;
  if (v25)
  {
    v26 = v23;
    v100 = v9;
    *&v172[0] = *(v24 + 80);
    *(&v172[0] + 1) = v25;
    sub_219F3F130();

    v27 = sub_21A0E59EC();
    v104 = v28;
    v105 = v27;
    v98 = v29;
    v106 = v30;
    memcpy(v172, (a1 + *(v26 + 24)), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v172) == 1)
    {
      sub_219F639B0(&v159);
    }

    else
    {
      sub_219F45500(&v172[37] + 8, &v159, &qword_27CCD95B8, &unk_21A0EB450);
      v169 = *(&v172[47] + 8);
      v170 = *(&v172[48] + 8);
      v171 = *(&v172[49] + 1);
      v165 = *(&v172[43] + 8);
      v166 = *(&v172[44] + 8);
      v167 = *(&v172[45] + 8);
      v168 = *(&v172[46] + 8);
      v161 = *(&v172[39] + 8);
      v162 = *(&v172[40] + 8);
      v163 = *(&v172[41] + 8);
      v164 = *(&v172[42] + 8);
      v159 = *(&v172[37] + 8);
      v160 = *(&v172[38] + 8);
    }

    v99 = v10;
    v101 = v5;
    v154 = v169;
    v155 = v170;
    v156 = v171;
    v150 = v165;
    v151 = v166;
    v152 = v167;
    v153 = v168;
    v146 = v161;
    v147 = v162;
    v148 = v163;
    v149 = v164;
    v144 = v159;
    v145 = v160;
    if (qword_27CCD91F0 != -1)
    {
      swift_once();
    }

    v157[2] = xmmword_27CCDC758;
    v157[3] = unk_27CCDC768;
    v157[4] = xmmword_27CCDC778;
    v158 = dword_27CCDC788;
    v157[0] = xmmword_27CCDC738;
    v157[1] = unk_27CCDC748;
    v140 = xmmword_27CCDC758;
    v141 = unk_27CCDC768;
    v142 = xmmword_27CCDC778;
    v143 = dword_27CCDC788;
    v138 = xmmword_27CCDC738;
    v139 = unk_27CCDC748;
    v137 = 9;
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 16);
    v35 = *(a1 + 24);
    v36 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      *&v134 = *a1;
      *(&v134 + 1) = v33;
      *&v135 = v34;
      *(&v135 + 1) = v35;
      v136 = v36;
      sub_219F639D4(v157, &v121);
      sub_219F7F800(v32, v33, v34, v35, v36, 1);
    }

    else
    {
      sub_219F639D4(v157, &v121);
      sub_219F7F800(v32, v33, v34, v35, v36, 0);
      sub_21A0E66AC();
      v37 = sub_21A0E575C();
      v97 = v19;
      v38 = v20;
      v39 = v37;
      sub_21A0E512C();

      v40 = v108;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v32, v33, v34, v35, v36, 0);
      (*(v38 + 8))(v40, v97);
    }

    v114 = v134;
    v115 = v135;
    v116 = v136;
    v41 = v98;
    v43 = v104;
    v42 = v105;
    v44 = Text.activityTextModifier(_:fallback:font:environment:)(&v144, &v138, &v137, &v114, v105, v104, v98 & 1, v106);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_219F63A30(v42, v43, v41 & 1);

    v117[0] = v114;
    v117[1] = v115;
    v118 = v116;
    sub_219F5ED9C(v117);
    v119[2] = v140;
    v119[3] = v141;
    v119[4] = v142;
    v120 = v143;
    v119[0] = v138;
    v119[1] = v139;
    sub_219F6409C(v119, &qword_27CCD95B0, &unk_21A0E89E0);
    v131 = v154;
    v132 = v155;
    v133 = v156;
    v127 = v150;
    v128 = v151;
    v129 = v152;
    v130 = v153;
    v123 = v146;
    v124 = v147;
    v125 = v148;
    v126 = v149;
    v121 = v144;
    v122 = v145;
    sub_219F6409C(&v121, &qword_27CCD95B8, &unk_21A0EB450);
    KeyPath = swift_getKeyPath();
    v52 = v48 & 1;
    v108 = v44;
    v25 = v46;
    v105 = v52;
    sub_219F63A40(v44, v46, v52);
    v31 = v50;

    v106 = KeyPath;

    v104 = 1;
    v9 = v100;
    v5 = v101;
    v10 = v99;
  }

  else
  {
    v108 = 0;
    v105 = 0;
    v106 = 0;
    v31 = 0;
    v104 = 0;
  }

  v53 = type metadata accessor for ActivityHeaderViewModel(0);
  sub_219F45500(v107 + *(v53 + 40), v9, &qword_27CCD98D8, &unk_21A0EA100);
  if ((*(v10 + 48))(v9, 1, v109) == 1)
  {
    sub_219F6409C(v9, &qword_27CCD98D8, &unk_21A0EA100);
    v54 = v113;
    (*(v111 + 56))(v113, 1, 1, v103);
  }

  else
  {
    v55 = v102;
    v56 = v103;
    sub_219F4D494(v9, v102, &qword_27CCD98D0, &unk_21A0E9C90);
    sub_219F4D494(v55, &v5[v56[5]], &qword_27CCD98D0, &unk_21A0E9C90);
    *v5 = swift_getKeyPath();
    *(v5 + 24) = 0u;
    v5[40] = 0;
    *(v5 + 8) = 0u;
    v57 = &v5[v56[6]];
    sub_219F5EC1C(&v121);
    v58 = v130;
    v57[8] = v129;
    v57[9] = v58;
    v57[10] = v131;
    v59 = v126;
    v57[4] = v125;
    v57[5] = v59;
    v60 = v128;
    v57[6] = v127;
    v57[7] = v60;
    v61 = v122;
    *v57 = v121;
    v57[1] = v61;
    v62 = v124;
    v57[2] = v123;
    v57[3] = v62;
    v63 = &v5[v56[7]];
    sub_219F5EC1C(&v144);
    v64 = v149;
    *(v63 + 4) = v148;
    *(v63 + 5) = v64;
    v65 = v154;
    *(v63 + 9) = v153;
    *(v63 + 10) = v65;
    v66 = v152;
    *(v63 + 7) = v151;
    *(v63 + 8) = v66;
    *(v63 + 6) = v150;
    v67 = v145;
    *v63 = v144;
    *(v63 + 1) = v67;
    v68 = v147;
    *(v63 + 2) = v146;
    *(v63 + 3) = v68;
    v5[v56[8]] = 0;
    v69 = v57[9];
    v167 = v57[8];
    v168 = v69;
    v169 = v57[10];
    v70 = v57[5];
    v163 = v57[4];
    v164 = v70;
    v71 = v57[7];
    v165 = v57[6];
    v166 = v71;
    v72 = v57[1];
    v159 = *v57;
    v160 = v72;
    v73 = v57[3];
    v161 = v57[2];
    v162 = v73;
    sub_219F6409C(&v159, &qword_27CCDA4A8, &unk_21A0F2320);
    v74 = v126;
    v57[4] = v125;
    v57[5] = v74;
    v75 = v131;
    v57[9] = v130;
    v57[10] = v75;
    v76 = v129;
    v57[7] = v128;
    v57[8] = v76;
    v57[6] = v127;
    v77 = v122;
    *v57 = v121;
    v57[1] = v77;
    v78 = v124;
    v57[2] = v123;
    v57[3] = v78;
    v79 = *(v63 + 6);
    v172[7] = *(v63 + 7);
    v80 = *(v63 + 9);
    v172[8] = *(v63 + 8);
    v172[9] = v80;
    v172[10] = *(v63 + 10);
    v81 = *(v63 + 4);
    v172[5] = *(v63 + 5);
    v172[6] = v79;
    v82 = *(v63 + 1);
    v172[0] = *v63;
    v172[1] = v82;
    v83 = *(v63 + 2);
    v172[3] = *(v63 + 3);
    v172[4] = v81;
    v172[2] = v83;
    sub_219F6409C(v172, &qword_27CCD9B40, &unk_21A0ED830);
    v84 = v153;
    *(v63 + 8) = v152;
    *(v63 + 9) = v84;
    *(v63 + 10) = v154;
    v85 = v149;
    *(v63 + 4) = v148;
    *(v63 + 5) = v85;
    v86 = v151;
    *(v63 + 6) = v150;
    *(v63 + 7) = v86;
    v87 = v145;
    *v63 = v144;
    *(v63 + 1) = v87;
    v88 = v147;
    *(v63 + 2) = v146;
    *(v63 + 3) = v88;
    v54 = v113;
    sub_21A056ECC(v5, v113, type metadata accessor for ActivityAssetView);
    (*(v111 + 56))(v54, 0, 1, v56);
  }

  v89 = v110;
  sub_219F45500(v54, v110, &qword_27CCDC870, &qword_21A0FC978);
  v90 = v112;
  v91 = v108;
  *v112 = v108;
  v90[1] = v25;
  v93 = v105;
  v92 = v106;
  v90[2] = v105;
  v90[3] = v31;
  v94 = v104;
  v90[4] = v92;
  v90[5] = v94;
  *(v90 + 48) = 0;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC878, &qword_21A0FC980);
  sub_219F45500(v89, v90 + *(v95 + 48), &qword_27CCDC870, &qword_21A0FC978);
  sub_219F640FC(v91, v25, v93, v31, v92);
  sub_219F6414C(v91, v25, v93, v31, v92);
  sub_219F6409C(v113, &qword_27CCDC870, &qword_21A0FC978);
  sub_219F6409C(v89, &qword_27CCDC870, &qword_21A0FC978);
  return sub_219F6414C(v91, v25, v93, v31, v92);
}

uint64_t sub_21A05503C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E55AC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC830, &qword_21A0FC928);
  return sub_21A052D44(v1, a1 + *(v3 + 44));
}

uint64_t sub_21A05508C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_21A0E573C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7D0, &qword_21A0FC820);
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v33 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610, &unk_21A0FC6D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ActivityHeaderViewModel(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActivityHeaderExpandedLeadingView(0);
  sub_219F45500(v1 + *(v18 + 20), v12, &qword_27CCD9610, &unk_21A0FC6D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_219F6409C(v12, &qword_27CCD9610, &unk_21A0FC6D0);
    return (*(v6 + 56))(v35, 1, 1, v34);
  }

  else
  {
    sub_21A056ECC(v12, v17, type metadata accessor for ActivityHeaderViewModel);
    v20 = sub_21A0E567C();
    v39 = 1;
    sub_21A0555AC(v17, v1, &v50);
    v46 = v56;
    v47[0] = v57[0];
    *(v47 + 9) = *(v57 + 9);
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v40 = v50;
    v41 = v51;
    v48[6] = v56;
    v49[0] = v57[0];
    *(v49 + 9) = *(v57 + 9);
    v48[2] = v52;
    v48[3] = v53;
    v48[4] = v54;
    v48[5] = v55;
    v48[0] = v50;
    v48[1] = v51;
    sub_219F45500(&v40, &v36, &qword_27CCDC7D8, &qword_21A0FC828);
    sub_219F6409C(v48, &qword_27CCDC7D8, &qword_21A0FC828);
    *(&v38[6] + 7) = v46;
    *(&v38[5] + 7) = v45;
    *(&v38[2] + 7) = v42;
    *(&v38[1] + 7) = v41;
    *(&v38[7] + 7) = v47[0];
    v38[8] = *(v47 + 9);
    *(&v38[3] + 7) = v43;
    *(&v38[4] + 7) = v44;
    *(v38 + 7) = v40;
    *&v37[81] = v38[5];
    *&v37[97] = v38[6];
    *&v37[113] = v38[7];
    *&v37[129] = *(v47 + 9);
    *&v37[17] = v38[1];
    *&v37[33] = v38[2];
    *&v37[49] = v38[3];
    *&v37[65] = v38[4];
    v36 = v20;
    v37[0] = v39;
    *&v37[1] = v38[0];
    sub_21A0E572C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7E0, &qword_21A0FC830);
    sub_219F3E490(&qword_27CCDC7E8, &qword_27CCDC7E0, &qword_21A0FC830, MEMORY[0x277CE1198]);
    v21 = v33;
    sub_21A0E5AFC();
    (*(v31 + 8))(v5, v32);
    v57[1] = *&v37[112];
    v57[2] = *&v37[128];
    v58 = v37[144];
    v54 = *&v37[48];
    v55 = *&v37[64];
    v56 = *&v37[80];
    v57[0] = *&v37[96];
    v50 = v36;
    v51 = *v37;
    v52 = *&v37[16];
    v53 = *&v37[32];
    sub_219F6409C(&v50, &qword_27CCDC7E0, &qword_21A0FC830);
    v22 = sub_21A0E579C();
    sub_21A0E51EC();
    v23 = v34;
    v24 = v21 + *(v34 + 36);
    *v24 = v22;
    *(v24 + 8) = v25;
    *(v24 + 16) = v26;
    *(v24 + 24) = v27;
    *(v24 + 32) = v28;
    *(v24 + 40) = 0;
    v29 = v35;
    sub_219F5ABC4(v21, v35);
    (*(v6 + 56))(v29, 0, 1, v23);
    return sub_21A056A78(v17, type metadata accessor for ActivityHeaderViewModel);
  }
}

uint64_t sub_21A0555AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v82 = a3;
  v5 = sub_21A0E554C();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v194[0] = v8;
  v194[1] = v9;
  v10 = sub_219F3F130();

  v72 = v10;
  v11 = sub_21A0E59EC();
  v78 = v12;
  KeyPath = v11;
  LODWORD(v76) = v13;
  v83 = v14;
  v15 = *(type metadata accessor for ActivityHeaderExpandedLeadingView(0) + 24);
  v85 = a2;
  v71 = v15;
  memcpy(v194, (a2 + v15), 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v194) == 1)
  {
    sub_219F639B0(&v181);
  }

  else
  {
    sub_219F45500(&v194[25], v145, &qword_27CCD95B8, &unk_21A0EB450);
    v190 = *&v194[43];
    v191 = *&v194[45];
    v192 = *&v194[47];
    v186 = *&v194[35];
    v187 = *&v194[37];
    v188 = *&v194[39];
    v189 = *&v194[41];
    v182 = *&v194[27];
    v183 = *&v194[29];
    v184 = *&v194[31];
    v193 = v194[49];
    v185 = *&v194[33];
    v181 = *&v194[25];
  }

  v173 = v191;
  v174 = v192;
  v175 = v193;
  v169 = v187;
  v170 = v188;
  v171 = v189;
  v172 = v190;
  v165 = v183;
  v166 = v184;
  v167 = v185;
  v168 = v186;
  v163 = v181;
  v164 = v182;
  if (qword_27CCD91E0 != -1)
  {
    swift_once();
  }

  v176[2] = xmmword_27CCDC6A8;
  v176[3] = unk_27CCDC6B8;
  v176[4] = xmmword_27CCDC6C8;
  v177 = dword_27CCDC6D8;
  v176[0] = xmmword_27CCDC688;
  v176[1] = unk_27CCDC698;
  v159 = xmmword_27CCDC6A8;
  v160 = unk_27CCDC6B8;
  v161 = xmmword_27CCDC6C8;
  v162 = dword_27CCDC6D8;
  v157 = xmmword_27CCDC688;
  v158 = unk_27CCDC698;
  v156 = 2;
  v17 = *v85;
  v16 = *(v85 + 8);
  v19 = *(v85 + 16);
  v18 = *(v85 + 24);
  v20 = *(v85 + 32);
  if (*(v85 + 40) == 1)
  {
    *&v153 = *v85;
    *(&v153 + 1) = v16;
    *&v154 = v19;
    *(&v154 + 1) = v18;
    v155 = v20;
    sub_219F639D4(v176, v145);
    sub_219F7F800(v17, v16, v19, v18, v20, 1);
  }

  else
  {
    sub_219F639D4(v176, v145);
    sub_219F7F800(v17, v16, v19, v18, v20, 0);
    sub_21A0E66AC();
    v73 = v5;
    v21 = sub_21A0E575C();
    v5 = v73;
    sub_21A0E512C();

    v22 = v74;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v17, v16, v19, v18, v20, 0);
    (*(v75 + 8))(v22, v5);
  }

  v145[0] = v153;
  v145[1] = v154;
  *&v145[2] = v155;
  v23 = v76;
  v25 = v78;
  v24 = KeyPath;
  v26 = Text.activityTextModifier(_:fallback:font:environment:)(&v163, &v157, &v156, v145, KeyPath, v78, v76 & 1, v83);
  v80 = v27;
  v81 = v26;
  v29 = v28;
  v84 = v30;
  sub_219F63A30(v24, v25, v23 & 1);

  v147[0] = v145[0];
  v147[1] = v145[1];
  v148 = *&v145[2];
  sub_219F5ED9C(v147);
  v149[2] = v159;
  v149[3] = v160;
  v149[4] = v161;
  v150 = v162;
  v149[0] = v157;
  v149[1] = v158;
  sub_219F6409C(v149, &qword_27CCD95B0, &unk_21A0E89E0);
  v151[10] = v173;
  v151[11] = v174;
  v152 = v175;
  v151[6] = v169;
  v151[7] = v170;
  v151[8] = v171;
  v151[9] = v172;
  v151[2] = v165;
  v151[3] = v166;
  v151[4] = v167;
  v151[5] = v168;
  v151[0] = v163;
  v151[1] = v164;
  sub_219F6409C(v151, &qword_27CCD95B8, &unk_21A0EB450);
  KeyPath = swift_getKeyPath();
  v78 = swift_getKeyPath();
  LODWORD(v83) = v29 & 1;
  v180 = v29 & 1;
  v178 = 0;
  v31 = *(v77 + 40);
  if (v31)
  {
    *&v145[0] = *(v77 + 32);
    *(&v145[0] + 1) = v31;

    v76 = sub_21A0E59EC();
    v77 = v32;
    v72 = v33;
    v70 = v34;
    memcpy(v145, (v85 + v71), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v145) == 1)
    {
      sub_219F639B0(&v132);
    }

    else
    {
      sub_219F45500(&v145[25], &v132, &qword_27CCD95B8, &unk_21A0EB450);
      v142 = v145[35];
      v143 = v145[36];
      v144 = *&v145[37];
      v138 = v145[31];
      v139 = v145[32];
      v140 = v145[33];
      v141 = v145[34];
      v134 = v145[27];
      v135 = v145[28];
      v136 = v145[29];
      v137 = v145[30];
      v132 = v145[25];
      v133 = v145[26];
    }

    v126 = v142;
    v127 = v143;
    v128 = v144;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v125 = v141;
    v118 = v134;
    v119 = v135;
    v120 = v136;
    v121 = v137;
    v116 = v132;
    v117 = v133;
    if (qword_27CCD91E8 != -1)
    {
      swift_once();
    }

    v129[2] = xmmword_27CCDC700;
    v129[3] = unk_27CCDC710;
    v129[4] = xmmword_27CCDC720;
    v130 = dword_27CCDC730;
    v129[0] = xmmword_27CCDC6E0;
    v129[1] = *algn_27CCDC6F0;
    v112 = xmmword_27CCDC700;
    v113 = unk_27CCDC710;
    v114 = xmmword_27CCDC720;
    v115 = dword_27CCDC730;
    v110 = xmmword_27CCDC6E0;
    v111 = *algn_27CCDC6F0;
    v109 = 6;
    v43 = *v85;
    v42 = *(v85 + 8);
    v45 = *(v85 + 16);
    v44 = *(v85 + 24);
    v46 = *(v85 + 32);
    if (*(v85 + 40) == 1)
    {
      *&v106 = *v85;
      *(&v106 + 1) = v42;
      *&v107 = v45;
      *(&v107 + 1) = v44;
      v108 = v46;
      sub_219F639D4(v129, &v93);
      sub_219F7F800(v43, v42, v45, v44, v46, 1);
    }

    else
    {
      sub_219F639D4(v129, &v93);
      sub_219F7F800(v43, v42, v45, v44, v46, 0);
      sub_21A0E66AC();
      v73 = v5;
      v47 = sub_21A0E575C();
      sub_21A0E512C();

      v48 = v74;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v43, v42, v45, v44, v46, 0);
      (*(v75 + 8))(v48, v73);
    }

    v86 = v106;
    v87 = v107;
    v88 = v108;
    v49 = v70;
    v50 = v76;
    v51 = v72;
    v52 = Text.activityTextModifier(_:fallback:font:environment:)(&v116, &v110, &v109, &v86, v76, v72, v70 & 1, v77);
    v54 = v53;
    LODWORD(v85) = v55;
    v37 = v56;
    sub_219F63A30(v50, v51, v49 & 1);

    v89[0] = v86;
    v89[1] = v87;
    v90 = v88;
    sub_219F5ED9C(v89);
    v91[2] = v112;
    v91[3] = v113;
    v91[4] = v114;
    v92 = v115;
    v91[0] = v110;
    v91[1] = v111;
    sub_219F6409C(v91, &qword_27CCD95B0, &unk_21A0E89E0);
    v103 = v126;
    v104 = v127;
    v105 = v128;
    v99 = v122;
    v100 = v123;
    v101 = v124;
    v102 = v125;
    v95 = v118;
    v96 = v119;
    v97 = v120;
    v98 = v121;
    v93 = v116;
    v94 = v117;
    sub_219F6409C(&v93, &qword_27CCD95B8, &unk_21A0EB450);
    v38 = swift_getKeyPath();
    v31 = swift_getKeyPath();
    v36 = v54;
    v35 = v52;
    LOBYTE(v86) = v85 & 1;
    v131 = 0;
    v41 = v85 & 1;
    v39 = 0x3FE999999999999ALL;
    v40 = 1;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v57 = v80;
  v58 = v81;
  *&v93 = v81;
  *(&v93 + 1) = v80;
  LOBYTE(v94) = v83;
  *(&v94 + 1) = *v179;
  DWORD1(v94) = *&v179[3];
  v59 = v78;
  v60 = KeyPath;
  *(&v94 + 1) = v84;
  *&v95 = KeyPath;
  *(&v95 + 1) = 0x3FE77CED916872B0;
  *&v96 = v78;
  *(&v96 + 1) = 1;
  LOBYTE(v97) = 0;
  v61 = v96;
  LOBYTE(v146[0]) = 0;
  v145[52] = v95;
  v145[53] = v96;
  v145[50] = v93;
  v145[51] = v94;
  *&v116 = v35;
  *(&v116 + 1) = v36;
  *&v117 = v41;
  *(&v117 + 1) = v37;
  *&v118 = v38;
  *(&v118 + 1) = v39;
  *&v119 = v31;
  *(&v119 + 1) = v40;
  LOBYTE(v120) = 0;
  *(v146 + 8) = v116;
  BYTE8(v146[4]) = 0;
  *(&v146[3] + 8) = v119;
  *(&v146[2] + 8) = v118;
  *(&v146[1] + 8) = v117;
  v62 = v93;
  v63 = v94;
  v64 = v82;
  v82[2] = v95;
  v64[3] = v61;
  *v64 = v62;
  v64[1] = v63;
  v65 = v146[0];
  v66 = v146[1];
  *(v64 + 121) = *(&v146[3] + 9);
  v67 = v146[3];
  v64[6] = v146[2];
  v64[7] = v67;
  v64[4] = v65;
  v64[5] = v66;
  *&v132 = v35;
  *(&v132 + 1) = v36;
  *&v133 = v41;
  *(&v133 + 1) = v37;
  *&v134 = v38;
  *(&v134 + 1) = v39;
  *&v135 = v31;
  *(&v135 + 1) = v40;
  LOBYTE(v136) = 0;
  sub_219F45500(&v93, v145, &qword_27CCDC7F0, &qword_21A0FC898);
  sub_219F45500(&v116, v145, &qword_27CCDBEB0, &unk_21A0FC8A0);
  sub_219F6409C(&v132, &qword_27CCDBEB0, &unk_21A0FC8A0);
  *&v145[0] = v58;
  *(&v145[0] + 1) = v57;
  LOBYTE(v145[1]) = v83;
  *(&v145[1] + 1) = *v179;
  DWORD1(v145[1]) = *&v179[3];
  *(&v145[1] + 1) = v84;
  *&v145[2] = v60;
  *(&v145[2] + 1) = 0x3FE77CED916872B0;
  *&v145[3] = v59;
  *(&v145[3] + 1) = 1;
  LOBYTE(v145[4]) = 0;
  return sub_219F6409C(v145, &qword_27CCDC7F0, &qword_21A0FC898);
}

uint64_t sub_21A056088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7B0, &qword_21A0FC7D8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v59 - v5;
  v7 = sub_21A0E573C();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v61 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ActivitySymbolView(0);
  MEMORY[0x28223BE20](v62, v10);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7B8, &qword_21A0FC7E0);
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7C0, &qword_21A0FC7E8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v67 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v68 = v59 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610, &unk_21A0FC6D0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v59 - v25;
  sub_219F45500(v2, v59 - v25, &qword_27CCD9610, &unk_21A0FC6D0);
  v27 = type metadata accessor for ActivityHeaderViewModel(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_219F6409C(v26, &qword_27CCD9610, &unk_21A0FC6D0);
    swift_storeEnumTagMultiPayload();
    sub_21A056714();
    return sub_21A0E56BC();
  }

  else
  {
    v59[1] = v17;
    v59[2] = v3;
    v60 = v6;
    sub_219F6409C(v26, &qword_27CCD9610, &unk_21A0FC6D0);
    if (qword_27CCD9208 != -1)
    {
      swift_once();
    }

    v29 = xmmword_27CCDD760;
    v30 = byte_27CCDD770;
    v31 = *&byte_27CCDD771;
    v32 = (v2 + *(type metadata accessor for ActivityHeaderExpandedTrailingView(0) + 20));
    v33 = v32[7];
    v34 = v32[9];
    v78 = v32[8];
    v35 = v78;
    v79 = v34;
    v36 = v32[9];
    v80 = v32[10];
    v37 = v32[3];
    v38 = v32[5];
    v74 = v32[4];
    v39 = v74;
    v75 = v38;
    v40 = v32[5];
    v41 = v32[7];
    v76 = v32[6];
    v42 = v76;
    v77 = v41;
    v43 = v32[1];
    v44 = v32[3];
    v72 = v32[2];
    v45 = v72;
    v73 = v44;
    v46 = v32[1];
    v71[0] = *v32;
    v47 = v71[0];
    v71[1] = v46;
    *(v12 + 136) = v33;
    *(v12 + 152) = v35;
    *(v12 + 168) = v36;
    *(v12 + 184) = v32[10];
    *(v12 + 72) = v37;
    *(v12 + 88) = v39;
    *(v12 + 104) = v40;
    *(v12 + 120) = v42;
    *(v12 + 24) = v47;
    *(v12 + 40) = v43;
    *v12 = v29;
    v12[16] = v30;
    *(v12 + 17) = v31;
    *(v12 + 56) = v45;
    v48 = v62;
    v49 = *(v62 + 24);
    *&v12[v49] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38, &unk_21A0F35D0);
    swift_storeEnumTagMultiPayload();
    sub_219F79C1C(v29, *(&v29 + 1));
    sub_219F45500(v71, v70, &qword_27CCD9B40, &unk_21A0ED830);
    v50 = v61;
    sub_21A0E571C();
    v51 = sub_21A056830(&qword_27CCDB4F0, type metadata accessor for ActivitySymbolView, &unk_21A0EF164);
    sub_21A0E5AFC();
    (*(v65 + 8))(v50, v66);
    sub_21A056A78(v12, type metadata accessor for ActivitySymbolView);
    v70[0] = v48;
    v70[1] = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v67;
    v53 = v64;
    sub_21A0E5AEC();
    (*(v63 + 8))(v16, v53);
    sub_21A0E562C();
    v54 = sub_21A0E59DC();
    v56 = v55;
    LOBYTE(v50) = v57;
    v58 = v68;
    sub_21A0E538C();
    sub_219F63A30(v54, v56, v50 & 1);

    sub_219F5AAEC(v52);
    sub_219F5AB54(v58, v60);
    swift_storeEnumTagMultiPayload();
    sub_21A056714();
    sub_21A0E56BC();
    return sub_219F5AAEC(v58);
  }
}

unint64_t sub_21A056714()
{
  result = qword_27CCDC7C8;
  if (!qword_27CCDC7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC7C0, &qword_21A0FC7E8);
    type metadata accessor for ActivitySymbolView(255);
    sub_21A056830(&qword_27CCDB4F0, type metadata accessor for ActivitySymbolView, &unk_21A0EF164);
    swift_getOpaqueTypeConformance2();
    sub_21A056830(&qword_27CCD9668, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC7C8);
  }

  return result;
}

uint64_t sub_21A056830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21A056878()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC630 = v0;
  BYTE4(xmmword_27CCDC670) = 32;
  LODWORD(xmmword_27CCDC670) = 0;
  *(&xmmword_27CCDC670 + 1) = 0;
  dword_27CCDC680 = 50726401;
  return result;
}

double sub_21A0568F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC688 = v0;
  BYTE4(xmmword_27CCDC6C8) = 32;
  LODWORD(xmmword_27CCDC6C8) = 0;
  *(&xmmword_27CCDC6C8 + 1) = 0;
  dword_27CCDC6D8 = 50463489;
  return result;
}

double sub_21A056978()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC6E0 = v0;
  BYTE4(xmmword_27CCDC720) = 32;
  LODWORD(xmmword_27CCDC720) = 0;
  *(&xmmword_27CCDC720 + 1) = 0;
  dword_27CCDC730 = 50660097;
  return result;
}

double sub_21A0569F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC738 = v0;
  BYTE4(xmmword_27CCDC778) = 32;
  LODWORD(xmmword_27CCDC778) = 0;
  *(&xmmword_27CCDC778 + 1) = 0;
  dword_27CCDC788 = 50661121;
  return result;
}

uint64_t sub_21A056A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A056B20(uint64_t a1)
{
  sub_219F41930(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityHeaderViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_219F41930(319, &qword_27CCD9B20, &type metadata for ActivityHeaderTheme, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_219F41930(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21A056C40()
{
  result = qword_27CCDC808;
  if (!qword_27CCDC808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC810, &qword_21A0FC8C8);
    sub_21A056714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC808);
  }

  return result;
}

unint64_t sub_21A056CCC()
{
  result = qword_27CCDC818;
  if (!qword_27CCDC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC820, qword_21A0FC8D0);
    sub_21A056D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC818);
  }

  return result;
}

unint64_t sub_21A056D50()
{
  result = qword_27CCDC828;
  if (!qword_27CCDC828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC7D0, &qword_21A0FC820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC7E0, &qword_21A0FC830);
    sub_219F3E490(&qword_27CCDC7E8, &qword_27CCDC7E0, &qword_21A0FC830, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC828);
  }

  return result;
}

uint64_t sub_21A056E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySymbolView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A056ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for BalanceOfPowerView(uint64_t a1)
{
  result = qword_27CCDC890;
  if (!qword_27CCDC890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A056FA8(uint64_t a1)
{
  result = type metadata accessor for BalanceOfPowerData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21A057050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
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

uint64_t sub_21A057098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A057120(uint64_t a1)
{
  sub_21A0E591C();
  sub_21A0E584C();
  v1 = sub_21A0E58CC();

  return v1;
}

uint64_t sub_21A057160(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), double (*a4)(void))
{
  if (a1 > 1u)
  {
    a3();
  }

  else if (a1)
  {
    a2();
  }

  else
  {
    sub_21A0E592C();
  }

  a4();
  v5 = sub_21A0E58CC();

  return v5;
}

uint64_t sub_21A0571D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8B0, &qword_21A0FCC30);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v49 - v8;
  *v9 = sub_21A0E559C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8B8, &qword_21A0FCC38);
  sub_21A05773C(a1, &v9[*(v10 + 44)]);
  v11 = type metadata accessor for BalanceOfPowerData(0);
  v12 = (a1 + v11[5]);
  v13 = *v12;
  v14 = type metadata accessor for BalanceOfPowerData.Entity(0);
  v15 = *(v14 + 28);
  v16 = type metadata accessor for ElectionEntityTheme(0);
  v17 = v12 + v15 + *(v16 + 32);
  *(v72 + 13) = *(v17 + 61);
  v18 = *(v17 + 1);
  v19 = *(v17 + 3);
  v71 = *(v17 + 2);
  v72[0] = v19;
  v20 = *(v17 + 1);
  v70[0] = *v17;
  v70[1] = v20;
  v21 = (a1 + v11[6]);
  v22 = v21 + *(v14 + 28) + *(v16 + 32);
  *(v75 + 13) = *(v22 + 61);
  v23 = *(v22 + 1);
  v24 = *(v22 + 3);
  v74 = *(v22 + 2);
  v75[0] = v24;
  v25 = *(v22 + 1);
  v73[0] = *v22;
  v73[1] = v25;
  v26 = v11[7];
  v27 = *(v17 + 3);
  *(v79 + 13) = *(v17 + 61);
  v78 = v71;
  v79[0] = v27;
  v28 = *v21;
  v76 = v70[0];
  v77 = v18;
  v29 = *(a1 + v26);
  *&v68[3] = v73[0];
  v30 = *(v22 + 3);
  *&v68[64] = *(v22 + 61);
  *&v68[51] = v30;
  *&v68[35] = v74;
  *&v68[19] = v23;
  type metadata accessor for BalanceOfPowerView(0);
  v31 = v29;
  v32 = v28;
  v33 = v13;
  sub_219F72F28(v70, v58);
  sub_219F72F28(v73, v58);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  *(v69 + 3) = *&v69[7];
  *(&v69[2] + 3) = *&v69[9];
  *(&v69[4] + 3) = *&v69[11];
  v49 = sub_21A0E55BC();
  LOBYTE(v59[0]) = 1;
  sub_21A058284(a1, v58);
  memcpy(v53, v58, sizeof(v53));
  memcpy(v54, v58, sizeof(v54));
  sub_219F45500(v53, v57, &qword_27CCDC8C0, &qword_21A0FCC40);
  sub_219F6409C(v54, &qword_27CCDC8C0, &qword_21A0FCC40);
  memcpy(&v52[7], v53, 0x180uLL);
  LOBYTE(v11) = v59[0];
  v34 = v51;
  sub_219F45500(v9, v51, &qword_27CCDC8B0, &qword_21A0FCC30);
  v35 = v34;
  v36 = v50;
  sub_219F45500(v35, v50, &qword_27CCDC8B0, &qword_21A0FCC30);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8C8, &unk_21A0FCC48);
  v38 = *(v37 + 48);
  *&v56[24] = v77;
  *&v56[40] = v78;
  *&v56[56] = v79[0];
  *&v56[8] = v76;
  *&v56[93] = *&v68[16];
  *&v56[109] = *&v68[32];
  v39 = v36 + v38;
  *&v55 = v33;
  *(&v55 + 1) = v32;
  *v56 = v31;
  *&v56[69] = *(v79 + 13);
  *&v56[125] = *&v68[48];
  *&v56[141] = *&v68[64];
  *&v56[77] = *v68;
  *&v56[196] = *(&v69[5] + 7);
  *&v56[181] = *&v69[4];
  *&v56[165] = *&v69[2];
  *&v56[149] = *v69;
  v40 = *&v56[64];
  *(v39 + 64) = *&v56[48];
  *(v39 + 80) = v40;
  v41 = *&v56[32];
  *(v39 + 32) = *&v56[16];
  *(v39 + 48) = v41;
  v42 = *&v56[128];
  *(v39 + 128) = *&v56[112];
  *(v39 + 144) = v42;
  v43 = *&v56[96];
  *(v39 + 96) = *&v56[80];
  *(v39 + 112) = v43;
  *(v39 + 208) = *&v56[192];
  v44 = *&v56[176];
  *(v39 + 176) = *&v56[160];
  *(v39 + 192) = v44;
  *(v39 + 160) = *&v56[144];
  v45 = *v56;
  *v39 = v55;
  *(v39 + 16) = v45;
  v46 = *(v37 + 64);
  v47 = v49;
  v57[0] = v49;
  v57[1] = 0;
  LOBYTE(v57[2]) = v11;
  memcpy(&v57[2] + 1, v52, 0x187uLL);
  memcpy((v36 + v46), v57, 0x198uLL);
  sub_219F45500(&v55, v58, &qword_27CCDB2D8, &unk_21A0F25E0);
  sub_219F45500(v57, v58, &qword_27CCDC8D0, &qword_21A0FCC58);
  sub_219F6409C(v9, &qword_27CCDC8B0, &qword_21A0FCC30);
  v58[0] = v47;
  v58[1] = 0;
  LOBYTE(v58[2]) = v11;
  memcpy(&v58[2] + 1, v52, 0x187uLL);
  sub_219F6409C(v58, &qword_27CCDC8D0, &qword_21A0FCC58);
  *v59 = v33;
  *&v59[1] = v32;
  *&v59[2] = v31;
  v61 = v77;
  v62 = v78;
  *v63 = v79[0];
  *&v63[13] = *(v79 + 13);
  v60 = v76;
  v64 = *&v68[64];
  *&v63[69] = *&v68[48];
  *&v63[53] = *&v68[32];
  *&v63[37] = *&v68[16];
  *&v63[21] = *v68;
  v65 = *v69;
  v66 = *&v69[2];
  *v67 = *&v69[4];
  *&v67[15] = *(&v69[5] + 7);
  sub_219F6409C(v59, &qword_27CCDB2D8, &unk_21A0F25E0);
  return sub_219F6409C(v51, &qword_27CCDC8B0, &qword_21A0FCC30);
}

uint64_t sub_21A05773C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8E0, &qword_21A0FCC98);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v49 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v45[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8E8, &qword_21A0FCCA0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v51 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45[-v15];
  *v16 = sub_21A0E559C();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8F0, &qword_21A0FCCA8);
  sub_21A057AF4(a1, &v16[*(v17 + 44)]);
  v48 = a1;
  v18 = *a1;
  v19 = a1[1];
  v52 = v18;
  v53 = v19;
  sub_219F3F130();

  v20 = sub_21A0E59EC();
  v22 = v21;
  v24 = v23;
  LODWORD(v52) = sub_21A0E56DC();
  v25 = sub_21A0E597C();
  v27 = v26;
  v29 = v28;
  sub_219F63A30(v20, v22, v24 & 1);

  v30 = type metadata accessor for BalanceOfPowerView(0);
  sub_21A057120(v30);
  v31 = sub_21A0E599C();
  v33 = v32;
  v46 = v34;
  v47 = v35;

  sub_219F63A30(v25, v27, v29 & 1);

  *v9 = sub_21A0E559C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8F8, &qword_21A0FCCB0);
  sub_21A057EBC(v48, &v9[*(v36 + 44)]);
  v37 = v51;
  sub_219F45500(v16, v51, &qword_27CCDC8E8, &qword_21A0FCCA0);
  v38 = v49;
  sub_219F45500(v9, v49, &qword_27CCDC8E0, &qword_21A0FCC98);
  v39 = v37;
  v40 = v50;
  sub_219F45500(v39, v50, &qword_27CCDC8E8, &qword_21A0FCCA0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC900, &unk_21A0FCCB8);
  v42 = v40 + *(v41 + 48);
  v43 = v40;
  *v42 = v31;
  *(v42 + 8) = v33;
  LOBYTE(v40) = v46 & 1;
  *(v42 + 16) = v46 & 1;
  *(v42 + 24) = v47;
  sub_219F45500(v38, v43 + *(v41 + 64), &qword_27CCDC8E0, &qword_21A0FCC98);
  sub_219F63A40(v31, v33, v40);

  sub_219F6409C(v9, &qword_27CCDC8E0, &qword_21A0FCC98);
  sub_219F6409C(v16, &qword_27CCDC8E8, &qword_21A0FCCA0);
  sub_219F6409C(v38, &qword_27CCDC8E0, &qword_21A0FCC98);
  sub_219F63A30(v31, v33, v40);

  return sub_219F6409C(v51, &qword_27CCDC8E8, &qword_21A0FCCA0);
}

uint64_t sub_21A057AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480, &unk_21A0ED7B0);
  MEMORY[0x28223BE20](v5, v6);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498, &qword_21A0F9150) - 8;
  v8 = MEMORY[0x28223BE20](v37, v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - v11;
  v36 = *(a1 + *(type metadata accessor for BalanceOfPowerData(0) + 20));
  v41 = v36;
  sub_21A0E499C();
  sub_219F9DCCC();
  sub_21A0E463C();
  sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480, &unk_21A0ED7B0, MEMORY[0x277CC8CE8]);
  v13 = sub_21A0E59CC();
  v15 = v14;
  v17 = v16;
  v40 = sub_21A0E56DC();
  v18 = sub_21A0E597C();
  v20 = v19;
  v22 = v21;
  sub_219F63A30(v13, v15, v17 & 1);

  v23 = type metadata accessor for BalanceOfPowerView(0);
  sub_21A057160(*(a1 + *(v23 + 20)), MEMORY[0x277CE0938], MEMORY[0x277CE0938], MEMORY[0x277CE09B8]);
  v24 = sub_21A0E599C();
  v26 = v25;
  LOBYTE(v13) = v27;
  v29 = v28;

  sub_219F63A30(v18, v20, v22 & 1);

  v30 = &v12[*(v37 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0, &qword_21A0ED7C0);
  sub_21A0E53DC();
  *v30 = swift_getKeyPath();
  *v12 = v24;
  *(v12 + 1) = v26;
  v12[16] = v13 & 1;
  *(v12 + 3) = v29;
  v31 = v38;
  sub_219F45500(v12, v38, &qword_27CCDA498, &qword_21A0F9150);
  v32 = v39;
  sub_219F45500(v31, v39, &qword_27CCDA498, &qword_21A0F9150);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC910, &qword_21A0FCD00) + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_219F6409C(v12, &qword_27CCDA498, &qword_21A0F9150);
  return sub_219F6409C(v31, &qword_27CCDA498, &qword_21A0F9150);
}

uint64_t sub_21A057EBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480, &unk_21A0ED7B0);
  MEMORY[0x28223BE20](v5, v6);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498, &qword_21A0F9150) - 8;
  v8 = MEMORY[0x28223BE20](v38, v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v36 - v11;
  v37 = *(a1 + *(type metadata accessor for BalanceOfPowerData(0) + 24));
  v42 = v37;
  sub_21A0E499C();
  sub_219F9DCCC();
  sub_21A0E463C();
  sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480, &unk_21A0ED7B0, MEMORY[0x277CC8CE8]);
  v13 = sub_21A0E59CC();
  v15 = v14;
  v17 = v16;
  v41 = sub_21A0E56DC();
  v18 = sub_21A0E597C();
  v20 = v19;
  v22 = v21;
  sub_219F63A30(v13, v15, v17 & 1);

  v23 = type metadata accessor for BalanceOfPowerView(0);
  sub_21A057160(*(a1 + *(v23 + 20)), MEMORY[0x277CE0938], MEMORY[0x277CE0938], MEMORY[0x277CE09B8]);
  v24 = sub_21A0E599C();
  v26 = v25;
  LOBYTE(v13) = v27;
  v29 = v28;

  sub_219F63A30(v18, v20, v22 & 1);

  v30 = &v12[*(v38 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0, &qword_21A0ED7C0);
  sub_21A0E53DC();
  *v30 = swift_getKeyPath();
  *v12 = v24;
  *(v12 + 1) = v26;
  v12[16] = v13 & 1;
  *(v12 + 3) = v29;
  v31 = v39;
  sub_219F45500(v12, v39, &qword_27CCDA498, &qword_21A0F9150);
  v32 = v40;
  *v40 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC908, &qword_21A0FCCF8);
  sub_219F45500(v31, v33 + *(v34 + 48), &qword_27CCDA498, &qword_21A0F9150);
  sub_219F6409C(v12, &qword_27CCDA498, &qword_21A0F9150);
  return sub_219F6409C(v31, &qword_27CCDA498, &qword_21A0F9150);
}

uint64_t sub_21A058284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BalanceOfPowerData(0);
  v5 = a1 + *(v4 + 20);
  v6 = type metadata accessor for BalanceOfPowerData.Entity(0);
  v7 = (v5 + *(v6 + 28));
  if (v7[3])
  {
    v61 = v7[3];
    v62 = v7[2];
  }

  else
  {
    v61 = v7[5];
    v62 = v7[4];
  }

  v59 = *(v5 + 16);
  v60 = *(v5 + 8);
  v57 = *(v5 + 32);
  v58 = *(v5 + 24);
  v46 = *(v5 + 40) | (*(v5 + 42) << 16);
  sub_219F79BC0(v60, v59, v58, v57, *(v5 + 40));

  sub_219F79C7C(0, 0, 0, 0, 0);
  sub_219F79C7C(0, 0, 0, 0, 0);
  if (*(v5 + 43) > 1u)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 1;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 92) = 62;
    v45 = 0x2000000000;
    v56 = v11;
    *(v11 + 88) = 0;
  }

  else
  {
    v8 = v7 + *(type metadata accessor for ElectionEntityTheme(0) + 32);
    v9 = *(v8 + 3);
    *v102 = *(v8 + 2);
    *&v102[16] = v9;
    *&v102[29] = *(v8 + 61);
    v10 = *(v8 + 1);
    v100 = *v8;
    v101 = v10;
    sub_219F72F28(&v100, v85);
    v56 = v100;
    v52 = v101;
    v53 = *(&v100 + 1);
    v50 = *v102;
    v51 = *(&v101 + 1);
    v48 = *&v102[16];
    v49 = *&v102[8];
    v47 = *&v102[24];
    v45 = *&v102[32] | (v102[36] << 32);
  }

  v12 = *(a1 + *(type metadata accessor for BalanceOfPowerView(0) + 20));
  v55 = sub_21A057160(v12, MEMORY[0x277CE0A48], MEMORY[0x277CE0A40], MEMORY[0x277CE09D0]);
  KeyPath = swift_getKeyPath();
  v13 = a1 + *(v4 + 24);
  v14 = (v13 + *(v6 + 28));
  if (v14[3])
  {
    v43 = v14[3];
    v44 = v14[2];
  }

  else
  {
    v43 = v14[5];
    v44 = v14[4];
  }

  v15 = *(v13 + 40) | (*(v13 + 42) << 16);
  v41 = *(v13 + 16);
  v42 = *(v13 + 8);
  v39 = *(v13 + 32);
  v40 = *(v13 + 24);
  sub_219F79BC0(v42, v41, v40, v39, *(v13 + 40));

  sub_219F79C7C(0, 0, 0, 0, 0);
  sub_219F79C7C(0, 0, 0, 0, 0);
  if (*(v13 + 43) > 1u)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 1;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 92) = 62;
    v20 = 0x2000000000;
    *(v19 + 88) = 0;
  }

  else
  {
    v16 = v14 + *(type metadata accessor for ElectionEntityTheme(0) + 32);
    v17 = *(v16 + 3);
    *v102 = *(v16 + 2);
    *&v102[16] = v17;
    *&v102[29] = *(v16 + 61);
    v18 = *(v16 + 1);
    v100 = *v16;
    v101 = v18;
    sub_219F72F28(&v100, v85);
    v35 = *(&v100 + 1);
    v19 = v100;
    v36 = v101;
    v37 = *v102;
    v4 = *&v102[24];
    v38 = *&v102[16];
    v20 = *&v102[32] | (v102[36] << 32);
  }

  v21 = sub_21A057160(v12, MEMORY[0x277CE0A48], MEMORY[0x277CE0A40], MEMORY[0x277CE09D0]);
  v22 = swift_getKeyPath();
  *&v64 = v62;
  *(&v64 + 1) = v61;
  v65 = 0u;
  memset(v66, 0, 19);
  *&v66[24] = v60;
  *&v67 = v59;
  *(&v67 + 1) = v58;
  *&v68 = v57;
  BYTE10(v68) = BYTE2(v46);
  WORD4(v68) = v46;
  *&v69 = v56;
  *(&v69 + 1) = v53;
  *&v70 = v52;
  *(&v70 + 1) = v51;
  *&v71 = v50;
  *(&v71 + 1) = v49;
  *&v72 = v48;
  *(&v72 + 1) = v47;
  BYTE4(v73) = BYTE4(v45);
  LODWORD(v73) = v45;
  *(&v73 + 1) = KeyPath;
  v74 = v55;
  v78[2] = BYTE2(v15);
  *v78 = v15;
  memset(&v78[8], 0, 35);
  *&v79 = v19;
  *(&v79 + 1) = v35;
  v80 = v36;
  v81 = v37;
  *&v82 = v38;
  *(&v82 + 1) = v4;
  *(a2 + 176) = v55;
  BYTE4(v83) = BYTE4(v20);
  LODWORD(v83) = v20;
  *(&v83 + 1) = v22;
  *&v63[183] = v21;
  *&v63[167] = v83;
  *&v63[151] = v82;
  *&v63[135] = v81;
  *&v63[55] = *v78;
  *&v63[119] = v80;
  *&v63[103] = v79;
  *&v63[87] = *&v78[32];
  *&v63[71] = *&v78[16];
  v23 = v71;
  v24 = v72;
  v25 = v73;
  v26 = v67;
  v27 = v68;
  v28 = v69;
  v29 = v70;
  v30 = v64;
  v31 = v65;
  v32 = *v66;
  v33 = *&v66[16];
  *(a2 + 192) = 1;
  *(a2 + 321) = *&v63[128];
  *(a2 + 337) = *&v63[144];
  *(a2 + 353) = *&v63[160];
  *(a2 + 257) = *&v63[64];
  *(a2 + 273) = *&v63[80];
  *(a2 + 289) = *&v63[96];
  *(a2 + 305) = *&v63[112];
  *&v77 = v40;
  *(&v77 + 1) = v39;
  *&v75 = v44;
  *(&v75 + 1) = v43;
  *&v76 = v42;
  *(&v76 + 1) = v41;
  *&v63[39] = v77;
  *&v63[23] = v76;
  *&v63[7] = v75;
  *(a2 + 128) = v23;
  *(a2 + 144) = v24;
  *(a2 + 160) = v25;
  *(a2 + 64) = v26;
  *(a2 + 80) = v27;
  *(a2 + 96) = v28;
  *(a2 + 112) = v29;
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 184) = 0;
  *(a2 + 368) = *&v63[175];
  *(a2 + 193) = *v63;
  *(a2 + 209) = *&v63[16];
  *(a2 + 225) = *&v63[32];
  *(a2 + 241) = *&v63[48];
  v85[0] = v44;
  v85[1] = v43;
  v85[2] = v42;
  v85[3] = v41;
  v85[4] = v40;
  v85[5] = v39;
  v87 = BYTE2(v15);
  v86 = v15;
  v88 = 0u;
  v90 = v19;
  v91 = v35;
  v92 = v36;
  v93 = v37;
  v94 = v38;
  v95 = v4;
  v97 = BYTE4(v20);
  v96 = v20;
  v98 = v22;
  v84 = v21;
  v99 = v21;
  memset(v89, 0, sizeof(v89));
  sub_219F45500(&v64, &v100, &qword_27CCDC8D8, &qword_21A0FCC90);
  sub_219F45500(&v75, &v100, &qword_27CCDC8D8, &qword_21A0FCC90);
  sub_219F6409C(v85, &qword_27CCDC8D8, &qword_21A0FCC90);
  *&v100 = v62;
  *(&v100 + 1) = v61;
  v101 = 0u;
  memset(v102, 0, 19);
  *&v102[24] = v60;
  *&v102[32] = v59;
  v103 = v58;
  v104 = v57;
  v106 = BYTE2(v46);
  v105 = v46;
  v107 = v56;
  v108 = v53;
  v109 = v52;
  v110 = v51;
  v111 = v50;
  v112 = v49;
  v113 = v48;
  v114 = v47;
  v116 = BYTE4(v45);
  v115 = v45;
  v117 = KeyPath;
  v118 = v55;
  return sub_219F6409C(&v100, &qword_27CCDC8D8, &qword_21A0FCC90);
}

uint64_t sub_21A0589BC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21A0E566C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8A8, &qword_21A0FCC28);
  return sub_21A0571D4(v2, a2 + *(v4 + 44));
}

uint64_t sub_21A058A0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC920, &qword_21A0FCD10);
  MEMORY[0x28223BE20](v89, v4);
  v90 = (&v83 - v5);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC928, &qword_21A0FCD18);
  MEMORY[0x28223BE20](v87, v6);
  v8 = &v83 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC930, &qword_21A0FCD20);
  MEMORY[0x28223BE20](v88, v9);
  v11 = &v83 - v10;
  v12 = sub_21A0E561C();
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  MEMORY[0x28223BE20](v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC938, &unk_21A0FCD28);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v83 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v83 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v83 - v31;
  if (a1[8])
  {
    v83 = v30;
    sub_21A0E560C();
    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    *v92 = *(a1 + 9);
    *&v92[15] = *(a1 + 87);
    v85 = v11;
    v86 = a2;
    v84 = v8;
    if (v92[16])
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CDC();
    }

    else
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CBC();
    }

    sub_21A0E55DC();

    sub_21A0E55FC();
    sub_21A0E563C();
    v33 = sub_21A0E59DC();
    v35 = v34;
    v37 = v36;
    sub_21A0E586C();
    v38 = sub_21A0E596C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_219F63A30(v33, v35, v37 & 1);

    v45 = &v28[*(v83 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0, &qword_21A0E8A20) + 28);
    v47 = *MEMORY[0x277CE1050];
    v48 = sub_21A0E5CEC();
    (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
    *v45 = swift_getKeyPath();
    *v28 = v38;
    *(v28 + 1) = v40;
    v28[16] = v42 & 1;
    *(v28 + 3) = v44;
    sub_21A0594C4(v28, v32);
    sub_219F45500(v32, v84, &qword_27CCDC938, &unk_21A0FCD28);
    swift_storeEnumTagMultiPayload();
    sub_21A05940C();
    v49 = v85;
    sub_21A0E56BC();
    sub_219F45500(v49, v90, &qword_27CCDC930, &qword_21A0FCD20);
    swift_storeEnumTagMultiPayload();
    sub_21A059388();
    sub_21A0E56BC();
    sub_219F6409C(v49, &qword_27CCDC930, &qword_21A0FCD20);
    v50 = v32;
  }

  else
  {
    if (!a1[3])
    {
      v51 = a1[1];
      *v92 = *a1;
      *&v92[8] = v51;
      sub_219F3F130();

      v52 = sub_21A0E59EC();
      v54 = v53;
      v56 = v55;
      sub_21A0E586C();
      v57 = sub_21A0E596C();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      sub_219F63A30(v52, v54, v56 & 1);

      v64 = v90;
      *v90 = v57;
      v64[1] = v59;
      *(v64 + 16) = v61 & 1;
      v64[3] = v63;
      swift_storeEnumTagMultiPayload();
      sub_21A059388();
      return sub_21A0E56BC();
    }

    v83 = v30;
    sub_21A0E560C();
    sub_21A0E55FC();
    *v92 = *(a1 + 2);
    *&v92[15] = *(a1 + 47);
    v85 = v11;
    v86 = a2;
    v84 = v8;
    if (v92[16])
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CDC();
    }

    else
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CBC();
    }

    sub_21A0E55DC();

    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    sub_21A0E563C();
    v66 = sub_21A0E59DC();
    v68 = v67;
    v70 = v69;
    sub_21A0E586C();
    v71 = sub_21A0E596C();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_219F63A30(v66, v68, v70 & 1);

    v78 = &v20[*(v83 + 36)];
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0, &qword_21A0E8A20) + 28);
    v80 = *MEMORY[0x277CE1050];
    v81 = sub_21A0E5CEC();
    (*(*(v81 - 8) + 104))(v78 + v79, v80, v81);
    *v78 = swift_getKeyPath();
    *v20 = v71;
    *(v20 + 1) = v73;
    v20[16] = v75 & 1;
    *(v20 + 3) = v77;
    sub_21A0594C4(v20, v24);
    sub_219F45500(v24, v84, &qword_27CCDC938, &unk_21A0FCD28);
    swift_storeEnumTagMultiPayload();
    sub_21A05940C();
    v82 = v85;
    sub_21A0E56BC();
    sub_219F45500(v82, v90, &qword_27CCDC930, &qword_21A0FCD20);
    swift_storeEnumTagMultiPayload();
    sub_21A059388();
    sub_21A0E56BC();
    sub_219F6409C(v82, &qword_27CCDC930, &qword_21A0FCD20);
    v50 = v24;
  }

  return sub_219F6409C(v50, &qword_27CCDC938, &unk_21A0FCD28);
}

uint64_t sub_21A059298@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  v9[0] = v2[4];
  *(v9 + 11) = *(v2 + 75);
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_21A0E55BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC918, &qword_21A0FCD08);
  return sub_21A058A0C(v8, a2 + *(v6 + 44));
}

unint64_t sub_21A059318()
{
  result = qword_27CCDC8A0;
  if (!qword_27CCDC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC8A0);
  }

  return result;
}

unint64_t sub_21A059388()
{
  result = qword_27CCDC940;
  if (!qword_27CCDC940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC930, &qword_21A0FCD20);
    sub_21A05940C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC940);
  }

  return result;
}

unint64_t sub_21A05940C()
{
  result = qword_27CCDC948;
  if (!qword_27CCDC948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC938, &unk_21A0FCD28);
    sub_219F3E490(&qword_27CCDA9F0, &qword_27CCD95C0, &qword_21A0E8A20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC948);
  }

  return result;
}

uint64_t sub_21A0594C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC938, &unk_21A0FCD28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21A059534(uint64_t a1)
{
  v84 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v84, v2);
  v83 = &v72[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_21A0E481C();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v5);
  v81 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v86, v7);
  v85 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v89 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for ActivityAsset(0);
  v95 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v12);
  v87 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = &qword_21A0FCE08;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC988, &qword_21A0FCE08);
  v16 = MEMORY[0x28223BE20](v96, v15);
  v90 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v72[-v20];
  MEMORY[0x28223BE20](v19, v22);
  v94 = &v72[-v23];
  v91 = MEMORY[0x277D84F98];
  v99 = MEMORY[0x277D84F98];
  v24 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(a1 + 64);
  v28 = (v25 + 63) >> 6;
  v80 = (v4 + 32);
  v79 = (v4 + 8);
  v97 = a1;

  v29 = 0;
  v92 = a1 + 64;
  for (i = v28; ; v28 = i)
  {
    v30 = v29;
    if (!v27)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v31 = v21;
      v32 = v14;
      v29 = v30;
LABEL_11:
      v33 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v34 = v33 | (v29 << 6);
      v35 = v97;
      v36 = v94;
      v37 = *(v95 + 72);
      sub_21A063430(*(v97 + 48) + v37 * v34, v94, type metadata accessor for ActivityAsset);
      v38 = *(v35 + 56) + 16 * v34;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = v96;
      v42 = &v36[*(v96 + 48)];
      *v42 = v39;
      v42[8] = v40;
      v43 = v36;
      v14 = v32;
      v21 = v31;
      sub_219F4D494(v43, v31, &qword_27CCDC988, v14);
      v44 = v31 + *(v41 + 48);
      if (*(v44 + 8) == 1)
      {
        break;
      }

      sub_21A062D08(v39, v40);
      sub_219F6409C(v31, &qword_27CCDC988, v14);
      v30 = v29;
      v24 = v92;
      v28 = i;
      if (!v27)
      {
LABEL_7:
        while (1)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v29 >= v28)
          {

            return;
          }

          v27 = *(v24 + 8 * v29);
          ++v30;
          if (v27)
          {
            v31 = v21;
            v32 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_41;
      }
    }

    v45 = v37;
    v46 = *v44;
    sub_219F4D494(v31, v90, &qword_27CCDC988, v14);
    v47 = *(v91 + 16);
    if (*(v91 + 24) <= v47)
    {
      sub_21A062D08(v39, v40);
      sub_21A062D08(v46, 1);
      sub_21A0D05B0(v47 + 1, 1);
    }

    else
    {
      sub_21A062D08(v39, v40);
      sub_21A062D08(v46, 1);
    }

    v91 = v99;
    sub_21A0E6DAC();
    v48 = v87;
    sub_21A063430(v90, v87, type metadata accessor for ActivityAsset);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v89;
      sub_21A063498(v48, v89, type metadata accessor for URLAssetConfiguration);
      MEMORY[0x21CED2490](1);
      v50 = v85;
      sub_21A063430(v49, v85, type metadata accessor for URLAssetConfiguration.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v83;
        sub_21A063498(v50, v83, type metadata accessor for URLAssetConfiguration.Recipe);
        MEMORY[0x21CED2490](1);
        sub_219FAB2D0(v98);
        sub_219F7CB6C(v98, *&v51[*(v84 + 20)]);
        sub_21A063014(v51, type metadata accessor for URLAssetConfiguration.Recipe);
      }

      else
      {
        v57 = v81;
        v58 = v82;
        (*v80)(v81, v50, v82);
        MEMORY[0x21CED2490](0);
        sub_21A062D20(&qword_27CCD99F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_21A0E615C();
        (*v79)(v57, v58);
      }

      sub_21A063014(v89, type metadata accessor for URLAssetConfiguration);
    }

    else
    {
      v77 = v45;
      v74 = v46;
      v53 = *v48;
      v52 = *(v48 + 1);
      v54 = v48[16];
      v55 = v48[17];
      v73 = v48[18];
      MEMORY[0x21CED2490](0);
      v75 = v54;
      MEMORY[0x21CED2490](v54);
      v76 = v53;
      v78 = v52;
      sub_21A0E626C();
      sub_21A0E6DCC();
      v46 = v74;
      if (v55 == 9)
      {
        v45 = v77;
        v56 = v73;
      }

      else
      {
        v56 = v73;
        sub_21A0E626C();

        v45 = v77;
      }

      sub_21A0E6DCC();
      if (v56 == 3)
      {
        sub_219F79CD8(v76, v78);
      }

      else
      {
        sub_21A0E626C();
        sub_219F79CD8(v76, v78);
      }
    }

    v59 = sub_21A0E6DFC();
    v60 = v91 + 64;
    v61 = -1 << *(v91 + 32);
    v62 = v59 & ~v61;
    v63 = v62 >> 6;
    if (((-1 << v62) & ~*(v91 + 64 + 8 * (v62 >> 6))) == 0)
    {
      break;
    }

    v64 = __clz(__rbit64((-1 << v62) & ~*(v60 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    v69 = v90;
    v70 = &v90[*(v96 + 48)];
    *(v60 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
    v71 = v91;
    sub_21A063498(v69, *(v91 + 48) + v64 * v45, type metadata accessor for ActivityAsset);
    *(*(v71 + 56) + 8 * v64) = v46;
    ++*(v71 + 16);
    sub_21A062D14(*v70, *(v70 + 8));
    v24 = v92;
  }

  v65 = 0;
  v66 = (63 - v61) >> 6;
  while (++v63 != v66 || (v65 & 1) == 0)
  {
    v67 = v63 == v66;
    if (v63 == v66)
    {
      v63 = 0;
    }

    v65 |= v67;
    v68 = *(v60 + 8 * v63);
    if (v68 != -1)
    {
      v64 = __clz(__rbit64(~v68)) + (v63 << 6);
      goto LABEL_38;
    }
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_21A059F78(uint64_t a1)
{
  v71 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  v3 = MEMORY[0x28223BE20](v71, v2);
  v70 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v69 = v63 - v6;
  v68 = sub_21A0E481C();
  v7 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v8);
  v67 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v73, v10);
  v72 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v76 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ActivityAsset(0);
  v15 = *(v77 - 8);
  v17 = MEMORY[0x28223BE20](v77, v16);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v63 - v21;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_21A0E686C();

  v85 = 0x6673736563637553;
  v86 = 0xEB000000003D6C75;
  v23 = sub_21A061EDC(a1);
  v24 = v23;
  v25 = v23[2];
  if (v25)
  {
    v26 = sub_21A061BC0(v23[2], 0, &qword_27CCDA5F8, &qword_21A0FCE10, type metadata accessor for ActivityAsset);
    v27 = sub_21A062AA4(&v81, v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v25, v24);
    sub_219F5EC40(v81);
    if (v27 == v25)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_5:
  v63[1] = 0;
  v64 = a1;
  v28 = v26[2];
  if (v28)
  {
    v80 = MEMORY[0x277D84F90];
    sub_219FBE5A4(0, v28, 0);
    v29 = v15;
    v30 = v80;
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v63[0] = v26;
    v32 = v26 + v31;
    v66 = (v7 + 32);
    v65 = (v7 + 8);
    v74 = *(v29 + 72);
    v75 = v22;
    do
    {
      sub_21A063430(v32, v22, type metadata accessor for ActivityAsset);
      sub_21A063430(v22, v19, type metadata accessor for ActivityAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v76;
        sub_21A063498(v19, v76, type metadata accessor for URLAssetConfiguration);
        v81 = 0x28204C5255;
        v82 = 0xE500000000000000;
        v34 = v33;
        v35 = v72;
        sub_21A063430(v34, v72, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v69;
          sub_21A063498(v35, v69, type metadata accessor for URLAssetConfiguration.Recipe);
          sub_21A063430(v36, v70, type metadata accessor for URLAssetConfiguration.Recipe);
          v37 = sub_21A0E622C();
          v39 = v38;
          sub_21A063014(v36, type metadata accessor for URLAssetConfiguration.Recipe);
        }

        else
        {
          v49 = v67;
          v50 = v35;
          v51 = v68;
          (*v66)(v67, v50, v68);
          v37 = sub_21A0E46BC();
          v39 = v52;
          (*v65)(v49, v51);
        }

        MEMORY[0x21CED1980](v37, v39);

        MEMORY[0x21CED1980](41, 0xE100000000000000);
        v47 = v81;
        v48 = v82;
        sub_21A063014(v76, type metadata accessor for URLAssetConfiguration);
      }

      else
      {
        v40 = *v19;
        v41 = *(v19 + 1);
        v42 = v19[16];
        v43 = *(v19 + 17);
        v78 = 0x6F626D7953204653;
        v79 = 0xEB0000000028206CLL;
        v81 = v40;
        v82 = v41;
        v83 = v42;
        v84 = v43;
        v44 = SFSymbolConfiguration.description.getter();
        v46 = v45;
        sub_219F79CD8(v40, v41);
        MEMORY[0x21CED1980](v44, v46);

        MEMORY[0x21CED1980](41, 0xE100000000000000);
        v47 = v78;
        v48 = v79;
      }

      v22 = v75;
      sub_21A063014(v75, type metadata accessor for ActivityAsset);
      v80 = v30;
      v54 = *(v30 + 16);
      v53 = *(v30 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_219FBE5A4((v53 > 1), v54 + 1, 1);
        v30 = v80;
      }

      *(v30 + 16) = v54 + 1;
      v55 = v30 + 16 * v54;
      *(v55 + 32) = v47;
      *(v55 + 40) = v48;
      v32 += v74;
      --v28;
    }

    while (v28);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v56 = MEMORY[0x21CED1A80](v30, MEMORY[0x277D837D0]);
  v58 = v57;

  MEMORY[0x21CED1980](v56, v58);

  MEMORY[0x21CED1980](0x636375736E55202ELL, 0xEF3D6C7566737365);
  sub_21A059534(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48, &qword_21A0EB270);
  sub_21A062D20(qword_280C88B70, type metadata accessor for ActivityAsset, &protocol conformance descriptor for ActivityAsset);
  v59 = sub_21A0E60FC();
  v61 = v60;

  MEMORY[0x21CED1980](v59, v61);

  return v85;
}

uint64_t sub_21A05A730(uint64_t a1, uint64_t *a2)
{
  v3[9] = a1;
  v3[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970, &qword_21A0FCDD8);
  v3[11] = swift_task_alloc();
  type metadata accessor for NewsLiveActivityAttributes(0);
  v5 = swift_task_alloc();
  v6 = *a2;
  v7 = a2[1];
  v3[12] = v5;
  v3[13] = v6;
  v3[14] = v7;

  return MEMORY[0x2822009F8](sub_21A05A804, 0, 0);
}

uint64_t sub_21A05A804()
{
  v17 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  v0[15] = __swift_project_value_buffer(v1, qword_280C88498);

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_219F50144(v5, v4, &v16);
    _os_log_impl(&dword_219F39000, v2, v3, "Will fetch activity content. Activity ID=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v0[7] = v9;
  v0[8] = v8;
  v15 = (*(v12 + 8) + **(v12 + 8));
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_21A05AA6C;

  return v15(v0 + 2, v0 + 7, v11, v12);
}

uint64_t sub_21A05AA6C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_21A05B6F8;
  }

  else
  {
    v2 = sub_21A05AB80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05AB80()
{
  v21 = v0;
  v1 = v0[17];
  sub_21A0E65AC();
  if (v1)
  {
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v3 = v1;
    v4 = sub_21A0E514C();
    v5 = sub_21A0E669C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[13];
      v6 = v0[14];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_219F50144(v7, v6, &v20);
      *(v8 + 12) = 2114;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_219F39000, v4, v5, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v8, 0x16u);
      sub_219F6409C(v9, &qword_27CCD9E28, &qword_21A0F1500);
      MEMORY[0x21CED2D30](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CED2D30](v10, -1, -1);
      MEMORY[0x21CED2D30](v8, -1, -1);
    }

    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v19 = (*(v16 + 8) + **(v16 + 8));
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21A05AE70;
    v18 = v0[12];

    return v19(v18, v15, v16);
  }
}

uint64_t sub_21A05AE70()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21A05B8C8;
  }

  else
  {
    v2 = sub_21A05AF84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05AF84()
{
  v22 = v0;
  v1 = v0[19];
  sub_21A0E65AC();
  if (v1)
  {
    v2 = v1;
    sub_21A063014(v0[12], type metadata accessor for NewsLiveActivityAttributes);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v3 = v1;
    v4 = sub_21A0E514C();
    v5 = sub_21A0E669C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[13];
      v6 = v0[14];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_219F50144(v7, v6, &v21);
      *(v8 + 12) = 2114;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_219F39000, v4, v5, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v8, 0x16u);
      sub_219F6409C(v9, &qword_27CCD9E28, &qword_21A0F1500);
      MEMORY[0x21CED2D30](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CED2D30](v10, -1, -1);
      MEMORY[0x21CED2D30](v8, -1, -1);
    }

    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v20 = (*(v16 + 16) + **(v16 + 16));
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_21A05B290;
    v18 = v0[11];
    v19 = v0[12];

    return v20(v18, v19, v15, v16);
  }
}

uint64_t sub_21A05B290()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_21A05BAA0;
  }

  else
  {
    v2 = sub_21A05B3A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05B3A4()
{
  v24 = v0;
  v1 = v0[21];
  sub_21A0E65AC();
  if (v1)
  {
    v2 = v1;
    v3 = v0[12];
    sub_219F6409C(v0[11], &qword_27CCDC970, &qword_21A0FCDD8);
    sub_21A063014(v3, type metadata accessor for NewsLiveActivityAttributes);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v4 = v1;
    v5 = sub_21A0E514C();
    v6 = sub_21A0E669C();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[13];
      v7 = v0[14];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_219F50144(v8, v7, v23);
      *(v9 + 12) = 2114;
      v12 = v2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_219F39000, v5, v6, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v9, 0x16u);
      sub_219F6409C(v10, &qword_27CCD9E28, &qword_21A0F1500);
      MEMORY[0x21CED2D30](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CED2D30](v11, -1, -1);
      MEMORY[0x21CED2D30](v9, -1, -1);
    }

    swift_willThrow();

    v14 = v0[1];
  }

  else
  {

    v15 = sub_21A0E514C();
    v16 = sub_21A0E66BC();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[13];
      v17 = v0[14];
      v19 = v0[12];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_219F50144(v18, v17, v23);
      _os_log_impl(&dword_219F39000, v15, v16, "Did fetch activity content. Activity ID=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CED2D30](v21, -1, -1);
      MEMORY[0x21CED2D30](v20, -1, -1);
    }

    else
    {
      v19 = v0[12];
    }

    sub_21A063014(v19, type metadata accessor for NewsLiveActivityAttributes);
    sub_219F4D494(v0[11], v0[9], &qword_27CCDC970, &qword_21A0FCDD8);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_21A05B6F8()
{
  v15 = v0;
  v1 = v0[17];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_219F50144(v6, v5, &v14);
    *(v7 + 12) = 2114;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A05B8C8()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[19];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_219F50144(v6, v5, &v14);
    *(v7 + 12) = 2114;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A05BAA0()
{
  v15 = v0;
  sub_21A063014(v0[12], type metadata accessor for NewsLiveActivityAttributes);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[21];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_219F50144(v6, v5, &v14);
    *(v7 + 12) = 2114;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A05BC94(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  type metadata accessor for NewsLiveActivityAttributes(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A05BD34, 0, 0);
}

uint64_t sub_21A05BD34()
{
  v23 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = sub_21A0E516C();
  v0[14] = __swift_project_value_buffer(v3, qword_280C88498);
  sub_21A063430(v2, v1, type metadata accessor for NewsLiveActivityAttributes);
  v4 = sub_21A0E514C();
  v5 = sub_21A0E66BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = *v7;
    v11 = v7[1];

    sub_21A063014(v7, type metadata accessor for NewsLiveActivityAttributes);
    v12 = sub_219F50144(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_219F39000, v4, v5, "Fetching activity assets independently of attributes. Activity ID=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {

    sub_21A063014(v7, type metadata accessor for NewsLiveActivityAttributes);
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v13[3];
  v16 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v15);
  v17 = v14[1];
  v0[7] = *v14;
  v0[8] = v17;
  v18 = *(v16 + 8);

  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_21A05C014;

  return (v21)(v0 + 2, v0 + 7, v15, v16);
}

uint64_t sub_21A05C014()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21A05C588;
  }

  else
  {
    v2 = sub_21A05C138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05C138()
{
  v22 = v0;
  v1 = v0[16];
  sub_21A0E65AC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_21A063430(v0[10], v0[12], type metadata accessor for NewsLiveActivityAttributes);
    v2 = v1;
    v3 = sub_21A0E514C();
    v4 = sub_21A0E669C();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[12];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v7 = 136446466;
      v10 = *v6;
      v11 = v6[1];

      sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
      v12 = sub_219F50144(v10, v11, &v21);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch assets for activity. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
      sub_219F6409C(v8, &qword_27CCD9E28, &qword_21A0F1500);
      MEMORY[0x21CED2D30](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CED2D30](v9, -1, -1);
      MEMORY[0x21CED2D30](v7, -1, -1);
    }

    else
    {

      sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
    }

    v19 = sub_21A07B5DC(MEMORY[0x277D84F90]);

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_21A05C410;
    v16 = v0[10];
    v17 = v0[9];

    return sub_21A05C7CC(v17, v16, (v0 + 2));
  }
}

uint64_t sub_21A05C410(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_21A05C510, 0, 0);
}

uint64_t sub_21A05C510()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[18];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_21A05C588()
{
  v19 = v0;
  v1 = v0[16];
  sub_21A063430(v0[10], v0[12], type metadata accessor for NewsLiveActivityAttributes);
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    v10 = *v6;
    v11 = v6[1];

    sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
    v12 = sub_219F50144(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch assets for activity. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {

    sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
  }

  v15 = sub_21A07B5DC(MEMORY[0x277D84F90]);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_21A05C7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_21A05C7F0, 0, 0);
}

uint64_t sub_21A05C7F0()
{
  v21 = v0;
  v1 = *(v0 + 32);
  v2 = *v1;
  *(v0 + 56) = *v1;
  v3 = v1[1];
  *(v0 + 64) = v3;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v4 = sub_21A0E516C();
  *(v0 + 72) = __swift_project_value_buffer(v4, qword_280C88498);

  v5 = sub_21A0E514C();
  v6 = sub_21A0E66BC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 24);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134349570;
    *(v9 + 4) = *(v8 + 16);

    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_219F50144(v2, v3, &v20);
    *(v9 + 22) = 2082;
    type metadata accessor for ActivityAsset(0);
    sub_21A062D20(qword_280C88B70, type metadata accessor for ActivityAsset, &protocol conformance descriptor for ActivityAsset);
    v11 = sub_21A0E65EC();
    v13 = sub_219F50144(v11, v12, &v20);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_219F39000, v5, v6, "Requested to download %{public}ld asset(s). Activity ID=%{public}s, Assets=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980, &unk_21A0FE8D0);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  v17 = *(v0 + 40);
  *(v16 + 16) = v14;
  *(v16 + 24) = v2;
  *(v16 + 32) = v3;
  *(v16 + 40) = v17;
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_21A05CAF8;
  v23 = &type metadata for ActivityAssetDownloadResult;

  return MEMORY[0x282200600](v0 + 16, v15);
}

uint64_t sub_21A05CAF8()
{

  return MEMORY[0x2822009F8](sub_21A05CC10, 0, 0);
}

uint64_t sub_21A05CC10()
{
  v19 = v0;
  v1 = v0[2];

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = v0[7];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 134349570;
    *(v8 + 4) = *(v7 + 16);

    *(v8 + 12) = 2082;
    v10 = sub_219F50144(v6, v5, &v18);

    *(v8 + 14) = v10;
    *(v8 + 22) = 2082;

    v12 = sub_21A059F78(v11);
    v14 = v13;

    v15 = sub_219F50144(v12, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_219F39000, v2, v3, "Finished downloading %{public}ld asset(s). Activity ID=%{public}s, Result=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(v1);
}

uint64_t sub_21A05CDFC(uint64_t a1, uint64_t *a2)
{
  v3[9] = a1;
  v3[10] = v2;
  v3[11] = type metadata accessor for NewsLiveActivityContent(0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970, &qword_21A0FCDD8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_21A0E495C();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for NewsLiveActivityAttributes(0);
  v3[22] = swift_task_alloc();
  v6 = sub_21A0E498C();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v3[30] = v7;
  v3[31] = v8;
  v3[32] = v9;

  return MEMORY[0x2822009F8](sub_21A05D054, 0, 0);
}

uint64_t sub_21A05D054()
{
  v33 = v0;
  sub_21A0E497C();
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[23];
  v4 = v0[24];
  v5 = sub_21A0E516C();
  v0[33] = __swift_project_value_buffer(v5, qword_280C88498);
  v6 = *(v4 + 16);
  v0[34] = v6;
  v0[35] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);

  v7 = sub_21A0E514C();
  v8 = sub_21A0E66BC();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[31];
    v29 = v0[32];
    v9 = v0[29];
    v11 = v0[23];
    v10 = v0[24];
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v12 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_21A0E6BFC();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_219F50144(v13, v15, &v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_219F50144(v28, v29, &v32);
    _os_log_impl(&dword_219F39000, v7, v8, "Fetching activity definition. ID=%{public}s, Activity ID=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v30, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);
  }

  else
  {
    v18 = v0[29];
    v19 = v0[23];
    v20 = v0[24];

    v16 = *(v20 + 8);
    v16(v18, v19);
  }

  v0[36] = v16;
  v22 = v0[31];
  v21 = v0[32];
  v23 = v0[10];
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v0[7] = v22;
  v0[8] = v21;
  v31 = (*(v25 + 8) + **(v25 + 8));
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_21A05D3CC;

  return v31(v0 + 2, v0 + 7, v24, v25);
}

uint64_t sub_21A05D3CC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_21A05EC70;
  }

  else
  {
    v2 = sub_21A05D4E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05D4E0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_21A05D60C;
  v4 = v0[22];

  return v6(v4, v1, v2);
}

uint64_t sub_21A05D60C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_21A05EFAC;
  }

  else
  {
    v2 = sub_21A05D720;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05D720()
{
  v48 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(*(v0 + 168) + 32);
  sub_219F45500(v1 + v5, v4, &qword_27CCD97F0, &qword_21A0E97E0);
  v6 = *(v3 + 48);
  if (v6(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 120);
LABEL_5:
    sub_219F6409C(v7, &qword_27CCD97F0, &qword_21A0E97E0);
LABEL_6:
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    v45 = (*(v13 + 16) + **(v13 + 16));
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v14[1] = sub_21A05DCF0;
    v15 = *(v0 + 176);
    v16 = *(v0 + 104);

    return v45(v16, v15, v12, v13);
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  v10 = *(*(v0 + 136) + 32);
  v10(*(v0 + 160), *(v0 + 120), v8);
  sub_219F45500(v1 + v5, v9, &qword_27CCD97F0, &qword_21A0E97E0);
  if (v6(v9, 1, v8) == 1)
  {
    v11 = *(v0 + 112);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v7 = v11;
    goto LABEL_5;
  }

  v18 = *(v0 + 144);
  v19 = *(v0 + 152);
  v20 = *(v0 + 128);
  v21 = *(v0 + 136);
  v10(v19, *(v0 + 112), v20);
  sub_21A0E493C();
  v22 = sub_21A0E48FC();
  v23 = *(v21 + 8);
  v23(v18, v20);
  v23(v19, v20);
  if ((v22 & 1) == 0)
  {
    v23(*(v0 + 160), *(v0 + 128));
    goto LABEL_6;
  }

  (*(v0 + 272))(*(v0 + 224), *(v0 + 240), *(v0 + 184));
  v24 = sub_21A0E514C();
  v25 = sub_21A0E66BC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 288);
  v28 = *(v0 + 240);
  v29 = *(v0 + 224);
  v30 = *(v0 + 184);
  if (v26)
  {
    v46 = *(v0 + 288);
    v31 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v31 = 136446210;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = v28;
    v32 = sub_21A0E6BFC();
    v42 = v25;
    v34 = v33;
    v46(v29, v30);
    v35 = sub_219F50144(v32, v34, &v47);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_219F39000, v24, v42, "Activity definition represents scheduled live activity. Skipping download of content and assets. ID=%{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x21CED2D30](v44, -1, -1);
    MEMORY[0x21CED2D30](v31, -1, -1);

    v46(v43, v30);
  }

  else
  {

    v27(v29, v30);
    v27(v28, v30);
  }

  v36 = *(v0 + 176);
  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  v39 = *(v0 + 72);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E30, &unk_21A0EB260) + 48);
  sub_21A063498(v36, v39, type metadata accessor for NewsLiveActivityAttributes);
  v10(v39 + v40, v37, v38);
  type metadata accessor for ActivityDownloadResult(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_21A05DCF0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_21A05F2F0;
  }

  else
  {
    v2 = sub_21A05DE04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05DE04()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  sub_21A063430(*(v0 + 104), v1, type metadata accessor for NewsLiveActivityContent);
  v3 = *(v1 + *(v2 + 32));
  if (v3 == 2)
  {
    goto LABEL_2;
  }

  if (v3)
  {
    swift_bridgeObjectRelease_n();
LABEL_8:
    v21 = *(v0 + 176);
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    type metadata accessor for LiveActivitySubscriptionError(0);
    sub_21A062D20(&qword_27CCD9E38, type metadata accessor for LiveActivitySubscriptionError, &protocol conformance descriptor for LiveActivitySubscriptionError);
    v24 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_21A063014(v23, type metadata accessor for NewsLiveActivityContent);
    sub_219F6409C(v22, &qword_27CCDC970, &qword_21A0FCDD8);
    sub_21A063014(v21, type metadata accessor for NewsLiveActivityAttributes);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
    v25 = v24;
    v26 = sub_21A0E514C();
    v27 = sub_21A0E669C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 288);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);
    if (v28)
    {
      v65 = v27;
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72[0] = v68;
      *v32 = 136446466;
      sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v33 = sub_21A0E6BFC();
      v35 = v34;
      v29(v30, v31);
      v36 = sub_219F50144(v33, v35, v72);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2114;
      v37 = v24;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v38;
      *v64 = v38;
      _os_log_impl(&dword_219F39000, v26, v65, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v32, 0x16u);
      sub_219F6409C(v64, &qword_27CCD9E28, &qword_21A0F1500);
      MEMORY[0x21CED2D30](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x21CED2D30](v68, -1, -1);
      MEMORY[0x21CED2D30](v32, -1, -1);
    }

    else
    {

      v29(v30, v31);
    }

    v56 = *(v0 + 288);
    v57 = *(v0 + 240);
    v58 = *(v0 + 184);
    swift_willThrow();
    v56(v57, v58);

    v59 = *(v0 + 8);
    goto LABEL_20;
  }

  v20 = sub_21A0E6C5C();

  if (v20)
  {
    goto LABEL_8;
  }

LABEL_2:
  v4 = *(v0 + 80);
  v5 = *(v4 + 80);
  v6 = *(v4 + 81);
  v7 = *(v4 + 88);
  LOBYTE(v72[0]) = v5;
  BYTE1(v72[0]) = v6;
  v72[1] = v7;
  v8 = sub_21A040858(v72);
  *(v0 + 344) = v8;
  if (*(v8 + 16))
  {
    (*(v0 + 272))(*(v0 + 216), *(v0 + 240), *(v0 + 184));
    v9 = sub_21A0E514C();
    v10 = sub_21A0E66BC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);
    v14 = *(v0 + 184);
    if (v11)
    {
      v67 = *(v0 + 288);
      v15 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72[0] = v70;
      *v15 = 134349314;
      *(v15 + 4) = *(v8 + 16);
      *(v15 + 12) = 2082;
      sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v16 = sub_21A0E6BFC();
      v18 = v17;
      v67(v13, v14);
      v19 = sub_219F50144(v16, v18, v72);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_219F39000, v9, v10, "Activity definition contains %{public}ld asset(s) to fetch. Scheduling tasks. ID=%{public}s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x21CED2D30](v70, -1, -1);
      MEMORY[0x21CED2D30](v15, -1, -1);
    }

    else
    {

      v12(v13, v14);
    }

    v53 = swift_task_alloc();
    *(v0 + 352) = v53;
    *v53 = v0;
    v53[1] = sub_21A05E7D8;
    v54 = *(v0 + 176);

    return sub_21A05C7CC(v8, v54, v0 + 16);
  }

  (*(v0 + 272))(*(v0 + 208), *(v0 + 240), *(v0 + 184));
  v39 = sub_21A0E514C();
  v40 = sub_21A0E66BC();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 288);
  v43 = *(v0 + 240);
  v44 = *(v0 + 208);
  v45 = *(v0 + 184);
  v46 = *(v0 + 104);
  if (v41)
  {
    v71 = *(v0 + 288);
    v47 = swift_slowAlloc();
    v69 = v43;
    v48 = swift_slowAlloc();
    v72[0] = v48;
    *v47 = 136446210;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v66 = v46;
    v49 = sub_21A0E6BFC();
    v51 = v50;
    v71(v44, v45);
    v52 = sub_219F50144(v49, v51, v72);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_219F39000, v39, v40, "Finished fetching activity definition. ID=%{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x21CED2D30](v48, -1, -1);
    MEMORY[0x21CED2D30](v47, -1, -1);

    sub_219F6409C(v66, &qword_27CCDC970, &qword_21A0FCDD8);
    v71(v69, v45);
  }

  else
  {

    v42(v44, v45);
    sub_219F6409C(v46, &qword_27CCDC970, &qword_21A0FCDD8);
    v42(v43, v45);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 96);
  v62 = *(v0 + 72);
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40, &qword_21A0F1540) + 48);
  sub_21A063498(v60, v62, type metadata accessor for NewsLiveActivityAttributes);
  sub_21A063498(v61, v62 + v63, type metadata accessor for NewsLiveActivityContent);
  type metadata accessor for ActivityDownloadResult(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v59 = *(v0 + 8);
LABEL_20:

  return v59();
}

uint64_t sub_21A05E7D8(uint64_t a1)
{

  return MEMORY[0x2822009F8](sub_21A05E8FC, 0, 0);
}

uint64_t sub_21A05E8FC()
{
  v25 = v0;
  (*(v0 + 272))(*(v0 + 208), *(v0 + 240), *(v0 + 184));
  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 288);
  v5 = *(v0 + 240);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 104);
  if (v3)
  {
    v23 = *(v0 + 288);
    v9 = swift_slowAlloc();
    v22 = v5;
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = v8;
    v11 = sub_21A0E6BFC();
    v13 = v12;
    v23(v6, v7);
    v14 = sub_219F50144(v11, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_219F39000, v1, v2, "Finished fetching activity definition. ID=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);

    sub_219F6409C(v21, &qword_27CCDC970, &qword_21A0FCDD8);
    v23(v22, v7);
  }

  else
  {

    v4(v6, v7);
    sub_219F6409C(v8, &qword_27CCDC970, &qword_21A0FCDD8);
    v4(v5, v7);
  }

  v15 = *(v0 + 176);
  v16 = *(v0 + 96);
  v17 = *(v0 + 72);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40, &qword_21A0F1540) + 48);
  sub_21A063498(v15, v17, type metadata accessor for NewsLiveActivityAttributes);
  sub_21A063498(v16, v17 + v18, type metadata accessor for NewsLiveActivityContent);
  type metadata accessor for ActivityDownloadResult(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05EC70()
{
  v25 = v0;
  v1 = *(v0 + 304);
  (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v5)
  {
    v22 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v21 = v15;
    _os_log_impl(&dword_219F39000, v3, v22, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v9, 0x16u);
    sub_219F6409C(v21, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CED2D30](v23, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 240);
  v18 = *(v0 + 184);
  swift_willThrow();
  v16(v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05EFAC()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 320);
  (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v5)
  {
    v22 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v21 = v15;
    _os_log_impl(&dword_219F39000, v3, v22, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v9, 0x16u);
    sub_219F6409C(v21, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CED2D30](v23, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 240);
  v18 = *(v0 + 184);
  swift_willThrow();
  v16(v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05F2F0()
{
  v25 = v0;
  sub_21A063014(*(v0 + 176), type metadata accessor for NewsLiveActivityAttributes);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 336);
  (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v5)
  {
    v22 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v21 = v15;
    _os_log_impl(&dword_219F39000, v3, v22, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v9, 0x16u);
    sub_219F6409C(v21, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CED2D30](v23, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 240);
  v18 = *(v0 + 184);
  swift_willThrow();
  v16(v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980, &unk_21A0FE8D0);
  v7[34] = v8;
  v7[35] = *(v8 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D0, &qword_21A0EB830);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = type metadata accessor for URLAssetConfiguration.Format(0);
  v7[42] = swift_task_alloc();
  v9 = sub_21A0E481C();
  v7[43] = v9;
  v10 = *(v9 - 8);
  v7[44] = v10;
  v7[45] = *(v10 + 64);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC998, &qword_21A0FCE28);
  v7[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC9A0, &qword_21A0FCE30);
  v7[49] = v11;
  v7[50] = *(v11 - 8);
  v7[51] = swift_task_alloc();
  type metadata accessor for URLAssetConfiguration(0);
  v7[52] = swift_task_alloc();
  v12 = type metadata accessor for ActivityAsset(0);
  v7[53] = v12;
  v13 = *(v12 - 8);
  v7[54] = v13;
  v7[55] = *(v13 + 64);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A05F984, 0, 0);
}

uint64_t sub_21A05F984()
{
  v92 = v0;
  v90 = *(v0 + 432);
  v1 = *(v0 + 232);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 232) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v72 = *(v0 + 440) + 7;
  v73 = *(v0 + 352);
  v71 = *(v0 + 360) + 7;
  v89 = *(v0 + 232);

  v13 = 0;
  v87 = v3;
  v88 = v8;
  if (v7)
  {
LABEL_11:
    while (1)
    {
      v17 = *(v0 + 472);
      v16 = *(v0 + 480);
      v18 = *(v0 + 464);
      v19 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_21A063430(*(v89 + 48) + *(v90 + 72) * (v19 | (v13 << 6)), v16, type metadata accessor for ActivityAsset);
      sub_21A063498(v16, v17, type metadata accessor for ActivityAsset);
      sub_21A063430(v17, v18, type metadata accessor for ActivityAsset);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v21 = *(v0 + 464);
      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v22 = *(v0 + 416);
      v23 = *(v0 + 336);
      sub_21A063498(v21, v22, type metadata accessor for URLAssetConfiguration);
      sub_21A063430(v22, v23, type metadata accessor for URLAssetConfiguration.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = *(v0 + 336);
        sub_21A063014(*(v0 + 416), type metadata accessor for URLAssetConfiguration);
        v25 = type metadata accessor for URLAssetConfiguration.Format;
        v21 = v24;
LABEL_15:
        sub_21A063014(v21, v25);
        if (qword_280C88490 != -1)
        {
          swift_once();
        }

        v26 = *(v0 + 472);
        v27 = *(v0 + 448);
        v28 = sub_21A0E516C();
        __swift_project_value_buffer(v28, qword_280C88498);
        sub_21A063430(v26, v27, type metadata accessor for ActivityAsset);

        v29 = sub_21A0E514C();
        v30 = sub_21A0E66BC();

        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 472);
        v33 = *(v0 + 448);
        if (v31)
        {
          v35 = *(v0 + 240);
          v34 = *(v0 + 248);
          v85 = *(v0 + 472);
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v91[0] = v37;
          *v36 = 136446466;
          *(v36 + 4) = sub_219F50144(v35, v34, v91);
          *(v36 + 12) = 2082;
          v38 = ActivityAsset.description.getter();
          v40 = v39;
          sub_21A063014(v33, type metadata accessor for ActivityAsset);
          v41 = sub_219F50144(v38, v40, v91);
          v3 = v87;

          *(v36 + 14) = v41;
          _os_log_impl(&dword_219F39000, v29, v30, "Skipping download of asset as it has no remote configuration. Activity ID=%{public}s, Asset=%{public}s", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CED2D30](v37, -1, -1);
          MEMORY[0x21CED2D30](v36, -1, -1);

          v14 = v85;
        }

        else
        {

          sub_21A063014(v33, type metadata accessor for ActivityAsset);
          v14 = v32;
        }

        v9 = sub_21A063014(v14, type metadata accessor for ActivityAsset);
        v8 = v88;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v42 = *(v0 + 456);
        v75 = *(v0 + 472);
        v43 = *(v0 + 368);
        v44 = *(v0 + 376);
        v77 = v43;
        v45 = *(v0 + 344);
        v46 = *(v0 + 320);
        v82 = v46;
        v83 = *(v0 + 264);
        v86 = *(v0 + 312);
        v74 = *(v0 + 256);
        v79 = *(v0 + 240);
        v80 = *(v0 + 248);
        v81 = *(v73 + 32);
        v76 = v45;
        v81(v44, *(v0 + 336), v45);
        v47 = sub_21A0E652C();
        v78 = *(v47 - 8);
        (*(v78 + 56))(v46, 1, 1, v47);
        sub_21A063430(v75, v42, type metadata accessor for ActivityAsset);
        sub_219F3FDF4(v74, v0 + 112);
        (*(v73 + 16))(v43, v44, v45);
        sub_21A062D68(v83, v0 + 16);
        v48 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v49 = (v72 + v48) & 0xFFFFFFFFFFFFFFF8;
        v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
        v51 = (*(v73 + 80) + v50 + 40) & ~*(v73 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = 0;
        sub_21A063498(v42, v52 + v48, type metadata accessor for ActivityAsset);
        v53 = (v52 + v49);
        *v53 = v79;
        v53[1] = v80;
        sub_219F3EBE0((v0 + 112), v52 + v50);
        v81(v52 + v51, v77, v76);
        v54 = (v52 + ((v71 + v51) & 0xFFFFFFFFFFFFFFF8));
        v55 = *(v0 + 64);
        v54[2] = *(v0 + 48);
        v54[3] = v55;
        v56 = *(v0 + 96);
        v54[4] = *(v0 + 80);
        v54[5] = v56;
        v57 = *(v0 + 32);
        *v54 = *(v0 + 16);
        v54[1] = v57;
        sub_219F45500(v82, v86, &qword_27CCDA0D0, &qword_21A0EB830);
        LODWORD(v49) = (*(v78 + 48))(v86, 1, v47);

        v58 = *(v0 + 312);
        if (v49 == 1)
        {
          sub_219F6409C(*(v0 + 312), &qword_27CCDA0D0, &qword_21A0EB830);
        }

        else
        {
          sub_21A0E651C();
          (*(v78 + 8))(v58, v47);
        }

        if (*(v52 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v59 = sub_21A0E647C();
          v61 = v60;
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        v62 = **(v0 + 224);
        v63 = swift_allocObject();
        *(v63 + 16) = &unk_21A0FCE48;
        *(v63 + 24) = v52;

        if (v61 | v59)
        {
          v64 = v0 + 152;
          *(v0 + 152) = 0;
          *(v0 + 160) = 0;
          *(v0 + 168) = v59;
          *(v0 + 176) = v61;
        }

        else
        {
          v64 = 0;
        }

        v84 = *(v0 + 472);
        v65 = *(v0 + 416);
        v66 = *(v0 + 376);
        v67 = *(v0 + 344);
        v68 = *(v0 + 320);
        *(v0 + 184) = 1;
        *(v0 + 192) = v64;
        *(v0 + 200) = v62;
        swift_task_create();

        sub_219F6409C(v68, &qword_27CCDA0D0, &qword_21A0EB830);
        (*(v73 + 8))(v66, v67);
        sub_21A063014(v65, type metadata accessor for URLAssetConfiguration);
        v9 = sub_21A063014(v84, type metadata accessor for ActivityAsset);
        v3 = v87;
        v8 = v88;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    v25 = type metadata accessor for ActivityAsset;
    goto LABEL_15;
  }

  while (1)
  {
LABEL_7:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  sub_21A0E64BC();
  *(v0 + 488) = MEMORY[0x277D84F98];
  v69 = swift_task_alloc();
  *(v0 + 496) = v69;
  *v69 = v0;
  v69[1] = sub_21A060270;
  v9 = *(v0 + 384);
  v12 = *(v0 + 392);
  v10 = 0;
  v11 = 0;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}
uint64_t get_enum_tag_for_layout_string_6LiftUI17SystemFontOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_255D739D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 153))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 88);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_255D73A2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 88) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_255D73AAC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        return MEMORY[0x282132620]();
      }

      else
      {
        return MEMORY[0x282132530]();
      }
    }

    else if (a1 == 2)
    {
      return MEMORY[0x282132750]();
    }

    else if (a1 == 3)
    {
      return MEMORY[0x282132768]();
    }

    else
    {
      return MEMORY[0x2821327D8]();
    }
  }

  else if (a1 > 7u)
  {
    if (a1 == 8)
    {
      return MEMORY[0x2821327D0]();
    }

    else if (a1 == 9)
    {
      return MEMORY[0x2821327A0]();
    }

    else
    {
      return MEMORY[0x2821327C0]();
    }
  }

  else if (a1 == 5)
  {
    return MEMORY[0x282132548]();
  }

  else if (a1 == 6)
  {
    return MEMORY[0x2821325D0]();
  }

  else
  {
    return MEMORY[0x282132790]();
  }
}

uint64_t sub_255D73B28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746867696577;
  if (v2 != 1)
  {
    v3 = 0x6E6769736564;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1702521203;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x746867696577;
  if (*a2 != 1)
  {
    v6 = 0x6E6769736564;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1702521203;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D73C14()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D73CA8(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D73D28(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D73DB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D777D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D73DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x746867696577;
  if (v2 != 1)
  {
    v4 = 0x6E6769736564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1702521203;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255D73E38()
{
  v1 = 0x746867696577;
  if (*v0 != 1)
  {
    v1 = 0x6E6769736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

unint64_t sub_255D73E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D777D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D73EAC(uint64_t a1)
{
  v2 = sub_255D77624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D73EE8(uint64_t a1)
{
  v2 = sub_255D77624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D73F24@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7380, &unk_255E47730);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D77624();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v5;
  LOBYTE(v34) = 0;
  sub_255D64774();
  sub_255E3ABA8();
  v28 = a1;
  v32 = v41;
  v29 = v42;
  v30 = *(&v41 + 1);
  v58 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
  LOBYTE(v34) = 0;
  sub_255D38950(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340, protocol conformance descriptor for Referenceable<A>);
  sub_255E3ABA8();
  v26 = *(&v41 + 1);
  v27 = v41;
  v9 = v42;
  v10 = v43;
  LOBYTE(v34) = 1;
  sub_255E3ABA8();
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v59 = 2;
  sub_255E3ABA8();
  (*(v31 + 8))(v7, v4);
  v31 = v55;
  v21 = v56;
  v22 = *(&v55 + 1);
  HIDWORD(v20) = v57;
  v11 = v29;
  v12 = v30;
  *&v34 = v32;
  *(&v34 + 1) = v30;
  *&v35 = v29;
  v13 = v58;
  BYTE8(v35) = v58;
  v15 = v26;
  v14 = v27;
  *&v36 = v27;
  *(&v36 + 1) = v26;
  *&v37 = v9;
  BYTE8(v37) = v10;
  v38 = v23;
  *&v39 = v24;
  BYTE8(v39) = v25;
  v40[0] = v55;
  *&v40[1] = v56;
  BYTE8(v40[1]) = v57;
  v16 = v37;
  v17 = v33;
  v33[2] = v36;
  v17[3] = v16;
  v18 = v39;
  v17[4] = v38;
  v17[5] = v18;
  v19 = v35;
  *v17 = v34;
  v17[1] = v19;
  *(v17 + 105) = *(v40 + 9);
  v17[6] = v40[0];
  sub_255D76A50(&v34, &v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *&v41 = v32;
  *(&v41 + 1) = v12;
  v42 = v11;
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v9;
  v47 = v10;
  v48 = v23;
  v49 = v24;
  v50 = v25;
  v51 = v31;
  v52 = v22;
  v53 = v21;
  v54 = BYTE4(v20);
  return sub_255D77690(&v41);
}

uint64_t sub_255D74390(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7258, &qword_255E46908);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v36 = *(v1 + 72);
  v37 = v11;
  v35 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96);
  v39 = *(v1 + 104);
  v40 = v13;
  v38 = *(v1 + 112);
  v14 = *(v1 + 120);
  if (v10 != 255)
  {
    v15 = sub_255DDEDA0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v10 & 1);
    v17 = sub_255D76920(v15, v16);
    if (v17 <= 1u)
    {
      if (v17)
      {
        [objc_opt_self() buttonFontSize];
      }

      else
      {
        [objc_opt_self() labelFontSize];
      }

      goto LABEL_13;
    }

    if (v17 == 2)
    {
      [objc_opt_self() smallSystemFontSize];
      goto LABEL_13;
    }

    if (v17 == 3)
    {
      [objc_opt_self() systemFontSize];
      goto LABEL_13;
    }
  }

  if (v9 <= 0xFD)
  {
    v41 = v7;
    v42 = v6;
    v43 = v8;
    v44 = v9;
    sub_255D612A0(v7, v6, v8, v9);
    sub_255D8F6FC(a1);
    sub_255D4CB98(v41, v42, v43, v44);
  }

LABEL_13:
  v18 = 0x72616C75676572;
  if (v12 == 255)
  {
    v21 = 0xE700000000000000;
  }

  else
  {
    v19 = sub_255DDEDA0(a1, v37, v36, v35, v12 & 1);
    v21 = v20;
    v18 = v19;
  }

  v22 = 0x746C7561666564;
  if (v14 == 255)
  {
    v25 = 0xE700000000000000;
  }

  else
  {
    v23 = sub_255DDEDA0(a1, v40, v39, v38, v14 & 1);
    v25 = v24;
    v22 = v23;
  }

  v26 = sub_255D7696C(v18, v21);
  if (v26 == 9)
  {
    v27 = 5;
  }

  else
  {
    v27 = v26;
  }

  v28 = sub_255D769B8(v22, v25);
  if (v27 <= 3u)
  {
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        sub_255E396D8();
      }

      else
      {
        sub_255E396E8();
      }
    }

    else if (v27)
    {
      sub_255E396A8();
    }

    else
    {
      sub_255E396C8();
    }
  }

  else if (v27 <= 5u)
  {
    if (v27 == 4)
    {
      sub_255E396F8();
    }

    else
    {
      sub_255E39708();
    }
  }

  else if (v27 == 6)
  {
    sub_255E39718();
  }

  else if (v27 == 7)
  {
    sub_255E396B8();
  }

  else
  {
    sub_255E39698();
  }

  if (v28 == 4)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  v30 = sub_255E39688();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v5, **(&unk_279812230 + v29), v30);
  sub_255E39688();
  (*(v31 + 56))(v5, 0, 1, v30);
  v32 = sub_255E39728();
  sub_255D395E4(v5, &qword_27F7E7258, &qword_255E46908);
  return v32;
}

uint64_t sub_255D747C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6574737973;
  }

  else
  {
    v3 = 0x656C797473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6574737973;
  }

  else
  {
    v5 = 0x656C797473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D74860()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D748DC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D74944(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D749BC@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255D74A1C(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D74A54()
{
  if (*v0)
  {
    return 0x6D6574737973;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_255D74A88@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D74AEC(uint64_t a1)
{
  v2 = sub_255D76C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D74B28(uint64_t a1)
{
  v2 = sub_255D76C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D74B64@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E72C0, &qword_255E46950);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D76C80();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  v9 = v48;
  LOBYTE(v25) = 0;
  sub_255D3EA0C();
  sub_255E3ABA8();
  v10 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v39 = 1;
  sub_255D76CD4();
  sub_255E3ABA8();
  (*(v8 + 8))(v7, v4);
  *&v47[23] = v41;
  *&v47[7] = v40;
  *&v47[87] = v45;
  *&v47[71] = v44;
  *&v47[103] = v46[0];
  *&v47[112] = *(v46 + 9);
  *&v47[39] = v42;
  *&v47[55] = v43;
  v11 = v10;
  v12 = v22;
  *&v25 = v10;
  *(&v25 + 1) = v22;
  v13 = v23;
  *&v26[0] = v23;
  LOBYTE(v8) = v24;
  BYTE8(v26[0]) = v24;
  *(v26 + 9) = *v47;
  *(&v26[1] + 9) = *&v47[16];
  *(&v26[5] + 9) = *&v47[80];
  *(&v26[4] + 9) = *&v47[64];
  *(&v26[6] + 9) = *&v47[96];
  *(&v26[7] + 9) = *(v46 + 9);
  *(&v26[2] + 9) = *&v47[32];
  *(&v26[3] + 9) = *&v47[48];
  v14 = v26[0];
  *v9 = v25;
  v9[1] = v14;
  v15 = v26[1];
  v16 = v26[2];
  v17 = v26[4];
  v9[4] = v26[3];
  v9[5] = v17;
  v9[2] = v15;
  v9[3] = v16;
  v18 = v26[5];
  v19 = v26[6];
  v20 = v26[7];
  *(v9 + 137) = *(&v26[7] + 9);
  v9[7] = v19;
  v9[8] = v20;
  v9[6] = v18;
  sub_255D76D28(&v25, &v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v35 = *&v47[64];
  v36 = *&v47[80];
  v37 = *&v47[96];
  v38 = *&v47[112];
  v31 = *v47;
  v32 = *&v47[16];
  v33 = *&v47[32];
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v8;
  v34 = *&v47[48];
  return sub_255D76D60(&v27);
}

uint64_t sub_255D74EF4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 80);
  v9 = *(v3 + 112);
  v63 = *(v3 + 96);
  v64 = v9;
  v10 = *(v3 + 112);
  v65[0] = *(v3 + 128);
  *(v65 + 9) = *(v3 + 137);
  v11 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v11;
  v12 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v12;
  v68 = v61;
  v69 = v8;
  v66 = v59;
  v67 = v11;
  *(v72 + 9) = *(v3 + 137);
  v13 = *(v3 + 128);
  v71 = v10;
  v72[0] = v13;
  v14 = *v3;
  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v70 = v63;
  if (sub_255D7690C(&v66) == 1)
  {
    if (v17 <= 0xFD)
    {
      *&v51 = v14;
      *(&v51 + 1) = v15;
      *&v52 = v16;
      BYTE8(v52) = v17;
      sub_255D3E5A8(v14, v15, v16, v17);
      v36 = StringResolvable.resolved(with:)(a2);
      v18 = a3;
      if (v4)
      {

        sub_255D38060(v51, *(&v51 + 1), v52, BYTE8(v52));
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      else
      {
        v38 = v36;
        v39 = v37;
        sub_255D38060(v51, *(&v51 + 1), v52, BYTE8(v52));
        v20 = v39;
        v19 = v38;
      }
    }

    else
    {
      v18 = a3;
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    v40 = sub_255D76A04(v19, v20);
    if (v40 == 11)
    {
      v41 = 6;
    }

    else
    {
      v41 = v40;
    }

    v42 = a1[4];
    v73 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_255D73AAC(v41);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7240, &qword_255E468F8);
    v43 = sub_255E38AE8();
    v18[3] = v43;
    v58[0] = v42;
    v58[1] = sub_255D38950(&qword_27F7E7248, &qword_27F7E7240, &qword_255E468F8, MEMORY[0x277CE0868]);
    v18[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v43, v58);
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_255E39B78();
  }

  else
  {
    v21 = a2;
    v22 = a1[3];
    v45 = a1[4];
    v44 = __swift_project_boxed_opaque_existential_1(a1, v22);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7240, &qword_255E468F8);
    v23 = sub_255E38AE8();
    v47 = &v44;
    v24 = *(v23 - 8);
    v73 = v4;
    v25 = v24;
    v26 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v46 = a3;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
    v49[12] = v70;
    v49[13] = v71;
    v50[0] = v72[0];
    *(v50 + 9) = *(v72 + 9);
    v49[8] = v66;
    v49[9] = v67;
    v49[10] = v68;
    v49[11] = v69;
    v53 = v61;
    v54 = v62;
    v51 = v59;
    v52 = v60;
    *(v57 + 9) = *(v65 + 9);
    v56 = v64;
    v57[0] = v65[0];
    v55 = v63;
    sub_255D76A50(&v51, v49);
    sub_255D74390(v21);
    v28 = v45;
    sub_255E39B78();

    MEMORY[0x28223BE20](v29);
    (*(v25 + 16))(&v44 - v27, &v44 - v27, v23);
    v30 = sub_255D38950(&qword_27F7E7248, &qword_27F7E7240, &qword_255E468F8, MEMORY[0x277CE0868]);
    v48[0] = v28;
    v48[1] = v30;
    swift_getWitnessTable(MEMORY[0x277CDFAD8], v23, v48, v44);
    v31 = sub_255E3A038();
    v32 = MEMORY[0x277CE11C0];
    v33 = v46;
    v46[3] = MEMORY[0x277CE11C8];
    v33[4] = v32;
    v34 = v33;
    sub_255D395E4(&v59, &qword_27F7E7250, &qword_255E46900);
    *v34 = v31;
    return (*(v25 + 8))(&v44 - v27, v23);
  }
}

uint64_t sub_255D753F8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D75450(uint64_t a1)
{
  v2 = sub_255D76C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D7548C(uint64_t a1)
{
  v2 = sub_255D76C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D75558@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D755B0(uint64_t a1)
{
  v2 = sub_255D76BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D755EC(uint64_t a1)
{
  v2 = sub_255D76BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D7566C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v17 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v6)
  {
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABA8();
    (*(v21 + 8))(v11, v9);
    v13 = v19;
    v14 = v20;
    *v12 = v18;
    *(v12 + 16) = v13;
    *(v12 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D75880@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D758D8(uint64_t a1)
{
  v2 = sub_255D76B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D75914(uint64_t a1)
{
  v2 = sub_255D76B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D759D4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v9 = *(v5 + 24);
  if (v9 == 255)
  {
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    a5[3] = swift_getOpaqueTypeMetadata2();
    a5[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a5);
    return a4(1, v16, v17);
  }

  else
  {
    result = sub_255DDF1BC(a2, *v5, *(v5 + 8), *(v5 + 16), v9 & 1);
    if (!v6)
    {
      v12 = result;
      v13 = a1;
      v14 = a1[3];
      v15 = a1[4];
      __swift_project_boxed_opaque_existential_1(v13, v14);
      a5[3] = swift_getOpaqueTypeMetadata2();
      a5[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(a5);
      return a4(v12 & 1, v14, v15);
    }
  }

  return result;
}

uint64_t sub_255D75B34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E399E8();
}

uint64_t sub_255D75C98@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D75CF0(uint64_t a1)
{
  v2 = sub_255D76B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D75D2C(uint64_t a1)
{
  v2 = sub_255D76B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D75E74@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D75ECC(uint64_t a1)
{
  v2 = sub_255D76ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D75F08(uint64_t a1)
{
  v2 = sub_255D76ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D75F88@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v17 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v6)
  {
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    sub_255D38950(&qword_27F7E62E8, &qword_27F7E62E0, &qword_255E3C940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    (*(v21 + 8))(v11, v9);
    v13 = v19;
    v14 = v20;
    *v12 = v18;
    *(v12 + 16) = v13;
    *(v12 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D761B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D7624C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D762F0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D76348(uint64_t a1)
{
  v2 = sub_255D76A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D76384(uint64_t a1)
{
  v2 = sub_255D76A88();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_255D76444@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t, double)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_255DDEF98(a2, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
  if (!v6)
  {
    v12 = a1[3];
    v13 = a1[4];
    v14 = v11;
    __swift_project_boxed_opaque_existential_1(a1, v12);
    a5[3] = swift_getOpaqueTypeMetadata2();
    a5[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a5);
    return a4(v12, v13, v14);
  }

  return result;
}

unint64_t sub_255D7652C(uint64_t a1)
{
  result = sub_255D76554();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D76554()
{
  result = qword_27F7E7200;
  if (!qword_27F7E7200)
  {
    result = swift_getWitnessTable(byte_255E467F0, &type metadata for BaselineOffsetModifier, v0, v1);
    atomic_store(result, &qword_27F7E7200);
  }

  return result;
}

unint64_t sub_255D765A8(uint64_t a1)
{
  result = sub_255D765D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D765D0()
{
  result = qword_27F7E7208;
  if (!qword_27F7E7208)
  {
    result = swift_getWitnessTable(aA8, &type metadata for TrackingModifier, v0, v1);
    atomic_store(result, &qword_27F7E7208);
  }

  return result;
}

unint64_t sub_255D76624(uint64_t a1)
{
  result = sub_255D7664C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7664C()
{
  result = qword_27F7E7210;
  if (!qword_27F7E7210)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for KerningModifier, v0, v1);
    atomic_store(result, &qword_27F7E7210);
  }

  return result;
}

unint64_t sub_255D766A0(uint64_t a1)
{
  result = sub_255D766C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D766C8()
{
  result = qword_27F7E7218;
  if (!qword_27F7E7218)
  {
    result = swift_getWitnessTable(byte_255E46778, &type metadata for MonospacedDigitModifier, v0, v1);
    atomic_store(result, &qword_27F7E7218);
  }

  return result;
}

unint64_t sub_255D7671C(uint64_t a1)
{
  result = sub_255D76744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D76744()
{
  result = qword_27F7E7220;
  if (!qword_27F7E7220)
  {
    result = swift_getWitnessTable(byte_255E46750, &type metadata for MonospacedModifier, v0, v1);
    atomic_store(result, &qword_27F7E7220);
  }

  return result;
}

unint64_t sub_255D76798(uint64_t a1)
{
  result = sub_255D767C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D767C0()
{
  result = qword_27F7E7228;
  if (!qword_27F7E7228)
  {
    result = swift_getWitnessTable(byte_255E46728, &type metadata for ItalicModifier, v0, v1);
    atomic_store(result, &qword_27F7E7228);
  }

  return result;
}

unint64_t sub_255D76814(uint64_t a1)
{
  result = sub_255D7683C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7683C()
{
  result = qword_27F7E7230;
  if (!qword_27F7E7230)
  {
    result = swift_getWitnessTable(asc_255E46700, &type metadata for BoldModifier, v0, v1);
    atomic_store(result, &qword_27F7E7230);
  }

  return result;
}

unint64_t sub_255D76890(uint64_t a1)
{
  result = sub_255D768B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D768B8()
{
  result = qword_27F7E7238;
  if (!qword_27F7E7238)
  {
    result = swift_getWitnessTable(a1_0, &type metadata for FontModifier, v0, v1);
    atomic_store(result, &qword_27F7E7238);
  }

  return result;
}

uint64_t sub_255D7690C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

unint64_t sub_255D76920(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D7696C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D769B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D76A04(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D76A88()
{
  result = qword_27F7E7268;
  if (!qword_27F7E7268)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for BaselineOffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7268);
  }

  return result;
}

unint64_t sub_255D76ADC()
{
  result = qword_27F7E7278;
  if (!qword_27F7E7278)
  {
    result = swift_getWitnessTable(byte_255E4768C, &type metadata for TrackingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7278);
  }

  return result;
}

unint64_t sub_255D76B30()
{
  result = qword_27F7E7288;
  if (!qword_27F7E7288)
  {
    result = swift_getWitnessTable(byte_255E4763C, &type metadata for KerningModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7288);
  }

  return result;
}

unint64_t sub_255D76B84()
{
  result = qword_27F7E7298;
  if (!qword_27F7E7298)
  {
    result = swift_getWitnessTable(aLy, &type metadata for MonospacedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7298);
  }

  return result;
}

unint64_t sub_255D76BD8()
{
  result = qword_27F7E72A8;
  if (!qword_27F7E72A8)
  {
    result = swift_getWitnessTable(byte_255E4759C, &type metadata for ItalicModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72A8);
  }

  return result;
}

unint64_t sub_255D76C2C()
{
  result = qword_27F7E72B8;
  if (!qword_27F7E72B8)
  {
    result = swift_getWitnessTable(byte_255E4754C, &type metadata for BoldModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72B8);
  }

  return result;
}

unint64_t sub_255D76C80()
{
  result = qword_27F7E72C8;
  if (!qword_27F7E72C8)
  {
    result = swift_getWitnessTable(aA_5, &type metadata for FontModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72C8);
  }

  return result;
}

unint64_t sub_255D76CD4()
{
  result = qword_27F7E72D0;
  if (!qword_27F7E72D0)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for SystemFontOptions, v0, v1);
    atomic_store(result, &qword_27F7E72D0);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_255D76E2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D76E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

unint64_t sub_255D76EF0()
{
  result = qword_27F7E72D8;
  if (!qword_27F7E72D8)
  {
    result = swift_getWitnessTable(byte_255E46F0C, &type metadata for BaselineOffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72D8);
  }

  return result;
}

unint64_t sub_255D76F48()
{
  result = qword_27F7E72E0;
  if (!qword_27F7E72E0)
  {
    result = swift_getWitnessTable(byte_255E46FFC, &type metadata for TrackingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72E0);
  }

  return result;
}

unint64_t sub_255D76FA0()
{
  result = qword_27F7E72E8;
  if (!qword_27F7E72E8)
  {
    result = swift_getWitnessTable(byte_255E470EC, &type metadata for KerningModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72E8);
  }

  return result;
}

unint64_t sub_255D76FF8()
{
  result = qword_27F7E72F0;
  if (!qword_27F7E72F0)
  {
    result = swift_getWitnessTable(byte_255E471DC, &type metadata for MonospacedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72F0);
  }

  return result;
}

unint64_t sub_255D77050()
{
  result = qword_27F7E72F8;
  if (!qword_27F7E72F8)
  {
    result = swift_getWitnessTable(byte_255E472CC, &type metadata for ItalicModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E72F8);
  }

  return result;
}

unint64_t sub_255D770A8()
{
  result = qword_27F7E7300;
  if (!qword_27F7E7300)
  {
    result = swift_getWitnessTable(a4, &type metadata for BoldModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7300);
  }

  return result;
}

unint64_t sub_255D77100()
{
  result = qword_27F7E7308;
  if (!qword_27F7E7308)
  {
    result = swift_getWitnessTable(byte_255E474AC, &type metadata for FontModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7308);
  }

  return result;
}

unint64_t sub_255D77158()
{
  result = qword_27F7E7310;
  if (!qword_27F7E7310)
  {
    result = swift_getWitnessTable(byte_255E473E4, &type metadata for FontModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7310);
  }

  return result;
}

unint64_t sub_255D771B0()
{
  result = qword_27F7E7318;
  if (!qword_27F7E7318)
  {
    result = swift_getWitnessTable(byte_255E4740C, &type metadata for FontModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7318);
  }

  return result;
}

unint64_t sub_255D77208()
{
  result = qword_27F7E7320;
  if (!qword_27F7E7320)
  {
    result = swift_getWitnessTable(byte_255E472F4, &type metadata for BoldModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7320);
  }

  return result;
}

unint64_t sub_255D77260()
{
  result = qword_27F7E7328;
  if (!qword_27F7E7328)
  {
    result = swift_getWitnessTable(byte_255E4731C, &type metadata for BoldModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7328);
  }

  return result;
}

unint64_t sub_255D772B8()
{
  result = qword_27F7E7330;
  if (!qword_27F7E7330)
  {
    result = swift_getWitnessTable(byte_255E47204, &type metadata for ItalicModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7330);
  }

  return result;
}

unint64_t sub_255D77310()
{
  result = qword_27F7E7338;
  if (!qword_27F7E7338)
  {
    result = swift_getWitnessTable(byte_255E4722C, &type metadata for ItalicModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7338);
  }

  return result;
}

unint64_t sub_255D77368()
{
  result = qword_27F7E7340;
  if (!qword_27F7E7340)
  {
    result = swift_getWitnessTable(byte_255E47114, &type metadata for MonospacedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7340);
  }

  return result;
}

unint64_t sub_255D773C0()
{
  result = qword_27F7E7348;
  if (!qword_27F7E7348)
  {
    result = swift_getWitnessTable(byte_255E4713C, &type metadata for MonospacedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7348);
  }

  return result;
}

unint64_t sub_255D77418()
{
  result = qword_27F7E7350;
  if (!qword_27F7E7350)
  {
    result = swift_getWitnessTable(a8, &type metadata for KerningModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7350);
  }

  return result;
}

unint64_t sub_255D77470()
{
  result = qword_27F7E7358;
  if (!qword_27F7E7358)
  {
    result = swift_getWitnessTable(byte_255E4704C, &type metadata for KerningModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7358);
  }

  return result;
}

unint64_t sub_255D774C8()
{
  result = qword_27F7E7360;
  if (!qword_27F7E7360)
  {
    result = swift_getWitnessTable(aML, &type metadata for TrackingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7360);
  }

  return result;
}

unint64_t sub_255D77520()
{
  result = qword_27F7E7368;
  if (!qword_27F7E7368)
  {
    result = swift_getWitnessTable(asc_255E46F5C, &type metadata for TrackingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7368);
  }

  return result;
}

unint64_t sub_255D77578()
{
  result = qword_27F7E7370;
  if (!qword_27F7E7370)
  {
    result = swift_getWitnessTable(aA_6, &type metadata for BaselineOffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7370);
  }

  return result;
}

unint64_t sub_255D775D0()
{
  result = qword_27F7E7378;
  if (!qword_27F7E7378)
  {
    result = swift_getWitnessTable(aM8, &type metadata for BaselineOffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7378);
  }

  return result;
}

unint64_t sub_255D77624()
{
  result = qword_27F7E7388;
  if (!qword_27F7E7388)
  {
    result = swift_getWitnessTable(byte_255E47830, &type metadata for SystemFontOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7388);
  }

  return result;
}

uint64_t sub_255D77678(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D38090(result, a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_255D776D4()
{
  result = qword_27F7E73A0;
  if (!qword_27F7E73A0)
  {
    result = swift_getWitnessTable(byte_255E47808, &type metadata for SystemFontOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E73A0);
  }

  return result;
}

unint64_t sub_255D7772C()
{
  result = qword_27F7E73A8;
  if (!qword_27F7E73A8)
  {
    result = swift_getWitnessTable(aA8_0, &type metadata for SystemFontOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E73A8);
  }

  return result;
}

unint64_t sub_255D77784()
{
  result = qword_27F7E73B0;
  if (!qword_27F7E73B0)
  {
    result = swift_getWitnessTable(aQ4X, &type metadata for SystemFontOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E73B0);
  }

  return result;
}

unint64_t sub_255D777D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D77848(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3A578();
}

uint64_t sub_255D77940(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3A578();
}

uint64_t sub_255D77A70(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3A578();
}

uint64_t sub_255D77BD0(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3A578();
}

uint64_t sub_255D77D34(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D77E2C(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D77F3C(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D78070(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D781B4(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D782C0(uint64_t a1, unsigned __int8 a2)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

LiftUI::HTTPRequestMethod_optional __swiftcall HTTPRequestMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255E3AB48();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HTTPRequestMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 7628135;
  v3 = 0x6574656C6564;
  if (v1 != 6)
  {
    v3 = 0x4554454C4544;
  }

  v4 = 7632240;
  if (v1 != 4)
  {
    v4 = 5526864;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1953722224;
  if (v1 != 2)
  {
    v5 = 1414745936;
  }

  if (*v0)
  {
    v2 = 5522759;
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

unint64_t sub_255D78504()
{
  result = qword_27F7E73B8;
  if (!qword_27F7E73B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HTTPRequestMethod, &type metadata for HTTPRequestMethod, v0, v1);
    atomic_store(result, &qword_27F7E73B8);
  }

  return result;
}

void sub_255D78580(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7628135;
  v5 = 0xE600000000000000;
  v6 = 0x6574656C6564;
  if (v2 != 6)
  {
    v6 = 0x4554454C4544;
    v5 = 0xE600000000000000;
  }

  v7 = 7632240;
  if (v2 != 4)
  {
    v7 = 5526864;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  v8 = 1953722224;
  if (v2 != 2)
  {
    v8 = 1414745936;
  }

  if (*v1)
  {
    v4 = 5522759;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_255D786B8()
{
  result = qword_27F7E73C0;
  if (!qword_27F7E73C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HTTPRequestMethod, &type metadata for HTTPRequestMethod, v0, v1);
    atomic_store(result, &qword_27F7E73C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySDySSAA14DecodableStateOGGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_255D7875C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D787A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D7881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v5;
  v9 = v4[16];
  v10 = v4[18];
  v24 = v4[17];

  sub_255D3D51C(v9);
  sub_255D3D51C(v10);
  v11 = v24;
  result = sub_255D3CE1C(a1, a4);
  v13 = *(v24 + 16);
  if (!v13)
  {
  }

  v14 = 0;
  v15 = v24 + 32;
  while (v14 < *(v11 + 16))
  {
    sub_255D3CE1C(v15, v21);
    v17 = v22;
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(*(v16 + 8) + 16))(v20, a4, a2, a3, v17);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a4);

      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    ++v14;
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    result = sub_255D34630(v20, a4);
    v15 += 40;
    if (v13 == v14)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255D78980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_255E38408();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  v6[24] = swift_task_alloc();
  v8 = sub_255E38588();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D78B28, 0, 0);
}

uint64_t sub_255D78B28()
{
  v84 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v1 + 9);
  *(v0 + 16) = *v1;
  *(v0 + 25) = v3;
  *v83 = *v1;
  *&v83[9] = *(v1 + 9);
  sub_255D7B16C(v0 + 16, v0 + 48);
  StringResolvable.resolved(with:)(v2);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  sub_255D38060(*v83, *&v83[8], *&v83[16], v83[24]);
  sub_255E38578();

  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    v17 = *(v0 + 232);
    v18 = *(v0 + 136);
    (*(*(v0 + 208) + 32))(v17, *(v0 + 192), *(v0 + 200));
    v19 = *(v18 + 160);
    ObjectType = swift_getObjectType();
    (v19[1])(v17, ObjectType, v19);
    v21 = *(v0 + 136);
    v22 = *(v21 + 56);
    if (v22 <= 0xFD)
    {
      v23 = *(v0 + 144);
      v24 = *(v21 + 40);
      v25 = *(v21 + 48);
      *v83 = *(v21 + 32);
      *&v83[8] = v24;
      *&v83[16] = v25;
      v83[24] = v22;
      sub_255D3E5A8(*v83, v24, v25, v22);
      v26 = StringResolvable.resolved(with:)(v23);
      v28 = v27;
      sub_255D38060(*v83, *&v83[8], *&v83[16], v83[24]);
      v29._countAndFlagsBits = v26;
      v29._object = v28;
      HTTPRequestMethod.init(rawValue:)(v29);
      if (v83[0] < 8u)
      {
        sub_255E38388();
      }
    }

    v30 = *(v0 + 136);
    v31 = *(v30 + 88);
    if (v31 == 255)
    {
LABEL_31:
      v45 = *(v30 + 120);
      if (v45 != 255)
      {
        v48 = sub_255DDF580(*(v0 + 144), *(v30 + 96), *(v30 + 104), *(v30 + 112), v45 & 1);
        sub_255E38498();
        swift_allocObject();
        sub_255E38488();
        *(v0 + 120) = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
        sub_255D7B390();
        sub_255E38478();

        sub_255E383E8();
      }

      v80 = ObjectType;
      if (qword_27F7E5E80 == -1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = sub_255DDF580(*(v0 + 144), *(v30 + 64), *(v30 + 72), *(v30 + 80), v31 & 1);
      v33 = v32;
      v80 = ObjectType;
      v77 = v19;
      v78 = v32;
      v34 = 0;
      v19 = v32 + 8;
      v35 = -1;
      v36 = -1 << *(v32 + 32);
      if (-v36 < 64)
      {
        v35 = ~(-1 << -v36);
      }

      v37 = v35 & v32[8];
      v38 = (63 - v36) >> 6;
      while (v37)
      {
LABEL_17:
        v40 = *(v33[7] + 8 * (__clz(__rbit64(v37)) | (v34 << 6)));
        v41 = v40 >> 61;
        if ((v40 >> 61) <= 1)
        {
          if (v41)
          {
            *(v0 + 128) = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

            sub_255E3AC28();
          }

          else
          {
          }
        }

        else if (v41 == 2)
        {
          *(v0 + 96) = 0;
          *(v0 + 104) = 0xE000000000000000;

          sub_255E3A7A8();
        }

        else
        {
          if (v41 != 3)
          {
            v69 = *(v0 + 232);
            v70 = *(v0 + 200);
            v71 = *(v0 + 208);
            v73 = *(v0 + 168);
            v72 = *(v0 + 176);
            v74 = *(v0 + 160);
            sub_255D7B470();
            swift_allocError();
            v75 = MEMORY[0x277D837D0];
            *v76 = v40;
            v76[1] = v75;
            swift_willThrow();
            swift_retain_n();

            (*(v73 + 8))(v72, v74);
            (*(v71 + 8))(v69, v70);

            goto LABEL_33;
          }

          v42 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          *v83 = 0;
          *&v83[8] = 0xE000000000000000;
          if (v42)
          {
            v43 = 1702195828;
          }

          else
          {
            v43 = 0x65736C6166;
          }

          if (v42)
          {
            v44 = 0xE400000000000000;
          }

          else
          {
            v44 = 0xE500000000000000;
          }

          MEMORY[0x259C4E8F0](v43, v44);

          v33 = v78;
        }

        v37 &= v37 - 1;
        sub_255E383F8();
      }

      while (1)
      {
        v39 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v39 >= v38)
        {

          v30 = *(v0 + 136);
          v19 = v77;
          ObjectType = v80;
          goto LABEL_31;
        }

        v37 = v19[v39];
        ++v34;
        if (v37)
        {
          v34 = v39;
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_37:
    v50 = *(v0 + 224);
    v49 = *(v0 + 232);
    v52 = *(v0 + 200);
    v51 = *(v0 + 208);
    v53 = sub_255E386A8();
    *(v0 + 240) = __swift_project_value_buffer(v53, qword_27F8152D8);
    v54 = *(v51 + 16);
    *(v0 + 248) = v54;
    *(v0 + 256) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v54(v50, v49, v52);
    v55 = sub_255E38688();
    v56 = sub_255E3A868();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 224);
    v60 = *(v0 + 200);
    v59 = *(v0 + 208);
    if (v57)
    {
      v61 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v83 = v81;
      *v61 = 136315138;
      sub_255D7B2F8(&qword_27F7E73E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v62 = sub_255E3AC28();
      v64 = v63;
      v79 = v56;
      v65 = *(v59 + 8);
      v65(v58, v60);
      v66 = sub_255D378C0(v62, v64, v83);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_255D2E000, v55, v79, "HTTP Request Action: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x259C4F9E0](v81, -1, -1);
      MEMORY[0x259C4F9E0](v61, -1, -1);
    }

    else
    {

      v65 = *(v59 + 8);
      v65(v58, v60);
    }

    *(v0 + 264) = v65;
    v82 = (v19[2] + *v19[2]);
    v67 = swift_task_alloc();
    *(v0 + 272) = v67;
    *v67 = v0;
    v67[1] = sub_255D79740;
    v68 = *(v0 + 176);

    return v82(v68, v80, v19);
  }

  v7 = *(v0 + 184);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  sub_255D7B1C8(*(v0 + 192));
  v11 = *(v10 + 136);
  v12 = sub_255E3A778();
  v13 = *(*(v12 - 8) + 56);
  v13(v7, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;
  v14[5] = v9;
  v14[6] = v8;

  sub_255D52540(0, 0, v7, &unk_255E5A580, v14);

  v15 = *(v10 + 144);
  v13(v7, 1, 1, v12);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v16[5] = v9;
  v16[6] = v8;

  sub_255D52540(0, 0, v7, &unk_255E48070, v16);

  type metadata accessor for RemoteLoaderError(0);
  sub_255D7B2F8(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_33:

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_255D79740(uint64_t a1, unint64_t a2)
{
  *(*v3 + 280) = v2;

  if (v2)
  {
    v6 = sub_255D79AB4;
  }

  else
  {
    sub_255D37E60(a1, a2);
    v6 = sub_255D79870;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_255D79870()
{
  v1 = *(v0 + 184);
  v15 = *(v0 + 176);
  v13 = *(v0 + 168);
  v14 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v4 + 128);
  v6 = sub_255E3A778();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v2;

  sub_255D52540(0, 0, v1, &unk_255E48090, v8);

  v9 = *(v4 + 144);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = v3;
  v10[6] = v2;

  sub_255D52540(0, 0, v1, &unk_255E48098, v10);

  (*(v13 + 8))(v15, v14);
  (*(v0 + 264))(*(v0 + 232), *(v0 + 200));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_255D79AB4()
{
  v39 = v0;
  v0[14] = v0[35];
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
  sub_255E3AAC8();
  v5 = v0[10];
  v6 = v0[11];
  v1(v3, v2, v4);

  v7 = sub_255E38688();
  v8 = sub_255E3A868();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[27];
  v12 = v0[25];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v13 = 136315394;
    sub_255D7B2F8(&qword_27F7E73E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = v5;
    v14 = sub_255E3AC28();
    v34 = v8;
    v16 = v15;
    v10(v11, v12);
    v17 = sub_255D378C0(v14, v16, &v38);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_255D378C0(v32, v6, &v38);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_255D2E000, v7, v34, "Network request failed with url: %s | Error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C4F9E0](v36, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  else
  {

    v10(v11, v12);
  }

  v19 = v0[23];
  v31 = v0[35];
  v33 = v0[21];
  v35 = v0[20];
  v37 = v0[22];
  v21 = v0[18];
  v20 = v0[19];
  v22 = v0[17];
  v23 = *(v22 + 136);
  v24 = sub_255E3A778();
  v25 = *(*(v24 - 8) + 56);
  v25(v19, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v23;
  v26[5] = v21;
  v26[6] = v20;

  sub_255D52540(0, 0, v19, &unk_255E48080, v26);

  v27 = *(v22 + 144);
  v25(v19, 1, 1, v24);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v27;
  v28[5] = v21;
  v28[6] = v20;

  sub_255D52540(0, 0, v19, &unk_255E48088, v28);

  (*(v33 + 8))(v37, v35);
  (v0[33])(v0[29], v0[25]);

  v29 = v0[1];

  return v29();
}

unint64_t sub_255D79F58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D7BA14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D79F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xEC0000006E6F6974;
  v6 = 0x656C706D6F436E6FLL;
  if (v2 != 6)
  {
    v6 = 2036625250;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE900000000000073;
  v8 = 0x7365636375536E6FLL;
  if (v2 != 4)
  {
    v8 = 0x726F7272456E6FLL;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF6E6F6974656C70;
  v10 = 0x6D6F437469617761;
  if (v2 != 2)
  {
    v10 = 0x73726564616568;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x646F6874656DLL;
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

uint64_t sub_255D7A088()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x656C706D6F436E6FLL;
  if (v1 != 6)
  {
    v3 = 2036625250;
  }

  v4 = 0x7365636375536E6FLL;
  if (v1 != 4)
  {
    v4 = 0x726F7272456E6FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6F437469617761;
  if (v1 != 2)
  {
    v5 = 0x73726564616568;
  }

  if (*v0)
  {
    v2 = 0x646F6874656DLL;
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

unint64_t sub_255D7A184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D7BA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D7A1B8(uint64_t a1)
{
  v2 = sub_255D7B588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D7A1F4(uint64_t a1)
{
  v2 = sub_255D7B588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D7A230@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7408, &unk_255E480B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v54 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_255E3AE18();
  if (qword_27F7E5E68 != -1)
  {
    swift_once();
  }

  v9 = sub_255E3AAE8();
  v10 = __swift_project_value_buffer(v9, qword_27F8152C0);
  if (!*(v8 + 16) || (v11 = sub_255D3CA98(v10), (v12 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_255D3951C(*(v8 + 56) + 32 * v11, &v87);

  type metadata accessor for AnyWeakRemoteLoader();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    type metadata accessor for RemoteLoaderError(0);
    sub_255D7B2F8(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = v76;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_11;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {

    goto LABEL_11;
  }

  v74 = v16;
  v75 = v13;
  v72 = *(v15 + 136);
  v73 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D7B588();
  sub_255E3AE28();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v71 = v15;
    LOBYTE(v76) = 0;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v68 = v87;
    v69 = v88;
    v18 = v89;
    LOBYTE(v76) = 1;
    sub_255E3ABA8();
    v70 = v18;
    v66 = v87;
    v67 = v88;
    v65 = v89;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    LOBYTE(v76) = 3;
    sub_255D7B5F4();
    *(&v60 + 1) = v19;
    v64 = 0;
    sub_255E3ABA8();
    v61 = v87;
    v62 = v88;
    v63 = v89;
    LOBYTE(v76) = 7;
    sub_255E3ABA8();
    v60 = v87;
    v59 = v88;
    v58 = v89;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    LOBYTE(v76) = 4;
    v55 = sub_255D7B658();
    sub_255E3ABA8();
    if (v87)
    {
      v21 = v87;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);
    v54[2] = v20;
    if (v22)
    {
      v108 = MEMORY[0x277D84F90];
      v23 = v21;
      v24 = v22;
      sub_255DE5EF0(0, v22, 0);
      v25 = v108;
      v56 = v23;
      v26 = v23 + 32;
      do
      {
        sub_255D7B730(v26, &v76);
        sub_255D34630(&v76, &v87);
        v108 = v25;
        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v57 = v28 + 1;
          sub_255DE5EF0((v27 > 1), v28 + 1, 1);
          v29 = v57;
          v25 = v108;
        }

        *(v25 + 16) = v29;
        sub_255D34630(&v87, v25 + 40 * v28 + 32);
        v26 += 40;
        --v24;
      }

      while (v24);
      v57 = v25;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    LOBYTE(v76) = 5;
    sub_255E3ABA8();
    if (v87)
    {
      v30 = v87;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    if (*(v30 + 16))
    {
      v31 = *(v30 + 16);
      v108 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v31, 0);
      v32 = v108;
      v54[1] = v30;
      v33 = v30 + 32;
      do
      {
        sub_255D7B730(v33, &v76);
        sub_255D34630(&v76, &v87);
        v108 = v32;
        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v56 = v35 + 1;
          sub_255DE5EF0((v34 > 1), v35 + 1, 1);
          v36 = v56;
          v32 = v108;
        }

        *(v32 + 16) = v36;
        sub_255D34630(&v87, v32 + 40 * v35 + 32);
        v33 += 40;
        --v31;
      }

      while (v31);
      v56 = v32;
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    LOBYTE(v76) = 6;
    sub_255E3ABA8();
    v37 = v87;
    if (!v87)
    {
      v37 = MEMORY[0x277D84F90];
    }

    v64 = v37;
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = v38;
      v108 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v38, 0);
      v40 = v108;
      v41 = v64 + 32;
      do
      {
        sub_255D7B730(v41, &v76);
        sub_255D34630(&v76, &v87);
        v108 = v40;
        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v55 = v43 + 1;
          sub_255DE5EF0((v42 > 1), v43 + 1, 1);
          v44 = v55;
          v40 = v108;
        }

        *(v40 + 16) = v44;
        sub_255D34630(&v87, v40 + 40 * v43 + 32);
        v41 += 40;
        --v39;
      }

      while (v39);
      (*(v73 + 8))(v7, v4);
    }

    else
    {

      (*(v73 + 8))(v7, v4);
      v40 = MEMORY[0x277D84F90];
    }

    v45 = v68;
    v76 = v68;
    v46 = v69;
    *&v77 = v69;
    BYTE8(v77) = v70;
    *(&v77 + 9) = v112[0];
    HIDWORD(v77) = *(v112 + 3);
    v78 = v66;
    *&v79 = v67;
    BYTE8(v79) = v65;
    *(&v79 + 9) = *v111;
    HIDWORD(v79) = *&v111[3];
    v80 = v61;
    *&v81 = v62;
    BYTE8(v81) = v63;
    *(&v81 + 9) = *v110;
    HIDWORD(v81) = *&v110[3];
    v82 = v60;
    *&v83 = v59;
    BYTE8(v83) = v58;
    *(&v83 + 9) = *v109;
    HIDWORD(v83) = *&v109[3];
    *&v84 = v57;
    *(&v84 + 1) = v56;
    *&v85 = v40;
    *(&v85 + 1) = v74;
    v47 = v72;
    v86 = v72;
    v48 = v113;
    *(v113 + 160) = v72;
    v49 = v77;
    *v48 = v76;
    v48[1] = v49;
    v50 = v79;
    v48[2] = v78;
    v48[3] = v50;
    v51 = v85;
    v48[8] = v84;
    v48[9] = v51;
    v52 = v83;
    v48[6] = v82;
    v48[7] = v52;
    v53 = v81;
    v48[4] = v80;
    v48[5] = v53;
    sub_255D5C4D4(&v76, &v87);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v87 = v45;
    v88 = v46;
    v89 = v70;
    *v90 = v112[0];
    *&v90[3] = *(v112 + 3);
    v91 = v66;
    v92 = v67;
    v93 = v65;
    *v94 = *v111;
    *&v94[3] = *&v111[3];
    v95 = v61;
    v96 = v62;
    v97 = v63;
    *&v98[3] = *&v110[3];
    *v98 = *v110;
    v99 = v60;
    v100 = v59;
    v101 = v58;
    *&v102[3] = *&v109[3];
    *v102 = *v109;
    v103 = v57;
    v104 = v56;
    v105 = v40;
    v106 = v74;
    v107 = v47;
    return sub_255D7B78C(&v87);
  }
}

uint64_t sub_255D7AE2C(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  *(v3 + 368) = swift_task_alloc();
  v4 = *(v2 + 144);
  *(v3 + 144) = *(v2 + 128);
  *(v3 + 160) = v4;
  *(v3 + 176) = *(v2 + 160);
  v5 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  v7 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  v8 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v8;

  return MEMORY[0x2822009F8](sub_255D7AEF8, 0, 0);
}

uint64_t sub_255D7AEF8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = sub_255E3A778();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v0 + 160);
  *(v5 + 160) = *(v0 + 144);
  *(v5 + 176) = v6;
  v7 = *(v0 + 176);
  v8 = *(v0 + 96);
  *(v5 + 96) = *(v0 + 80);
  *(v5 + 112) = v8;
  v9 = *(v0 + 128);
  *(v5 + 128) = *(v0 + 112);
  *(v5 + 144) = v9;
  v10 = *(v0 + 32);
  *(v5 + 32) = *(v0 + 16);
  *(v5 + 48) = v10;
  v11 = *(v0 + 64);
  *(v5 + 64) = *(v0 + 48);
  *(v5 + 80) = v11;
  *(v5 + 192) = v7;
  *(v5 + 200) = v3;
  *(v5 + 208) = v1;
  sub_255D5C4D4(v0 + 16, v0 + 184);

  sub_255D51B90(0, 0, v2, &unk_255E3EF78, v5);

  v12 = *(v0 + 8);

  return v12();
}

unint64_t sub_255D7B074(uint64_t a1)
{
  result = sub_255D7B09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7B09C()
{
  result = qword_27F7E73C8;
  if (!qword_27F7E73C8)
  {
    result = swift_getWitnessTable(a8p, &type metadata for HTTPRequestAction, v0, v1);
    atomic_store(result, &qword_27F7E73C8);
  }

  return result;
}

unint64_t sub_255D7B0F0(uint64_t a1)
{
  result = sub_255D7B118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7B118()
{
  result = qword_27F7E73D0;
  if (!qword_27F7E73D0)
  {
    result = swift_getWitnessTable(aEz, &type metadata for HTTPRequestAction, v0, v1);
    atomic_store(result, &qword_27F7E73D0);
  }

  return result;
}

uint64_t sub_255D7B1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255D7B230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D5D0A4;

  return sub_255D52970(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_255D7B2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_255D7B390()
{
  result = qword_27F7E73F0;
  if (!qword_27F7E73F0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E73E8, &unk_255E480A0);
    v4 = sub_255D7B41C();
    v5[0] = MEMORY[0x277D837D8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83508], v3, v5);
    atomic_store(result, &qword_27F7E73F0);
  }

  return result;
}

unint64_t sub_255D7B41C()
{
  result = qword_27F7E73F8;
  if (!qword_27F7E73F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodableState, &type metadata for DecodableState, v0, v1);
    atomic_store(result, &qword_27F7E73F8);
  }

  return result;
}

unint64_t sub_255D7B470()
{
  result = qword_27F7E7400;
  if (!qword_27F7E7400)
  {
    result = swift_getWitnessTable(byte_255E48AB4, &type metadata for DecodableStateError, v0, v1);
    atomic_store(result, &qword_27F7E7400);
  }

  return result;
}

uint64_t sub_255D7B4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D50138;

  return sub_255D78980(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_255D7B588()
{
  result = qword_27F7E7410;
  if (!qword_27F7E7410)
  {
    result = swift_getWitnessTable(aE4N, &type metadata for HTTPRequestAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7410);
  }

  return result;
}

uint64_t sub_255D7B5DC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D380E0(result, a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_255D7B5F4()
{
  result = qword_27F7E7420;
  if (!qword_27F7E7420)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7418, qword_255E567D0);
    result = swift_getWitnessTable(protocol conformance descriptor for Referenceable<A>, v3, v0, v1);
    atomic_store(result, &qword_27F7E7420);
  }

  return result;
}

unint64_t sub_255D7B658()
{
  result = qword_27F7E7430;
  if (!qword_27F7E7430)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7428, &qword_255E480C0);
    v4[0] = sub_255D7B6DC();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F7E7430);
  }

  return result;
}

unint64_t sub_255D7B6DC()
{
  result = qword_27F7E7438;
  if (!qword_27F7E7438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteActionBox, &type metadata for RemoteActionBox, v0, v1);
    atomic_store(result, &qword_27F7E7438);
  }

  return result;
}

uint64_t sub_255D7B7BC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_255D7B84C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255D7B910()
{
  result = qword_27F7E7440;
  if (!qword_27F7E7440)
  {
    result = swift_getWitnessTable(asc_255E4819C, &type metadata for HTTPRequestAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7440);
  }

  return result;
}

unint64_t sub_255D7B968()
{
  result = qword_27F7E7448;
  if (!qword_27F7E7448)
  {
    result = swift_getWitnessTable(byte_255E480D4, &type metadata for HTTPRequestAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7448);
  }

  return result;
}

unint64_t sub_255D7B9C0()
{
  result = qword_27F7E7450;
  if (!qword_27F7E7450)
  {
    result = swift_getWitnessTable(byte_255E480FC, &type metadata for HTTPRequestAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7450);
  }

  return result;
}

unint64_t sub_255D7BA14(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for DynamicKeyError(uint64_t a1)
{
  result = qword_27F7E7458;
  if (!qword_27F7E7458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255D7BAC0(uint64_t a1)
{
  sub_255D7BB38();
  if (v1 <= 0x3F)
  {
    sub_255D7BB80(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_255D7BB38()
{
  if (!qword_27F7E7468)
  {
    v0 = sub_255E3A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E7468);
    }
  }
}

void sub_255D7BB80(uint64_t a1)
{
  if (!qword_27F7E7470)
  {
    sub_255E3A9F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7E7470);
    }
  }
}

uint64_t sub_255D7BBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_255D7BC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D7BC88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_255D7BCA8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_255D7BCB8(uint64_t a1)
{
  v2 = sub_255D3CAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D7BCF4(uint64_t a1)
{
  v2 = sub_255D3CAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D7BD30(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_255E3AC68();
  }
}

uint64_t sub_255D7BD60@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicKeyError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255E3A9F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D7BFB4(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v6 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7488, &qword_255E48378) + 48);
  }

  v11 = *(v8 + 32);
  v11(v10, v6, v7);
  v11(a1, v10, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

unint64_t sub_255D7BF08()
{
  result = qword_27F7E7478;
  if (!qword_27F7E7478)
  {
    result = swift_getWitnessTable(aEN, &type metadata for DynamicKey, v0, v1);
    atomic_store(result, &qword_27F7E7478);
  }

  return result;
}

unint64_t sub_255D7BF60()
{
  result = qword_27F7E7480;
  if (!qword_27F7E7480)
  {
    result = swift_getWitnessTable("U)?,", &type metadata for DynamicKey, v0, v1);
    atomic_store(result, &qword_27F7E7480);
  }

  return result;
}

uint64_t sub_255D7BFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicKeyError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D7C028@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = a1[4];
  v14[3] = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DDF1BC(a2, v7, v8, v9, v10);
  if (v4)
  {
  }

  v12 = sub_255E38AE8();
  a3[3] = v12;
  v14[0] = v11;
  v14[1] = MEMORY[0x277CE0770];
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v12, v14);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A08();
}

unint64_t sub_255D7C13C(uint64_t a1)
{
  result = sub_255D7C164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7C164()
{
  result = qword_27F7E7490;
  if (!qword_27F7E7490)
  {
    result = swift_getWitnessTable(asc_255E4848C, &type metadata for AllowsHitTestingModifier, v0, v1);
    atomic_store(result, &qword_27F7E7490);
  }

  return result;
}

uint64_t sub_255D7C1C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D7C308@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E74A0, &unk_255E538A0);
    v9 = sub_255E38AE8();
    a3[3] = v9;
    v10[0] = v8;
    v10[1] = sub_255D38950(&qword_27F7E74A8, &qword_27F7E74A0, &unk_255E538A0, MEMORY[0x277CE08A0]);
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v10);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39C78();
  }

  return result;
}

unint64_t sub_255D7C44C(uint64_t a1)
{
  result = sub_255D7C474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7C474()
{
  result = qword_27F7E7498;
  if (!qword_27F7E7498)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for DisabledModifier, v0, v1);
    atomic_store(result, &qword_27F7E7498);
  }

  return result;
}

uint64_t sub_255D7C4C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_255DE5CE0(0, v2, 0);
    v3 = v10;
    v5 = a1 + 32;
    while (1)
    {
      v5 += 8;

      sub_255D7D920(v9);
      if (v1)
      {
        break;
      }

      v10 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_255DE5CE0((v6 > 1), v7 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v7 + 1;
      sub_255D31B4C(v9, (v3 + 32 * v7 + 32));
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t sub_255D7C5D8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_255E3A7D8();
  if (!v19)
  {
    return sub_255E3A6A8();
  }

  v41 = v19;
  v45 = sub_255E3AA98();
  v32 = sub_255E3AAA8();
  sub_255E3AA48();
  result = sub_255E3A7C8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_255E3A7F8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_255E3AA88();
      result = sub_255E3A7E8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255D7C9F8()
{
  v1 = *v0;
  v2 = v1 >> 61;
  if ((v1 >> 61) > 2)
  {
    if ((v2 - 4) < 2)
    {
      sub_255D7B470();
      swift_allocError();
      v4 = MEMORY[0x277D837D0];
      *v5 = v1;
      v5[1] = v4;
      swift_willThrow();
    }

    if (*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x259C4E8F0](v7, v8);
  }

  else
  {
    if (!v2)
    {
      v6 = *(v1 + 16);

      return v6;
    }

    if (v2 == 1)
    {
      return sub_255E3AC28();
    }

    sub_255E3A7A8();
  }

  return 0;
}

uint64_t DecodableState.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74B0, &unk_255E48630);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {

    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_255D395E4(v18, &qword_27F7E74B8, &qword_255E48640);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_255E3ADF8();
    sub_255D34630(v18, v20);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v6 = sub_255E3AC48();
    v7 = MEMORY[0x277D84F90];
    if ((v6 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
        sub_255D7D39C();
        sub_255E3AC38();
        v13 = *&v18[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_255DE55B4(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_255DE55B4((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        *&v7[8 * v15 + 32] = v13;
        __swift_project_boxed_opaque_existential_1(v20, v21);
      }

      while ((sub_255E3AC48() & 1) == 0);
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v12 = v8 | 0x8000000000000000;
  }

  else
  {
    sub_255D34630(v18, v20);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v9 = sub_255E3AC78();
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  *a2 = v12;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D7D1D4(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  sub_255D7D39C();
  sub_255E3ABC8();
  if (v2)
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  sub_255D82054(v9, v5, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v8;
  return result;
}

uint64_t sub_255D7D2E4(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 56); ; i += 32)
    {
      v8 = *i;
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11[0] = *(i - 3);
      v11[1] = v10;
      v11[2] = v9;
      v12 = v8;

      a2(&v13, v11);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

unint64_t sub_255D7D39C()
{
  result = qword_27F7E74C8;
  if (!qword_27F7E74C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodableState, &type metadata for DecodableState, v0, v1);
    atomic_store(result, &qword_27F7E74C8);
  }

  return result;
}

uint64_t DecodableState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74D0, &unk_255E48650);
  v5 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = *v1;
  v10 = *v1 >> 61;
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_255E3AE48();
        __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        sub_255E3ACF8();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_255E3AE48();
        __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        sub_255E3ACE8();
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);

      sub_255E3AE48();
      __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      sub_255E3ACC8();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  if (v10 == 3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_255E3AE48();
    __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    sub_255E3ACD8();
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  if (v10 == 4)
  {
    v11 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    sub_255E3AE38();
    v33 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D832F4(&qword_27F7E74D8, MEMORY[0x277D83970]);
    sub_255D7B41C();
    sub_255E3AC58();

    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v28 = v6;
  v30 = v5;
  v13 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3CAFC();

  result = sub_255E3AE58();
  v14 = 0;
  v16 = v13 + 64;
  v15 = *(v13 + 64);
  v29 = v13;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  if ((v18 & v15) != 0)
  {
    while (1)
    {
      v21 = v14;
LABEL_19:
      v22 = __clz(__rbit64(v19)) | (v21 << 6);
      v23 = (*(v29 + 48) + 16 * v22);
      v24 = *(*(v29 + 56) + 8 * v22);
      v25 = *v23;
      v26 = v23[1];
      v33 = v24;
      v31[0] = v25;
      v31[1] = v26;
      v31[2] = 0;
      LOBYTE(v32) = 1;
      sub_255D7B41C();

      sub_255E3AC18();
      if (v2)
      {
        break;
      }

      v19 &= v19 - 1;

      v14 = v21;
      if (!v19)
      {
        goto LABEL_16;
      }
    }

    (*(v28 + 8))(v8, v30);
  }

  else
  {
LABEL_16:
    while (1)
    {
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        return (*(v28 + 8))(v8, v30);
      }

      v19 = *(v16 + 8 * v21);
      ++v14;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_255D7D920(void *a1@<X8>)
{
  v3 = v2;
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 <= 2)
  {
    if (v5)
    {
      v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      if (v5 == 1)
      {
        v7 = *(v6 + 16);
        a1[3] = MEMORY[0x277D83B88];
        *a1 = v7;
      }

      else
      {
        v18 = *(v6 + 16);
        a1[3] = MEMORY[0x277D839F8];
        *a1 = v18;
      }
    }

    else
    {
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      a1[3] = MEMORY[0x277D837D0];
      *a1 = v16;
      a1[1] = v15;
    }

    return;
  }

  if (v5 == 3)
  {
    v17 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a1[3] = MEMORY[0x277D839B0];
    *a1 = v17;
    return;
  }

  if (v5 == 4)
  {
    v9 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *(v9 + 16);
    v11 = MEMORY[0x277D84F90];
    if (!v10)
    {
LABEL_33:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
      *a1 = v11;
      return;
    }

    v45 = MEMORY[0x277D84F90];

    sub_255DE5CE0(0, v10, 0);
    v12 = 0;
    v11 = v45;
    while (v12 < *(v9 + 16))
    {

      sub_255D7D920(v44);
      if (v2)
      {

        goto LABEL_35;
      }

      v45 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_255DE5CE0((v13 > 1), v14 + 1, 1);
        v11 = v45;
      }

      ++v12;
      *(v11 + 16) = v14 + 1;
      sub_255D31B4C(v44, (v11 + 32 * v14 + 32));
      if (v10 == v12)
      {

        goto LABEL_33;
      }
    }

    goto LABEL_37;
  }

  v19 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  v20 = sub_255E3AB08();
  v21 = v20;
  v22 = v19 + 64;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v19 + 64);
  v26 = (v23 + 63) >> 6;
  v40 = v20 + 64;
  v42 = v19;

  v27 = 0;
  v41 = v21;
  if (!v25)
  {
LABEL_22:
    v29 = v27;
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);
        *a1 = v21;
        return;
      }

      v30 = *(v22 + 8 * v27);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v43 = (v30 - 1) & v30;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  while (1)
  {
    v28 = __clz(__rbit64(v25));
    v43 = (v25 - 1) & v25;
LABEL_27:
    v31 = v28 | (v27 << 6);
    v32 = (*(v42 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v45 = *(*(v42 + 56) + 8 * v31);

    sub_255D7D920(v44);

    if (v3)
    {
      break;
    }

    v21 = v41;
    *(v40 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v35 = (v41[6] + 16 * v31);
    *v35 = v33;
    v35[1] = v34;
    sub_255D31B4C(v44, (v41[7] + 32 * v31));
    v36 = v41[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_38;
    }

    v41[2] = v38;
    v25 = v43;
    if (!v43)
    {
      goto LABEL_22;
    }
  }

LABEL_35:
}

uint64_t sub_255D7DD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = *v4;
      v9 = v7 >> 61;
      if ((v7 >> 61) > 2)
      {
        if (v9 == 3)
        {
          if (v8 >> 61 != 3 || *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
          {
            return 0;
          }
        }

        else
        {
          v10 = v8 >> 61;
          if (v9 == 4)
          {
            if (v10 != 4)
            {
              return 0;
            }

            v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v12 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();
            swift_retain_n();

            v13 = sub_255D7DD14(v11, v12);
          }

          else
          {
            if (v10 != 5)
            {
              return 0;
            }

            v15 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v16 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();
            swift_retain_n();

            v13 = sub_255D7DF20(v15, v16);
          }

          v5 = v13;

          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          if (v8 >> 61 != 1 || *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
          {
            return 0;
          }
        }

        else if (v8 >> 61 != 2 || *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          return 0;
        }
      }

      else
      {
        if (v8 >> 61)
        {
          return 0;
        }

        v14 = *(v6 + 16) == *(v8 + 16) && *(v6 + 24) == *(v8 + 24);
        if (!v14 && (sub_255E3AC68() & 1) == 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_255D7DF20(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v127 = a1;
  while (1)
  {
    while (1)
    {
LABEL_6:
      if (v7)
      {
        v9 = __clz(__rbit64(v7));
        v128 = (v7 - 1) & v7;
      }

      else
      {
        v10 = v3;
        do
        {
          v3 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_189:

LABEL_197:

            goto LABEL_198;
          }

          if (v3 >= v8)
          {
            return 1;
          }

          v11 = *(v4 + 8 * v3);
          ++v10;
        }

        while (!v11);
        v9 = __clz(__rbit64(v11));
        v128 = (v11 - 1) & v11;
      }

      v12 = v9 | (v3 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);
      v17 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v18 = v14 == 0;

      if (!v14)
      {
        return v18;
      }

      v19 = sub_255D3CA20(v15, v14);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
LABEL_184:

        return 0;
      }

      v22 = *(*(a2 + 56) + 8 * v19);
      v23 = v22 >> 61;
      if ((v22 >> 61) > 2)
      {
        break;
      }

      if (v23)
      {
        if (v23 == 1)
        {
          if (v16 >> 61 != 1)
          {
            goto LABEL_184;
          }

          v24 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v25 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v26 = v24 == v25;
        }

        else
        {
          if (v16 >> 61 != 2)
          {
            goto LABEL_184;
          }

          v36 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v37 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v26 = v36 == v37;
        }

LABEL_38:
        a1 = v127;
        v7 = v128;
        if (!v26)
        {
          return v18;
        }
      }

      else
      {
        if (v16 >> 61)
        {

          return 0;
        }

        if (*(v22 + 16) == *(v16 + 16) && *(v22 + 24) == *(v16 + 24))
        {

LABEL_45:

          goto LABEL_46;
        }

        v33 = sub_255E3AC68();

        a1 = v127;
        v7 = v128;
        if ((v33 & 1) == 0)
        {
          return v18;
        }
      }
    }

    if (v23 == 3)
    {
      if (v16 >> 61 != 3)
      {
        goto LABEL_184;
      }

      v34 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v26 = v34 == v35;
      goto LABEL_38;
    }

    if (v23 == 4)
    {
      break;
    }

    if (v16 >> 61 != 5)
    {
      goto LABEL_184;
    }

    v38 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v39 = *(v17 + 16);
    swift_retain_n();

    LOBYTE(v38) = sub_255D7DF20(v38, v39);

    a1 = v127;
    v7 = v128;
    if ((v38 & 1) == 0)
    {
      return v18;
    }
  }

  if (v16 >> 61 != 4)
  {
    goto LABEL_184;
  }

  v27 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v28 = *(v17 + 16);
  v29 = *(v27 + 16);
  if (v29 != *(v28 + 16))
  {
    goto LABEL_184;
  }

  if (!v29 || v27 == v28)
  {
    goto LABEL_45;
  }

  v125 = v28 + 32;
  v126 = v27 + 32;
  swift_retain_n();

  v31 = 0;
  v123 = v27;
  v124 = v29;
  while (1)
  {
    if (v31 >= *(v27 + 16))
    {
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      return result;
    }

    if (v31 >= *(v28 + 16))
    {
      goto LABEL_206;
    }

    v42 = *(v126 + 8 * v31);
    v43 = *(v125 + 8 * v31);
    v44 = v42 >> 61;
    if ((v42 >> 61) <= 2)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          if (v43 >> 61 != 1)
          {
            goto LABEL_185;
          }

          v45 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v46 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v26 = v45 == v46;
          v27 = v123;
          v29 = v124;
          if (!v26)
          {
            goto LABEL_201;
          }
        }

        else
        {
          if (v43 >> 61 != 2)
          {
            goto LABEL_185;
          }

          v52 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v53 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          if (v52 != v53)
          {
            goto LABEL_201;
          }
        }
      }

      else
      {
        if (v43 >> 61)
        {
          goto LABEL_185;
        }

        result = *(v42 + 16);
        if (result != *(v43 + 16) || *(v42 + 24) != *(v43 + 24))
        {
          result = sub_255E3AC68();
          if ((result & 1) == 0)
          {
            goto LABEL_201;
          }
        }
      }

      goto LABEL_80;
    }

    if (v44 != 3)
    {
      break;
    }

    if (v43 >> 61 != 3)
    {
      goto LABEL_185;
    }

    v40 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v26 = v40 == v41;
    v27 = v123;
    v29 = v124;
    if (!v26)
    {
      goto LABEL_201;
    }

LABEL_80:
    if (++v31 == v29)
    {

LABEL_46:
      a1 = v127;
      v7 = v128;
      goto LABEL_6;
    }
  }

  if (v44 != 4)
  {
    if (v43 >> 61 != 5)
    {
LABEL_185:

      goto LABEL_202;
    }

    v54 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v55 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();

    LOBYTE(v54) = sub_255D7DF20(v54, v55);
    v29 = v124;

    v27 = v123;

    if ((v54 & 1) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_80;
  }

  if (v43 >> 61 != 4)
  {
    goto LABEL_185;
  }

  v47 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v48 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v49 = *(v47 + 16);
  if (v49 != *(v48 + 16))
  {

    goto LABEL_199;
  }

  if (v49)
  {
    v50 = v47 == v48;
  }

  else
  {
    v50 = 1;
  }

  if (v50)
  {

    goto LABEL_80;
  }

  v118 = *(v47 + 16);
  v120 = v48 + 32;
  v121 = v47 + 32;
  v56 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v119 = v47;
  swift_retain_n();
  swift_retain_n();
  v122 = v56;

  v57 = v119;
  v58 = 0;
  v111 = v28;
  while (2)
  {
    if (v58 >= *(v57 + 16))
    {
      goto LABEL_207;
    }

    if (v58 >= *(v122 + 16))
    {
      goto LABEL_208;
    }

    v59 = *(v121 + 8 * v58);
    v60 = *(v120 + 8 * v58);
    v61 = v59 >> 61;
    if ((v59 >> 61) <= 2)
    {
      if (v61)
      {
        if (v61 == 1)
        {
          if (v60 >> 61 != 1)
          {
            goto LABEL_187;
          }

          v62 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v63 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v57 = v119;
          v64 = v62 == v63;
          goto LABEL_82;
        }

        if (v60 >> 61 != 2)
        {
LABEL_187:

          goto LABEL_200;
        }

        v73 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v74 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v57 = v119;
        if (v73 != v74)
        {
          goto LABEL_194;
        }
      }

      else
      {
        if (v60 >> 61)
        {
          goto LABEL_187;
        }

        result = *(v59 + 16);
        if (result != *(v60 + 16) || *(v59 + 24) != *(v60 + 24))
        {
          result = sub_255E3AC68();
          v57 = v119;
          if ((result & 1) == 0)
          {
            goto LABEL_194;
          }
        }
      }

LABEL_84:
      ++v58;
      v29 = v124;
      if (v58 == v118)
      {

        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  v65 = v60 >> 61;
  if (v61 == 3)
  {
    if (v65 != 3)
    {
      goto LABEL_187;
    }

    v71 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v72 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v57 = v119;
    v64 = v71 == v72;
LABEL_82:
    v27 = v123;
    if (!v64)
    {
      goto LABEL_194;
    }

    goto LABEL_84;
  }

  if (v61 != 4)
  {
    if (v65 != 5)
    {
LABEL_192:

      goto LABEL_201;
    }

    v75 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v76 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();

    LOBYTE(v75) = sub_255D7DF20(v75, v76);
    v27 = v123;

    v28 = v111;

    v57 = v119;
    if ((v75 & 1) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_84;
  }

  if (v65 != 4)
  {
    goto LABEL_192;
  }

  v66 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v67 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v68 = *(v66 + 16);
  if (v68 == *(v67 + 16))
  {
    if (v68)
    {
      v69 = v66 == v67;
    }

    else
    {
      v69 = 1;
    }

    if (v69)
    {

      v57 = v119;
      goto LABEL_84;
    }

    v116 = v66 + 32;
    v117 = v66;
    v114 = *(v66 + 16);
    v115 = v67 + 32;
    swift_retain_n();
    swift_retain_n();

    v77 = 0;
    v110 = v67;
    while (2)
    {
      if (v77 >= *(v117 + 16))
      {
        goto LABEL_209;
      }

      if (v77 >= *(v67 + 16))
      {
        goto LABEL_210;
      }

      v81 = *(v116 + 8 * v77);
      v82 = *(v115 + 8 * v77);
      v83 = v81 >> 61;
      if ((v81 >> 61) > 2)
      {
        if (v83 != 3)
        {
          if (v83 == 4)
          {
            if (v82 >> 61 != 4)
            {
              goto LABEL_190;
            }

            v86 = v81 & 0x1FFFFFFFFFFFFFFFLL;
            v87 = *(v86 + 16);
            v88 = *(v87 + 16);
            if (v88 != *(*((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16))
            {

LABEL_196:

              goto LABEL_197;
            }

            if (v88)
            {
              v108 = *(v87 + 16);
              v109 = *(v86 + 16);
              v112 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

              if (v109 != v112)
              {
                swift_retain_n();

                v90 = v109 + 32;
                v89 = v108;
                v91 = v109;
                v92 = 0;
                while (v92 < *(v91 + 16))
                {
                  if (v92 >= *(v112 + 16))
                  {
                    goto LABEL_212;
                  }

                  v99 = *(v90 + 8 * v92);
                  v100 = *(v112 + 8 * v92 + 32);
                  v101 = v99 >> 61;
                  if ((v99 >> 61) > 2)
                  {
                    v102 = v100 >> 61;
                    if (v101 == 3)
                    {
                      if (v102 != 3 || *((v99 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
                      {
                        goto LABEL_189;
                      }
                    }

                    else
                    {
                      if (v101 == 4)
                      {
                        if (v102 != 4)
                        {
                          goto LABEL_189;
                        }

                        v105 = *((v99 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v97 = *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        swift_retain_n();
                        swift_retain_n();

                        v98 = sub_255D7DD14(v105, v97);
                      }

                      else
                      {
                        if (v102 != 5)
                        {
                          goto LABEL_189;
                        }

                        v107 = *((v99 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v103 = *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        swift_retain_n();
                        swift_retain_n();

                        v98 = sub_255D7DF20(v107, v103);
                      }

                      v106 = v98;

                      v27 = v123;

                      v90 = v109 + 32;
                      v89 = v108;
                      v91 = v109;
                      if ((v106 & 1) == 0)
                      {
                        goto LABEL_189;
                      }
                    }
                  }

                  else if (v101)
                  {
                    if (v101 == 1)
                    {
                      if (v100 >> 61 != 1 || *((v99 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
                      {
                        goto LABEL_189;
                      }
                    }

                    else if (v100 >> 61 != 2 || *((v99 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
                    {
                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    if (v100 >> 61)
                    {
                      goto LABEL_189;
                    }

                    result = *(v99 + 16);
                    if (result != *(v100 + 16) || *(v99 + 24) != *(v100 + 24))
                    {
                      result = sub_255E3AC68();
                      v90 = v109 + 32;
                      v89 = v108;
                      v91 = v109;
                      if ((result & 1) == 0)
                      {
                        goto LABEL_189;
                      }
                    }
                  }

                  if (v89 == ++v92)
                  {

                    v67 = v110;
                    goto LABEL_121;
                  }
                }

                goto LABEL_211;
              }
            }

            else
            {
            }
          }

          else
          {
            if (v82 >> 61 != 5)
            {
LABEL_190:

              goto LABEL_198;
            }

            v113 = *((v81 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v96 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();
            swift_retain_n();

            LOBYTE(v113) = sub_255D7DF20(v113, v96);
            v67 = v110;

            v27 = v123;

            if ((v113 & 1) == 0)
            {
              goto LABEL_196;
            }
          }

          goto LABEL_121;
        }

        if (v82 >> 61 != 3)
        {
          goto LABEL_190;
        }

        v94 = *((v81 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v95 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v80 = v94 == v95;
      }

      else
      {
        if (!v83)
        {
          if (v82 >> 61)
          {
            goto LABEL_190;
          }

          result = *(v81 + 16);
          if (result != *(v82 + 16) || *(v81 + 24) != *(v82 + 24))
          {
            result = sub_255E3AC68();
            if ((result & 1) == 0)
            {
              goto LABEL_196;
            }
          }

          goto LABEL_121;
        }

        if (v83 != 1)
        {
          if (v82 >> 61 != 2)
          {
            goto LABEL_190;
          }

          v84 = *((v81 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v85 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          if (v84 != v85)
          {
            goto LABEL_196;
          }

          goto LABEL_121;
        }

        if (v82 >> 61 != 1)
        {
          goto LABEL_190;
        }

        v78 = *((v81 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v79 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v80 = v78 == v79;
      }

      v67 = v110;
      v27 = v123;
      if (!v80)
      {
        goto LABEL_196;
      }

LABEL_121:
      if (++v77 == v114)
      {

        v28 = v111;
        v57 = v119;
        goto LABEL_84;
      }

      continue;
    }
  }

LABEL_194:

LABEL_198:

LABEL_199:

LABEL_200:

LABEL_201:

LABEL_202:

  return 0;
}

uint64_t DecodableState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 2)
  {
    v8 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 3)
    {
      MEMORY[0x259C4F100](3);
      return sub_255E3ADB8();
    }

    if (v4 == 4)
    {
      v9 = *(v8 + 16);
      MEMORY[0x259C4F100](4);
      result = MEMORY[0x259C4F100](*(v9 + 16));
      v10 = *(v9 + 16);
      if (!v10)
      {
        return result;
      }

      v11 = 32;
      do
      {

        DecodableState.hash(into:)(a1);

        v11 += 8;
        --v10;
      }

      while (v10);
    }

    else
    {
      v14 = *(v8 + 16);
      MEMORY[0x259C4F100](5);

      sub_255D82F34(a1, v14);
    }
  }

  else
  {
    if (v4)
    {
      v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 == 1)
      {
        v6 = *(v5 + 16);
        MEMORY[0x259C4F100](1);
        return MEMORY[0x259C4F100](v6);
      }

      else
      {
        v12 = *(v5 + 16);
        MEMORY[0x259C4F100](2);
        v13 = 0.0;
        if (v12 != 0.0)
        {
          v13 = v12;
        }

        return MEMORY[0x259C4F120](*&v13);
      }
    }

    MEMORY[0x259C4F100](0);

    sub_255E3A578();
  }
}

uint64_t DecodableState.hashValue.getter()
{
  v2[9] = *v0;
  sub_255E3AD98();
  DecodableState.hash(into:)(v2);
  return sub_255E3ADD8();
}

uint64_t sub_255D7EF80()
{
  v2[9] = *v0;
  sub_255E3AD98();
  DecodableState.hash(into:)(v2);
  return sub_255E3ADD8();
}

uint64_t sub_255D7EFD0(uint64_t a1)
{
  v3[9] = *v1;
  sub_255E3AD98();
  DecodableState.hash(into:)(v3);
  return sub_255E3ADD8();
}

uint64_t DecodableState.id.getter()
{
  v0 = sub_255E385D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E385C8();
  v4 = sub_255E385B8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_255D7F0F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_255E385D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E385C8();
  v6 = sub_255E385B8();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t String.asDecodable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = v6;
}

uint64_t sub_255D7F25C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;
}

uint64_t sub_255D7F2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D7C9F8();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t Int.asDecodable.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result | 0x2000000000000000;
  return result;
}

uint64_t static Int.create(with:)(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 1)
  {
    return *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_255D7B470();
  swift_allocError();
  v3 = MEMORY[0x277D83B88];
  *v4 = v1;
  v4[1] = v3;
  swift_willThrow();
}

uint64_t sub_255D7F3B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x2000000000000000;
  return result;
}

unint64_t *sub_255D7F3F8@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result >> 61 == 1)
  {
    *a2 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    *v4 = v3;
    v4[1] = v2;
    swift_willThrow();
  }

  return result;
}

unint64_t *sub_255D7F46C@<X0>(unint64_t *result@<X0>, double *a2@<X8>)
{
  v3 = *result;
  v4 = *result >> 61;
  if (v4 == 1)
  {
    v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_5:
    *a2 = v5;
    return result;
  }

  sub_255D7B470();
  swift_allocError();
  *v6 = v3;
  v6[1] = v2;
  swift_willThrow();
}

uint64_t Bool.asDecodable.getter@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result | 0x6000000000000000;
  return result;
}

uint64_t static Bool.create(with:)(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 3)
  {
    v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    v3 = MEMORY[0x277D839B0];
    *v4 = v1;
    v4[1] = v3;
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_255D7F5B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x6000000000000000;
  return result;
}

unint64_t *sub_255D7F5FC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result >> 61 == 3)
  {
    *a2 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    *v4 = v3;
    v4[1] = v2;
    swift_willThrow();
  }

  return result;
}

uint64_t Array<A>.asDecodable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v13[5] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v9 = sub_255E3A6F8();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v9);
  result = sub_255D7C5D8(sub_255D83254, v13, v9, &type metadata for DecodableState, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  *(v8 + 16) = result;
  *a4 = v8 | 0x8000000000000000;
  return result;
}

uint64_t static Array<A>.create(with:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 4)
  {
    v12[1] = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    MEMORY[0x28223BE20](a1);
    v11[2] = v2;
    v11[3] = v3;
    v4 = v2;

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    v7 = sub_255D832F4(&qword_27F7E6E80, MEMORY[0x277D83988]);
    v1 = sub_255D7C5D8(sub_255D83298, v11, v5, v4, v6, v7, MEMORY[0x277D84950], v12);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v9 = v1;
    v9[1] = v8;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_255D7F900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array<A>.create(with:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Dictionary<>.asDecodable.getter@<X0>(unint64_t *a4@<X8>)
{
  v5 = swift_allocObject();
  result = sub_255E3A438();
  *(v5 + 16) = result;
  *a4 = v5 | 0xA000000000000000;
  return result;
}

uint64_t static Dictionary<>.create(with:)(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 5)
  {
    MEMORY[0x28223BE20](a1);

    v2 = sub_255E3A438();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v3 = v1;
    v3[1] = v2;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_255D7FB18@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Dictionary<>.create(with:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NSString.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_255E3A4D8();
  *(v2 + 16) = result;
  *(v2 + 24) = v4;
  *a1 = v2;
  return result;
}

uint64_t static NSString.create(with:)()
{
  result = sub_255D7C9F8();
  if (!v0)
  {
    v2 = sub_255E3A4C8();

    return v2;
  }

  return result;
}

uint64_t sub_255D7FC5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_255E3A4D8();
  *(v2 + 16) = result;
  *(v2 + 24) = v4;
  *a1 = v2;
  return result;
}

uint64_t sub_255D7FCB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D7C9F8();
  if (!v1)
  {
    v4 = sub_255E3A4C8();

    *a1 = v4;
  }

  return result;
}

uint64_t CGFloat.asDecodable.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result | 0x4000000000000000;
  return result;
}

unint64_t *sub_255D7FD78(unint64_t *result)
{
  v1 = *result;
  v2 = *result >> 61;
  if (v2 != 1 && v2 != 2)
  {
    sub_255D7B470();
    swift_allocError();
    v3 = MEMORY[0x277D839F8];
    *v4 = v1;
    v4[1] = v3;
    swift_willThrow();
  }

  return result;
}

unint64_t *sub_255D7FE08@<X0>(unint64_t *result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 61;
  if (v3 == 1)
  {
    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_5:
    *a2 = v4;
    return result;
  }

  sub_255D7B470();
  swift_allocError();
  v5 = MEMORY[0x277D839F8];
  *v6 = v2;
  v6[1] = v5;
  swift_willThrow();
}

uint64_t NSDictionary.asDecodable.getter@<X0>(unint64_t *a1@<X8>)
{
  sub_255E3A818();
  sub_255E3A828();
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  if (!*(&v32 + 1))
  {
    v1 = MEMORY[0x277D84F98];
LABEL_24:

    result = swift_allocObject();
    *(result + 16) = v1;
    *a1 = result | 0xA000000000000000;
    return result;
  }

  v1 = MEMORY[0x277D84F98];
  v2 = MEMORY[0x277D84F70];
  while (1)
  {
    sub_255D31B4C(&v37, v30);
    sub_255D31B4C(&v35, &v31);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
LABEL_5:
    sub_255E3A828();
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    if (!*(&v32 + 1))
    {
      goto LABEL_24;
    }
  }

  v3 = v29[0];
  v4 = v29[1];
  sub_255D3951C(v30, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74E0, &qword_255E48670);
  if (!swift_dynamicCast())
  {
    *&v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_255D395E4(&v31, &qword_27F7E74E8, &qword_255E48678);
    v18 = sub_255D3CA20(v3, v4);
    v20 = v19;

    if (v20)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_255D827EC();
        v1 = v31;
      }

      sub_255D81B20(v18, v1);
    }

    goto LABEL_4;
  }

  v5 = v2;
  v6 = *(&v32 + 1);
  v7 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  (*(v7 + 8))(&v28, v6, v7);
  v8 = v28;
  __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *&v31 = v1;
  v11 = sub_255D3CA20(v3, v4);
  v12 = v1[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (!__OFADD__(v12, v13))
  {
    v15 = v10;
    if (v1[3] >= v14)
    {
      if (v9)
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_255D827EC();
        if ((v15 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_255D80F40(v14, v9);
      v16 = sub_255D3CA20(v3, v4);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_27;
      }

      v11 = v16;
      if ((v15 & 1) == 0)
      {
LABEL_20:
        v1 = v31;
        *(v31 + 8 * (v11 >> 6) + 64) |= 1 << v11;
        v22 = (v1[6] + 16 * v11);
        *v22 = v3;
        v22[1] = v4;
        *(v1[7] + 8 * v11) = v8;
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        v23 = v1[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_26;
        }

        v1[2] = v25;
        goto LABEL_22;
      }
    }

    v1 = v31;
    *(*(v31 + 56) + 8 * v11) = v8;

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
LABEL_22:
    v2 = v5;
    goto LABEL_5;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

void *sub_255D80270@<X0>(uint64_t *a1@<X8>, unint64_t *a2@<X0>)
{
  result = sub_255D83388(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NSArray.asDecodable.getter@<X0>(unint64_t *a1@<X8>)
{
  v14 = a1;
  v1 = sub_255E38538();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E3A898();
  sub_255D87070();
  sub_255E3A8C8();
  if (v22)
  {
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_255D31B4C(&v21, v20);
      sub_255D3951C(v20, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74E0, &qword_255E48670);
      if (swift_dynamicCast())
      {
        v5 = *(&v18 + 1);
        v6 = v19;
        __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
        (*(v6 + 8))(&v15, v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v7 = v15;
        __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_255DE55B4(0, *(v4 + 2) + 1, 1, v4);
        }

        v9 = *(v4 + 2);
        v8 = *(v4 + 3);
        if (v9 >= v8 >> 1)
        {
          v4 = sub_255DE55B4((v8 > 1), v9 + 1, 1, v4);
        }

        *(v4 + 2) = v9 + 1;
        *&v4[8 * v9 + 32] = v7;
      }

      else
      {
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        sub_255D395E4(&v17, &qword_27F7E74E8, &qword_255E48678);
      }

      sub_255E3A8C8();
    }

    while (v22);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v10 = swift_allocObject();
  result = (*(v13 + 8))(v3, v1);
  *(v10 + 16) = v4;
  *v14 = v10 | 0x8000000000000000;
  return result;
}

uint64_t sub_255D80570@<X0>(uint64_t *a1@<X8>, unint64_t *a2@<X0>)
{
  result = sub_255D870C8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id NSNumber.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  result = [v1 doubleValue];
  *(v3 + 16) = v5;
  *a1 = v3 | 0x4000000000000000;
  return result;
}

uint64_t static NSNumber.create(with:)(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 61;
  if (v2 == 1)
  {
    v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    if (v2 != 2)
    {
      sub_255D7B470();
      swift_allocError();
      v7 = MEMORY[0x277D839F8];
      *v8 = v1;
      v8[1] = v7;

      return swift_willThrow();
    }

    v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    return result;
  }

  sub_255D7B470();
  swift_allocError();
  *v6 = xmmword_255E48620;
  return swift_willThrow();
}

id sub_255D806F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  result = [v3 doubleValue];
  *(v4 + 16) = v6;
  *a1 = v4 | 0x4000000000000000;
  return result;
}

uint64_t sub_255D80750@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSNumber.create(with:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_255D8077C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_255DE5CE0(result, v5, 0);
  }

  return result;
}

double sub_255D807F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_255D3CA98(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255D82988(&qword_27F7E7550, &qword_255E48B40, sub_255D8B0B0);
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_255E3AAE8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_255D31B4C((*(v9 + 56) + 32 * v7), a2);
    sub_255D8186C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_255D808F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  result = sub_255D3CA20(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v11 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255D827EC();
      v10 = v11;
    }

    *a3 = *(*(v10 + 56) + 8 * v8);
    result = sub_255D81B20(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0xF000000000000007;
  }

  return result;
}

uint64_t sub_255D80994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7558, &qword_255E48B48);
  v44 = v4;
  result = sub_255E3AB18();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v47 = *v24;
      v26 = *(v5 + 56) + 32 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      if ((v44 & 1) == 0)
      {

        sub_255D5C258(v27, v28, v29, v30);
      }

      v46 = v29;
      v31 = v28;
      v32 = v27;
      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v46;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v46;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v47;
      v18[1] = v25;
      v19 = *(v43 + 56) + 32 * v15;
      *v19 = v32;
      *(v19 + 8) = v31;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      ++*(v43 + 16);
      v5 = v42;
      v12 = v45;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255D80CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
  v34 = v4;
  result = sub_255E3AB18();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
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
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_255D80F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v34 = v4;
  result = sub_255E3AB18();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
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
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_255D81210(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(unint64_t, _BYTE *))
{
  v45 = a5;
  v8 = v5;
  v9 = a2;
  v10 = sub_255E3AAE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v9;
  result = sub_255E3AB18();
  v16 = result;
  if (*(v14 + 16))
  {
    v47 = v13;
    v48 = v10;
    v39 = v5;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v40 = (v11 + 16);
    v41 = v11;
    v44 = (v11 + 32);
    v23 = result + 64;
    v42 = v14;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v46 = *(v11 + 72);
      v30 = v29 + v46 * v28;
      if (v43)
      {
        (*v44)(v47, v30, v48);
        v45(*(v14 + 56) + 32 * v28, v49);
      }

      else
      {
        (*v40)(v47, v30, v48);
        sub_255D3951C(*(v14 + 56) + 32 * v28, v49);
      }

      result = sub_255E3A478();
      v31 = -1 << *(v16 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v23 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v11 = v41;
        v14 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v23 + 8 * v33);
          if (v37 != -1)
          {
            v24 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v32) & ~*(v23 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v11 = v41;
      v14 = v42;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v44)((*(v16 + 48) + v46 * v24), v47, v48);
      result = (v45)(v49, *(v16 + 56) + 32 * v24);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v8 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v14 + 32);
    v8 = v39;
    if (v38 >= 64)
    {
      bzero(v18, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v38;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v8 = v16;
  return result;
}

uint64_t sub_255D815C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = sub_255E3AB18();
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
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v36 = *(*(v7 + 56) + v23);
      if ((v35 & 1) == 0)
      {
      }

      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v36;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_255D8186C(int64_t a1, uint64_t a2)
{
  v4 = sub_255E3AAE8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_255E3A948();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_255E3A478();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

uint64_t sub_255D81B20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_255E3A948() + 1) & ~v5;
    do
    {
      sub_255E3AD98();

      sub_255E3A578();
      v9 = sub_255E3ADD8();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

_OWORD *sub_255D81CD0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_255E3AAE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_255D3CA98(a2);
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
      sub_255D82988(&qword_27F7E7550, &qword_255E48B40, sub_255D8B0B0);
      goto LABEL_7;
    }

    sub_255D81210(v17, a3 & 1, &qword_27F7E7550, &qword_255E48B40, sub_255D8B0B0);
    v23 = sub_255D3CA98(a2);
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
      return sub_255D823CC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_255E3AD28();
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
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_255D31B4C(a1, v21);
}

unint64_t sub_255D81EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_255D3CA20(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_255D80CA0(v16, a4 & 1);
      result = sub_255D3CA20(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_255E3AD28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_255D82684();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
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

uint64_t sub_255D82054(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_255D3CA20(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_255D80F40(v16, a4 & 1);
      v11 = sub_255D3CA20(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_255E3AD28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_255D827EC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_255D821F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  result = sub_255D3CA20(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_255D815C8(v22, a5 & 1, a6, a7);
      result = sub_255D3CA20(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_16:
        result = sub_255E3AD28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      sub_255D82C1C(a6, a7);
      result = v25;
    }
  }

  v27 = *v10;
  if (v23)
  {
    v28 = (v27[7] + 16 * result);
    *v28 = a1;
    v28[1] = a2;
    return result;
  }

  v27[(result >> 6) + 8] |= 1 << result;
  v29 = (v27[6] + 16 * result);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v27[7] + 16 * result);
  *v30 = a1;
  v30[1] = a2;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27[2] = v32;
}

_OWORD *sub_255D823CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_255E3AAE8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_255D31B4C(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_255D8248C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_255D824D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7558, &qword_255E48B48);
  v27 = v0;
  v1 = *v0;
  v2 = sub_255E3AB08();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v1 + 56);
        v19 = (*(v1 + 48) + 16 * v16);
        v20 = v19[1];
        v16 *= 32;
        v21 = *(v18 + v16);
        v22 = *(v18 + v16 + 8);
        v23 = *(v18 + v16 + 16);
        v24 = *(v18 + v16 + 24);
        v25 = (*(v3 + 48) + v17);
        *v25 = *v19;
        v25[1] = v20;
        v26 = *(v3 + 56) + v16;
        *v26 = v21;
        *(v26 + 8) = v22;
        *(v26 + 16) = v23;
        *(v26 + 24) = v24;

        result = sub_255D5C258(v21, v22, v23, v24);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v3;
  }

  return result;
}

void *sub_255D82684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
  v2 = *v0;
  v3 = sub_255E3AB08();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_255D827EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v2 = *v0;
  v3 = sub_255E3AB08();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_255D82988(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v38 = a3;
  v6 = v3;
  v37 = sub_255E3AAE8();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v3;
  v9 = sub_255E3AB08();
  v10 = v9;
  if (*(v8 + 16))
  {
    v33 = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v39 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v40;
        v26 = *(v40 + 72) * v24;
        v27 = v36;
        v28 = v37;
        (*(v40 + 16))(v36, *(v8 + 48) + v26, v37);
        v24 *= 32;
        sub_255D3951C(*(v8 + 56) + v24, v42);
        v29 = v8;
        v30 = v39;
        (*(v25 + 32))(*(v39 + 48) + v26, v27, v28);
        v31 = *(v30 + 56);
        v8 = v29;
        result = v38(v42, v31 + v24);
        v19 = v41;
      }

      while (v41);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v33;
        v10 = v39;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v41 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_255D82C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_255E3AB08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

_OWORD *sub_255D82D74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  result = sub_255E3AB08();
  v3 = result;
  v4 = 0;
  v24 = a1;
  v25 = result;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = result + 4;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v24 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v28 = *(*(v24 + 56) + 8 * v15);

      sub_255D7D920(v27);

      if (v26)
      {
        break;
      }

      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v3 = v25;
      v19 = (v25[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      result = sub_255D31B4C(v27, (v25[7] + 32 * v15));
      v20 = v25[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v25[2] = v22;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v3 = v25;

    return v3;
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_255D82F34(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      v15 = *(*(a2 + 56) + 8 * v13);

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v16 = *(a1 + 48);
      v18[2] = *(a1 + 32);
      v18[3] = v16;
      v19 = *(a1 + 64);
      v20 = v15;
      v17 = *(a1 + 16);
      v18[0] = *a1;
      v18[1] = v17;
      sub_255E3A578();

      DecodableState.hash(into:)(v18);

      result = sub_255E3ADD8();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x259C4F100](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s6LiftUI14DecodableStateO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if (v3 >> 61 != 4)
        {
          goto LABEL_28;
        }

        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_255D7DD14(v6, v7);
      }

      else
      {
        if (v3 >> 61 != 5)
        {
          goto LABEL_28;
        }

        v12 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_255D7DF20(v12, v13);
      }

      v14 = v8;

      return v14 & 1;
    }

    if (v3 >> 61 == 3)
    {
      v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
      return v11 & 1;
    }

LABEL_28:
    v11 = 0;
    return v11 & 1;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 61 == 1)
      {
        v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        goto LABEL_22;
      }
    }

    else if (v3 >> 61 == 2)
    {
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_22:
      v11 = v5;
      return v11 & 1;
    }

    goto LABEL_28;
  }

  if (v3 >> 61)
  {
    goto LABEL_28;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    v11 = 1;
    return v11 & 1;
  }

  return sub_255E3AC68();
}

uint64_t sub_255D83298(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 24);
  v7 = *a1;
  result = (*(v5 + 16))(&v7);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_255D832F4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6160, &unk_255E4DBA0);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255D83344(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  return (*(v2 + 16))(&v4);
}

void *sub_255D83388(unint64_t *a1)
{
  v2 = *a1;
  if (*a1 >> 61 != 5)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v503 = v2;
    v503[1] = v6;
    swift_willThrow();

    return v6;
  }

  v3 = v1;
  v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  v5 = sub_255E3AB08();
  v6 = v5;
  v626 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v633 = v5 + 64;

  v11 = 0;
  v628 = v6;
  v634 = v4;
  v632 = v10;
  if (!v9)
  {
LABEL_7:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        v6 = sub_255E3A408();

        return v6;
      }

      v14 = *(v626 + 8 * v11);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v635 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_560;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v635 = (v9 - 1) & v9;
LABEL_12:
    v15 = v12 | (v11 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v4 + 56) + 8 * v15);
    v20 = v19 >> 61;
    v636 = v11;
    v637 = v17;
    if ((v19 >> 61) <= 2)
    {
      if (v20)
      {
        v21 = v19 & 0x1FFFFFFFFFFFFFFFLL;
        if (v20 == 1)
        {
          v22 = *(v21 + 16);
          v657 = MEMORY[0x277D83B88];
          *&v656 = v22;
        }

        else
        {
          v269 = *(v21 + 16);
          v657 = MEMORY[0x277D839F8];
          *&v656 = v269;
        }
      }

      else
      {
        v265 = v15;
        v266 = *(v19 + 16);
        v267 = *(v19 + 24);
        v657 = MEMORY[0x277D837D0];
        *&v656 = v266;
        *(&v656 + 1) = v267;

        v15 = v265;
      }

      goto LABEL_282;
    }

    if (v20 == 3)
    {
      v268 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v657 = MEMORY[0x277D839B0];
      LOBYTE(v656) = v268;
LABEL_282:

      goto LABEL_283;
    }

    v627 = v18;
    v595 = v15;
    if (v20 != 4)
    {
      v273 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v274 = sub_255E3AB08();
      v6 = v628;
      v275 = v274;
      v576 = v273 + 64;
      v276 = 1 << *(v273 + 32);
      if (v276 < 64)
      {
        v277 = ~(-1 << v276);
      }

      else
      {
        v277 = -1;
      }

      v630 = v277 & *(v273 + 64);
      v571 = (v276 + 63) >> 6;
      v597 = v274 + 64;

      v612 = v273;

      v278 = 0;
      v615 = v275;
      v279 = v630;
      if (v630)
      {
LABEL_290:
        v280 = __clz(__rbit64(v279));
        v281 = (v279 - 1) & v279;
        goto LABEL_296;
      }

LABEL_291:
      v282 = v278;
      while (1)
      {
        v278 = v282 + 1;
        if (__OFADD__(v282, 1))
        {
          __break(1u);
          goto LABEL_563;
        }

        if (v278 >= v571)
        {
          break;
        }

        v283 = *(v576 + 8 * v278);
        ++v282;
        if (v283)
        {
          v280 = __clz(__rbit64(v283));
          v281 = (v283 - 1) & v283;
LABEL_296:
          v284 = v280 | (v278 << 6);
          v285 = (*(v612 + 48) + 16 * v284);
          v286 = *v285;
          v287 = v285[1];
          v288 = *(*(v612 + 56) + 8 * v284);
          v289 = v288 >> 61;
          v617 = v278;
          v619 = v286;
          v631 = v281;
          v625 = v284;
          if ((v288 >> 61) > 2)
          {
            if (v289 == 3)
            {
              v401 = *((v288 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v655 = MEMORY[0x277D839B0];
              LOBYTE(v654) = v401;
              goto LABEL_424;
            }

            v551 = v287;
            if (v289 == 4)
            {
              v292 = *((v288 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v293 = *(v292 + 16);
              if (v293)
              {
                v658 = MEMORY[0x277D84F90];

                result = sub_255D8077C(v293);
                v294 = 0;
                v593 = v292 + 32;
                v541 = v292;
                v532 = v293;
                do
                {
                  if (v294 >= *(v292 + 16))
                  {
                    goto LABEL_587;
                  }

                  v295 = *(v593 + 8 * v294);
                  v296 = v295 >> 61;
                  if ((v295 >> 61) > 2)
                  {
                    if (v296 == 3)
                    {
                      v341 = *((v295 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v653 = MEMORY[0x277D839B0];
                      LOBYTE(v652) = v341;
                    }

                    else
                    {
                      v601 = v294;
                      if (v296 == 4)
                      {
                        v299 = *((v295 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v300 = *(v299 + 16);
                        if (v300)
                        {
                          v646 = MEMORY[0x277D84F90];

                          v581 = v300;
                          result = sub_255D8077C(v300);
                          v301 = 0;
                          v588 = v299 + 32;
                          v535 = v299;
                          do
                          {
                            if (v301 >= *(v299 + 16))
                            {
                              goto LABEL_588;
                            }

                            v302 = *(v588 + 8 * v301);
                            v303 = v302 >> 61;
                            v605 = v301;
                            if ((v302 >> 61) > 2)
                            {
                              if (v303 == 3)
                              {
                                v314 = *((v302 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v651 = MEMORY[0x277D839B0];
                                LOBYTE(v650) = v314;
                              }

                              else
                              {
                                if (v303 == 4)
                                {
                                  v306 = *((v302 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                  v307 = *(v306 + 16);
                                  if (v307)
                                  {
                                    v642 = MEMORY[0x277D84F90];

                                    result = sub_255D8077C(v307);
                                    v308 = 0;
                                    while (1)
                                    {
                                      if (v308 >= *(v306 + 16))
                                      {
                                        goto LABEL_580;
                                      }

                                      sub_255D7D920(v649);
                                      if (v3)
                                      {
                                        break;
                                      }

                                      v309 = v642;
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        sub_255DE5CE0(0, *(v642 + 16) + 1, 1);
                                        v309 = v642;
                                      }

                                      v311 = *(v309 + 16);
                                      v310 = *(v309 + 24);
                                      if (v311 >= v310 >> 1)
                                      {
                                        sub_255DE5CE0((v310 > 1), v311 + 1, 1);
                                        v309 = v642;
                                      }

                                      ++v308;
                                      *(v309 + 16) = v311 + 1;
                                      result = sub_255D31B4C(v649, (v309 + 32 * v311 + 32));
                                      if (v307 == v308)
                                      {

                                        goto LABEL_349;
                                      }
                                    }

                                    goto LABEL_547;
                                  }

                                  v309 = MEMORY[0x277D84F90];
LABEL_349:
                                  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                                  *&v650 = v309;
                                }

                                else
                                {
                                  v316 = *((v302 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                  v317 = sub_255E3AB08();
                                  v318 = v316 + 64;
                                  v319 = 1 << *(v316 + 32);
                                  if (v319 < 64)
                                  {
                                    v320 = ~(-1 << v319);
                                  }

                                  else
                                  {
                                    v320 = -1;
                                  }

                                  v321 = v320 & *(v316 + 64);
                                  v322 = (v319 + 63) >> 6;
                                  v555 = v317;
                                  v546 = v317 + 64;

                                  v561 = v316;

                                  v323 = 0;
                                  if (v321)
                                  {
LABEL_337:
                                    v324 = v3;
                                    v325 = __clz(__rbit64(v321));
                                    v321 &= v321 - 1;
                                    goto LABEL_343;
                                  }

LABEL_338:
                                  v326 = v323;
                                  while (1)
                                  {
                                    v323 = v326 + 1;
                                    if (__OFADD__(v326, 1))
                                    {
                                      goto LABEL_568;
                                    }

                                    if (v323 >= v322)
                                    {
                                      break;
                                    }

                                    v327 = *(v318 + 8 * v323);
                                    ++v326;
                                    if (v327)
                                    {
                                      v324 = v3;
                                      v325 = __clz(__rbit64(v327));
                                      v321 = (v327 - 1) & v327;
LABEL_343:
                                      v328 = v325 | (v323 << 6);
                                      v329 = (*(v561 + 48) + 16 * v328);
                                      v331 = *v329;
                                      v330 = v329[1];

                                      sub_255D7D920(v649);
                                      if (!v324)
                                      {

                                        *(v546 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v328;
                                        v332 = (v555[6] + 16 * v328);
                                        *v332 = v331;
                                        v332[1] = v330;
                                        result = sub_255D31B4C(v649, (v555[7] + 32 * v328));
                                        v333 = v555[2];
                                        v73 = __OFADD__(v333, 1);
                                        v334 = v333 + 1;
                                        if (v73)
                                        {
                                          goto LABEL_597;
                                        }

                                        v555[2] = v334;
                                        v3 = 0;
                                        v4 = v634;
                                        if (v321)
                                        {
                                          goto LABEL_337;
                                        }

                                        goto LABEL_338;
                                      }

LABEL_547:

LABEL_548:
                                      v6 = v658;

                                      goto LABEL_553;
                                    }
                                  }

                                  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                                  *&v650 = v555;
                                }

                                v299 = v535;
                                v292 = v541;
                                v293 = v532;
                                v294 = v601;
                              }
                            }

                            else if (v303)
                            {
                              v304 = v302 & 0x1FFFFFFFFFFFFFFFLL;
                              if (v303 == 1)
                              {
                                v305 = *(v304 + 16);
                                v651 = MEMORY[0x277D83B88];
                                *&v650 = v305;
                              }

                              else
                              {
                                v315 = *(v304 + 16);
                                v651 = MEMORY[0x277D839F8];
                                *&v650 = v315;
                              }
                            }

                            else
                            {
                              v313 = *(v302 + 16);
                              v312 = *(v302 + 24);
                              v651 = MEMORY[0x277D837D0];
                              *&v650 = v313;
                              *(&v650 + 1) = v312;
                            }

                            v335 = v646;
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              sub_255DE5CE0(0, *(v646 + 16) + 1, 1);
                              v335 = v646;
                            }

                            v337 = *(v335 + 16);
                            v336 = *(v335 + 24);
                            if (v337 >= v336 >> 1)
                            {
                              sub_255DE5CE0((v336 > 1), v337 + 1, 1);
                              v335 = v646;
                            }

                            *(v335 + 16) = v337 + 1;
                            v338 = v335 + 32 * v337;
                            v301 = v605 + 1;
                            result = sub_255D31B4C(&v650, (v338 + 32));
                          }

                          while (v605 + 1 != v581);
                        }

                        else
                        {

                          v335 = MEMORY[0x277D84F90];
                        }

                        v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                        *&v652 = v335;
                      }

                      else
                      {
                        v343 = v295 & 0x1FFFFFFFFFFFFFFFLL;
                        v344 = *((v295 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v345 = sub_255E3AB08();
                        v346 = v345;
                        v518 = v344 + 64;
                        v347 = 1 << *(v344 + 32);
                        if (v347 < 64)
                        {
                          v348 = ~(-1 << v347);
                        }

                        else
                        {
                          v348 = -1;
                        }

                        v349 = v348 & *(v344 + 64);
                        v350 = (v347 + 63) >> 6;
                        v562 = v345 + 64;

                        v351 = 0;
                        v547 = v344;
                        v536 = v350;
                        v521 = v346;
                        if (v349)
                        {
LABEL_364:
                          v352 = __clz(__rbit64(v349));
                          v353 = (v349 - 1) & v349;
                          goto LABEL_370;
                        }

LABEL_365:
                        v354 = v351;
                        while (1)
                        {
                          v351 = v354 + 1;
                          if (__OFADD__(v354, 1))
                          {
                            goto LABEL_570;
                          }

                          if (v351 >= v350)
                          {
                            break;
                          }

                          v355 = *(v518 + 8 * v351);
                          ++v354;
                          if (v355)
                          {
                            v352 = __clz(__rbit64(v355));
                            v353 = (v355 - 1) & v355;
LABEL_370:
                            v356 = v352 | (v351 << 6);
                            v357 = (*(v344 + 48) + 16 * v356);
                            v358 = v357[1];
                            v582 = v353;
                            v589 = *v357;
                            v359 = *(*(v344 + 56) + 8 * v356);
                            v360 = v359 >> 61;
                            v606 = v356;
                            if ((v359 >> 61) > 2)
                            {
                              if (v360 == 3)
                              {
                                v373 = *((v359 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v651 = MEMORY[0x277D839B0];
                                LOBYTE(v650) = v373;
                                goto LABEL_390;
                              }

                              v512 = v358;
                              if (v360 == 4)
                              {
                                v363 = *((v359 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v364 = *(v363 + 16);
                                if (v364)
                                {
                                  v509 = v343;
                                  v647 = MEMORY[0x277D84F90];

                                  result = sub_255D8077C(v364);
                                  v365 = 0;
                                  do
                                  {
                                    if (v365 >= *(v363 + 16))
                                    {
                                      goto LABEL_589;
                                    }

                                    v366 = v364;

                                    sub_255D7D920(v649);
                                    if (v3)
                                    {

                                      goto LABEL_547;
                                    }

                                    v367 = v647;
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      sub_255DE5CE0(0, *(v647 + 16) + 1, 1);
                                      v367 = v647;
                                    }

                                    v369 = *(v367 + 16);
                                    v368 = *(v367 + 24);
                                    if (v369 >= v368 >> 1)
                                    {
                                      sub_255DE5CE0((v368 > 1), v369 + 1, 1);
                                      v367 = v647;
                                    }

                                    ++v365;
                                    *(v367 + 16) = v369 + 1;
                                    result = sub_255D31B4C(v649, (v367 + 32 * v369 + 32));
                                    v364 = v366;
                                    v370 = v366 == v365;
                                    v294 = v601;
                                  }

                                  while (!v370);

                                  v343 = v509;
                                }

                                else
                                {

                                  v367 = MEMORY[0x277D84F90];
                                }

                                v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                                *&v650 = v367;
                                v346 = v521;
                                v344 = v547;
                                v350 = v536;
                              }

                              else
                              {
                                v510 = v343;
                                v375 = *((v359 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v376 = sub_255E3AB08();
                                v377 = v376;
                                v505 = v375 + 64;
                                v378 = 1 << *(v375 + 32);
                                if (v378 < 64)
                                {
                                  v379 = ~(-1 << v378);
                                }

                                else
                                {
                                  v379 = -1;
                                }

                                v380 = v379 & *(v375 + 64);
                                v381 = (v378 + 63) >> 6;
                                v515 = v376 + 64;

                                v529 = v375;

                                v382 = 0;
                                v524 = v377;
                                if (v380)
                                {
LABEL_395:
                                  v383 = __clz(__rbit64(v380));
                                  v556 = (v380 - 1) & v380;
                                  goto LABEL_401;
                                }

LABEL_396:
                                v384 = v382;
                                v346 = v521;
                                while (1)
                                {
                                  v382 = v384 + 1;
                                  if (__OFADD__(v384, 1))
                                  {
                                    goto LABEL_576;
                                  }

                                  if (v382 >= v381)
                                  {
                                    break;
                                  }

                                  v385 = *(v505 + 8 * v382);
                                  ++v384;
                                  if (v385)
                                  {
                                    v383 = __clz(__rbit64(v385));
                                    v556 = (v385 - 1) & v385;
LABEL_401:
                                    v386 = v383 | (v382 << 6);
                                    v387 = (*(v529 + 48) + 16 * v386);
                                    v388 = *v387;
                                    v389 = v387[1];

                                    sub_255D7D920(v649);
                                    if (!v3)
                                    {

                                      *(v515 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v386;
                                      v390 = (v524[6] + 16 * v386);
                                      *v390 = v388;
                                      v390[1] = v389;
                                      result = sub_255D31B4C(v649, (v524[7] + 32 * v386));
                                      v391 = v524[2];
                                      v73 = __OFADD__(v391, 1);
                                      v392 = v391 + 1;
                                      if (v73)
                                      {
                                        goto LABEL_604;
                                      }

                                      v524[2] = v392;
                                      v294 = v601;
                                      v344 = v547;
                                      v350 = v536;
                                      v380 = v556;
                                      if (v556)
                                      {
                                        goto LABEL_395;
                                      }

                                      goto LABEL_396;
                                    }

LABEL_560:

                                    goto LABEL_548;
                                  }
                                }

                                v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                                *&v650 = v524;
                                v4 = v634;
                                v343 = v510;
                              }

                              v358 = v512;
                            }

                            else if (v360)
                            {
                              v361 = v359 & 0x1FFFFFFFFFFFFFFFLL;
                              if (v360 == 1)
                              {
                                v362 = *(v361 + 16);
                                v651 = MEMORY[0x277D83B88];
                                *&v650 = v362;
                              }

                              else
                              {
                                v374 = *(v361 + 16);
                                v651 = MEMORY[0x277D839F8];
                                *&v650 = v374;
                              }

LABEL_390:
                            }

                            else
                            {
                              v371 = *(v359 + 16);
                              v372 = *(v359 + 24);
                              v651 = MEMORY[0x277D837D0];
                              *&v650 = v371;
                              *(&v650 + 1) = v372;
                            }

                            *(v562 + ((v606 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v606;
                            v393 = (v346[6] + 16 * v606);
                            *v393 = v589;
                            v393[1] = v358;
                            result = sub_255D31B4C(&v650, (v346[7] + 32 * v606));
                            v394 = v346[2];
                            v73 = __OFADD__(v394, 1);
                            v395 = v394 + 1;
                            if (v73)
                            {
                              goto LABEL_599;
                            }

                            v346[2] = v395;
                            v349 = v582;
                            if (v582)
                            {
                              goto LABEL_364;
                            }

                            goto LABEL_365;
                          }
                        }

                        v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                        *&v652 = v346;
                        v292 = v541;
                        v293 = v532;
                      }
                    }
                  }

                  else if (v296)
                  {
                    v297 = v295 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v296 == 1)
                    {
                      v298 = *(v297 + 16);
                      v653 = MEMORY[0x277D83B88];
                      *&v652 = v298;
                    }

                    else
                    {
                      v342 = *(v297 + 16);
                      v653 = MEMORY[0x277D839F8];
                      *&v652 = v342;
                    }
                  }

                  else
                  {
                    v340 = *(v295 + 16);
                    v339 = *(v295 + 24);
                    v653 = MEMORY[0x277D837D0];
                    *&v652 = v340;
                    *(&v652 + 1) = v339;
                  }

                  v396 = v658;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_255DE5CE0(0, v396[2] + 1, 1);
                    v396 = v658;
                  }

                  v398 = v396[2];
                  v397 = v396[3];
                  if (v398 >= v397 >> 1)
                  {
                    sub_255DE5CE0((v397 > 1), v398 + 1, 1);
                    v396 = v658;
                  }

                  ++v294;
                  v396[2] = v398 + 1;
                  result = sub_255D31B4C(&v652, &v396[4 * v398 + 4]);
                }

                while (v294 != v293);
              }

              else
              {

                v396 = MEMORY[0x277D84F90];
              }

              v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

              *&v654 = v396;
              v18 = v627;
              v6 = v628;
            }

            else
            {
              v403 = *((v288 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v404 = sub_255E3AB08();
              v18 = v627;
              v6 = v628;
              v405 = v404;
              v525 = v403 + 64;
              v406 = 1 << *(v403 + 32);
              if (v406 < 64)
              {
                v407 = ~(-1 << v406);
              }

              else
              {
                v407 = -1;
              }

              v408 = v407 & *(v403 + 64);
              v522 = (v406 + 63) >> 6;
              v548 = v404 + 64;

              v583 = v403;

              v409 = 0;
              if (v408)
              {
LABEL_429:
                v410 = __clz(__rbit64(v408));
                v411 = (v408 - 1) & v408;
                goto LABEL_435;
              }

LABEL_430:
              v412 = v409;
              while (1)
              {
                v409 = v412 + 1;
                if (__OFADD__(v412, 1))
                {
                  goto LABEL_567;
                }

                if (v409 >= v522)
                {
                  break;
                }

                v413 = *(v525 + 8 * v409);
                ++v412;
                if (v413)
                {
                  v410 = __clz(__rbit64(v413));
                  v411 = (v413 - 1) & v413;
LABEL_435:
                  v414 = v410 | (v409 << 6);
                  v415 = (*(v583 + 48) + 16 * v414);
                  v416 = v415[1];
                  v602 = *v415;
                  v417 = *(*(v583 + 56) + 8 * v414);
                  v418 = v417 >> 61;
                  v590 = v411;
                  v594 = v414;
                  if ((v417 >> 61) > 2)
                  {
                    if (v418 == 3)
                    {
                      v462 = *((v417 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v653 = MEMORY[0x277D839B0];
                      LOBYTE(v652) = v462;
                      goto LABEL_489;
                    }

                    v513 = v416;
                    if (v418 == 4)
                    {
                      v421 = *((v417 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v422 = *(v421 + 16);
                      if (v422)
                      {
                        v658 = MEMORY[0x277D84F90];
                        v563 = v421;

                        v533 = v422;
                        sub_255D8077C(v422);
                        result = v563;
                        v423 = 0;
                        v542 = v405;
                        do
                        {
                          if (v423 >= result[2])
                          {
                            goto LABEL_594;
                          }

                          v424 = *(v563 + 32 + 8 * v423);
                          v425 = v424 >> 61;
                          v607 = v423;
                          if ((v424 >> 61) > 2)
                          {
                            if (v425 == 3)
                            {
                              v436 = *((v424 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                              v651 = MEMORY[0x277D839B0];
                              LOBYTE(v650) = v436;
                            }

                            else if (v425 == 4)
                            {
                              v428 = *((v424 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                              v429 = *(v428 + 16);
                              if (v429)
                              {
                                v648 = MEMORY[0x277D84F90];

                                result = sub_255D8077C(v429);
                                v430 = 0;
                                while (1)
                                {
                                  if (v430 >= *(v428 + 16))
                                  {
                                    goto LABEL_586;
                                  }

                                  sub_255D7D920(v649);
                                  if (v3)
                                  {
                                    break;
                                  }

                                  v431 = v648;
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    sub_255DE5CE0(0, *(v648 + 16) + 1, 1);
                                    v431 = v648;
                                  }

                                  v433 = *(v431 + 16);
                                  v432 = *(v431 + 24);
                                  if (v433 >= v432 >> 1)
                                  {
                                    sub_255DE5CE0((v432 > 1), v433 + 1, 1);
                                    v431 = v648;
                                  }

                                  ++v430;
                                  *(v431 + 16) = v433 + 1;
                                  result = sub_255D31B4C(v649, (v431 + 32 * v433 + 32));
                                  if (v429 == v430)
                                  {

                                    goto LABEL_479;
                                  }
                                }

                                goto LABEL_558;
                              }

                              v431 = MEMORY[0x277D84F90];
LABEL_479:
                              v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                              *&v650 = v431;
                              v4 = v634;
                            }

                            else
                            {
                              v438 = *((v424 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                              v439 = sub_255E3AB08();
                              v440 = v439;
                              v508 = v438 + 64;
                              v441 = 1 << *(v438 + 32);
                              if (v441 < 64)
                              {
                                v442 = ~(-1 << v441);
                              }

                              else
                              {
                                v442 = -1;
                              }

                              v443 = v442 & *(v438 + 64);
                              v444 = (v441 + 63) >> 6;
                              v516 = v439 + 64;

                              v530 = v438;

                              v445 = 0;
                              v519 = v440;
                              if (v443)
                              {
LABEL_467:
                                v446 = __clz(__rbit64(v443));
                                v557 = (v443 - 1) & v443;
                                goto LABEL_473;
                              }

LABEL_468:
                              v447 = v445;
                              while (1)
                              {
                                v445 = v447 + 1;
                                if (__OFADD__(v447, 1))
                                {
                                  goto LABEL_574;
                                }

                                if (v445 >= v444)
                                {
                                  break;
                                }

                                v448 = *(v508 + 8 * v445);
                                ++v447;
                                if (v448)
                                {
                                  v446 = __clz(__rbit64(v448));
                                  v557 = (v448 - 1) & v448;
LABEL_473:
                                  v449 = v446 | (v445 << 6);
                                  v450 = (*(v530 + 48) + 16 * v449);
                                  v451 = *v450;
                                  v452 = v450[1];

                                  sub_255D7D920(v649);
                                  if (!v3)
                                  {

                                    v440 = v519;
                                    *(v516 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v449;
                                    v453 = (v519[6] + 16 * v449);
                                    *v453 = v451;
                                    v453[1] = v452;
                                    result = sub_255D31B4C(v649, (v519[7] + 32 * v449));
                                    v454 = v519[2];
                                    v73 = __OFADD__(v454, 1);
                                    v455 = v454 + 1;
                                    if (v73)
                                    {
                                      goto LABEL_603;
                                    }

                                    v519[2] = v455;
                                    v4 = v634;
                                    v405 = v542;
                                    v443 = v557;
                                    if (v557)
                                    {
                                      goto LABEL_467;
                                    }

                                    goto LABEL_468;
                                  }

LABEL_558:
                                  v6 = v658;

                                  goto LABEL_553;
                                }
                              }

                              v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                              *&v650 = v440;
                            }
                          }

                          else if (v425)
                          {
                            v426 = v424 & 0x1FFFFFFFFFFFFFFFLL;
                            if (v425 == 1)
                            {
                              v427 = *(v426 + 16);
                              v651 = MEMORY[0x277D83B88];
                              *&v650 = v427;
                            }

                            else
                            {
                              v437 = *(v426 + 16);
                              v651 = MEMORY[0x277D839F8];
                              *&v650 = v437;
                            }
                          }

                          else
                          {
                            v435 = *(v424 + 16);
                            v434 = *(v424 + 24);
                            v651 = MEMORY[0x277D837D0];
                            *&v650 = v435;
                            *(&v650 + 1) = v434;
                          }

                          v456 = v658;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, v456[2] + 1, 1);
                            v456 = v658;
                          }

                          v458 = v456[2];
                          v457 = v456[3];
                          if (v458 >= v457 >> 1)
                          {
                            sub_255DE5CE0((v457 > 1), v458 + 1, 1);
                            v456 = v658;
                          }

                          v456[2] = v458 + 1;
                          v459 = &v456[4 * v458];
                          v423 = v607 + 1;
                          sub_255D31B4C(&v650, v459 + 2);
                          result = v563;
                        }

                        while (v607 + 1 != v533);
                      }

                      else
                      {

                        v456 = MEMORY[0x277D84F90];
                      }

                      v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v652 = v456;
                      v18 = v627;
                      v6 = v628;
                    }

                    else
                    {
                      v543 = v405;
                      v464 = *((v417 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v465 = sub_255E3AB08();
                      v608 = v465;
                      v466 = v464 + 64;
                      v467 = 1 << *(v464 + 32);
                      if (v467 < 64)
                      {
                        v468 = ~(-1 << v467);
                      }

                      else
                      {
                        v468 = -1;
                      }

                      v469 = v468 & *(v464 + 64);
                      v6 = ((v467 + 63) >> 6);
                      v537 = v465 + 64;

                      v470 = 0;
                      v531 = v464;
                      if (v469)
                      {
LABEL_494:
                        v471 = __clz(__rbit64(v469));
                        v469 &= v469 - 1;
                        goto LABEL_500;
                      }

LABEL_495:
                      v472 = v470;
                      v405 = v543;
                      while (1)
                      {
                        v470 = v472 + 1;
                        if (__OFADD__(v472, 1))
                        {
                          goto LABEL_571;
                        }

                        if (v470 >= v6)
                        {
                          break;
                        }

                        v473 = *(v466 + 8 * v470);
                        ++v472;
                        if (v473)
                        {
                          v471 = __clz(__rbit64(v473));
                          v469 = (v473 - 1) & v473;
LABEL_500:
                          v474 = v471 | (v470 << 6);
                          v475 = (*(v464 + 48) + 16 * v474);
                          v476 = *v475;
                          v477 = v475[1];
                          v478 = *(*(v464 + 56) + 8 * v474);
                          v479 = v478 >> 61;
                          v564 = v476;
                          if ((v478 >> 61) <= 2)
                          {
                            if (v479)
                            {
                              v480 = v478 & 0x1FFFFFFFFFFFFFFFLL;
                              if (v479 == 1)
                              {
                                v481 = *(v480 + 16);
                                v651 = MEMORY[0x277D83B88];
                                *&v650 = v481;
                              }

                              else
                              {
                                v491 = *(v480 + 16);
                                v651 = MEMORY[0x277D839F8];
                                *&v650 = v491;
                              }

LABEL_511:
                            }

                            else
                            {
                              v487 = v477;
                              v488 = *(v478 + 16);
                              v489 = *(v478 + 24);
                              v651 = MEMORY[0x277D837D0];
                              *&v650 = v488;
                              *(&v650 + 1) = v489;

                              v477 = v487;
                            }

LABEL_515:
                            *(v537 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v474;
                            v494 = (v608[6] + 16 * v474);
                            *v494 = v564;
                            v494[1] = v477;
                            result = sub_255D31B4C(&v650, (v608[7] + 32 * v474));
                            v495 = v608[2];
                            v73 = __OFADD__(v495, 1);
                            v496 = v495 + 1;
                            if (v73)
                            {
                              goto LABEL_600;
                            }

                            v608[2] = v496;
                            if (v469)
                            {
                              goto LABEL_494;
                            }

                            goto LABEL_495;
                          }

                          if (v479 == 3)
                          {
                            v490 = *((v478 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                            v651 = MEMORY[0x277D839B0];
                            LOBYTE(v650) = v490;
                            goto LABEL_511;
                          }

                          if (v479 == 4)
                          {

                            v483 = sub_255D7C4C8(v482);
                            if (!v3)
                            {
                              v484 = v483;

                              v485 = &qword_27F7E6158;
                              v486 = &unk_255E3BB80;
LABEL_514:
                              v651 = __swift_instantiateConcreteTypeFromMangledNameV2(v485, v486);

                              *&v650 = v484;
                              v464 = v531;
                              goto LABEL_515;
                            }
                          }

                          else
                          {

                            v493 = sub_255D82D74(v492);
                            if (!v3)
                            {
                              v484 = v493;

                              v485 = &qword_27F7E7540;
                              v486 = &qword_255E48B38;
                              goto LABEL_514;
                            }
                          }

LABEL_563:

                          goto LABEL_554;
                        }
                      }

                      v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v652 = v608;
                      v18 = v627;
                      v6 = v628;
                      v4 = v634;
                    }

                    v416 = v513;
                  }

                  else if (v418)
                  {
                    v419 = v417 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v418 == 1)
                    {
                      v420 = *(v419 + 16);
                      v653 = MEMORY[0x277D83B88];
                      *&v652 = v420;
                    }

                    else
                    {
                      v463 = *(v419 + 16);
                      v653 = MEMORY[0x277D839F8];
                      *&v652 = v463;
                    }

LABEL_489:
                  }

                  else
                  {
                    v460 = *(v417 + 16);
                    v461 = *(v417 + 24);
                    v653 = MEMORY[0x277D837D0];
                    *&v652 = v460;
                    *(&v652 + 1) = v461;
                  }

                  *(v548 + ((v594 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v594;
                  v497 = (v405[6] + 16 * v594);
                  *v497 = v602;
                  v497[1] = v416;
                  result = sub_255D31B4C(&v652, (v405[7] + 32 * v594));
                  v498 = v405[2];
                  v73 = __OFADD__(v498, 1);
                  v499 = v498 + 1;
                  if (v73)
                  {
                    goto LABEL_596;
                  }

                  v405[2] = v499;
                  v408 = v590;
                  if (v590)
                  {
                    goto LABEL_429;
                  }

                  goto LABEL_430;
                }
              }

              v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v654 = v405;
            }

            v275 = v615;
            v287 = v551;
          }

          else
          {
            if (v289)
            {
              v290 = v288 & 0x1FFFFFFFFFFFFFFFLL;
              if (v289 == 1)
              {
                v291 = *(v290 + 16);
                v655 = MEMORY[0x277D83B88];
                *&v654 = v291;
              }

              else
              {
                v402 = *(v290 + 16);
                v655 = MEMORY[0x277D839F8];
                *&v654 = v402;
              }
            }

            else
            {
              v399 = *(v288 + 16);
              v400 = *(v288 + 24);
              v655 = MEMORY[0x277D837D0];
              *&v654 = v399;
              *(&v654 + 1) = v400;

              v275 = v615;
            }

LABEL_424:
          }

          *(v597 + ((v625 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v625;
          v500 = (*(v275 + 48) + 16 * v625);
          *v500 = v619;
          v500[1] = v287;
          result = sub_255D31B4C(&v654, (*(v275 + 56) + 32 * v625));
          v275 = v615;
          v501 = *(v615 + 16);
          v73 = __OFADD__(v501, 1);
          v502 = v501 + 1;
          if (v73)
          {
            goto LABEL_585;
          }

          *(v615 + 16) = v502;
          v278 = v617;
          v279 = v631;
          if (v631)
          {
            goto LABEL_290;
          }

          goto LABEL_291;
        }
      }

      v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

      *&v656 = v275;
      v15 = v595;
      goto LABEL_283;
    }

    v23 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *(v23 + 16);
    if (v24)
    {
      break;
    }

    v259 = MEMORY[0x277D84F90];
LABEL_534:
    v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v656 = v259;
    v18 = v627;
    v6 = v628;
    v15 = v595;
LABEL_283:
    *(v633 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v270 = (v6[6] + 16 * v15);
    *v270 = v637;
    v270[1] = v18;
    result = sub_255D31B4C(&v656, (v6[7] + 32 * v15));
    v271 = v6[2];
    v73 = __OFADD__(v271, 1);
    v272 = v271 + 1;
    if (v73)
    {
      goto LABEL_575;
    }

    v6[2] = v272;
    v10 = v632;
    v9 = v635;
    v11 = v636;
    if (!v635)
    {
      goto LABEL_7;
    }
  }

  v658 = MEMORY[0x277D84F90];

  v616 = v24;
  result = sub_255D8077C(v24);
  v26 = 0;
  v618 = v23 + 32;
  v596 = v23;
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      goto LABEL_579;
    }

    v27 = *(v618 + 8 * v26);
    v28 = v27 >> 61;
    v629 = v26;
    if ((v27 >> 61) > 2)
    {
      break;
    }

    if (v28)
    {
      v29 = v27 & 0x1FFFFFFFFFFFFFFFLL;
      if (v28 == 1)
      {
        v30 = *(v29 + 16);
        v655 = MEMORY[0x277D83B88];
        *&v654 = v30;
      }

      else
      {
        v143 = *(v29 + 16);
        v655 = MEMORY[0x277D839F8];
        *&v654 = v143;
      }
    }

    else
    {
      v141 = *(v27 + 16);
      v140 = *(v27 + 24);
      v655 = MEMORY[0x277D837D0];
      *&v654 = v141;
      *(&v654 + 1) = v140;
    }

LABEL_273:
    v259 = v658;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, v259[2] + 1, 1);
      v259 = v658;
    }

    v260 = v629;
    v262 = v259[2];
    v261 = v259[3];
    if (v262 >= v261 >> 1)
    {
      sub_255DE5CE0((v261 > 1), v262 + 1, 1);
      v260 = v629;
      v259 = v658;
    }

    v259[2] = v262 + 1;
    v263 = &v259[4 * v262 + 4];
    v264 = v260 + 1;
    result = sub_255D31B4C(&v654, v263);
    v26 = v264;
    if (v264 == v616)
    {

      goto LABEL_534;
    }
  }

  if (v28 == 3)
  {
    v142 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v655 = MEMORY[0x277D839B0];
    LOBYTE(v654) = v142;
    goto LABEL_273;
  }

  if (v28 != 4)
  {
    v144 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v145 = sub_255E3AB08();
    v146 = v145;
    v550 = v144 + 64;
    v147 = 1 << *(v144 + 32);
    if (v147 < 64)
    {
      v148 = ~(-1 << v147);
    }

    else
    {
      v148 = -1;
    }

    v149 = v148 & *(v144 + 64);
    v545 = (v147 + 63) >> 6;
    v592 = v145 + 64;

    v600 = v144;

    v150 = 0;
    v567 = v146;
    if (v149)
    {
      goto LABEL_152;
    }

LABEL_153:
    v153 = v150;
    while (1)
    {
      v150 = v153 + 1;
      if (__OFADD__(v153, 1))
      {
        break;
      }

      if (v150 >= v545)
      {

        v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v654 = v146;
        v4 = v634;
        goto LABEL_273;
      }

      v154 = *(v550 + 8 * v150);
      ++v153;
      if (v154)
      {
        v151 = __clz(__rbit64(v154));
        v152 = (v154 - 1) & v154;
        while (2)
        {
          v155 = v151 | (v150 << 6);
          v156 = (*(v600 + 48) + 16 * v155);
          v157 = *v156;
          v158 = v156[1];
          v159 = *(*(v600 + 56) + 8 * v155);
          v160 = v159 >> 61;
          v604 = v152;
          v611 = v157;
          v614 = v155;
          if ((v159 >> 61) > 2)
          {
            if (v160 == 3)
            {
              v205 = *((v159 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v653 = MEMORY[0x277D839B0];
              LOBYTE(v652) = v205;
              goto LABEL_212;
            }

            v528 = v158;
            if (v160 == 4)
            {
              v163 = *((v159 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v164 = *(v163 + 16);
              if (v164)
              {
                v644 = MEMORY[0x277D84F90];

                v574 = v164;
                result = sub_255D8077C(v164);
                v165 = 0;
                v579 = v163 + 32;
                v553 = v163;
                do
                {
                  if (v165 >= *(v163 + 16))
                  {
                    goto LABEL_590;
                  }

                  v166 = *(v579 + 8 * v165);
                  v167 = v166 >> 61;
                  v623 = v165;
                  if ((v166 >> 61) > 2)
                  {
                    if (v167 == 3)
                    {
                      v178 = *((v166 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v651 = MEMORY[0x277D839B0];
                      LOBYTE(v650) = v178;
                    }

                    else if (v167 == 4)
                    {
                      v170 = *((v166 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v171 = *(v170 + 16);
                      if (v171)
                      {
                        v641 = MEMORY[0x277D84F90];

                        result = sub_255D8077C(v171);
                        v172 = 0;
                        while (1)
                        {
                          if (v172 >= *(v170 + 16))
                          {
                            goto LABEL_581;
                          }

                          sub_255D7D920(v649);
                          if (v3)
                          {
                            break;
                          }

                          v173 = v641;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, *(v641 + 16) + 1, 1);
                            v173 = v641;
                          }

                          v175 = *(v173 + 16);
                          v174 = *(v173 + 24);
                          if (v175 >= v174 >> 1)
                          {
                            sub_255DE5CE0((v174 > 1), v175 + 1, 1);
                            v173 = v641;
                          }

                          ++v172;
                          *(v173 + 16) = v175 + 1;
                          result = sub_255D31B4C(v649, (v173 + 32 * v175 + 32));
                          if (v171 == v172)
                          {

                            goto LABEL_202;
                          }
                        }

                        goto LABEL_550;
                      }

                      v173 = MEMORY[0x277D84F90];
LABEL_202:
                      v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v650 = v173;
                      v23 = v596;
                      v163 = v553;
                    }

                    else
                    {
                      v180 = *((v166 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v181 = sub_255E3AB08();
                      v182 = v180 + 64;
                      v183 = 1 << *(v180 + 32);
                      if (v183 < 64)
                      {
                        v184 = ~(-1 << v183);
                      }

                      else
                      {
                        v184 = -1;
                      }

                      v185 = v184 & *(v180 + 64);
                      v186 = (v183 + 63) >> 6;
                      v559 = v181;
                      v539 = v181 + 64;

                      v569 = v180;

                      v187 = 0;
                      if (v185)
                      {
                        goto LABEL_190;
                      }

LABEL_191:
                      v190 = v187;
                      while (1)
                      {
                        v187 = v190 + 1;
                        if (__OFADD__(v190, 1))
                        {
                          goto LABEL_569;
                        }

                        if (v187 >= v186)
                        {
                          break;
                        }

                        v191 = *(v182 + 8 * v187);
                        ++v190;
                        if (v191)
                        {
                          v188 = v3;
                          v189 = __clz(__rbit64(v191));
                          v586 = (v191 - 1) & v191;
                          while (2)
                          {
                            v192 = v189 | (v187 << 6);
                            v193 = (*(v569 + 48) + 16 * v192);
                            v194 = *v193;
                            v195 = v193[1];

                            sub_255D7D920(v649);
                            if (!v188)
                            {

                              *(v539 + ((v192 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v192;
                              v196 = (v559[6] + 16 * v192);
                              *v196 = v194;
                              v196[1] = v195;
                              result = sub_255D31B4C(v649, (v559[7] + 32 * v192));
                              v197 = v559[2];
                              v73 = __OFADD__(v197, 1);
                              v198 = v197 + 1;
                              if (!v73)
                              {
                                v559[2] = v198;
                                v3 = 0;
                                v163 = v553;
                                v185 = v586;
                                if (!v586)
                                {
                                  goto LABEL_191;
                                }

LABEL_190:
                                v188 = v3;
                                v189 = __clz(__rbit64(v185));
                                v586 = (v185 - 1) & v185;
                                continue;
                              }

LABEL_598:
                              __break(1u);
LABEL_599:
                              __break(1u);
LABEL_600:
                              __break(1u);
LABEL_601:
                              __break(1u);
LABEL_602:
                              __break(1u);
LABEL_603:
                              __break(1u);
LABEL_604:
                              __break(1u);
LABEL_605:
                              __break(1u);
                              return result;
                            }

                            break;
                          }

LABEL_550:

                          goto LABEL_551;
                        }
                      }

                      v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v650 = v559;
                      v23 = v596;
                    }
                  }

                  else if (v167)
                  {
                    v168 = v166 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v167 == 1)
                    {
                      v169 = *(v168 + 16);
                      v651 = MEMORY[0x277D83B88];
                      *&v650 = v169;
                    }

                    else
                    {
                      v179 = *(v168 + 16);
                      v651 = MEMORY[0x277D839F8];
                      *&v650 = v179;
                    }
                  }

                  else
                  {
                    v177 = *(v166 + 16);
                    v176 = *(v166 + 24);
                    v651 = MEMORY[0x277D837D0];
                    *&v650 = v177;
                    *(&v650 + 1) = v176;
                  }

                  v199 = v644;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_255DE5CE0(0, *(v644 + 16) + 1, 1);
                    v199 = v644;
                  }

                  v201 = *(v199 + 16);
                  v200 = *(v199 + 24);
                  if (v201 >= v200 >> 1)
                  {
                    sub_255DE5CE0((v200 > 1), v201 + 1, 1);
                    v199 = v644;
                  }

                  *(v199 + 16) = v201 + 1;
                  v202 = v199 + 32 * v201;
                  v165 = v623 + 1;
                  result = sub_255D31B4C(&v650, (v202 + 32));
                }

                while (v623 + 1 != v574);
              }

              else
              {

                v199 = MEMORY[0x277D84F90];
              }

              v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

              *&v652 = v199;
              v146 = v567;
              v158 = v528;
            }

            else
            {
              v210 = *((v159 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v211 = sub_255E3AB08();
              v146 = v567;
              v517 = v210 + 64;
              v212 = 1 << *(v210 + 32);
              if (v212 < 64)
              {
                v213 = ~(-1 << v212);
              }

              else
              {
                v213 = -1;
              }

              v214 = v213 & *(v210 + 64);
              v215 = (v212 + 63) >> 6;
              v570 = v211 + 64;
              v216 = v211;

              v217 = 0;
              v554 = v210;
              v540 = v215;
              if (v214)
              {
LABEL_220:
                v218 = __clz(__rbit64(v214));
                v219 = (v214 - 1) & v214;
                goto LABEL_226;
              }

LABEL_221:
              v220 = v217;
              while (1)
              {
                v217 = v220 + 1;
                if (__OFADD__(v220, 1))
                {
                  goto LABEL_572;
                }

                if (v217 >= v215)
                {
                  break;
                }

                v221 = *(v517 + 8 * v217);
                ++v220;
                if (v221)
                {
                  v218 = __clz(__rbit64(v221));
                  v219 = (v221 - 1) & v221;
LABEL_226:
                  v222 = v218 | (v217 << 6);
                  v223 = (*(v210 + 48) + 16 * v222);
                  v224 = v223[1];
                  v580 = v222;
                  v587 = *v223;
                  v225 = *(*(v210 + 56) + 8 * v222);
                  v226 = v225 >> 61;
                  v575 = v219;
                  if ((v225 >> 61) > 2)
                  {
                    if (v226 == 3)
                    {
                      v237 = *((v225 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v651 = MEMORY[0x277D839B0];
                      LOBYTE(v650) = v237;
                      goto LABEL_245;
                    }

                    v511 = v224;
                    if (v226 == 4)
                    {
                      v229 = *((v225 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v230 = *(v229 + 16);
                      if (v230)
                      {
                        v506 = v216;
                        v645 = MEMORY[0x277D84F90];

                        result = sub_255D8077C(v230);
                        for (i = 0; i != v230; ++i)
                        {
                          if (i >= *(v229 + 16))
                          {
                            goto LABEL_592;
                          }

                          sub_255D7D920(v649);
                          if (v3)
                          {

                            goto LABEL_551;
                          }

                          v232 = v645;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, *(v645 + 16) + 1, 1);
                            v232 = v645;
                          }

                          v234 = *(v232 + 16);
                          v233 = *(v232 + 24);
                          if (v234 >= v233 >> 1)
                          {
                            sub_255DE5CE0((v233 > 1), v234 + 1, 1);
                            v232 = v645;
                          }

                          *(v232 + 16) = v234 + 1;
                          result = sub_255D31B4C(v649, (v232 + 32 * v234 + 32));
                        }

                        v216 = v506;
                      }

                      else
                      {

                        v232 = MEMORY[0x277D84F90];
                      }

                      v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v650 = v232;
                      v146 = v567;
                      v210 = v554;
                      v215 = v540;
                    }

                    else
                    {
                      v507 = v216;
                      v239 = *((v225 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v240 = sub_255E3AB08();
                      v504 = v239 + 64;
                      v241 = 1 << *(v239 + 32);
                      if (v241 < 64)
                      {
                        v242 = ~(-1 << v241);
                      }

                      else
                      {
                        v242 = -1;
                      }

                      v243 = v242 & *(v239 + 64);
                      v244 = (v241 + 63) >> 6;
                      v520 = v240;
                      v514 = v240 + 64;

                      v523 = v239;

                      v245 = 0;
                      if (v243)
                      {
                        do
                        {
                          v624 = v3;
                          v246 = __clz(__rbit64(v243));
                          v560 = (v243 - 1) & v243;
LABEL_256:
                          v249 = v246 | (v245 << 6);
                          v250 = (*(v523 + 48) + 16 * v249);
                          v252 = *v250;
                          v251 = v250[1];

                          sub_255D7D920(v649);
                          if (v624)
                          {

                            goto LABEL_552;
                          }

                          *(v514 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v249;
                          v253 = (v520[6] + 16 * v249);
                          *v253 = v252;
                          v253[1] = v251;
                          result = sub_255D31B4C(v649, (v520[7] + 32 * v249));
                          v254 = v520[2];
                          v73 = __OFADD__(v254, 1);
                          v255 = v254 + 1;
                          if (v73)
                          {
                            goto LABEL_605;
                          }

                          v520[2] = v255;
                          v210 = v554;
                          v243 = v560;
                          v215 = v540;
                          v3 = 0;
                        }

                        while (v560);
                      }

                      v247 = v245;
                      v146 = v567;
                      while (1)
                      {
                        v245 = v247 + 1;
                        if (__OFADD__(v247, 1))
                        {
                          goto LABEL_578;
                        }

                        if (v245 >= v244)
                        {
                          break;
                        }

                        v248 = *(v504 + 8 * v245);
                        ++v247;
                        if (v248)
                        {
                          v624 = v3;
                          v246 = __clz(__rbit64(v248));
                          v560 = (v248 - 1) & v248;
                          goto LABEL_256;
                        }
                      }

                      v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v650 = v520;
                      v216 = v507;
                    }

                    v224 = v511;
                  }

                  else if (v226)
                  {
                    v227 = v225 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v226 == 1)
                    {
                      v228 = *(v227 + 16);
                      v651 = MEMORY[0x277D83B88];
                      *&v650 = v228;
                    }

                    else
                    {
                      v238 = *(v227 + 16);
                      v651 = MEMORY[0x277D839F8];
                      *&v650 = v238;
                    }

LABEL_245:
                  }

                  else
                  {
                    v235 = *(v225 + 16);
                    v236 = *(v225 + 24);
                    v651 = MEMORY[0x277D837D0];
                    *&v650 = v235;
                    *(&v650 + 1) = v236;
                  }

                  *(v570 + ((v580 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v580;
                  v256 = (v216[6] + 16 * v580);
                  *v256 = v587;
                  v256[1] = v224;
                  result = sub_255D31B4C(&v650, (v216[7] + 32 * v580));
                  v257 = v216[2];
                  v73 = __OFADD__(v257, 1);
                  v258 = v257 + 1;
                  if (v73)
                  {
                    goto LABEL_601;
                  }

                  v216[2] = v258;
                  v214 = v575;
                  if (v575)
                  {
                    goto LABEL_220;
                  }

                  goto LABEL_221;
                }
              }

              v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v652 = v216;
              v23 = v596;
              v158 = v528;
            }
          }

          else
          {
            if (v160)
            {
              v161 = v159 & 0x1FFFFFFFFFFFFFFFLL;
              if (v160 == 1)
              {
                v162 = *(v161 + 16);
                v653 = MEMORY[0x277D83B88];
                *&v652 = v162;
              }

              else
              {
                v206 = *(v161 + 16);
                v653 = MEMORY[0x277D839F8];
                *&v652 = v206;
              }
            }

            else
            {
              v203 = *(v159 + 16);
              v204 = *(v159 + 24);
              v653 = MEMORY[0x277D837D0];
              *&v652 = v203;
              *(&v652 + 1) = v204;
            }

LABEL_212:
          }

          *(v592 + ((v614 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v614;
          v207 = (v146[6] + 16 * v614);
          *v207 = v611;
          v207[1] = v158;
          result = sub_255D31B4C(&v652, (v146[7] + 32 * v614));
          v208 = v146[2];
          v73 = __OFADD__(v208, 1);
          v209 = v208 + 1;
          if (!v73)
          {
            v146[2] = v209;
            v149 = v604;
            if (!v604)
            {
              goto LABEL_153;
            }

LABEL_152:
            v151 = __clz(__rbit64(v149));
            v152 = (v149 - 1) & v149;
            continue;
          }

          break;
        }

LABEL_593:
        __break(1u);
LABEL_594:
        __break(1u);
LABEL_595:
        __break(1u);
LABEL_596:
        __break(1u);
LABEL_597:
        __break(1u);
        goto LABEL_598;
      }
    }

    __break(1u);
LABEL_565:
    __break(1u);
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    __break(1u);
LABEL_570:
    __break(1u);
LABEL_571:
    __break(1u);
LABEL_572:
    __break(1u);
LABEL_573:
    __break(1u);
LABEL_574:
    __break(1u);
LABEL_575:
    __break(1u);
LABEL_576:
    __break(1u);
LABEL_577:
    __break(1u);
LABEL_578:
    __break(1u);
LABEL_579:
    __break(1u);
LABEL_580:
    __break(1u);
LABEL_581:
    __break(1u);
LABEL_582:
    __break(1u);
LABEL_583:
    __break(1u);
LABEL_584:
    __break(1u);
LABEL_585:
    __break(1u);
LABEL_586:
    __break(1u);
LABEL_587:
    __break(1u);
LABEL_588:
    __break(1u);
LABEL_589:
    __break(1u);
LABEL_590:
    __break(1u);
LABEL_591:
    __break(1u);
LABEL_592:
    __break(1u);
    goto LABEL_593;
  }

  v31 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *(v31 + 16);
  if (!v32)
  {

    v137 = MEMORY[0x277D84F90];
LABEL_272:
    v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v654 = v137;
    goto LABEL_273;
  }

  v643 = MEMORY[0x277D84F90];

  v591 = v32;
  result = sub_255D8077C(v32);
  v33 = 0;
  v603 = v31 + 32;
  v568 = v31;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      goto LABEL_582;
    }

    v34 = *(v603 + 8 * v33);
    v35 = v34 >> 61;
    if ((v34 >> 61) <= 2)
    {
      if (v35)
      {
        v36 = v34 & 0x1FFFFFFFFFFFFFFFLL;
        if (v35 == 1)
        {
          v37 = *(v36 + 16);
          v653 = MEMORY[0x277D83B88];
          *&v652 = v37;
        }

        else
        {
          v82 = *(v36 + 16);
          v653 = MEMORY[0x277D839F8];
          *&v652 = v82;
        }
      }

      else
      {
        v80 = *(v34 + 16);
        v79 = *(v34 + 24);
        v653 = MEMORY[0x277D837D0];
        *&v652 = v80;
        *(&v652 + 1) = v79;
      }

      goto LABEL_139;
    }

    if (v35 == 3)
    {
      v81 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v653 = MEMORY[0x277D839B0];
      LOBYTE(v652) = v81;
      goto LABEL_139;
    }

    v613 = v33;
    if (v35 != 4)
    {
      break;
    }

    v38 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v39 = *(v38 + 16);
    if (v39)
    {
      v639 = MEMORY[0x277D84F90];

      v584 = v39;
      v609 = v38;
      sub_255D8077C(v39);
      result = v38;
      v40 = 0;
      v598 = v38 + 32;
      while (v40 < result[2])
      {
        v41 = *(v598 + 8 * v40);
        v42 = v41 >> 61;
        v620 = v40;
        if ((v41 >> 61) > 2)
        {
          if (v42 == 3)
          {
            v53 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v651 = MEMORY[0x277D839B0];
            LOBYTE(v650) = v53;
          }

          else
          {
            if (v42 != 4)
            {
              v55 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v56 = sub_255E3AB08();
              v57 = v55 + 64;
              v58 = 1 << *(v55 + 32);
              if (v58 < 64)
              {
                v59 = ~(-1 << v58);
              }

              else
              {
                v59 = -1;
              }

              v60 = v59 & *(v55 + 64);
              v61 = (v58 + 63) >> 6;
              v572 = v56;
              v565 = v56 + 64;

              v577 = v55;

              v62 = 0;
              if (!v60)
              {
LABEL_63:
                v65 = v62;
                while (1)
                {
                  v62 = v65 + 1;
                  if (__OFADD__(v65, 1))
                  {
                    goto LABEL_565;
                  }

                  if (v62 >= v61)
                  {

                    v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v650 = v572;
                    goto LABEL_75;
                  }

                  v66 = *(v57 + 8 * v62);
                  ++v65;
                  if (v66)
                  {
                    v63 = v3;
                    v64 = __clz(__rbit64(v66));
                    v60 = (v66 - 1) & v66;
                    goto LABEL_68;
                  }
                }
              }

              while (1)
              {
                v63 = v3;
                v64 = __clz(__rbit64(v60));
                v60 &= v60 - 1;
LABEL_68:
                v67 = v64 | (v62 << 6);
                v68 = (*(v577 + 48) + 16 * v67);
                v70 = *v68;
                v69 = v68[1];

                sub_255D7D920(v649);
                if (v63)
                {
                  break;
                }

                *(v565 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
                v71 = (v572[6] + 16 * v67);
                *v71 = v70;
                v71[1] = v69;
                result = sub_255D31B4C(v649, (v572[7] + 32 * v67));
                v72 = v572[2];
                v73 = __OFADD__(v72, 1);
                v74 = v72 + 1;
                if (v73)
                {
                  goto LABEL_591;
                }

                v572[2] = v74;
                v3 = 0;
                v31 = v568;
                if (!v60)
                {
                  goto LABEL_63;
                }
              }

              goto LABEL_544;
            }

            v45 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v46 = *(v45 + 16);
            if (v46)
            {
              v638 = MEMORY[0x277D84F90];

              result = sub_255D8077C(v46);
              v47 = 0;
              while (v47 < *(v45 + 16))
              {

                sub_255D7D920(v649);
                if (v3)
                {

                  goto LABEL_544;
                }

                v48 = v638;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_255DE5CE0(0, *(v638 + 16) + 1, 1);
                  v48 = v638;
                }

                v50 = *(v48 + 16);
                v49 = *(v48 + 24);
                if (v50 >= v49 >> 1)
                {
                  sub_255DE5CE0((v49 > 1), v50 + 1, 1);
                  v48 = v638;
                }

                ++v47;
                *(v48 + 16) = v50 + 1;
                result = sub_255D31B4C(v649, (v48 + 32 * v50 + 32));
                if (v46 == v47)
                {

                  goto LABEL_74;
                }
              }

              goto LABEL_577;
            }

            v48 = MEMORY[0x277D84F90];
LABEL_74:
            v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

            *&v650 = v48;
LABEL_75:
            v4 = v634;
            v23 = v596;
          }
        }

        else if (v42)
        {
          v43 = v41 & 0x1FFFFFFFFFFFFFFFLL;
          if (v42 == 1)
          {
            v44 = *(v43 + 16);
            v651 = MEMORY[0x277D83B88];
            *&v650 = v44;
          }

          else
          {
            v54 = *(v43 + 16);
            v651 = MEMORY[0x277D839F8];
            *&v650 = v54;
          }
        }

        else
        {
          v52 = *(v41 + 16);
          v51 = *(v41 + 24);
          v651 = MEMORY[0x277D837D0];
          *&v650 = v52;
          *(&v650 + 1) = v51;
        }

        v75 = v639;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, *(v639 + 16) + 1, 1);
          v75 = v639;
        }

        v77 = *(v75 + 16);
        v76 = *(v75 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_255DE5CE0((v76 > 1), v77 + 1, 1);
          v75 = v639;
        }

        *(v75 + 16) = v77 + 1;
        v78 = v75 + 32 * v77;
        v40 = v620 + 1;
        sub_255D31B4C(&v650, (v78 + 32));
        result = v609;
        v33 = v613;
        if (v620 + 1 == v584)
        {

          goto LABEL_138;
        }
      }

      goto LABEL_583;
    }

    v75 = MEMORY[0x277D84F90];
LABEL_138:
    v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v652 = v75;
LABEL_139:
    v137 = v643;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, *(v643 + 16) + 1, 1);
      v137 = v643;
    }

    v139 = *(v137 + 16);
    v138 = *(v137 + 24);
    if (v139 >= v138 >> 1)
    {
      sub_255DE5CE0((v138 > 1), v139 + 1, 1);
      v137 = v643;
    }

    ++v33;
    *(v137 + 16) = v139 + 1;
    result = sub_255D31B4C(&v652, (v137 + 32 * v139 + 32));
    if (v33 == v591)
    {

      goto LABEL_272;
    }
  }

  v83 = v34 & 0x1FFFFFFFFFFFFFFFLL;
  v84 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v85 = sub_255E3AB08();
  v86 = v85;
  v549 = v84 + 64;
  v87 = 1 << *(v84 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  v621 = v88 & *(v84 + 64);
  v89 = (v87 + 63) >> 6;
  v585 = v85 + 64;

  v599 = v84;

  v90 = 0;
  v578 = v89;
  v552 = v86;
  v91 = v621;
  if (!v621)
  {
LABEL_90:
    v94 = v90;
    while (1)
    {
      v90 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_566;
      }

      if (v90 >= v89)
      {

        v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v652 = v86;
        v31 = v568;
        goto LABEL_139;
      }

      v95 = *(v549 + 8 * v90);
      ++v94;
      if (v95)
      {
        v92 = __clz(__rbit64(v95));
        v93 = (v95 - 1) & v95;
        goto LABEL_95;
      }
    }
  }

  while (2)
  {
    v92 = __clz(__rbit64(v91));
    v93 = (v91 - 1) & v91;
LABEL_95:
    v96 = v92 | (v90 << 6);
    v97 = (*(v599 + 48) + 16 * v96);
    v98 = *v97;
    v99 = v97[1];
    v100 = *(*(v599 + 56) + 8 * v96);
    v101 = v100 >> 61;
    v622 = v93;
    v610 = v98;
    if ((v100 >> 61) <= 2)
    {
      if (v101)
      {
        v102 = v100 & 0x1FFFFFFFFFFFFFFFLL;
        if (v101 == 1)
        {
          v103 = *(v102 + 16);
          v651 = MEMORY[0x277D83B88];
          *&v650 = v103;
        }

        else
        {
          v114 = *(v102 + 16);
          v651 = MEMORY[0x277D839F8];
          *&v650 = v114;
        }
      }

      else
      {
        v110 = v96;
        v111 = *(v100 + 16);
        v112 = *(v100 + 24);
        v651 = MEMORY[0x277D837D0];
        *&v650 = v111;
        *(&v650 + 1) = v112;

        v96 = v110;
      }

LABEL_114:

LABEL_133:
      *(v585 + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v96;
      v134 = (v86[6] + 16 * v96);
      *v134 = v610;
      v134[1] = v99;
      result = sub_255D31B4C(&v650, (v86[7] + 32 * v96));
      v135 = v86[2];
      v73 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v73)
      {
        goto LABEL_595;
      }

      v86[2] = v136;
      v89 = v578;
      v91 = v622;
      if (!v622)
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  if (v101 == 3)
  {
    v113 = *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v651 = MEMORY[0x277D839B0];
    LOBYTE(v650) = v113;
    goto LABEL_114;
  }

  v534 = v96;
  v538 = v99;
  if (v101 == 4)
  {
    v104 = *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v105 = *(v104 + 16);
    if (v105)
    {
      v526 = v83;
      v640 = MEMORY[0x277D84F90];

      result = sub_255D8077C(v105);
      v106 = 0;
      while (v106 < *(v104 + 16))
      {

        sub_255D7D920(v649);
        if (v3)
        {

LABEL_544:

          goto LABEL_551;
        }

        v107 = v640;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, *(v640 + 16) + 1, 1);
          v107 = v640;
        }

        v109 = *(v107 + 16);
        v108 = *(v107 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_255DE5CE0((v108 > 1), v109 + 1, 1);
          v107 = v640;
        }

        ++v106;
        *(v107 + 16) = v109 + 1;
        result = sub_255D31B4C(v649, (v107 + 32 * v109 + 32));
        if (v105 == v106)
        {

          v83 = v526;
          v23 = v596;
          goto LABEL_131;
        }
      }

      goto LABEL_584;
    }

    v107 = MEMORY[0x277D84F90];
LABEL_131:
    v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v650 = v107;
    v33 = v613;
    v86 = v552;
LABEL_132:
    v96 = v534;
    v99 = v538;
    goto LABEL_133;
  }

  v527 = v83;
  v115 = *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v116 = sub_255E3AB08();
  v117 = v115 + 64;
  v118 = 1 << *(v115 + 32);
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  else
  {
    v119 = -1;
  }

  v120 = v119 & *(v115 + 64);
  v121 = (v118 + 63) >> 6;
  v558 = v116;
  v544 = v116 + 64;

  v4 = v634;

  v566 = v115;

  v122 = 0;
  if (!v120)
  {
LABEL_120:
    v125 = v122;
    v86 = v552;
    while (1)
    {
      v122 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        goto LABEL_573;
      }

      if (v122 >= v121)
      {

        v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v650 = v558;
        v23 = v596;
        v33 = v613;
        v83 = v527;
        goto LABEL_132;
      }

      v126 = *(v117 + 8 * v122);
      ++v125;
      if (v126)
      {
        v123 = v3;
        v124 = __clz(__rbit64(v126));
        v573 = (v126 - 1) & v126;
        goto LABEL_125;
      }
    }
  }

  while (1)
  {
    v123 = v3;
    v124 = __clz(__rbit64(v120));
    v573 = (v120 - 1) & v120;
LABEL_125:
    v127 = v124 | (v122 << 6);
    v128 = (*(v566 + 48) + 16 * v127);
    v129 = *v128;
    v130 = v128[1];

    sub_255D7D920(v649);
    if (v123)
    {
      break;
    }

    *(v544 + ((v127 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v127;
    v131 = (v558[6] + 16 * v127);
    *v131 = v129;
    v131[1] = v130;
    result = sub_255D31B4C(v649, (v558[7] + 32 * v127));
    v132 = v558[2];
    v73 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (v73)
    {
      goto LABEL_602;
    }

    v558[2] = v133;
    v3 = 0;
    v4 = v634;
    v120 = v573;
    if (!v573)
    {
      goto LABEL_120;
    }
  }

LABEL_551:

LABEL_552:
  v6 = v658;
LABEL_553:

LABEL_554:

  return v6;
}
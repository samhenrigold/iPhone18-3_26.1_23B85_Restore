void sub_242EBF668(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x70616373646E616CLL;
  if (v2 != 1)
  {
    v5 = 0x706172676F706F74;
    v4 = 0xEA00000000007968;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E656964617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242EBF780()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242EBF82C(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242EBF8C4(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242EBF970()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_242EBF9BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EC5130(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EBF9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3D3C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EBFA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3D3C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EBFA5C()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0x4363696D616E7964;
  v4 = 0x4963696D616E7964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6567616D69;
  if (v1 != 1)
  {
    v5 = 0x67616B6361706163;
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

uint64_t sub_242EBFB28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EC5240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EBFB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3B98(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EBFB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3B98(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EBFBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3DE4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EBFC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3DE4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EBFC40()
{
  v1 = 0x7465737361;
  v2 = 0x646F4D746867696CLL;
  if (*v0 != 2)
  {
    v2 = 0x65646F4D6B726164;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_242EBFCC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EC544C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EBFCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3BEC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EBFD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3BEC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EBFD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3CE8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EBFDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3CE8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EBFDE0()
{
  if (*v0)
  {
    return 0x65646F4D6B726164;
  }

  else
  {
    return 0x646F4D746867696CLL;
  }
}

void sub_242EBFE20(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F4D746867696CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65646F4D6B726164 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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
}

uint64_t sub_242EBFF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3C94(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EBFF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3C94(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EBFF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3D90(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EBFFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC3D90(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Wallpaper.WallpaperType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC228, &qword_242F492D0);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC230, &qword_242F492D8);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v70 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC238, &qword_242F492E0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v70 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC240, &qword_242F492E8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v70 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC248, &qword_242F492F0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC250, &qword_242F492F8);
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC258, &unk_242F49300);
  v97 = *(v14 - 8);
  v98 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  v17 = *v1;
  v94 = v1[1];
  v95 = v17;
  v18 = v1[3];
  v91 = v1[2];
  v92 = v18;
  v19 = v1[5];
  v93 = v1[4];
  v90 = v19;
  v20 = v1[7];
  v73 = v1[6];
  v74 = v20;
  v21 = v1[9];
  v71 = v1[8];
  v72 = v21;
  v22 = v1[10];
  v70 = v1[11];
  v23 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EC3B98(v23, v24, v25);
  v26 = v16;
  v27 = sub_242F064C0();
  v30 = v22 >> 61;
  if ((v22 >> 61) > 2)
  {
    if (v30 == 3)
    {
      LOBYTE(v99) = 3;
      sub_242EC3CE8(v27, v28, v29);
      v50 = v78;
      v37 = v98;
      v38 = v26;
      sub_242F05E40();
      v99 = v95;
      v100 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0, &qword_242F09570);
      sub_242C7C690(&qword_27ECEFEC8, &protocol conformance descriptor for <A> DynamicAppearanceValue<A>);
      v51 = v80;
      sub_242F05F20();
      (*(v79 + 8))(v50, v51);
    }

    else
    {
      v37 = v98;
      v38 = v26;
      if (v30 == 4)
      {
        LOBYTE(v99) = 4;
        sub_242EC3C94(v27, v28, v29);
        v39 = v84;
        v40 = sub_242F05E40();
        v99 = v95;
        v100 = v94;
        v101 = v91;
        v102 = v92;
        LOBYTE(v103) = v93;
        v104 = v90;
        v105 = 0;
        sub_242C8B8E8(v40, v41, v42);
        v43 = v86;
        v44 = v96;
        sub_242F05F20();
        if (!v44)
        {
          v99 = v73;
          v100 = v74;
          v101 = v71;
          v102 = v72;
          LOBYTE(v103) = v22;
          v104 = v70;
          v105 = 1;
          sub_242F05F20();
        }

        (*(v85 + 8))(v39, v43);
      }

      else
      {
        LOBYTE(v99) = 5;
        sub_242EC3BEC(v27, v28, v29);
        v61 = v87;
        v62 = sub_242F05E40();
        v99 = v95;
        v100 = v94;
        v101 = v91;
        v102 = v92;
        v103 = v93;
        v105 = 0;
        sub_242D7D2E0(v62, v63, v64);
        v65 = v89;
        v66 = v96;
        v67 = sub_242F05F20();
        if (!v66)
        {
          LOBYTE(v99) = v90;
          v105 = 1;
          sub_242EC3C40(v67, v68, v69);
          sub_242F05F20();
          LOBYTE(v99) = 2;
          sub_242F05E50();
          LOBYTE(v99) = 3;
          sub_242F05E50();
        }

        (*(v88 + 8))(v61, v65);
      }
    }

    return (*(v97 + 8))(v38, v37);
  }

  else if (v30)
  {
    v31 = v16;
    if (v30 == 1)
    {
      LOBYTE(v99) = 1;
      sub_242EC3D90(v27, v28, v29);
      v32 = v98;
      v33 = sub_242F05E40();
      v99 = v95;
      v100 = v94;
      v101 = v91;
      v102 = v92;
      LOBYTE(v103) = v93;
      v104 = v90;
      sub_242C8B8E8(v33, v34, v35);
      v36 = v77;
      sub_242F05F20();
      (*(v76 + 8))(v10, v36);
    }

    else
    {
      LOBYTE(v99) = 2;
      sub_242EC3D3C(v27, v28, v29);
      v52 = v81;
      v32 = v98;
      v53 = sub_242F05E40();
      v99 = v95;
      v100 = v94;
      v101 = v91;
      v102 = v92;
      v103 = v93;
      v105 = 0;
      sub_242D7D2E0(v53, v54, v55);
      v56 = v83;
      v57 = v96;
      v58 = sub_242F05F20();
      if (!v57)
      {
        LOBYTE(v99) = v90;
        v105 = 1;
        sub_242EC3C40(v58, v59, v60);
        sub_242F05F20();
        LOBYTE(v99) = 2;
        sub_242F05E50();
      }

      (*(v82 + 8))(v52, v56);
    }

    return (*(v97 + 8))(v31, v32);
  }

  else
  {
    LOBYTE(v99) = 0;
    sub_242EC3DE4(v27, v28, v29);
    v45 = v98;
    v46 = sub_242F05E40();
    v99 = v95;
    sub_242C7C594(v46, v47, v48);
    sub_242F05F20();
    (*(v75 + 8))(v13, v11);
    return (*(v97 + 8))(v16, v45);
  }
}

void Wallpaper.WallpaperType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v10 = v9 >> 61;
  if ((v9 >> 61) > 2)
  {
    if (v10 == 3)
    {
      MEMORY[0x245D279A0](3);
      sub_242F04720();
      goto LABEL_16;
    }

    v24 = *(v1 + 48);
    v25 = *(v1 + 72);
    v26 = *(v1 + 64);
    if (v10 != 4)
    {
      MEMORY[0x245D279A0](5);
      sub_242F063B0();
      if (v3)
      {
        v14 = v3;
        sub_242F05820();
      }

      sub_242F04DD0();
      sub_242F04DD0();
      sub_242F04DD0();

      if (v8)
      {
        sub_242F063B0();
        sub_242F04DD0();
        if (!v25)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_242F063B0();
        if (!v25)
        {
          goto LABEL_37;
        }
      }

LABEL_33:
      sub_242F063B0();

      sub_242F04DD0();
      return;
    }

    v23 = *(v1 + 88);
    MEMORY[0x245D279A0](4);
    if ((v7 & 0x80) != 0)
    {
      MEMORY[0x245D279A0](1);
      sub_242F063B0();
      if (v3)
      {
        v16 = v3;
        sub_242F05820();
      }

      sub_242F04DD0();
      sub_242C78CCC(a1, v4);
    }

    else
    {
      MEMORY[0x245D279A0](0);
      sub_242F04DD0();
      if (v5)
      {
        sub_242F063B0();
        v12 = v5;
        sub_242F05820();

        if (v7)
        {
LABEL_13:
          sub_242F063B0();
          goto LABEL_51;
        }
      }

      else
      {
        sub_242F063B0();
        if (v7)
        {
          goto LABEL_13;
        }
      }

      sub_242F063B0();
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v4;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x245D279D0](v18);
    }

LABEL_51:
    MEMORY[0x245D279A0](v6);
    if ((v9 & 0x80) != 0)
    {
      MEMORY[0x245D279A0](1);
      sub_242F063B0();
      if (v24)
      {
        v21 = v24;
        sub_242F05820();
      }

      sub_242F04DD0();
      sub_242C78CCC(a1, v25);
      goto LABEL_63;
    }

    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v26)
    {
      sub_242F063B0();
      v20 = v26;
      sub_242F05820();

      if (v9)
      {
LABEL_54:
        sub_242F063B0();
LABEL_63:
        v19 = v23;
        goto LABEL_64;
      }
    }

    else
    {
      sub_242F063B0();
      if (v9)
      {
        goto LABEL_54;
      }
    }

    sub_242F063B0();
    if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v25;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x245D279D0](v22);
    goto LABEL_63;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      MEMORY[0x245D279A0](1);
      if ((v7 & 0x80) != 0)
      {
        MEMORY[0x245D279A0](1);
        sub_242F063B0();
        if (v3)
        {
          v15 = v3;
          sub_242F05820();
        }

        sub_242F04DD0();
        sub_242C78CCC(a1, v4);
        goto LABEL_49;
      }

      MEMORY[0x245D279A0](0);
      sub_242F04DD0();
      if (v5)
      {
        sub_242F063B0();
        v11 = v5;
        sub_242F05820();

        if (v7)
        {
LABEL_7:
          sub_242F063B0();
LABEL_49:
          v19 = v6;
LABEL_64:
          MEMORY[0x245D279A0](v19);
          return;
        }
      }

      else
      {
        sub_242F063B0();
        if (v7)
        {
          goto LABEL_7;
        }
      }

      sub_242F063B0();
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v17 = v4;
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0x245D279D0](v17);
      goto LABEL_49;
    }

    MEMORY[0x245D279A0](2);
    sub_242F063B0();
    if (v3)
    {
      v13 = v3;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242F04DD0();
    sub_242F04DD0();

    if (v8)
    {
      goto LABEL_33;
    }

LABEL_37:
    sub_242F063B0();
    return;
  }

  MEMORY[0x245D279A0](0);
LABEL_16:

  sub_242F04720();
}

uint64_t Wallpaper.WallpaperType.hashValue.getter()
{
  sub_242F06390();
  Wallpaper.WallpaperType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Wallpaper.WallpaperType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2A0, &qword_242F49310);
  v96 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v97 = &v84 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2A8, &qword_242F49318);
  v95 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v98 = &v84 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2B0, &qword_242F49320);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  *&v100 = &v84 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2B8, &qword_242F49328);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v99 = &v84 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2C0, &qword_242F49330);
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v8 = &v84 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2C8, &qword_242F49338);
  v86 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2D0, &unk_242F49340);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - v14;
  v16 = a1[3];
  v103 = a1;
  v17 = __swift_project_boxed_opaque_existential_2Tm(a1, v16);
  sub_242EC3B98(v17, v18, v19);
  v20 = v102;
  sub_242F06480();
  v21 = v20;
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v103);
  }

  v85 = v11;
  v22 = v100;
  v23 = v99;
  v102 = v13;
  v24 = v101;
  v25 = sub_242F05E10();
  v26 = (2 * *(v25 + 16)) | 1;
  v115 = v25;
  v116 = v25 + 32;
  v117 = 0;
  v118 = v26;
  v27 = sub_242C703C8();
  if (v27 == 6 || v117 != v118 >> 1)
  {
    v35 = sub_242F05B10();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
    *v37 = &type metadata for Wallpaper.WallpaperType;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v102 + 8))(v15, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2Tm(v103);
  }

  if (v27 > 2u)
  {
    v23 = v15;
    v66 = v24;
    if (v27 == 3)
    {
      LOBYTE(v110) = 3;
      sub_242EC3CE8(v27, v28, v29);
      v9 = v22;
      sub_242F05D10();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0, &qword_242F09570);
      sub_242C7C690(&qword_27ECEFF20, &protocol conformance descriptor for <A> DynamicAppearanceValue<A>);
      v48 = v91;
      v34 = v9;
      sub_242F05E00();
      v86 = 0;
      (*(v90 + 8))(v9, v48);
      (*(v102 + 8))(v23, v12);
      swift_unknownObjectRelease();
      v62 = v110;
      v65 = 0x6000000000000000;
    }

    else
    {
      if (v27 == 4)
      {
        LOBYTE(v110) = 4;
        sub_242EC3C94(v27, v28, v29);
        v39 = v98;
        v40 = sub_242F05D10();
        LOBYTE(v104) = 0;
        sub_242C8BA70(v40, v41, v42);
        v43 = v94;
        sub_242F05E00();
        v100 = v110;
        v99 = v111;
        v91 = v112;
        v90 = v113;
        v93 = v114;
        v119 = 1;
        sub_242F05E00();
        v86 = 0;
        (*(v95 + 8))(v39, v43);
        (*(v102 + 8))(v23, v12);
        swift_unknownObjectRelease();
        v9 = v104;
        v12 = v105;
        v34 = v106;
        v21 = v107;
        v61 = v109;
        v65 = v108 & 0x81 | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v110) = 5;
        sub_242EC3BEC(v27, v28, v29);
        v55 = v97;
        v56 = sub_242F05D10();
        LOBYTE(v104) = 0;
        sub_242D7D388(v56, v57, v58);
        v59 = v88;
        v60 = sub_242F05E00();
        v100 = v110;
        v71 = v111;
        v91 = v112;
        v72 = v113;
        v119 = 1;
        sub_242EC3E38(v60, v73, v74);
        sub_242F05E00();
        v90 = v72;
        v99 = v71;
        v98 = v12;
        v76 = v55;
        v77 = v104;
        v119 = 2;
        v9 = sub_242F05D30();
        v12 = v80;
        v93 = v77;
        v119 = 3;
        v81 = v76;
        v82 = sub_242F05D30();
        v86 = 0;
        v34 = v82;
        v21 = v83;
        (*(v96 + 8))(v81, v59);
        (*(v102 + 8))(v23, v98);
        swift_unknownObjectRelease();
        v65 = 0xA000000000000000;
      }

      v62 = v100;
      v22 = v99;
      v64 = v90;
      v63 = v91;
      v23 = v93;
    }
  }

  else if (v27)
  {
    if (v27 == 1)
    {
      LOBYTE(v110) = 1;
      sub_242EC3D90(v27, v28, v29);
      v30 = sub_242F05D10();
      sub_242C8BA70(v30, v31, v32);
      v33 = v87;
      v34 = v8;
      sub_242F05E00();
      v86 = 0;
      (*(v89 + 8))(v8, v33);
      (*(v102 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v62 = v110;
      v22 = v111;
      v63 = v112;
      v64 = v113;
      v65 = 0x2000000000000000;
      v23 = v114;
      v66 = v24;
    }

    else
    {
      LOBYTE(v110) = 2;
      sub_242EC3D3C(v27, v28, v29);
      v49 = sub_242F05D10();
      LOBYTE(v104) = 0;
      sub_242D7D388(v49, v50, v51);
      v52 = v92;
      v53 = sub_242F05E00();
      v54 = v102;
      v100 = v110;
      v34 = v23;
      v22 = v111;
      v91 = v112;
      v67 = v113;
      v119 = 1;
      sub_242EC3E38(v53, v68, v69);
      sub_242F05E00();
      v70 = v52;
      v90 = v67;
      v98 = v12;
      v23 = v104;
      v119 = 2;
      v75 = sub_242F05D30();
      v86 = 0;
      v9 = v75;
      v12 = v78;
      (*(v93 + 1))(v34, v70);
      v79 = *(v54 + 8);
      v21 = v54 + 8;
      v79(v15, v98);
      swift_unknownObjectRelease();
      v65 = 0x4000000000000000;
      v66 = v24;
      v62 = v100;
      v64 = v90;
      v63 = v91;
    }
  }

  else
  {
    LOBYTE(v110) = 0;
    sub_242EC3DE4(v27, v28, v29);
    v44 = v85;
    v45 = sub_242F05D10();
    sub_242C7C540(v45, v46, v47);
    v34 = v44;
    sub_242F05E00();
    (*(v86 + 8))(v44, v9);
    (*(v102 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v86 = 0;
    v65 = 0;
    *&v62 = v110;
    v66 = v24;
  }

  *v66 = v62;
  *(v66 + 16) = v22;
  *(v66 + 24) = v63;
  *(v66 + 32) = v64;
  *(v66 + 40) = v23;
  *(v66 + 48) = v9;
  *(v66 + 56) = v12;
  *(v66 + 64) = v34;
  *(v66 + 72) = v21;
  *(v66 + 80) = v65;
  *(v66 + 88) = v61;
  return __swift_destroy_boxed_opaque_existential_2Tm(v103);
}

uint64_t sub_242EC2168()
{
  sub_242F06390();
  Wallpaper.WallpaperType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EC21AC(uint64_t a1)
{
  sub_242F06390();
  Wallpaper.WallpaperType.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t sub_242EC21EC(uint64_t a1)
{
  result = sub_242F04740();
  *&xmmword_27ECFC198 = result;
  qword_27ECFC1E8 = 0;
  return result;
}

uint64_t static Wallpaper.WallpaperTypeDefault.default.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27ECEF7F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27ECFC1C8;
  v9[2] = xmmword_27ECFC1B8;
  v9[3] = unk_27ECFC1C8;
  v2 = xmmword_27ECFC1D8;
  v3 = *&qword_27ECFC1E8;
  v9[4] = xmmword_27ECFC1D8;
  v9[5] = *&qword_27ECFC1E8;
  v4 = xmmword_27ECFC198;
  v5 = unk_27ECFC1A8;
  v9[0] = xmmword_27ECFC198;
  v9[1] = unk_27ECFC1A8;
  a1[2] = xmmword_27ECFC1B8;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_242D7E794(v9, &v8);
}

uint64_t sub_242EC22A8@<X0>(__int128 *a1@<X8>)
{
  if (qword_27ECEF7F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27ECFC1C8;
  v9[2] = xmmword_27ECFC1B8;
  v9[3] = unk_27ECFC1C8;
  v2 = xmmword_27ECFC1D8;
  v3 = *&qword_27ECFC1E8;
  v9[4] = xmmword_27ECFC1D8;
  v9[5] = *&qword_27ECFC1E8;
  v4 = xmmword_27ECFC198;
  v5 = unk_27ECFC1A8;
  v9[0] = xmmword_27ECFC198;
  v9[1] = unk_27ECFC1A8;
  a1[2] = xmmword_27ECFC1B8;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_242D7E794(v9, &v8);
}

double Wallpaper.id.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t Wallpaper.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Wallpaper.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Wallpaper.type.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v10 = v1[4];
  v11 = v2;
  v4 = v1[7];
  v12 = v1[6];
  v3 = v12;
  v13 = v4;
  v6 = v1[3];
  v9[0] = v1[2];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242D7E794(v9, &v8);
}

__n128 Wallpaper.type.setter(uint64_t a1)
{
  v3 = v1[5];
  v10[2] = v1[4];
  v10[3] = v3;
  v4 = v1[7];
  v10[4] = v1[6];
  v10[5] = v4;
  v5 = v1[3];
  v10[0] = v1[2];
  v10[1] = v5;
  sub_242EC31D8(v10);
  v6 = *(a1 + 48);
  v1[4] = *(a1 + 32);
  v1[5] = v6;
  v7 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v9;
  return result;
}

void Wallpaper.traits.getter(_BYTE *a1@<X8>)
{
  v2 = v1[129];
  v3 = v1[130];
  v4 = v1[131];
  *a1 = v1[128];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

_BYTE *Wallpaper.traits.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v1[128] = *result;
  v1[129] = v2;
  v1[130] = v3;
  v1[131] = v4;
  return result;
}

double Wallpaper.associatedPaletteID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  a1[1] = v2;

  return result;
}

void Wallpaper.associatedPaletteID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
}

void Wallpaper.init(id:displayName:type:traits:associatedPaletteID:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a1[1];
  v9 = *a5;
  v10 = a5[1];
  v11 = a5[2];
  v12 = a5[3];
  v13 = *a6;
  v14 = a6[1];
  *a7 = *a1;
  *(a7 + 8) = v8;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  v15 = a4[3];
  *(a7 + 64) = a4[2];
  *(a7 + 80) = v15;
  v16 = a4[5];
  *(a7 + 96) = a4[4];
  *(a7 + 112) = v16;
  v17 = a4[1];
  *(a7 + 32) = *a4;
  *(a7 + 48) = v17;
  *(a7 + 128) = v9;
  *(a7 + 129) = v10;
  *(a7 + 130) = v11;
  *(a7 + 131) = v12;

  *(a7 + 136) = v13;
  *(a7 + 144) = v14;
}

uint64_t sub_242EC25F8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701869940;
  v4 = 0x737469617274;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
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

uint64_t sub_242EC2688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EC55BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EC26B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC40C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EC26EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC40C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Wallpaper.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC2E0, &qword_242F49350);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v37 = v1[3];
  v38 = v7;
  v8 = *(v1 + 5);
  v52 = *(v1 + 4);
  v53 = v8;
  v9 = *(v1 + 7);
  v54 = *(v1 + 6);
  v55 = v9;
  v10 = *(v1 + 3);
  v50 = *(v1 + 2);
  v51 = v10;
  LODWORD(v7) = *(v1 + 128);
  v35 = *(v1 + 129);
  v36 = v7;
  LODWORD(v7) = *(v1 + 130);
  v33 = *(v1 + 131);
  v34 = v7;
  v11 = v1[18];
  v31 = v1[17];
  v32 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = &v30 - v14;
  v16 = __swift_project_boxed_opaque_existential_2Tm(v13, v12);
  sub_242EC40C4(v16, v17, v18);

  v19 = v3;
  sub_242F064C0();
  *&v44 = v5;
  *(&v44 + 1) = v6;
  LOBYTE(v42[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A00, &qword_242F0C348);
  sub_242C9BB60(&qword_27ECF0A68, &qword_27ECF0A00, &qword_242F0C348, &protocol conformance descriptor for <> TaggedValue<A, B>);
  v20 = v56;
  sub_242F05F20();
  if (!v20)
  {
    v21 = v35;
    v22 = v36;

    LOBYTE(v44) = 1;
    sub_242F05EC0();
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v44 = v50;
    v45 = v51;
    v43 = 2;
    v23 = sub_242D7E794(&v50, v42);
    sub_242EC4118(v23, v24, v25);
    sub_242F05F20();
    v42[2] = v46;
    v42[3] = v47;
    v42[4] = v48;
    v42[5] = v49;
    v42[0] = v44;
    v42[1] = v45;
    v26 = sub_242EC31D8(v42);
    LOBYTE(v39) = v22;
    BYTE1(v39) = v21;
    BYTE2(v39) = v34;
    BYTE3(v39) = v33;
    v41 = 3;
    sub_242EC416C(v26, v27, v28);
    sub_242F05F20();
    v39 = v31;
    v40 = v32;
    v41 = 4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38, &qword_242F095B0);
    sub_242C9BB60(&qword_27ECEFF40, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242F05EB0();
  }

  return (*(v4 + 8))(v15, v19);
}

double Wallpaper.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  sub_242F04DD0();
  sub_242F04DD0();
  Wallpaper.WallpaperType.hash(into:)(a1);
  sub_242F063B0();
  sub_242F063B0();
  sub_242F063B0();
  sub_242F063B0();
  if (v3)
  {
    sub_242F063B0();

    sub_242F04DD0();
  }

  else
  {
    sub_242F063B0();
  }

  return result;
}

uint64_t Wallpaper.hashValue.getter()
{
  sub_242F06390();
  Wallpaper.hash(into:)(v1);
  return sub_242F063E0();
}

void Wallpaper.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC300, &qword_242F49358);
  v5 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v7 = &v30 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EC40C4(v8, v9, v10);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v39 = a2;
    v40 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A00, &qword_242F0C348);
    LOBYTE(v41) = 0;
    sub_242C9BB60(&qword_27ECF0A08, &qword_27ECF0A00, &qword_242F0C348, &protocol conformance descriptor for <> TaggedValue<A, B>);
    v11 = v83;
    sub_242F05E00();
    v12 = v51;
    v38 = v52;
    LOBYTE(v51) = 1;
    v13 = sub_242F05DA0();
    v37 = v14;
    v35 = v13;
    v36 = v12;
    v70 = 2;
    sub_242EC41C0(v13, v14, v15);
    v16 = sub_242F05E00();
    v79 = v73;
    v80 = v74;
    v81 = v75;
    v82 = v76;
    v77 = v71;
    v78 = v72;
    LOBYTE(v41) = 3;
    sub_242EC4214(v16, v17, v18);
    sub_242F05E00();
    v33 = BYTE2(v51);
    v34 = BYTE1(v51);
    v31 = v51;
    v32 = BYTE3(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38, &qword_242F095B0);
    v67 = 4;
    sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242F05D90();
    (*(v40 + 8))(v7, v11);
    v19 = v68;
    v20 = v69;
    v83 = v68;

    v21 = v35;
    v23 = v37;
    v22 = v38;
    *&v41 = v36;
    *(&v41 + 1) = v38;
    *&v42 = v35;
    *(&v42 + 1) = v37;
    v45 = v79;
    v46 = v80;
    v47 = v81;
    v48 = v82;
    v43 = v77;
    v44 = v78;
    LOBYTE(v49) = v31;
    BYTE1(v49) = v34;
    BYTE2(v49) = v33;
    BYTE3(v49) = v32;
    *(&v49 + 1) = v19;
    v50 = v20;
    v24 = v39;
    *(v39 + 144) = v20;
    v25 = v49;
    v26 = v42;
    *v24 = v41;
    v24[1] = v26;
    v27 = v46;
    v24[4] = v45;
    v24[5] = v27;
    v28 = v44;
    v24[2] = v43;
    v24[3] = v28;
    v29 = v47;
    v24[7] = v48;
    v24[8] = v25;
    v24[6] = v29;
    sub_242D7E738(&v41, &v51);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v51 = v36;
    v52 = v22;
    v53 = v21;
    v54 = v23;
    v57 = v79;
    v58 = v80;
    v59 = v81;
    v60 = v82;
    v55 = v77;
    v56 = v78;
    v61 = v31;
    v62 = v34;
    v63 = v33;
    v64 = v32;
    v65 = v83;
    v66 = v20;
    sub_242D7E7F0(&v51);
  }
}

uint64_t sub_242EC3138()
{
  sub_242F06390();
  Wallpaper.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EC317C(uint64_t a1)
{
  sub_242F06390();
  Wallpaper.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI9WallpaperV0E4TypeO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v77 = a1[2];
  v78 = v3;
  v4 = a1[5];
  v5 = a1[3];
  v79 = a1[4];
  v80 = v4;
  v6 = a1[1];
  v75 = *a1;
  v76 = v6;
  v7 = a2[3];
  v8 = a2[1];
  v83 = a2[2];
  v84 = v7;
  v9 = a2[3];
  v10 = a2[5];
  v85 = a2[4];
  v86 = v10;
  v11 = a2[1];
  v81 = *a2;
  v82 = v11;
  v87[0] = v75;
  v87[1] = v2;
  v12 = a1[5];
  v87[4] = v79;
  v87[5] = v12;
  v87[2] = v77;
  v87[3] = v5;
  v87[8] = v83;
  v87[9] = v9;
  v13 = a2[5];
  v87[10] = v85;
  v87[11] = v13;
  v87[6] = v81;
  v87[7] = v8;
  v14 = v75;
  v15 = v6;
  v16 = v77;
  v17 = v80;
  v18 = v80 >> 61;
  v20 = *(&v3 + 1);
  v19 = v3;
  if ((v80 >> 61) > 2)
  {
    if (v18 == 3)
    {
      if (v86 >> 61 != 3)
      {
        goto LABEL_28;
      }

      sub_242D7E794(&v81, &v71);
      sub_242D7E794(&v75, &v71);
      sub_242D7E794(&v81, &v71);
      sub_242D7E794(&v75, &v71);
      if ((sub_242F04710() & 1) == 0)
      {
        sub_242EC57C0(v87);
        sub_242EC31D8(&v81);
        sub_242EC31D8(&v75);
        goto LABEL_30;
      }

      v28 = sub_242F04710();
      sub_242EC57C0(v87);
      sub_242EC31D8(&v81);
      sub_242EC31D8(&v75);
      if ((v28 & 1) == 0)
      {
LABEL_30:
        v24 = 0;
        return v24 & 1;
      }

LABEL_17:
      v24 = 1;
      return v24 & 1;
    }

    v25 = *(&v79 + 1);
    if (v18 == 4)
    {
      if (v86 >> 61 == 4)
      {
        v49 = *(&v80 + 1);
        v53 = v85;
        v48 = *(&v86 + 1);
        v60 = v84;
        v50 = *(&v83 + 1);
        v51 = *(&v77 + 1);
        v57 = v82;
        v56 = *(&v81 + 1);
        v26 = *(&v78 + 1);
        v54 = v81;
        v55 = v83;
        v68 = v75;
        v69 = v76;
        LOBYTE(v70) = v77;
        v65 = v81;
        v66 = v82;
        LOBYTE(v67) = v83;
        v27 = v79;
        v52 = v86;
        sub_242D7E794(&v81, &v71);
        sub_242D7E794(&v75, &v71);
        v59 = v26;
        sub_242C7F6C4(v19, v26, v27, v25, v17);
        sub_242C7F6C4(v60, *(&v60 + 1), v53, *(&v53 + 1), v52);
        sub_242C7F6C4(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
        sub_242C7F6C4(v54, v56, v57, *(&v57 + 1), v55);
        LOBYTE(v26) = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v68, &v65);
        sub_242C7F724(v65, *(&v65 + 1), v66, *(&v66 + 1), v67);
        sub_242C7F724(v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
        if ((v26 & 1) != 0 && v51 == v50)
        {
          v71 = v19;
          v72 = v59;
          v73 = __PAIR128__(v25, v27);
          v74 = v17;
          v68 = v60;
          v69 = v53;
          LOBYTE(v70) = v52;
          sub_242C7F6C4(v19, v59, v27, v25, v17);
          sub_242C7F6C4(v60, *(&v60 + 1), v53, *(&v53 + 1), v52);
          v58 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v71, &v68);
          sub_242C7F724(v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
          sub_242C7F724(v71, v72, v73, *(&v73 + 1), v74);
          sub_242EC57C0(v87);
          sub_242C7F724(v60, *(&v60 + 1), v53, *(&v53 + 1), v52);
          sub_242C7F724(v19, v59, v27, v25, v17);
          v24 = v58 && v49 == v48;
          return v24 & 1;
        }

        sub_242C7F724(v60, *(&v60 + 1), v53, *(&v53 + 1), v52);
        sub_242C7F724(v19, v59, v27, v25, v17);
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (v86 >> 61 != 5)
    {
LABEL_28:
      sub_242D7E794(&v81, &v71);
      sub_242D7E794(&v75, &v71);
      goto LABEL_29;
    }

    v35 = BYTE8(v77);
    v62 = v79;
    v64 = v78;
    v36 = v84;
    v61 = v85;
    v37 = BYTE8(v83);
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    sub_242D7E794(&v81, &v71);
    sub_242D7E794(&v75, &v71);
    if (_s14CarPlayAssetUI09CAPackageC0V2eeoiySbAC_ACtFZ_0(&v68, &v65))
    {
      v38 = 0x746E656964617267;
      if (v35)
      {
        if (v35 == 1)
        {
          v39 = 0x70616373646E616CLL;
          v40 = 0xE900000000000065;
        }

        else
        {
          v39 = 0x706172676F706F74;
          v40 = 0xEA00000000007968;
        }
      }

      else
      {
        v40 = 0xE800000000000000;
        v39 = 0x746E656964617267;
      }

      if (v37)
      {
        if (v37 == 1)
        {
          v38 = 0x70616373646E616CLL;
          v43 = 0xE900000000000065;
        }

        else
        {
          v38 = 0x706172676F706F74;
          v43 = 0xEA00000000007968;
        }
      }

      else
      {
        v43 = 0xE800000000000000;
      }

      if (v39 == v38 && v40 == v43)
      {
      }

      else
      {
        v46 = sub_242F06110();

        if ((v46 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v20)
      {
        if (!*(&v36 + 1) || __PAIR128__(v20, v64) != v36 && (sub_242F06110() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (*(&v36 + 1))
      {
        goto LABEL_29;
      }

      if (*(&v62 + 1))
      {
        if (!*(&v61 + 1))
        {
          goto LABEL_29;
        }

        if (v62 != v61)
        {
LABEL_74:
          v47 = sub_242F06110();
          sub_242EC57C0(v87);
          if ((v47 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_17;
        }

LABEL_71:
        sub_242EC57C0(v87);
        v24 = 1;
        return v24 & 1;
      }

      sub_242EC57C0(v87);
      if (!*(&v61 + 1))
      {
        goto LABEL_17;
      }

LABEL_66:

      goto LABEL_30;
    }

LABEL_29:
    sub_242EC57C0(v87);
    goto LABEL_30;
  }

  if (!v18)
  {
    if (!(v86 >> 61))
    {
      sub_242D7E794(&v81, &v71);
      sub_242D7E794(&v75, &v71);
      v24 = sub_242F04710();
      sub_242EC57C0(v87);
      return v24 & 1;
    }

    goto LABEL_28;
  }

  if (v18 != 1)
  {
    if (v86 >> 61 != 2)
    {
      goto LABEL_28;
    }

    v29 = BYTE8(v77);
    v63 = v78;
    v30 = v84;
    v31 = BYTE8(v83);
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    sub_242D7E794(&v81, &v71);
    sub_242D7E794(&v75, &v71);
    if (_s14CarPlayAssetUI09CAPackageC0V2eeoiySbAC_ACtFZ_0(&v68, &v65))
    {
      v32 = 0x746E656964617267;
      if (v29)
      {
        if (v29 == 1)
        {
          v33 = 0x70616373646E616CLL;
          v34 = 0xE900000000000065;
        }

        else
        {
          v33 = 0x706172676F706F74;
          v34 = 0xEA00000000007968;
        }
      }

      else
      {
        v34 = 0xE800000000000000;
        v33 = 0x746E656964617267;
      }

      if (v31)
      {
        if (v31 == 1)
        {
          v32 = 0x70616373646E616CLL;
          v42 = 0xE900000000000065;
        }

        else
        {
          v32 = 0x706172676F706F74;
          v42 = 0xEA00000000007968;
        }
      }

      else
      {
        v42 = 0xE800000000000000;
      }

      v44 = v20;
      if (v33 == v32 && v34 == v42)
      {
      }

      else
      {
        v45 = sub_242F06110();

        if ((v45 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v44)
      {
        if (!*(&v30 + 1))
        {
          goto LABEL_29;
        }

        if (__PAIR128__(v44, v63) != v30)
        {
          goto LABEL_74;
        }

        goto LABEL_71;
      }

      sub_242EC57C0(v87);
      if (!*(&v30 + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_66;
    }

    goto LABEL_29;
  }

  if (v86 >> 61 != 1)
  {
    goto LABEL_28;
  }

  v21 = *(&v83 + 1);
  v68 = v75;
  v69 = v76;
  LOBYTE(v70) = v77;
  v65 = v81;
  v66 = v82;
  LOBYTE(v67) = v83;
  v22 = *(&v77 + 1);
  sub_242D7E794(&v81, &v71);
  sub_242D7E794(&v75, &v71);
  sub_242D7E794(&v81, &v71);
  sub_242D7E794(&v75, &v71);
  sub_242D7E794(&v81, &v71);
  sub_242D7E794(&v75, &v71);
  v23 = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v68, &v65);
  sub_242C7F724(v65, *(&v65 + 1), v66, *(&v66 + 1), v67);
  sub_242C7F724(v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
  sub_242EC57C0(v87);
  sub_242EC31D8(&v81);
  sub_242EC31D8(&v75);
  v24 = v23 && v22 == v21;
  return v24 & 1;
}

unint64_t sub_242EC3B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC218;
  if (!qword_27ECFC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC218);
  }

  return result;
}

unint64_t sub_242EC3B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC260;
  if (!qword_27ECFC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC260);
  }

  return result;
}

unint64_t sub_242EC3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC268;
  if (!qword_27ECFC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC268);
  }

  return result;
}

unint64_t sub_242EC3C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC270;
  if (!qword_27ECFC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC270);
  }

  return result;
}

unint64_t sub_242EC3C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC278;
  if (!qword_27ECFC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC278);
  }

  return result;
}

unint64_t sub_242EC3CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC280;
  if (!qword_27ECFC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC280);
  }

  return result;
}

unint64_t sub_242EC3D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC288;
  if (!qword_27ECFC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC288);
  }

  return result;
}

unint64_t sub_242EC3D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC290;
  if (!qword_27ECFC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC290);
  }

  return result;
}

unint64_t sub_242EC3DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC298;
  if (!qword_27ECFC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC298);
  }

  return result;
}

unint64_t sub_242EC3E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC2D8;
  if (!qword_27ECFC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC2D8);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI9WallpaperV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 5);
  v53[2] = *(a1 + 4);
  v53[3] = v8;
  v9 = *(a1 + 7);
  v53[4] = *(a1 + 6);
  v53[5] = v9;
  v10 = *(a1 + 3);
  v53[0] = *(a1 + 2);
  v53[1] = v10;
  v36 = *(a1 + 129);
  v37 = *(a1 + 128);
  v34 = *(a1 + 131);
  v35 = *(a1 + 130);
  v31 = a1[17];
  v33 = a1[18];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = *(a2 + 7);
  v54[4] = *(a2 + 6);
  v54[5] = v15;
  v16 = *(a2 + 5);
  v54[2] = *(a2 + 4);
  v54[3] = v16;
  v17 = *(a2 + 3);
  v54[0] = *(a2 + 2);
  v54[1] = v17;
  v18 = *(a2 + 128);
  v19 = *(a2 + 129);
  v20 = *(a2 + 130);
  v21 = *(a2 + 131);
  v30 = a2[17];
  v32 = a2[18];
  if (v4 == v11 && v5 == v12 || (sub_242F06110()) && (v6 == v13 && v7 == v14 || (sub_242F06110()))
  {
    v22 = *(a1 + 5);
    v47 = *(a1 + 4);
    v48 = v22;
    v23 = *(a1 + 7);
    v49 = *(a1 + 6);
    v50 = v23;
    v24 = *(a1 + 3);
    v45 = *(a1 + 2);
    v46 = v24;
    v25 = *(a2 + 5);
    v41 = *(a2 + 4);
    v42 = v25;
    v26 = *(a2 + 7);
    v43 = *(a2 + 6);
    v44 = v26;
    v27 = *(a2 + 3);
    v39 = *(a2 + 2);
    v40 = v27;
    sub_242D7E794(v53, v38);
    sub_242D7E794(v54, v38);
    v28 = _s14CarPlayAssetUI9WallpaperV0E4TypeO2eeoiySbAE_AEtFZ_0(&v45, &v39);
    v51[2] = v41;
    v51[3] = v42;
    v51[4] = v43;
    v51[5] = v44;
    v51[0] = v39;
    v51[1] = v40;
    sub_242EC31D8(v51);
    v52[2] = v47;
    v52[3] = v48;
    v52[4] = v49;
    v52[5] = v50;
    v52[0] = v45;
    v52[1] = v46;
    sub_242EC31D8(v52);
    if ((v28 & 1) != 0 && v37 == v18 && ((v36 ^ v19) & 1) == 0 && ((v35 ^ v20) & 1) == 0 && ((v34 ^ v21) & 1) == 0)
    {
      if (v33)
      {
        if (v32 && (v31 == v30 && v33 == v32 || (sub_242F06110() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v32)
      {

        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_242EC40C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC2E8;
  if (!qword_27ECFC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC2E8);
  }

  return result;
}

unint64_t sub_242EC4118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC2F0;
  if (!qword_27ECFC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC2F0);
  }

  return result;
}

unint64_t sub_242EC416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC2F8;
  if (!qword_27ECFC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC2F8);
  }

  return result;
}

unint64_t sub_242EC41C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC308;
  if (!qword_27ECFC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC308);
  }

  return result;
}

unint64_t sub_242EC4214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC310;
  if (!qword_27ECFC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC310);
  }

  return result;
}

unint64_t sub_242EC426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC318;
  if (!qword_27ECFC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC318);
  }

  return result;
}

unint64_t sub_242EC42C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC320;
  if (!qword_27ECFC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC320);
  }

  return result;
}

unint64_t sub_242EC4318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC328;
  if (!qword_27ECFC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC328);
  }

  return result;
}

unint64_t sub_242EC4378()
{
  result = qword_27ECFC330;
  if (!qword_27ECFC330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A00, &qword_242F0C348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC330);
  }

  return result;
}

unint64_t sub_242EC43F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC338;
  if (!qword_27ECFC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Wallpaper.Traits(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242EC44CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 80) >> 2) & 0xFFFFFFC0 | (*(a1 + 80) >> 1) & 0x3F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242EC4520(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 96) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = (4 * -a2) & 0x3FFFFFF00 | (2 * (-a2 & 0x3FLL));
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242EC4680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC340;
  if (!qword_27ECFC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC340);
  }

  return result;
}

unint64_t sub_242EC46D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC348;
  if (!qword_27ECFC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC348);
  }

  return result;
}

unint64_t sub_242EC4730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC350;
  if (!qword_27ECFC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC350);
  }

  return result;
}

unint64_t sub_242EC4788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC358;
  if (!qword_27ECFC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC358);
  }

  return result;
}

unint64_t sub_242EC47E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC360;
  if (!qword_27ECFC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC360);
  }

  return result;
}

unint64_t sub_242EC4838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC368;
  if (!qword_27ECFC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC368);
  }

  return result;
}

unint64_t sub_242EC4890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC370;
  if (!qword_27ECFC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC370);
  }

  return result;
}

unint64_t sub_242EC48E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC378;
  if (!qword_27ECFC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC378);
  }

  return result;
}

unint64_t sub_242EC4940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC380;
  if (!qword_27ECFC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC380);
  }

  return result;
}

unint64_t sub_242EC4998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC388;
  if (!qword_27ECFC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC388);
  }

  return result;
}

unint64_t sub_242EC49F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC390;
  if (!qword_27ECFC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC390);
  }

  return result;
}

unint64_t sub_242EC4A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC398;
  if (!qword_27ECFC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC398);
  }

  return result;
}

unint64_t sub_242EC4AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3A0;
  if (!qword_27ECFC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3A0);
  }

  return result;
}

unint64_t sub_242EC4AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3A8;
  if (!qword_27ECFC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3A8);
  }

  return result;
}

unint64_t sub_242EC4B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3B0;
  if (!qword_27ECFC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3B0);
  }

  return result;
}

unint64_t sub_242EC4BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3B8;
  if (!qword_27ECFC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3B8);
  }

  return result;
}

unint64_t sub_242EC4C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3C0;
  if (!qword_27ECFC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3C0);
  }

  return result;
}

unint64_t sub_242EC4C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3C8;
  if (!qword_27ECFC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3C8);
  }

  return result;
}

unint64_t sub_242EC4CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3D0;
  if (!qword_27ECFC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3D0);
  }

  return result;
}

unint64_t sub_242EC4D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3D8;
  if (!qword_27ECFC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3D8);
  }

  return result;
}

unint64_t sub_242EC4D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3E0;
  if (!qword_27ECFC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3E0);
  }

  return result;
}

unint64_t sub_242EC4DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3E8;
  if (!qword_27ECFC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3E8);
  }

  return result;
}

unint64_t sub_242EC4E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3F0;
  if (!qword_27ECFC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3F0);
  }

  return result;
}

unint64_t sub_242EC4E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC3F8;
  if (!qword_27ECFC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC3F8);
  }

  return result;
}

unint64_t sub_242EC4EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC400;
  if (!qword_27ECFC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC400);
  }

  return result;
}

unint64_t sub_242EC4F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC408;
  if (!qword_27ECFC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC408);
  }

  return result;
}

unint64_t sub_242EC4F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC410;
  if (!qword_27ECFC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC410);
  }

  return result;
}

uint64_t sub_242EC4FC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000021 && 0x8000000242F5D3B0 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F5D3E0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5D400 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63616C427369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242EC5130(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242EC5240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67616B6361706163 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4363696D616E7964 && a2 == 0xEC000000726F6C6FLL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4963696D616E7964 && a2 == 0xEC0000006567616DLL || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5D420 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_242EC544C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D746867696CLL && a2 == 0xEE00657461745365 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F4D6B726164 && a2 == 0xED00006574617453)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242EC55BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5D440 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

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

unint64_t sub_242EC576C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC418;
  if (!qword_27ECFC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC418);
  }

  return result;
}

uint64_t sub_242EC57C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC420, &qword_242F4A648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242EC5928()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_242EC59B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EC6300(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EC59E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC612C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EC5A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EC612C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t FuelConsumptionDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC428, &qword_242F4A660);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v20 = v1[2];
  v21 = v9;
  HIDWORD(v19) = v1[3];
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EC612C(v10, v11, v12);
  v13 = sub_242F064C0();
  v29 = v8;
  v28 = 0;
  sub_242C8AC28(v13, v14, v15);
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = BYTE4(v19);
  v17 = v20;
  v27 = v21;
  v26 = 1;
  sub_242F05F20();
  v25 = v17;
  v24 = 2;
  sub_242F05F20();
  v23 = v16;
  v22 = 3;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

double FuelConsumptionDataIdentifiers.hash(into:)(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t FuelConsumptionDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t FuelConsumptionDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC438, &qword_242F4A668);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EC612C(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v29 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v30;
    v27 = 1;
    sub_242F05E00();
    v22 = v15;
    v16 = v28;
    v25 = 2;
    sub_242F05E00();
    v21 = v16;
    LOBYTE(v16) = v26;
    v23 = 3;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v18 = v24;
    v19 = v21;
    *a2 = v22;
    a2[1] = v19;
    a2[2] = v16;
    a2[3] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

unint64_t sub_242EC612C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC430;
  if (!qword_27ECFC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC430);
  }

  return result;
}

unint64_t sub_242EC6184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC440;
  if (!qword_27ECFC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC440);
  }

  return result;
}

unint64_t sub_242EC61FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC448;
  if (!qword_27ECFC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC448);
  }

  return result;
}

unint64_t sub_242EC6254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC450;
  if (!qword_27ECFC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC450);
  }

  return result;
}

unint64_t sub_242EC62AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC458;
  if (!qword_27ECFC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC458);
  }

  return result;
}

uint64_t sub_242EC6300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5AD00 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5AD40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t RequestContentView.init(instrument:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ClusterTransitionCoordinator(0);
  sub_242EC8948(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
  *a2 = sub_242F03E60();
  a2[1] = v4;
  v5 = type metadata accessor for RequestContentView(0);
  v6 = *(v5 + 20);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5918, &qword_242F2F0F8);
  swift_storeEnumTagMultiPayload();
  return sub_242EC8CB0(a1, a2 + *(v5 + 24), type metadata accessor for Instrument);
}

uint64_t sub_242EC657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242EC8EA0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_242EC65E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242EC8DB0(a1, a2, a3);
  sub_242F04010();
  return v4;
}

uint64_t sub_242EC661C@<X0>(void *a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5918, &qword_242F2F0F8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for RequestContentView(0);
  sub_242CA321C(v1 + *(v10 + 20), v9, &qword_27ECF5918, &qword_242F2F0F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242CF6B3C(v9, a1, &qword_27ECF2C70, &unk_242F2D4A0);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void RequestContentView.body.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC460, &qword_242F4A8D0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v43 - v4;
  v5 = type metadata accessor for RequestContentModel(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70, &unk_242F2D4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v43 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC468, &qword_242F4A8D8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v23 = sub_242F04740();
  sub_242EC661C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v24 = &qword_27ECF2C70;
    v25 = &unk_242F2D4A0;
    v26 = v12;
    goto LABEL_10;
  }

  sub_242CF6B3C(v12, v16, &qword_27ECFC780, &qword_242F17930);
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_242F03A80();

    v27 = v50;
    v28 = v46;
    if (*(v50 + 16))
    {
      v29 = sub_242CE5568(v16);
      if (v30)
      {
        sub_242EC8560(*(v27 + 56) + *(v44 + 72) * v29, v7, type metadata accessor for RequestContentModel);

        sub_242EC8CB0(v7, v28, type metadata accessor for RequestContentModel);
        v31 = v45;
        sub_242EC8560(v28, v45, type metadata accessor for RequestContentModel);
        v32 = *(type metadata accessor for RequestContentView(0) + 24);
        v33 = type metadata accessor for RequestContentView.ContentView(0);
        sub_242EC8560(v2 + v32, v31 + *(v33 + 20), type metadata accessor for Instrument);
        KeyPath = swift_getKeyPath();
        v35 = sub_242EC6EE8();
        v37 = v36;
        v38 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC478, &qword_242F4A958) + 36));
        *v38 = KeyPath;
        v38[1] = v35;
        v38[2] = v37;
        if (qword_27ECEF7F8 != -1)
        {
          swift_once();
        }

        v39 = qword_27ED5D350;
        sub_242EC85C8(v28);
        sub_242C6D138(v16, &qword_27ECFC780, &qword_242F17930);
        v40 = v48;
        *(v31 + *(v48 + 36)) = v39;
        sub_242CF6B3C(v31, v22, &qword_27ECFC460, &qword_242F4A8D0);
        (*(v47 + 56))(v22, 0, 1, v40);

        goto LABEL_11;
      }
    }

    v24 = &qword_27ECFC780;
    v25 = &qword_242F17930;
    v26 = v16;
LABEL_10:
    sub_242C6D138(v26, v24, v25);
    (*(v47 + 56))(v22, 1, 1, v48);
LABEL_11:
    sub_242CA321C(v22, v19, &qword_27ECFC468, &qword_242F4A8D8);
    v41 = v49;
    *v49 = v23;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC470, &qword_242F4A8E0);
    sub_242CA321C(v19, v41 + *(v42 + 48), &qword_27ECFC468, &qword_242F4A8D8);

    sub_242C6D138(v22, &qword_27ECFC468, &qword_242F4A8D8);
    sub_242C6D138(v19, &qword_27ECFC468, &qword_242F4A8D8);

    return;
  }

  type metadata accessor for ClusterTransitionCoordinator(0);
  sub_242EC8948(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
  sub_242F03E50();
  __break(1u);
}

double sub_242EC6E38@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_242EC8DB0(a2, a3, a4);
  sub_242F04010();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_242EC6E88(void *a1, uint64_t a2, uint64_t a3)
{
  sub_242EC8DB0(a1, a2, a3);

  return sub_242F04020();
}

uint64_t sub_242EC6EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v50 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v50 - v4;
  v57 = sub_242F03500();
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_242F04000();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5918, &qword_242F2F0F8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70, &unk_242F2D4A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v58 = &v50 - v16;
  v53 = type metadata accessor for RequestContentView(0);
  v54 = v0;
  sub_242CA321C(v0 + *(v53 + 20), v10, &qword_27ECF5918, &qword_242F2F0F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_242CF6B3C(v10, v13, &qword_27ECF2C70, &unk_242F2D4A0);
  }

  else
  {
    sub_242F05710();
    v17 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    (*(v52 + 8))(v7, v55);
  }

  v18 = (*(v15 + 48))(v13, 1, v14);
  v19 = v59;
  if (v18 == 1)
  {
    sub_242C6D138(v13, &qword_27ECF2C70, &unk_242F2D4A0);
    return 0;
  }

  sub_242CF6B3C(v13, v58, &qword_27ECFC780, &qword_242F17930);
  v66[0] = 0;
  v66[1] = 0xE000000000000000;
  sub_242F05A80();

  v64 = 0x3D656E6F7A3FLL;
  v65 = 0xE600000000000000;
  v21 = sub_242F036F0();
  MEMORY[0x245D26660](v21);

  MEMORY[0x245D26660](0x3D656D616E26, 0xE600000000000000);
  v22 = v54 + *(v53 + 24);
  v23 = type metadata accessor for Instrument(0);
  memcpy(v66, (v22 + *(v23 + 20)), 0x238uLL);
  v24 = sub_242C9E788(v66);
  v55 = v22;
  if (v24 <= 3)
  {
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = 0xE900000000000072;
        v26 = 0x6F74616369646E49;
      }

      else
      {
        v25 = 0xEC0000006D616572;
        v26 = 0x7453207475706E49;
      }
    }

    else if (v24)
    {
      v25 = 0xE500000000000000;
      v26 = 0x6567756147;
    }

    else
    {
      v25 = 0xEA00000000006E6FLL;
      v26 = 0x697461676976614ELL;
    }
  }

  else if (v24 <= 5)
  {
    if (v24 == 4)
    {
      v25 = 0xED00007265696669;
      v26 = 0x746E656449205450;
    }

    else
    {
      v25 = 0xE700000000000000;
      v26 = 0x65707954205450;
    }
  }

  else if (v24 == 6)
  {
    v25 = 0xE300000000000000;
    v26 = 7368769;
  }

  else
  {
    if (v24 != 7)
    {
      v25 = 0xE400000000000000;
      v26 = 1970169165;
      goto LABEL_24;
    }

    v25 = 0xEE007265766F706FLL;
    v26 = 0x5020746567646957;
  }

  sub_242C556B4(v66);
LABEL_24:
  v62 = v26;
  v63 = v25;
  v27 = v56;
  v28 = sub_242F034C0();
  sub_242C6CB78(v28, v29, v30);
  v31 = sub_242F058E0();
  v33 = v32;
  v34 = *(v19 + 8);
  result = v34(v27, v57);
  if (v33)
  {

    MEMORY[0x245D26660](v31, v33);

    v36 = v55;
    v37 = v55 + *(v23 + 24);
    v38 = *(v37 + 40);
    if (!v38)
    {
LABEL_28:
      v62 = 0x3A7265766F706F70;
      v63 = 0xE800000000000000;
      v44 = v51;
      sub_242CA321C(v36, v51, &qword_27ECF2170, &qword_242F13A98);
      v45 = v44;
      v46 = v50;
      sub_242CF6B3C(v45, v50, &qword_27ECF2168, &unk_242F17EA0);
      v47 = sub_242F036F0();
      v49 = v48;
      sub_242C6D138(v46, &qword_27ECF2168, &unk_242F17EA0);
      MEMORY[0x245D26660](v47, v49);

      MEMORY[0x245D26660](v64, v65);

      v20 = v62;
      sub_242C6D138(v58, &qword_27ECFC780, &qword_242F17930);
      return v20;
    }

    v39 = *(v37 + 32);
    v62 = 0x49776F6461687326;
    v63 = 0xEA00000000003D44;
    v60 = v39;
    v61 = v38;
    v40 = v56;
    sub_242F034C0();
    v41 = sub_242F058E0();
    v43 = v42;
    result = v34(v40, v57);
    if (v43)
    {
      MEMORY[0x245D26660](v41, v43);

      MEMORY[0x245D26660](v62, v63);

      goto LABEL_28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_242EC76FC(uint64_t a1@<X8>)
{
  v89 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4B0, &qword_242F4AA40);
  MEMORY[0x28223BE20](v84);
  *&v85 = &v75 - v2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4B8, &qword_242F4AA48);
  MEMORY[0x28223BE20](v88);
  *&v86 = &v75 - v3;
  v82 = type metadata accessor for PopoverContainer(0);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v77 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3178, &qword_242F4AA50);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v75 - v6;
  v7 = type metadata accessor for PopoverModel(0);
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4C0, &qword_242F4AA58);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4C8, &qword_242F4AA60);
  MEMORY[0x28223BE20](v87);
  v11 = (&v75 - v10);
  v12 = type metadata accessor for RequestContentModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v75 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  v21 = v1 + *(type metadata accessor for RequestContentView.ContentView(0) + 20);
  v22 = type metadata accessor for Instrument(0);
  memcpy(v119, (v21 + *(v22 + 20)), 0x238uLL);
  v23 = sub_242C9E788(v119);
  if (v23 != 8)
  {
    if (v23 == 7)
    {
      v32 = sub_242C556B4(v119);
      v104[0] = *v32;
      v33 = v32[4];
      v35 = v32[1];
      v34 = v32[2];
      v104[3] = v32[3];
      v104[4] = v33;
      v104[1] = v35;
      v104[2] = v34;
      v36 = v32[8];
      v38 = v32[5];
      v37 = v32[6];
      v104[7] = v32[7];
      v104[8] = v36;
      v104[5] = v38;
      v104[6] = v37;
      v39 = v32[12];
      v41 = v32[9];
      v40 = v32[10];
      v104[11] = v32[11];
      v104[12] = v39;
      v104[9] = v41;
      v104[10] = v40;
      if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v104) == 1)
      {
        sub_242EC8560(v1, v14, type metadata accessor for RequestContentModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v43 = v81;
        if (EnumCaseMultiPayload == 1)
        {
          v44 = v79;
          sub_242EC8CB0(v14, v79, type metadata accessor for PopoverModel);
          v45 = v78;
          (*(v78 + 56))(v44, 0, 1, v7);
        }

        else
        {
          v45 = v78;
          v44 = v79;
          (*(v78 + 56))(v79, 1, 1, v7);
          sub_242EC85C8(v14);
        }

        if ((*(v45 + 48))(v44, 1, v7) == 1)
        {
          sub_242C6D138(v44, &qword_27ECF3178, &qword_242F4AA50);
          v57 = 1;
        }

        else
        {
          v65 = v76;
          sub_242EC8CB0(v44, v76, type metadata accessor for PopoverModel);
          v66 = v65;
          v67 = v77;
          sub_242EC8CB0(v66, v77, type metadata accessor for PopoverModel);
          sub_242EC8CB0(v67, v43, type metadata accessor for PopoverContainer);
          v57 = 0;
        }
      }

      else
      {
        v57 = 1;
        v43 = v81;
      }

      (*(v80 + 56))(v43, v57, 1, v82);
      v54 = &qword_27ECFC4C0;
      v55 = &qword_242F4AA58;
      sub_242CA321C(v43, v85, &qword_27ECFC4C0, &qword_242F4AA58);
      swift_storeEnumTagMultiPayload();
      sub_242EC8894();
      v68 = v86;
      sub_242F041C0();
      sub_242CA321C(v68, v11, &qword_27ECFC4B8, &qword_242F4AA48);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4E0, &qword_242F4AA68);
      sub_242EC8990();
      sub_242EC8C24();
      sub_242F041C0();
      sub_242C6D138(v68, &qword_27ECFC4B8, &qword_242F4AA48);
      v56 = v43;
      goto LABEL_24;
    }

    if (v23 != 2)
    {
      swift_storeEnumTagMultiPayload();
      sub_242EC8894();
      v53 = v86;
      sub_242F041C0();
      v54 = &qword_27ECFC4B8;
      v55 = &qword_242F4AA48;
      sub_242CA321C(v53, v11, &qword_27ECFC4B8, &qword_242F4AA48);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4E0, &qword_242F4AA68);
      sub_242EC8990();
      sub_242EC8C24();
      sub_242F041C0();
      v56 = v53;
LABEL_24:
      sub_242C6D138(v56, v54, v55);
      return;
    }

    v24 = sub_242C556B4(v119);
    memcpy(v104, (v24 + 8), sizeof(v104));
    if (sub_242C9E7A4(v104) == 1)
    {
      sub_242EC8560(v1, v20, type metadata accessor for RequestContentModel);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v25 = *(v24 + 473);
        v26 = *(v20 + 7);
        *(&v90[6] + 7) = *(v20 + 6);
        *(&v90[7] + 7) = v26;
        *(&v90[8] + 7) = *(v20 + 8);
        *(&v90[9] + 7) = *(v20 + 18);
        v27 = *(v20 + 3);
        *(&v90[2] + 7) = *(v20 + 2);
        *(&v90[3] + 7) = v27;
        v28 = *(v20 + 5);
        *(&v90[4] + 7) = *(v20 + 4);
        *(&v90[5] + 7) = v28;
        v29 = *(v20 + 1);
        *(v90 + 7) = *v20;
        *(&v90[1] + 7) = v29;
        v30 = *(v24 + 480);
        v85 = *(v24 + 496);
        v86 = v30;
        v31 = sub_242F043B0();
        *(&v117[6] + 1) = v90[6];
        *(&v117[7] + 1) = v90[7];
        *(&v117[8] + 1) = v90[8];
        v117[9] = *(&v90[8] + 15);
        *(&v117[2] + 1) = v90[2];
        *(&v117[3] + 1) = v90[3];
        *(&v117[4] + 1) = v90[4];
        *(&v117[5] + 1) = v90[5];
        *(v117 + 1) = v90[0];
        LOBYTE(v117[0]) = v25;
        *(&v117[1] + 1) = v90[1];
        LOBYTE(v118[0]) = v31;
        *(&v118[1] + 8) = v85;
        *(v118 + 8) = v86;
        BYTE8(v118[2]) = 0;
        nullsub_2();
        v102 = v118[0];
        v103[0] = v118[1];
        *(v103 + 9) = *(&v118[1] + 9);
        v98 = v117[6];
        v99 = v117[7];
        v100 = v117[8];
        v101 = v117[9];
        v94 = v117[2];
        v95 = v117[3];
        v96 = v117[4];
        v97 = v117[5];
        v92 = v117[0];
        v93 = v117[1];
LABEL_23:
        v118[0] = v102;
        v118[1] = v103[0];
        *(&v118[1] + 9) = *(v103 + 9);
        v117[6] = v98;
        v117[7] = v99;
        v117[9] = v101;
        v117[8] = v100;
        v117[2] = v94;
        v117[3] = v95;
        v117[5] = v97;
        v117[4] = v96;
        v117[1] = v93;
        v117[0] = v92;
        sub_242EC8DA8(v117);
        v90[20] = v118[0];
        v91[0] = v118[1];
        *(v91 + 10) = *(&v118[1] + 10);
        v90[16] = v117[6];
        v90[17] = v117[7];
        v90[18] = v117[8];
        v90[19] = v117[9];
        v90[12] = v117[2];
        v90[13] = v117[3];
        v90[14] = v117[4];
        v90[15] = v117[5];
        v90[10] = v117[0];
        v90[11] = v117[1];
        v54 = &qword_27ECFC4F8;
        v55 = &qword_242F4AA70;
        sub_242CA321C(&v92, &v105, &qword_27ECFC4F8, &qword_242F4AA70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4F8, &qword_242F4AA70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC520, &unk_242F4AA80);
        sub_242EC8A74(&qword_27ECFC4F0, &qword_27ECFC4F8, &qword_242F4AA70, sub_242EC8AF0);
        sub_242EC8A74(&qword_27ECFC518, &qword_27ECFC520, &unk_242F4AA80, sub_242EC8BD0);
        sub_242F041C0();
        v69 = v116[0];
        v11[10] = v115;
        v11[11] = v69;
        *(v11 + 186) = *(v116 + 10);
        v70 = v112;
        v11[6] = v111;
        v11[7] = v70;
        v71 = v114;
        v11[8] = v113;
        v11[9] = v71;
        v72 = v108;
        v11[2] = v107;
        v11[3] = v72;
        v73 = v110;
        v11[4] = v109;
        v11[5] = v73;
        v74 = v106;
        *v11 = v105;
        v11[1] = v74;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4E0, &qword_242F4AA68);
        sub_242EC8990();
        sub_242EC8C24();
        sub_242F041C0();
        v56 = &v92;
        goto LABEL_24;
      }

      sub_242EC85C8(v20);
    }

    sub_242EC8D84(&v92);
    goto LABEL_23;
  }

  sub_242EC8560(v1, v17, type metadata accessor for RequestContentModel);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v47 = *v17;
    v46 = v17[1];
    v49 = v17[2];
    v48 = v17[3];
    v50 = v17[4];
    v51 = v17[5];
    v52 = v17[6];
  }

  else
  {
    sub_242EC85C8(v17);
    v47 = 0;
    v46 = 0;
    v49 = 0;
    v48 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  *&v104[0] = v47;
  *(&v104[0] + 1) = v46;
  *&v104[1] = v49;
  *(&v104[1] + 1) = v48;
  *&v104[2] = v50;
  *(&v104[2] + 1) = v51;
  *&v104[3] = v52;
  v82 = v46;
  v83 = v47;
  v58 = v46;
  v84 = v49;
  *&v85 = v48;
  *&v86 = v50;
  sub_242EC8D18(v104);
  v115 = v104[10];
  v116[0] = v104[11];
  *(v116 + 10) = *(&v104[11] + 10);
  v111 = v104[6];
  v112 = v104[7];
  v114 = v104[9];
  v113 = v104[8];
  v107 = v104[2];
  v108 = v104[3];
  v110 = v104[5];
  v109 = v104[4];
  v106 = v104[1];
  v105 = v104[0];
  sub_242E83AAC(v47, v58, v49, v48, v50, v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4F8, &qword_242F4AA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC520, &unk_242F4AA80);
  sub_242EC8A74(&qword_27ECFC4F0, &qword_27ECFC4F8, &qword_242F4AA70, sub_242EC8AF0);
  sub_242EC8A74(&qword_27ECFC518, &qword_27ECFC520, &unk_242F4AA80, sub_242EC8BD0);
  sub_242F041C0();
  v59 = v118[1];
  v11[10] = v118[0];
  v11[11] = v59;
  *(v11 + 186) = *(&v118[1] + 10);
  v60 = v117[7];
  v11[6] = v117[6];
  v11[7] = v60;
  v61 = v117[9];
  v11[8] = v117[8];
  v11[9] = v61;
  v62 = v117[3];
  v11[2] = v117[2];
  v11[3] = v62;
  v63 = v117[5];
  v11[4] = v117[4];
  v11[5] = v63;
  v64 = v117[1];
  *v11 = v117[0];
  v11[1] = v64;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC4E0, &qword_242F4AA68);
  sub_242EC8990();
  sub_242EC8C24();
  sub_242F041C0();
  sub_242EC8D24(v83, v82, v84, v85, v86, v51, v52);
}

void sub_242EC8478(uint64_t a1)
{
  sub_242F04B50();
  sub_242F03CA0();
  sub_242F03CB0();
  sub_242F03CC0();

  sub_242F03CB0();
  v1 = sub_242F03C90();

  qword_27ED5D350 = v1;
}

uint64_t sub_242EC8514()
{
  result = sub_242F04AC0();
  qword_27ED5D358 = result;
  return result;
}

uint64_t sub_242EC8560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242EC85C8(uint64_t a1)
{
  v2 = type metadata accessor for RequestContentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_242EC8668(uint64_t a1)
{
  sub_242E19000(319);
  if (v1 <= 0x3F)
  {
    sub_242EC8704(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Instrument(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242EC8704(uint64_t a1)
{
  if (!qword_27ECF5A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2C70, &unk_242F2D4A0);
    v1 = sub_242F03BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF5A20);
    }
  }
}

unint64_t sub_242EC8768()
{
  result = qword_27ECFC490;
  if (!qword_27ECFC490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC498, &qword_242F4A9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC490);
  }

  return result;
}

uint64_t sub_242EC87F4(uint64_t a1)
{
  result = type metadata accessor for RequestContentModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Instrument(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_242EC8894()
{
  result = qword_27ECFC4D0;
  if (!qword_27ECFC4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC4C0, &qword_242F4AA58);
    sub_242EC8948(&qword_27ECFC4D8, type metadata accessor for PopoverContainer, &unk_242F39BB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC4D0);
  }

  return result;
}

uint64_t sub_242EC8948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242EC8990()
{
  result = qword_27ECFC4E8;
  if (!qword_27ECFC4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC4E0, &qword_242F4AA68);
    sub_242EC8A74(&qword_27ECFC4F0, &qword_27ECFC4F8, &qword_242F4AA70, sub_242EC8AF0);
    sub_242EC8A74(&qword_27ECFC518, &qword_27ECFC520, &unk_242F4AA80, sub_242EC8BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC4E8);
  }

  return result;
}

uint64_t sub_242EC8A74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242EC8AF0()
{
  result = qword_27ECFC500;
  if (!qword_27ECFC500)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC508, &qword_242F4AA78);
    sub_242EC8B7C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC500);
  }

  return result;
}

unint64_t sub_242EC8B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC510;
  if (!qword_27ECFC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC510);
  }

  return result;
}

unint64_t sub_242EC8BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC528;
  if (!qword_27ECFC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC528);
  }

  return result;
}

unint64_t sub_242EC8C24()
{
  result = qword_27ECFC530;
  if (!qword_27ECFC530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC4B8, &qword_242F4AA48);
    sub_242EC8894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC530);
  }

  return result;
}

uint64_t sub_242EC8CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_242EC8D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_242C655DC(a6, a7);
  }
}

double sub_242EC8D84(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_242EC8DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC538;
  if (!qword_27ECFC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC538);
  }

  return result;
}

unint64_t sub_242EC8E14()
{
  result = qword_27ECFC540;
  if (!qword_27ECFC540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC548, &qword_242F4AAB0);
    sub_242EC8990();
    sub_242EC8C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC540);
  }

  return result;
}

unint64_t sub_242EC8EA0()
{
  result = qword_27ECFC550;
  if (!qword_27ECFC550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFB260, &qword_242F4AAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC550);
  }

  return result;
}

uint64_t sub_242EC8F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242F06550();
  if (v5)
  {
    v6 = sub_242F06540();
  }

  else
  {
    v6 = sub_242F05F60();
  }

  v7 = v6;
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

uint64_t sub_242EC9000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D0B600(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EC903C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D0B600(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_242EC9078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC558;
  if (!qword_27ECFC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC558);
  }

  return result;
}

uint64_t sub_242EC90CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_242F06390();
  sub_242F063B0();
  if (v2 != 1)
  {
    MEMORY[0x245D279A0](v1);
  }

  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242EC9158(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    sub_242F063B0();
  }

  else
  {
    v2 = *(v1 + 16);
    sub_242F063B0();
    MEMORY[0x245D279A0](v2);
  }

  return sub_242F04DD0();
}

uint64_t sub_242EC91DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_242F06390();
  sub_242F063B0();
  if (v3 != 1)
  {
    MEMORY[0x245D279A0](v2);
  }

  sub_242F04DD0();
  return sub_242F063E0();
}

unint64_t sub_242EC9268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC560;
  if (!qword_27ECFC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC560);
  }

  return result;
}

unint64_t sub_242EC92C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFC568;
  if (!qword_27ECFC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC568);
  }

  return result;
}

void sub_242EC9318(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_242EC937C();
}

void sub_242EC937C()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers;
  v2 = [*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers) keyEnumerator];
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme;
  swift_beginAccess();
  while (1)
  {
    if ([v2 nextObject])
    {
      sub_242F058F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (!*(&v12 + 1))
    {

      sub_242C6D138(v13, &qword_27ECFC580, &qword_242F36120);
      return;
    }

    sub_242C8760C(0, &qword_27ECFC588, 0x277CCACA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v4 = [*(v0 + v1) objectForKey_];
    if (v4)
    {
      v5 = v4;
      [v4 setRenderScheme_];
      v6 = *(v0 + v3);
      v7 = objc_allocWithZone(MEMORY[0x277D66330]);
      v8 = v5;
      v9 = [v7 initWithRenderScheme:v6 colorScheme:2];
      [v8 sbh:v9 setCustomDisplayConfiguration:?];
    }
  }
}

id sub_242EC954C()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_242EC95A0(void *a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v13 = a1;

  v5 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers;
  v6 = [*(v1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers) keyEnumerator];
  while (1)
  {
    if ([v6 nextObject])
    {
      sub_242F058F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17[0] = v15;
    v17[1] = v16;
    if (!*(&v16 + 1))
    {

      sub_242C6D138(v17, &qword_27ECFC580, &qword_242F36120);
      return;
    }

    sub_242C8760C(0, &qword_27ECFC588, 0x277CCACA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v7 = [*(v1 + v5) objectForKey_];
    if (v7)
    {
      v8 = v7;
      [v7 setRenderScheme_];
      v9 = *(v1 + v3);
      v10 = objc_allocWithZone(MEMORY[0x277D66330]);
      v11 = v8;
      v12 = [v10 initWithRenderScheme:v9 colorScheme:2];
      [v11 sbh:v12 setCustomDisplayConfiguration:?];
    }
  }
}

void (*sub_242EC9798(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  swift_beginAccess();
  return sub_242EC9820;
}

void sub_242EC9820(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[5];
    v5 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers;
    v6 = [*(v4 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers) keyEnumerator];
    while (1)
    {
      if ([v6 nextObject])
      {
        sub_242F058F0();
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      *v3 = v16;
      *(v3 + 1) = v17;
      if (!v3[3])
      {

        sub_242C6D138(v3, &qword_27ECFC580, &qword_242F36120);
        goto LABEL_13;
      }

      sub_242C8760C(0, &qword_27ECFC588, 0x277CCACA8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v7 = v3[4];
      v8 = [*(v4 + v5) objectForKey_];
      if (v8)
      {
        v10 = v3[5];
        v9 = v3[6];
        v11 = v8;
        [v8 setRenderScheme_];
        v12 = *(v10 + v9);
        v13 = objc_allocWithZone(MEMORY[0x277D66330]);
        v14 = v11;
        v15 = [v13 initWithRenderScheme:v12 colorScheme:2];
        [v14 sbh:v15 setCustomDisplayConfiguration:?];
      }
    }
  }

LABEL_13:

  free(v3);
}

uint64_t sub_242EC9A04()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_isForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_242EC9A48(char a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_isForeground;
  swift_beginAccess();
  v13 = v3;
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_242F059B0())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D270D0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 respondsToSelector_])
      {
        if (*(v1 + v13))
        {
          v11 = 0;
        }

        else
        {
          v11 = 2;
        }

        [v9 setPresentationMode_];
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_16:

  return result;
}

uint64_t (*sub_242EC9BB0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_isForeground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_242EC9C38;
}

void sub_242EC9C38(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllers;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_242F059B0())
    {

      if (!i)
      {
        break;
      }

      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x245D270D0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v9 respondsToSelector_])
        {
          if (*(v3[3] + v3[4]))
          {
            v12 = 0;
          }

          else
          {
            v12 = 2;
          }

          [v10 setPresentationMode_];
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_17:
  }

  free(v3);
}

id sub_242EC9D9C()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView;
  v2 = *&v0[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView];
  }

  else
  {
    v4 = sub_242EC9E00(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_242EC9E00(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setDistribution_];
  [v2 setLayoutMarginsRelativeArrangement_];
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result addSubview_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_242EC9EE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetScreenLayouts;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_242EC9F98@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout);
  swift_beginAccess();
  v11[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v11[3] = v3[3];
  v11[4] = v6;
  v11[2] = v5;
  v11[1] = v4;
  v7 = v3[3];
  a2[2] = v3[2];
  a2[3] = v7;
  a2[4] = v3[4];
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  return sub_242C90A34(v11, v10);
}

uint64_t sub_242ECA030(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v17 = a1[4];
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout);
  swift_beginAccess();
  v18[0] = *v4;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v18[3] = v4[3];
  v18[4] = v7;
  v18[1] = v5;
  v18[2] = v6;
  v8 = v15;
  v9 = v17;
  v10 = v14;
  v4[3] = v16;
  v4[4] = v9;
  v4[1] = v10;
  v4[2] = v8;
  *v4 = v13;
  sub_242C90A34(&v13, v12);
  return sub_242C90A04(v18);
}

uint64_t sub_242ECA0E4@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_242C90A34(v10, v9);
}

uint64_t sub_242ECA168(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout);
  swift_beginAccess();
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v9[4] = v3[4];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  v3[4] = a1[4];
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  return sub_242C90A04(v9);
}

uint64_t sub_242ECA298(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_242ECA304(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_242ECA3A4;
}

void sub_242ECA3A4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_242ECA42C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_242ECA49C(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

void sub_242ECA4E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  swift_beginAccess();
  v56 = v2;

  v4 = sub_242C80840(v3);

  if (v4 >> 62)
  {
    v5 = sub_242F059B0();
    if (v5)
    {
LABEL_3:
      v58[0] = MEMORY[0x277D84F90];
      sub_242E3BF90(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        goto LABEL_50;
      }

      v6 = 0;
      v7 = v58[0];
      v8 = v4;
      v53 = v4 & 0xC000000000000001;
      v54 = v4;
      do
      {
        if (v53)
        {
          v9 = MEMORY[0x245D270D0](v6, v8);
        }

        else
        {
          v9 = *(v8 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = [*&v9[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] uniqueIdentifier];
        v12 = sub_242F04F30();
        v14 = v13;

        v58[0] = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_242E3BF90((v15 > 1), v16 + 1, 1);
          v7 = v58[0];
        }

        ++v6;
        *(v7 + 16) = v16 + 1;
        v17 = (v7 + 24 * v16);
        v17[4] = v12;
        v17[5] = v14;
        v17[6] = v10;
        v8 = v54;
      }

      while (v5 != v6);

      if (*(v7 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC770, &qword_242F4AD70);
    v18 = sub_242F05CB0();
    goto LABEL_16;
  }

LABEL_15:
  v18 = MEMORY[0x277D84F98];
LABEL_16:
  v58[0] = v18;

  sub_242ECFE70(v19, 1, v58);

  *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackById) = v58[0];

  v55 = *(*(v1 + v56) + 16);
  if (!v55)
  {
    return;
  }

  v20 = 0;
  v21 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widetStackRowIndexById;
  while (1)
  {
    v22 = *(v1 + v56);
    if (v20 >= *(v22 + 16))
    {
      goto LABEL_48;
    }

    v23 = *(v22 + 8 * v20 + 32);
    if (v23 >> 62)
    {
      break;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (++v20 == v55)
    {
      return;
    }
  }

  v52 = sub_242F059B0();
  if (v52 < 0)
  {
    goto LABEL_49;
  }

  v24 = v52;
  if (!v52)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = 0;
  while (1)
  {
    swift_beginAccess();
    v28 = *(v1 + v56);
    if (v20 >= *(v28 + 16))
    {
      break;
    }

    v29 = *(v28 + 8 * v20 + 32);
    if ((v29 & 0xC000000000000001) != 0)
    {

      v31 = MEMORY[0x245D270D0](v25, v29);
    }

    else
    {
      if (v25 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v30 = *(v29 + 8 * v25 + 32);

      v31 = v30;
    }

    v32 = v31;
    swift_endAccess();

    v33 = *&v32[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon];

    v34 = [v33 uniqueIdentifier];
    v35 = sub_242F04F30();
    v37 = v36;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v1 + v21);
    v57 = v39;
    *(v1 + v21) = 0x8000000000000000;
    v40 = sub_242CE519C(v35, v37);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_45;
    }

    v46 = v41;
    if (v39[3] < v45)
    {
      sub_242D09144(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_242CE519C(v35, v37);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_51;
      }

LABEL_34:
      if (v46)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v51 = v40;
    sub_242D03DA0();
    v40 = v51;
    if (v46)
    {
LABEL_23:
      v26 = v40;

      v27 = v57;
      *(v57[7] + 8 * v26) = v20;
      goto LABEL_24;
    }

LABEL_35:
    v27 = v39;
    v39[(v40 >> 6) + 8] |= 1 << v40;
    v48 = (v39[6] + 16 * v40);
    *v48 = v35;
    v48[1] = v37;
    *(v39[7] + 8 * v40) = v20;
    v49 = v39[2];
    v44 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v44)
    {
      goto LABEL_47;
    }

    v39[2] = v50;
LABEL_24:
    ++v25;
    *(v1 + v21) = v27;
    swift_endAccess();
    if (v24 == v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_242F06320();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

char *WidgetMultiStackViewController.init(widgetScreenLayouts:widgetHostManager:widgetSettings:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_isForeground] = 0;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView] = 0;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllers] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers;
  *&v3[v8] = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  v9 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllersById;
  *&v3[v9] = sub_242CE7F18(v7);
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackById;
  *&v3[v10] = sub_242CE801C(v7);
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widetStackRowIndexById;
  *&v3[v11] = sub_242CE8140(v7);
  v12 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC5E8, &qword_242F4AC98);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_242F09510;
  *(v13 + 32) = v7;
  *&v3[v12] = v13;
  if (*(a1 + 16))
  {
    v15 = *(a1 + 80);
    v41 = *(a1 + 64);
    v14 = v41;
    v42 = v15;
    v43 = *(a1 + 96);
    v16 = v43;
    v17 = *(a1 + 48);
    v40[0] = *(a1 + 32);
    v18 = v40[0];
    v40[1] = v17;
    *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetScreenLayouts] = a1;
    v19 = &v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout];
    v19[2] = v14;
    v19[3] = v15;
    v19[4] = v16;
    *v19 = v18;
    v19[1] = v17;
    *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetHostManager] = a2;
    *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetSettings] = a3;
    v20 = objc_allocWithZone(MEMORY[0x277CFA430]);
    sub_242C90A34(v40, v39);

    v21 = a3;
    v22 = [v20 initWithRenderingMode:0 backgroundViewPolicy:1];
    *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme] = v22;
    v23 = *(a2 + 24);
    v24 = type metadata accessor for WidgetExtensionProviderObserver(0);
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id] = 0;
    v26 = &v25[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = v23;
    sub_242F037A0();
    *&v25[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] = v27;
    v38.receiver = v25;
    v38.super_class = v24;
    *&v3[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetExtensionProviderObserver] = objc_msgSendSuper2(&v38, sel_init);
    v37.receiver = v3;
    v37.super_class = type metadata accessor for WidgetMultiStackViewController();
    v28 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
    swift_beginAccess();
    *(a2 + 48) = &protocol witness table for WidgetMultiStackViewController;
    swift_unknownObjectWeakAssign();
    v29 = *&v28[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetExtensionProviderObserver];
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = &v29[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
    v32 = *&v29[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
    v33 = *&v29[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange + 8];
    *v31 = sub_242ED104C;
    v31[1] = v30;
    v34 = v28;
    v35 = v29;
    swift_retain_n();
    sub_242C655DC(v32, v33);
    [*&v35[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] registerObserver_];

    return v34;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

void sub_242ECADEC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    WidgetMultiStackViewController.extensionsDidChange()();
  }
}

Swift::Void __swiftcall WidgetMultiStackViewController.extensionsDidChange()()
{
  v1 = v0;
  v2 = sub_242F04B60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_242F04B80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v10 = sub_242F039D0();
  __swift_project_value_buffer(v10, qword_27ED5D2F8);
  v11 = sub_242F039B0();
  v12 = sub_242F05720();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_242C53000, v11, v12, "Widget provider did update", v13, 2u);
    MEMORY[0x245D287D0](v13, -1, -1);
  }

  sub_242C8760C(0, &qword_27ECFC600, 0x277D85C78);
  v14 = sub_242F05750();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_242ED1054;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_3;
  v16 = _Block_copy(aBlock);
  v17 = v1;

  sub_242F04B70();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_242ED2670(&qword_27ECFC050, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
  sub_242D3DC6C();
  sub_242F05930();
  MEMORY[0x245D26D60](0, v9, v5, v16);
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void sub_242ECB1E0()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for WidgetMultiStackViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v1 = sub_242F039D0();
  __swift_project_value_buffer(v1, qword_27ED5D2F8);
  v2 = v0;
  v3 = sub_242F039B0();
  v4 = sub_242F05720();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    swift_beginAccess();

    v8 = MEMORY[0x245D26920](v7, &type metadata for WidgetMultiStackScreenLayout);
    v10 = v9;

    v11 = sub_242C8FD38(v8, v10, &v15);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_242C53000, v3, v4, "Layout %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v6);
    MEMORY[0x245D287D0](v6, -1, -1);
    MEMORY[0x245D287D0](v5, -1, -1);
  }

  [*(*&v2[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetHostManager] + 16) activate];
  v12 = [v2 view];
  if (v12)
  {
    v13 = v12;
    v14 = sub_242EC9D9C();
    [v13 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

void sub_242ECB454(__int128 *a1, uint64_t a2)
{
  v4 = a1[3];
  v28 = a1[2];
  v29 = v4;
  v30 = a1[4];
  v5 = a1[1];
  v26 = *a1;
  v27 = v5;
  v6 = (v2 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout);
  swift_beginAccess();
  v7 = v6[3];
  v33 = v6[2];
  v34 = v7;
  v8 = v6[4];
  v9 = v6[1];
  v31 = *v6;
  v32 = v9;
  v36[2] = v33;
  v36[3] = v7;
  v36[4] = v8;
  v36[1] = v9;
  v35 = v8;
  v36[0] = v31;
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v30;
  v6[3] = v29;
  v6[4] = v13;
  v6[1] = v11;
  v6[2] = v12;
  *v6 = v10;
  sub_242C90A34(&v31, v41);
  sub_242C90A34(&v26, v41);
  sub_242C90A04(v36);
  v14 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  swift_beginAccess();
  *(v2 + v14) = a2;

  sub_242ECA4E0();
  v15 = v6[1];
  v16 = v6[3];
  v38 = v6[2];
  v39 = v16;
  v17 = v6[3];
  v40 = v6[4];
  v18 = v6[1];
  v37[0] = *v6;
  v37[1] = v18;
  v23 = v38;
  v24 = v17;
  v25 = v6[4];
  v21 = v37[0];
  v22 = v15;
  v20[2] = v33;
  v20[3] = v34;
  v20[4] = v35;
  v20[0] = v31;
  v20[1] = v32;
  LOBYTE(v6) = _s14CarPlayAssetUI28WidgetMultiStackScreenLayoutV2eeoiySbAC_ACtFZ_0(&v21, v20);
  v41[2] = v23;
  v41[3] = v24;
  v41[4] = v25;
  v41[0] = v21;
  v41[1] = v22;
  sub_242C90A34(v37, &v19);
  sub_242C90A04(v41);
  sub_242C90A04(&v31);
  sub_242ECC6C0((v6 & 1) == 0);
}

void sub_242ECB5F0()
{
  if (![v0 isViewLoaded])
  {
    v9 = type metadata accessor for WidgetMultiStackViewController();
    v134.receiver = v0;
    v10 = &v134;
    goto LABEL_113;
  }

  v1 = sub_242EC9D9C();
  v2 = [v1 arrangedSubviews];

  sub_242C8760C(0, &unk_27ECFC620, 0x277D75D18);
  v3 = sub_242F05310();

  if (v3 >> 62)
  {
    v4 = sub_242F059B0();
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v5 = 0;
  v6 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D270D0](v5, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    ++v5;
    [*(v0 + v6) removeArrangedSubview_];
    [v8 removeFromSuperview];
  }

  while (v4 != v5);
LABEL_12:

  if (qword_27ECEF4C8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v11 = sub_242F039D0();
    v12 = __swift_project_value_buffer(v11, qword_27ED5D2F8);
    v13 = v0;
    v0 = v12;
    v14 = sub_242F039B0();
    v15 = sub_242F05720();

    v129 = v13;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v132[0] = v17;
      *v16 = 136446466;
      swift_beginAccess();
      v18 = sub_242C8760C(0, &qword_27ECFC638, 0x277D66350);

      v20 = MEMORY[0x245D26920](v19, v18);
      v22 = v21;

      v23 = sub_242C8FD38(v20, v22, v132);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2082;
      swift_beginAccess();
      v24 = WidgetMultiStackScreenLayout.description.getter();
      v0 = v25;
      v26 = sub_242C8FD38(v24, v25, v132);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_242C53000, v14, v15, "Configuring widget stack views for stackViewControllers: %{public}s, layout %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      v13 = v129;
      MEMORY[0x245D287D0](v17, -1, -1);
      MEMORY[0x245D287D0](v16, -1, -1);
    }

    v27 = MEMORY[0x277D84F90];
    v133 = MEMORY[0x277D84F90];
    v28 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
    swift_beginAccess();
    v126 = v28;
    v122 = (*(v13 + v28))[2];
    if (!v122)
    {
      break;
    }

    v127 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllersById;
    v121 = v13 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout;
    swift_beginAccess();
    v29 = 0;
    while (1)
    {
      v30 = *(v13 + v126);
      if (v29 >= *(v30 + 16))
      {
        break;
      }

      v124 = v29;
      v31 = *(v30 + 8 * v29 + 32);
      v131 = v27;
      if (v31 >> 62)
      {
        v32 = sub_242F059B0();
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_beginAccess();
      if (!v32)
      {
        goto LABEL_40;
      }

      v33 = 0;
      do
      {
        v34 = v33;
        while (1)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x245D270D0](v34, v31);
          }

          else
          {
            if (v34 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v35 = *(v31 + 8 * v34 + 32);
          }

          v36 = v35;
          v33 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v37 = [*&v35[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] uniqueIdentifier];
          sub_242F04F30();

          v0 = *(v129 + v127);
          if (v0[2])
          {

            v38 = sub_242CE8370();
            v40 = v39;

            if (v40)
            {
              break;
            }
          }

LABEL_24:
          ++v34;
          if (v33 == v32)
          {
            v27 = MEMORY[0x277D84F90];
            goto LABEL_40;
          }
        }

        v41 = *(v0[7] + 8 * v38);

        v42 = [v41 view];

        if (!v42)
        {
          goto LABEL_24;
        }

        v0 = &v131;
        MEMORY[0x245D268D0]();
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_242F05330();
        }

        sub_242F05370();
        v27 = MEMORY[0x277D84F90];
      }

      while (v33 != v32);
LABEL_40:

      v43 = objc_allocWithZone(MEMORY[0x277D75A68]);
      v44 = sub_242F052E0();

      v0 = [v43 initWithArrangedSubviews_];

      [v0 setAxis_];
      v45 = *(v121 + 2);
      if (v124 >= *(v45 + 16))
      {
        goto LABEL_60;
      }

      [v0 setSpacing_];
      if (v124)
      {
        v46 = 1;
      }

      else
      {
        v46 = 3;
      }

      [v0 setAlignment_];
      v47 = v0;
      v0 = &v133;
      MEMORY[0x245D268D0]();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_242F05330();
      }

      v29 = v124 + 1;
      sub_242F05370();

      v13 = v129;
      if (v124 + 1 == v122)
      {
        v27 = v133;
        goto LABEL_49;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

LABEL_49:
  if (v27 >> 62)
  {
    v48 = sub_242F059B0();
    if (!v48)
    {
      goto LABEL_63;
    }

LABEL_51:
    if (v48 >= 1)
    {
      v49 = 0;
      v50 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x245D270D0](v49, v27);
        }

        else
        {
          v51 = *(v27 + 8 * v49 + 32);
        }

        v52 = v51;
        ++v49;
        [*(v13 + v50) addArrangedSubview_];
      }

      while (v48 != v49);
      goto LABEL_63;
    }

    goto LABEL_124;
  }

  v48 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v48)
  {
    goto LABEL_51;
  }

LABEL_63:
  v53 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView;
  [*(v13 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView) setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1988, &qword_242F113C8);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_242F4AC80;
  v55 = [*(v13 + v53) topAnchor];
  v56 = [(SEL *)v13 view];
  if (!v56)
  {
    goto LABEL_126;
  }

  v57 = v56;
  v58 = [v56 topAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  *(v54 + 32) = v59;
  v60 = [*(v13 + v53) leadingAnchor];
  v61 = [(SEL *)v13 view];
  if (!v61)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v62 = v61;
  v63 = [v61 leadingAnchor];

  v64 = [v60 constraintEqualToAnchor_];
  *(v54 + 40) = v64;
  v65 = [*(v13 + v53) trailingAnchor];
  v66 = [(SEL *)v13 view];
  if (!v66)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v67 = v66;
  v68 = [v66 trailingAnchor];

  v69 = [v65 constraintEqualToAnchor_];
  *(v54 + 48) = v69;
  v70 = [*(v13 + v53) bottomAnchor];
  v71 = [(SEL *)v13 view];
  if (!v71)
  {
LABEL_129:
    __break(1u);
    return;
  }

  v72 = v71;
  v73 = objc_opt_self();
  v74 = [v72 bottomAnchor];

  v75 = [v70 constraintEqualToAnchor_];
  *(v54 + 56) = v75;
  sub_242C8760C(0, &qword_27ECFC630, 0x277CCAAD0);
  v76 = sub_242F052E0();

  v125 = v73;
  [v73 activateConstraints_];

  v77 = [*(v13 + v53) arrangedSubviews];
  v78 = sub_242F05310();

  v79 = &qword_27ECFC000;
  if (v78 >> 62)
  {
    goto LABEL_122;
  }

  v80 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v128 = v13 + v79[182];
    swift_beginAccess();
    if (v80)
    {
      v81 = 0;
      v82 = 56;
      v79 = v80;
      while (1)
      {
        if ((v78 & 0xC000000000000001) != 0)
        {
          v84 = MEMORY[0x245D270D0](v81, v78);
          v83 = &unk_278D8C000;
          v13 = &selRef_setOverrideUserInterfaceStyle_;
        }

        else
        {
          v83 = &unk_278D8C000;
          v13 = &selRef_setOverrideUserInterfaceStyle_;
          if (v81 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_118;
          }

          v84 = *(v78 + 8 * v81 + 32);
        }

        [v84 setTranslatesAutoresizingMaskIntoConstraints_];
        v85 = *(v128 + 2);
        v86 = *(v85 + 16);
        if (v81 >= v86)
        {
          break;
        }

        if ((*(v129 + v126))[2] == 2)
        {
          if (v86 < 2)
          {
            goto LABEL_121;
          }

          v87 = *(v128 + 1);
          v88 = v87 * *(v85 + 96);
          v89 = v88 - *(v85 + 72);
          if (v81)
          {
            v90 = v88 + v89 * -0.5;
          }

          else
          {
            v90 = v89 * 0.5 + v87 * *(v85 + 56);
          }

          v91 = v90 / v87;
        }

        else
        {
          v91 = *(v85 + v82);
        }

        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_242F112E0;
        v93 = [v84 v13[20]];
        v94 = [v129 v83[422]];
        if (!v94)
        {
          goto LABEL_125;
        }

        v95 = v94;
        ++v81;
        v13 = [v94 v13[20]];

        v96 = [v93 constraintEqualToAnchor:v13 multiplier:v91];
        *(v92 + 32) = v96;
        v97 = sub_242F052E0();

        [v125 activateConstraints_];

        v82 += 40;
        if (v79 == v81)
        {
          goto LABEL_86;
        }
      }

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
      v80 = sub_242F059B0();
      continue;
    }

    break;
  }

LABEL_86:

  v98 = v129;
  v123 = (*(v129 + v126))[2];
  if (v123)
  {
    v99 = 0;
    v79 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllersById;
    do
    {
      v100 = *(v98 + v126);
      if (v99 >= *(v100 + 16))
      {
        goto LABEL_119;
      }

      v101 = *(v100 + 8 * v99 + 32);
      if (v101 >> 62)
      {
        v120 = sub_242F059B0();
        if (v120 < 0)
        {
          goto LABEL_120;
        }

        v13 = v120;
        if (v120)
        {
LABEL_92:
          swift_beginAccess();
          swift_beginAccess();
          v102 = 0;
          while (1)
          {
            v103 = *(v98 + v126);
            if (v99 >= *(v103 + 16))
            {
              break;
            }

            v78 = *(v103 + 8 * v99 + 32);
            if ((v78 & 0xC000000000000001) != 0)
            {

              v104 = MEMORY[0x245D270D0](v102, v78);
            }

            else
            {
              if (v102 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v104 = *(v78 + 8 * v102 + 32);
            }

            v105 = *(v128 + 2);
            if (v99 >= *(v105 + 16))
            {
              goto LABEL_115;
            }

            v106 = *(v105 + 40 * v99 + 32);
            if (qword_27ECEEF90 != -1)
            {
              swift_once();
            }

            v107 = qword_27ECF1930;
            [qword_27ECF1930 cornerRadius];
            [v107 size];
            v108 = [*&v104[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] uniqueIdentifier];
            v78 = sub_242F04F30();

            v109 = *(v79 + v98);
            if (*(v109 + 16) && (, v78 = sub_242CE8370(), v111 = v110, , (v111 & 1) != 0))
            {
              v78 = *(*(v109 + 56) + 8 * v78);

              v112 = [v78 view];
              if (v112)
              {
                v113 = v112;
                [v112 setTranslatesAutoresizingMaskIntoConstraints_];
                v114 = swift_allocObject();
                *(v114 + 16) = xmmword_242F112F0;
                v115 = [v113 heightAnchor];
                v116 = [v115 constraintEqualToConstant_];

                *(v114 + 32) = v116;
                v117 = [v113 widthAnchor];
                v118 = [v117 constraintEqualToConstant_];

                *(v114 + 40) = v118;
                v98 = v129;
                v119 = sub_242F052E0();

                [v125 activateConstraints_];
              }

              else
              {
              }
            }

            else
            {
            }

            v102 = (v102 + 1);

            if (v13 == v102)
            {
              goto LABEL_88;
            }
          }

          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }
      }

      else
      {
        v13 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_92;
        }
      }

LABEL_88:
      ;
    }

    while (++v99 != v123);
  }

  v9 = type metadata accessor for WidgetMultiStackViewController();
  v130 = v98;
  v10 = &v130;
LABEL_113:
  v10->super_class = v9;
  [(objc_super *)v10 updateViewConstraints];
}

void sub_242ECC6C0(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllers;
  swift_beginAccess();
  *&v2[v4] = MEMORY[0x277D84F90];

  v5 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllersById;
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v15 = *&v2[v5];
    v18 = *(v15 + 64);
    v17 = v15 + 64;
    v16 = v18;
    v19 = 1 << *(*&v2[v5] + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v16;
    v74 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackById;
    v75 = v5;
    v22 = (v19 + 63) >> 6;
    v77 = *&v2[v5];
    swift_bridgeObjectRetain_n();
    v23 = 0;
    if (!v21)
    {
      while (1)
      {
LABEL_19:
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_77;
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = *(v17 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_23;
        }
      }

      goto LABEL_37;
    }

    while (1)
    {
LABEL_23:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = (*(v77 + 48) + ((v23 << 10) | (16 * v25)));
      v28 = *v26;
      v27 = v26[1];
      a1 = *&v2[v74];
      v29 = *(a1 + 16);

      if (!v29)
      {
        goto LABEL_28;
      }

      sub_242CE519C(v28, v27);
      if (v30)
      {

        if (!v21)
        {
          goto LABEL_19;
        }
      }

      else
      {

LABEL_28:
        a1 = *&v2[v75];
        if (*(a1 + 16))
        {

          v31 = sub_242CE8370();
          if (v32)
          {
            v33 = *(*(a1 + 56) + 8 * v31);

            [v33 setDataSource_];
            [v33 setDelegate_];
            v34 = [v33 view];
            if (!v34)
            {
              goto LABEL_85;
            }

            v35 = v34;
            [v34 removeFromSuperview];

            [v33 removeFromParentViewController];
            [v33 didMoveToParentViewController_];
            swift_beginAccess();

            v36 = sub_242CE8370();
            a1 = v37;

            if (a1)
            {
              v73 = v36;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v39 = *&v2[v75];
              *&v2[v75] = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_242D04078();
              }

              a1 = v73;

              sub_242ED0DF0(v73, v39);
              *&v2[v75] = v39;
            }

            swift_endAccess();
          }

          else
          {
          }
        }

        if (!v21)
        {
          goto LABEL_19;
        }
      }
    }
  }

  swift_beginAccess();
  a1 = *&v2[v5];
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = *(*(a1 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      [v12 setDataSource_];
      [v12 setDelegate_];
      v13 = [v12 view];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v8 &= v8 - 1;
      [v13 removeFromSuperview];

      [v12 removeFromParentViewController];
      [v12 didMoveToParentViewController_];

      v10 = v11;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  while (1)
  {
LABEL_6:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_78;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  *&v2[v5] = MEMORY[0x277D84F98];

  [*&v2[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers] removeAllObjects];
LABEL_37:
  WidgetHostManager.rebuildAndTransmitConfiguredWidgetData()();
  a1 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  swift_beginAccess();
  v76 = *(*&v2[a1] + 16);
  v78 = a1;
  if (v76)
  {
    v40 = 0;
    v41 = &v2[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate];
    v42 = &v2[OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout];
    while (1)
    {
      v43 = *&v2[v78];
      if (v40 >= *(v43 + 16))
      {
        goto LABEL_79;
      }

      v44 = *(v43 + 8 * v40 + 32);
      if (v44 >> 62)
      {
        break;
      }

      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
        goto LABEL_43;
      }

LABEL_39:
      if (++v40 == v76)
      {
        goto LABEL_56;
      }
    }

    v61 = sub_242F059B0();
    if (v61 < 0)
    {
      goto LABEL_80;
    }

    v45 = v61;
    if (!v61)
    {
      goto LABEL_39;
    }

LABEL_43:
    swift_beginAccess();
    swift_beginAccess();
    v46 = 0;
    do
    {
      sub_242ECCF7C(v2, v40, v46);
      v48 = v47;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        a1 = Strong;
        v50 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        (*(v50 + 8))(v48, v2, &protocol witness table for WidgetMultiStackViewController, ObjectType, v50);
        swift_unknownObjectRelease();
      }

      [v48 setDataSource_];
      [v48 setDelegate_];
      v52 = *(v42 + 2);
      if (v40 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_75;
      }

      v53 = v52 + 40 * v40;
      v54 = *(v53 + 32);
      v55 = *(v53 + 64);
      if (qword_27ECEEF90 != -1)
      {
        swift_once();
      }

      v56 = qword_27ECF1930;
      [qword_27ECF1930 cornerRadius];
      v58 = v57;
      [v56 size];
      [v48 setIconImageInfo_];
      swift_beginAccess();
      v60 = v48;
      MEMORY[0x245D268D0]();
      if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_242F05330();
      }

      ++v46;
      a1 = &v2[v4];
      sub_242F05370();
      swift_endAccess();
    }

    while (v45 != v46);
    goto LABEL_39;
  }

LABEL_56:
  v62 = [v2 view];
  if (!v62)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v63 = v62;
  [v62 setNeedsUpdateConstraints];

  v64 = [v2 view];
  if (v64)
  {
    v65 = v64;
    [v64 layoutIfNeeded];

    a1 = *&v2[v4];
    if (a1 >> 62)
    {
      goto LABEL_81;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_242F059B0())
    {
      v67 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_isForeground;

      v79 = v67;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v68 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x245D270D0](v68, a1);
        }

        else
        {
          if (v68 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v69 = *(a1 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if ([v69 respondsToSelector_])
        {
          if (v2[v79])
          {
            v72 = 0;
          }

          else
          {
            v72 = 2;
          }

          [v70 setPresentationMode_];
        }

        ++v68;
        if (v71 == i)
        {
          goto LABEL_73;
        }
      }

LABEL_75:
      __break(1u);
LABEL_76:
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
      ;
    }

LABEL_73:

    return;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

void sub_242ECCF7C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + v6);
  if (*(v7 + 16) <= a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a2 = *(v7 + 8 * a2 + 32);
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {
      v8 = *(a2 + 8 * a3 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_15:

  v8 = MEMORY[0x245D270D0](a3, a2);

LABEL_7:
  v9 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon;
  v10 = [*&v8[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] uniqueIdentifier];
  sub_242F04F30();

  v11 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllersById;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (!*(v12 + 16) || (, v13 = sub_242CE8370(), v15 = v14, , (v15 & 1) == 0))
  {

    v23 = [objc_allocWithZone(MEMORY[0x277D66350]) initWithIcon:*&v8[v9] iconListLayoutProvider:0 widgetSettings:*(a1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetSettings)];
    v24 = [*&v8[v9] uniqueIdentifier];
    v25 = sub_242F04F30();
    v27 = v26;

    swift_beginAccess();
    v28 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + v11);
    *(a1 + v11) = 0x8000000000000000;
    sub_242CDF900(v28, v25, v27, isUniquelyReferenced_nonNull_native);

    *(a1 + v11) = v31;
    swift_endAccess();
    v22 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  v16 = *(*(v12 + 56) + 8 * v13);

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_242ED25F0;
  *(v19 + 24) = v18;
  aBlock[4] = sub_242CD5510;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242ECD36C;
  aBlock[3] = &block_descriptor_43;
  v20 = _Block_copy(aBlock);
  v21 = v16;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    [v21 removeFromParentViewController];
    [v21 setWidgetIcon_];
    [v21 setListLayoutProvider_];
    v22 = sub_242ED25F0;
LABEL_12:

    sub_242C655DC(v22, v18);
    return;
  }

LABEL_18:
  __break(1u);
}

void *sub_242ECD394(void *a1)
{
  v2 = [a1 uniqueIdentifier];
  v3 = sub_242F04F30();
  v5 = v4;

  v6 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackById);
  if (*(v6 + 16) && (, v7 = sub_242CE519C(v3, v5), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v7);
    v11 = v10;

    return v10;
  }

  else
  {

    return 0;
  }
}

void sub_242ECD44C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackById);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = &unk_278D8C000;
  v29 = v3 + 64;
  v30 = v3;
  for (i = v8; v7; v10 = &unk_278D8C000)
  {
LABEL_8:
    v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = *&v12[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon];
    v14 = v12;
    v15 = [v13 v10[348]];
    sub_242C8760C(0, &qword_27ECF19A8, 0x277D66320);
    v16 = sub_242F05310();

    v31 = v14;
    if (v16 >> 62)
    {
      v17 = sub_242F059B0();
      if (v17)
      {
LABEL_10:
        v18 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x245D270D0](v18, v16);
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_30;
          }

          v22 = [v19 uniqueIdentifier];
          v23 = sub_242F04F30();
          v25 = v24;

          if (v23 == a1 && v25 == a2)
          {

LABEL_28:

            return;
          }

          v27 = sub_242F06110();

          if (v27)
          {
            goto LABEL_28;
          }

          ++v18;
        }

        while (v21 != v17);
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_10;
      }
    }

    v7 &= v7 - 1;

    v4 = v29;
    v3 = v30;
    v8 = i;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

id sub_242ECD718(void *a1, id a2)
{
  v3 = v2;
  v5 = a1;
  v6 = sub_242ECD394(a1);
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  v8 = *(v2 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetHostManager);
  v9 = *(v8 + 24);
  v10 = [a2 uniqueIdentifier];
  v11 = sub_242F04F30();
  v13 = v12;

  v99 = v11;
  v100 = v13;
  v14 = sub_242EFB43C(&v99, v9);

  if (v14)
  {
    v98 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers;
    v15 = *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers);
    v16 = [a2 uniqueIdentifier];
    if (!v16)
    {
      __break(1u);
      goto LABEL_28;
    }

    v17 = v16;
    v18 = [v15 objectForKey_];

    if (v18)
    {
      if (qword_27ECEF4C8 != -1)
      {
        swift_once();
      }

      v19 = sub_242F039D0();
      __swift_project_value_buffer(v19, qword_27ED5D2F8);
      v20 = a2;
      v21 = sub_242F039B0();
      v22 = sub_242F05720();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&dword_242C53000, v21, v22, "Returning cached widget view controller for %{public}@", v23, 0xCu);
        sub_242C6D138(v24, &qword_27ECF1950, &unk_242F11300);
        MEMORY[0x245D287D0](v24, -1, -1);
        MEMORY[0x245D287D0](v23, -1, -1);
      }

      [v18 setWidget_];
      return v18;
    }

    v26 = sub_242ECE340(v5);
    if ((v27 & 1) == 0)
    {
      v28 = *&v26;
      v29 = [*(v8 + 24) widgetDescriptorForWidget_];
      [v14 family];
      v30 = CHSWidgetFamilyMaskFromWidgetFamily();
      v96 = v29;
      if (v29 && (v30 & ~[v29 disfavoredFamiliesForLocation_]) != 0)
      {
        v32 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v32 + 8);
          ObjectType = swift_getObjectType();
          v31 = (*(v33 + 32))(v14, ObjectType, v33);
          swift_unknownObjectRelease();
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 1;
      }

      v97 = v7;
      v35 = v28;
      if (qword_27ECEF4C8 != -1)
      {
        swift_once();
      }

      v36 = sub_242F039D0();
      __swift_project_value_buffer(v36, qword_27ED5D2F8);
      a2 = a2;
      v37 = sub_242F039B0();
      v38 = sub_242F05720();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138543618;
        *(v39 + 4) = a2;
        *v40 = a2;
        *(v39 + 12) = 1026;
        *(v39 + 14) = v31 & 1;
        v41 = a2;
        _os_log_impl(&dword_242C53000, v37, v38, "Creating new widget view controller for %{public}@, disfavored for CarPlay: %{BOOL,public}d", v39, 0x12u);
        sub_242C6D138(v40, &qword_27ECF1950, &unk_242F11300);
        MEMORY[0x245D287D0](v40, -1, -1);
        MEMORY[0x245D287D0](v39, -1, -1);
      }

      v42 = _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(v35);
      v5 = &unk_278D8C000;
      v43 = [a2 uniqueIdentifier];
      if (!v43)
      {
        sub_242F04F30();
        v43 = sub_242F04F00();
      }

      v44 = objc_allocWithZone(MEMORY[0x277D66358]);
      v45 = v42;
      v46 = v14;
      v47 = [v44 initWithWidget:v46 metrics:v45 widgetConfigurationIdentifier:v43];

      [v47 setDelegate_];
      v48 = v47;
      [v48 setContentType_];
      [v48 setCanAppearInSecureEnvironment_];
      [v48 setInteractionDisabled_];
      [v48 setDrawSystemBackgroundMaterialIfNecessary_];
      [v48 setColorScheme_];
      v49 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme;
      swift_beginAccess();
      [v48 setRenderScheme_];
      [v48 sbh:*(v8 + 24) setWidgetExtensionProvider:?];
      v50 = v31 ^ 1;
      [v48 setShouldShareTouchesWithHost_];
      [v48 setVisibility_];

      v51 = [v48 view];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 layer];

        [v53 setAllowsHitTesting_];
        v54 = [objc_allocWithZone(MEMORY[0x277D66330]) initWithRenderScheme:*(v3 + v49) colorScheme:2];
        [v48 sbh:v54 setCustomDisplayConfiguration:?];

        v55 = *(v3 + v98);
        v18 = v48;
        v56 = v55;
        v57 = [a2 &_OBJC_LABEL_PROTOCOL___NSObject];
        if (v57)
        {
          v58 = v57;
          [v56 setObject:v18 forKey:v57];

          return v18;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      if (qword_27ECEF4C8 != -1)
      {
        swift_once();
      }

      v60 = sub_242F039D0();
      __swift_project_value_buffer(v60, qword_27ED5D2F8);
      v61 = a2;
      v62 = sub_242F039B0();
      v63 = sub_242F05700();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138543362;
        *(v64 + 4) = v61;
        *v65 = v61;
        v66 = v61;
        _os_log_impl(&dword_242C53000, v62, v63, "Couldn't find widget %{public}@", v64, 0xCu);
        sub_242C6D138(v65, &qword_27ECF1950, &unk_242F11300);
        MEMORY[0x245D287D0](v65, -1, -1);
        MEMORY[0x245D287D0](v64, -1, -1);
      }

      v99 = 0;
      v100 = 0xE000000000000000;
      sub_242F05A80();

      v99 = 0xD000000000000014;
      v100 = 0x8000000242F5D760;
      v67 = [v5 description];
      v68 = sub_242F04F30();
      v70 = v69;

      MEMORY[0x245D26660](v68, v70);

      v71 = v99;
      v72 = v100;
      v99 = 0xD000000000000026;
      v100 = 0x8000000242F5D730;
      goto LABEL_46;
    }

    if (qword_27ECEF4C8 != -1)
    {
      swift_once();
    }

    v81 = sub_242F039D0();
    __swift_project_value_buffer(v81, qword_27ED5D2F8);
    v82 = v5;
    v83 = sub_242F039B0();
    v84 = sub_242F05700();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v99 = v86;
      *v85 = 136446210;
      v87 = [v82 uniqueIdentifier];
      v88 = sub_242F04F30();
      v90 = v89;

      v91 = sub_242C8FD38(v88, v90, &v99);

      *(v85 + 4) = v91;
      _os_log_impl(&dword_242C53000, v83, v84, "Unable get scale factor for widget with identifier: %{public}s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v86);
      MEMORY[0x245D287D0](v86, -1, -1);
      MEMORY[0x245D287D0](v85, -1, -1);
    }

    v99 = 0;
    v100 = 0xE000000000000000;
    sub_242F05A80();

    v99 = 0xD000000000000029;
    v100 = 0x8000000242F5D7A0;
    v80 = [a2 description];
  }

  else
  {
    if (qword_27ECEF4C8 != -1)
    {
      swift_once();
    }

    v73 = sub_242F039D0();
    __swift_project_value_buffer(v73, qword_27ED5D2F8);
    v74 = a2;
    v75 = sub_242F039B0();
    v76 = sub_242F05700();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138543362;
      *(v77 + 4) = v74;
      *v78 = v74;
      v79 = v74;
      _os_log_impl(&dword_242C53000, v75, v76, "Couldn't find chswidget %{public}@", v77, 0xCu);
      sub_242C6D138(v78, &qword_27ECF1950, &unk_242F11300);
      MEMORY[0x245D287D0](v78, -1, -1);
      MEMORY[0x245D287D0](v77, -1, -1);
    }

    v99 = 0;
    v100 = 0xE000000000000000;
    sub_242F05A80();

    v99 = 0xD000000000000011;
    v100 = 0x8000000242F5D780;
    v80 = [v74 description];
  }

  v92 = v80;
  v93 = sub_242F04F30();
  v95 = v94;

  MEMORY[0x245D26660](v93, v95);

  v71 = v99;
  v72 = v100;
  v99 = 0xD000000000000026;
  v100 = 0x8000000242F5D730;
LABEL_46:
  MEMORY[0x245D26660](v71, v72);

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t sub_242ECE340(void *a1)
{
  v3 = v1;
  v4 = [a1 uniqueIdentifier];
  v5 = sub_242F04F30();
  v7 = v6;

  v8 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widetStackRowIndexById;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_242CE519C(v5, v7);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v10);

      v14 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout;
      swift_beginAccess();
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v15 = *(v14 + 16);
        if (v13 < *(v15 + 16))
        {
          v2 = *(v15 + 40 * v13 + 32);
          if (qword_27ECEEF90 == -1)
          {
LABEL_6:
            [qword_27ECF1930 size];
            *&result = v2 / v16;
            return result;
          }

LABEL_10:
          swift_once();
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_10;
    }
  }

  *&result = 0.0;
  return result;
}

id WidgetMultiStackViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_242F04F00();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WidgetMultiStackViewController.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WidgetMultiStackViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id WidgetMultiStackViewController.widgetStackViewController(_:viewControllerFor:)(void *a1, uint64_t a2)
{
  v2 = [a1 widgetIcon];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

LABEL_6:
    sub_242F05A80();
    MEMORY[0x245D26660](0xD00000000000001ELL, 0x8000000242F5D4F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC6A0, &unk_242F4ACB8);
    sub_242F05C20();
    goto LABEL_8;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = sub_242ECD718(v3, v5);
  if (v6)
  {
    v7 = v6;

    swift_unknownObjectRelease();
    return v7;
  }

  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000034, 0x8000000242F5D510);
  v9 = [v5 description];
  v10 = sub_242F04F30();
  v12 = v11;

  MEMORY[0x245D26660](v10, v12);

LABEL_8:
  MEMORY[0x245D26660](0, 0xE000000000000000);

  result = sub_242F05C60();
  __break(1u);
  return result;
}

void *WidgetMultiStackViewController.widgetStackViewController(_:containerBundleIdentifierFor:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();
    v4 = [v3 containerBundleIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = sub_242F04F30();

      swift_unknownObjectRelease();
      return v6;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void WidgetMultiStackViewController.widgetHostViewController(_:requestsLaunch:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 widgetConfigurationIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_242F04F30();
    v10 = v9;

    sub_242ECD44C(v8, v10);
    if (v11)
    {
      v12 = v11;
      v13 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon;
      v14 = [*&v11[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] activeWidget];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 uniqueIdentifier];

        v17 = sub_242F04F30();
        v19 = v18;

        if (v17 == v8 && v19 == v10)
        {

LABEL_21:

          v49 = [a2 launchAction];
          if (qword_27ECEF4C8 != -1)
          {
            swift_once();
          }

          v50 = sub_242F039D0();
          __swift_project_value_buffer(v50, qword_27ED5D2F8);
          v51 = a1;
          v52 = v49;
          v53 = sub_242F039B0();
          v54 = sub_242F05720();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            osloga = swift_slowAlloc();
            v72[0] = osloga;
            *v55 = 136446466;
            v57 = [v51 description];
            v58 = sub_242F04F30();
            v60 = v59;

            v61 = sub_242C8FD38(v58, v60, v72);

            *(v55 + 4) = v61;
            *(v55 + 12) = 2114;
            *(v55 + 14) = v52;
            *v56 = v52;
            v62 = v52;
            _os_log_impl(&dword_242C53000, v53, v54, "Request to launch widget: %{public}s, action: %{public}@", v55, 0x16u);
            sub_242C6D138(v56, &qword_27ECF1950, &unk_242F11300);
            MEMORY[0x245D287D0](v56, -1, -1);
            __swift_destroy_boxed_opaque_existential_2Tm(osloga);
            MEMORY[0x245D287D0](osloga, -1, -1);
            MEMORY[0x245D287D0](v55, -1, -1);
          }

          v63 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v64 = *(v63 + 8);
            ObjectType = swift_getObjectType();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1988, &qword_242F113C8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_242F112E0;
            *(inited + 32) = v52;
            v52 = v52;
            v67 = sub_242C866AC(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            (*(v64 + 24))(v12, v67, v3, &protocol witness table for WidgetMultiStackViewController, ObjectType, v64);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          return;
        }

        v21 = sub_242F06110();

        if (v21)
        {
          goto LABEL_21;
        }
      }

      if (qword_27ECEF4C8 != -1)
      {
        swift_once();
      }

      v35 = sub_242F039D0();
      __swift_project_value_buffer(v35, qword_27ED5D2F8);

      v36 = v12;
      v37 = a2;
      oslog = sub_242F039B0();
      v38 = sub_242F05700();

      if (os_log_type_enabled(oslog, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v72[0] = v41;
        *v39 = 136446722;
        v42 = sub_242C8FD38(v8, v10, v72);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2082;
        v43 = [*&v12[v13] activeWidget];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 uniqueIdentifier];

          v46 = sub_242F04F30();
          v48 = v47;
        }

        else
        {
          v48 = 0x8000000242F5A1F0;
          v46 = 0xD000000000000015;
        }

        v68 = sub_242C8FD38(v46, v48, v72);

        *(v39 + 14) = v68;
        *(v39 + 22) = 2114;
        *(v39 + 24) = v37;
        *v40 = v37;
        v69 = v37;
        _os_log_impl(&dword_242C53000, oslog, v38, "Request to launch non active widget: %{public}s, active widget is: %{public}s, launchRequest: %{public}@", v39, 0x20u);
        sub_242C6D138(v40, &qword_27ECF1950, &unk_242F11300);
        MEMORY[0x245D287D0](v40, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v41, -1, -1);
        MEMORY[0x245D287D0](v39, -1, -1);

        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v22 = sub_242F039D0();
  __swift_project_value_buffer(v22, qword_27ED5D2F8);
  v23 = a1;
  v24 = a2;
  oslog = sub_242F039B0();
  v25 = sub_242F05700();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v72[0] = v28;
    *v26 = 136446466;
    v29 = [v23 description];
    v30 = sub_242F04F30();
    v32 = v31;

    v33 = sub_242C8FD38(v30, v32, v72);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2114;
    *(v26 + 14) = v24;
    *v27 = v24;
    v34 = v24;
    _os_log_impl(&dword_242C53000, oslog, v25, "Request to launch unknown widget: %{public}s, launchRequest: %{public}@", v26, 0x16u);
    sub_242C6D138(v27, &qword_27ECF1950, &unk_242F11300);
    MEMORY[0x245D287D0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_2Tm(v28);
    MEMORY[0x245D287D0](v28, -1, -1);
    MEMORY[0x245D287D0](v26, -1, -1);
LABEL_35:

    return;
  }

LABEL_28:
}

uint64_t WidgetMultiStackViewController.fetchWidgetStacks(for:)(_OWORD *a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = (v1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout);
  swift_beginAccess();
  v6 = v5[3];
  v13 = v5[2];
  v14 = v6;
  v15 = v5[4];
  v7 = v15;
  v8 = v5[1];
  v12[0] = *v5;
  v9 = v12[0];
  v12[1] = v8;
  a1[2] = v13;
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v9;
  a1[1] = v8;
  swift_beginAccess();

  sub_242C90A34(v12, v11);

  return v4;
}

uint64_t sub_242ECF700(_OWORD *a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = (v1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_currentWidgetScreenLayout);
  swift_beginAccess();
  v6 = v5[3];
  v13 = v5[2];
  v14 = v6;
  v15 = v5[4];
  v7 = v15;
  v8 = v5[1];
  v12[0] = *v5;
  v9 = v12[0];
  v12[1] = v8;
  a1[2] = v13;
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v9;
  a1[1] = v8;
  swift_beginAccess();

  sub_242C90A34(v12, v11);

  return v4;
}

void sub_242ECF7E4(uint64_t a1)
{
  v1 = a1;
  v2 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers;
  v3 = [*(a1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers) keyEnumerator];
  v50 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetHostManager;
  v48 = v1;
  v49 = v2;
  v51 = v3;
  for (i = [v3 nextObject]; ; i = objc_msgSend(v3, sel_nextObject, v46, v47))
  {
    if (i)
    {
      sub_242F058F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v56[0] = v54;
    v56[1] = v55;
    if (!*(&v55 + 1))
    {

      sub_242C6D138(v56, &qword_27ECFC580, &qword_242F36120);
      return;
    }

    sub_242C8760C(0, &qword_27ECFC588, 0x277CCACA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v7 = *(v1 + v2);
    v8 = v53;
    v9 = [v7 objectForKey_];
    if (!v9)
    {
      v6 = v8;
      goto LABEL_3;
    }

    v10 = v9;
    v11 = sub_242F04F30();
    sub_242ECD44C(v11, v12);
    v14 = v13;

    if (v14)
    {
      v15 = v10;
      v52 = [v15 widget];
      v16 = sub_242F04F30();
      v18 = v17;

      *&v56[0] = v16;
      *(&v56[0] + 1) = v18;
      v19 = *(*(v1 + v50) + 24);
      v20 = sub_242EFB43C(v56, v19);

      if (v20)
      {
        v21 = [v20 intentReference];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 intent];

          v24 = [v23 _indexingHash];
        }

        else
        {
          v24 = 0;
        }

        v31 = [v52 intentReference];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 intent];

          v34 = [v33 _indexingHash];
          v1 = v48;
          v2 = v49;
          if (v22 && v24 == v34)
          {
LABEL_23:

            v26 = v14;
            v14 = v52;
            v35 = v15;
            v6 = v15;
LABEL_32:

            v10 = v8;
            v8 = v35;
            v3 = v51;
            goto LABEL_33;
          }
        }

        else
        {
          v2 = v49;
          if (!v22)
          {
            goto LABEL_23;
          }
        }

        if (qword_27ECEF4C8 != -1)
        {
          swift_once();
        }

        v36 = sub_242F039D0();
        __swift_project_value_buffer(v36, qword_27ED5D2F8);
        v6 = v8;
        v37 = v20;
        v38 = sub_242F039B0();
        v39 = sub_242F05720();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = v46;
          *(v40 + 4) = v6;
          *(v40 + 12) = 2114;
          *(v40 + 14) = v37;
          *v41 = v53;
          v41[1] = v20;
          v42 = v6;
          v43 = v37;
          _os_log_impl(&dword_242C53000, v38, v39, "Updated intent for widget %{public}@: %{public}@", v40, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1950, &unk_242F11300);
          swift_arrayDestroy();
          v44 = v41;
          v1 = v48;
          MEMORY[0x245D287D0](v44, -1, -1);
          v45 = v40;
          v2 = v49;
          MEMORY[0x245D287D0](v45, -1, -1);
        }

        [v15 setWidget:v37];
        v26 = v14;
        v14 = v52;
        v8 = v15;
      }

      else
      {

        if (qword_27ECEF4C8 != -1)
        {
          swift_once();
        }

        v25 = sub_242F039D0();
        __swift_project_value_buffer(v25, qword_27ED5D2F8);
        v26 = v8;
        v8 = sub_242F039B0();
        v27 = sub_242F05700();

        if (!os_log_type_enabled(v8, v27))
        {
          v6 = v15;
          v35 = v52;
          goto LABEL_32;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        *(v28 + 4) = v26;
        *v29 = v53;
        v6 = v26;
        _os_log_impl(&dword_242C53000, v8, v27, "Unable to locate widget for %{public}@", v28, 0xCu);
        sub_242C6D138(v29, &qword_27ECF1950, &unk_242F11300);
        v30 = v29;
        v2 = v49;
        MEMORY[0x245D287D0](v30, -1, -1);
        MEMORY[0x245D287D0](v28, -1, -1);
        v26 = v14;
        v14 = v8;
        v8 = v52;
      }

      v35 = v15;
      goto LABEL_32;
    }

    v6 = v8;
LABEL_33:

LABEL_3:
  }
}

id sub_242ECFD94(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_242F04F00();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_242F035D0();

    swift_willThrow();
  }

  return v6;
}

void sub_242ECFE70(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_242CE519C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_242D093E4(v16, v5 & 1);
    v11 = sub_242CE519C(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_242F06320();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_242D03F08();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_242F05A80();
    MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
    sub_242F05C20();
    MEMORY[0x245D26660](39, 0xE100000000000000);
    sub_242F05C60();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_242CE519C(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_242D093E4(v33, 1);
        v29 = sub_242CE519C(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_242ED0200(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242F05950() + 1) & ~v5;
    do
    {
      sub_242F06390();

      sub_242F04DD0();
      v11 = sub_242F063E0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_242ED03BC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242F05950() + 1) & ~v5;
    do
    {
      sub_242F06390();

      sub_242F04DD0();
      v10 = sub_242F063E0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_242ED056C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242F05950() + 1) & ~v5;
    do
    {
      sub_242F06390();

      sub_242F04DD0();
      v9 = sub_242F063E0();

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
        v15 = (v14 + (v3 << 7));
        v16 = (v14 + (v6 << 7));
        if (v3 << 7 != v6 << 7 || (v3 = v6, v15 >= v16 + 128))
        {
          memmove(v15, v16, 0x80uLL);
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
}

void sub_242ED0758(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v30 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - v6;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v31 = (sub_242F05950() + 1) & ~v9;
    v12 = *(v5 + 72);
    v29 = v11;
    do
    {
      v13 = v12;
      v14 = v12 * v10;
      sub_242ED2600(*(a2 + 48) + v12 * v10, v7);
      sub_242F06390();
      sub_242F03720();
      sub_242ED2670(&qword_27ECF2258, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_242F04D90();
      v15 = sub_242F063E0();
      sub_242C6D138(v7, &qword_27ECFC780, &qword_242F17930);
      v16 = v15 & v11;
      if (a1 >= v31)
      {
        if (v16 < v31)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v31)
      {
        goto LABEL_10;
      }

      if (a1 >= v16)
      {
LABEL_10:
        if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v17 = *(a2 + 56);
        v18 = *(*(v30(0) - 8) + 72);
        v19 = v18 * a1;
        v20 = v17 + v18 * a1;
        v21 = v18 * v10;
        v22 = v17 + v18 * v10 + v18;
        if (v19 < v21 || v20 >= v22)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v10;
          v11 = v29;
        }

        else
        {
          a1 = v10;
          v11 = v29;
          if (v19 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
            a1 = v10;
          }
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
      v12 = v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

uint64_t sub_242ED0A70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242F05950() + 1) & ~v5;
    do
    {
      sub_242F06390();
      sub_242F04DD0();

      result = sub_242F063E0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_242ED0C2C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242F05950() + 1) & ~v5;
    do
    {
      sub_242F06390();

      sub_242F04DD0();
      v12 = sub_242F063E0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 << 6 != v6 << 6 || (v3 = v6, v18 >= v19 + 4))
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

void sub_242ED0DF0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242F05950() + 1) & ~v5;
    do
    {
      sub_242F06390();

      sub_242F04DD0();
      v9 = sub_242F063E0();

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
}

void (*sub_242ED0FA0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D270D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_242ED1020;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_242ED1074()
{
  *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_isForeground) = 0;
  *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController____lazy_storage___verticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllers) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers;
  *(v0 + v2) = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_stackViewControllersById;
  *(v0 + v3) = sub_242CE7F18(v1);
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackById;
  *(v0 + v4) = sub_242CE801C(v1);
  v5 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widetStackRowIndexById;
  *(v0 + v5) = sub_242CE8140(v1);
  v6 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetStackRows;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC5E8, &qword_242F4AC98);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = v1;
  *(v0 + v6) = v7;
  sub_242F05C60();
  __break(1u);
}

void *sub_242ED11C4(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = [v2 containerBundleIdentifier];
    if (v3)
    {
      v4 = v3;
      v5 = sub_242F04F30();
      v7 = v6;

      v8 = objc_allocWithZone(MEMORY[0x277CC1E70]);
      v9 = sub_242ECFD94(v5, v7, 0);
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = [v9 localizedName];
        v11 = sub_242F04F30();

        return v11;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_242ED12D8(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = [v2 containerBundleIdentifier];
    if (v3)
    {
      v4 = v3;
      v5 = sub_242F04F30();
      v7 = v6;

      v8 = objc_allocWithZone(MEMORY[0x277CC1E70]);
      v9 = sub_242ECFD94(v5, v7, 0);
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277D0ACA8]) initWithApplicationRecord_];
        v11 = [v10 isBlockedForScreenTimeExpiration];

        return v11;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

double sub_242ED13EC(void *a1, char a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRetain();
    v7 = [v6 uniqueIdentifier];
    v8 = sub_242F04F30();
    v10 = v9;

    sub_242ECD44C(v8, v10);
    v12 = v11;

    if (v12)
    {
      oslog = v2;
      v13 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon;
      v14 = *&v12[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon];
      if (a2)
      {
        [v14 setStackChangeReason_];
        [*&v12[v13] setLastUserSelectedDataSource_];
        if (qword_27ECEF4C8 != -1)
        {
          swift_once();
        }

        v15 = sub_242F039D0();
        __swift_project_value_buffer(v15, qword_27ED5D2F8);
        swift_unknownObjectRetain();
        v16 = v12;
        v17 = sub_242F039B0();
        v18 = sub_242F05720();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v95[0] = v20;
          *v19 = 136446466;
          v21 = [a1 description];
          v22 = sub_242F04F30();
          v24 = v23;

          v25 = sub_242C8FD38(v22, v24, v95);

          *(v19 + 4) = v25;
          *(v19 + 12) = 2082;
          v26 = [*&v12[v13] uniqueIdentifier];
          v27 = sub_242F04F30();
          v29 = v28;

          v30 = sub_242C8FD38(v27, v29, v95);

          *(v19 + 14) = v30;
          v31 = "Activating data source due to user scroll and setting last user selected data source: %{public}s for: %{public}s";
LABEL_20:
          _os_log_impl(&dword_242C53000, v17, v18, v31, v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245D287D0](v20, -1, -1);
          MEMORY[0x245D287D0](v19, -1, -1);
        }
      }

      else
      {
        [v14 setStackChangeReason_];
        if (qword_27ECEF4C8 != -1)
        {
          swift_once();
        }

        v42 = sub_242F039D0();
        __swift_project_value_buffer(v42, qword_27ED5D2F8);
        swift_unknownObjectRetain();
        v43 = v12;
        v17 = sub_242F039B0();
        v18 = sub_242F05720();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v95[0] = v20;
          *v19 = 136446466;
          v44 = [a1 description];
          v45 = sub_242F04F30();
          v47 = v46;

          v48 = sub_242C8FD38(v45, v47, v95);

          *(v19 + 4) = v48;
          *(v19 + 12) = 2082;
          v49 = [*&v12[v13] uniqueIdentifier];
          v50 = sub_242F04F30();
          v52 = v51;

          v53 = sub_242C8FD38(v50, v52, v95);

          *(v19 + 14) = v53;
          v31 = "Activating data source due to other scroll view interaction: %{public}s for: %{public}s";
          goto LABEL_20;
        }
      }

      v54 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon;
      v55 = [*&v12[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] activeDataSource];
      if (v55)
      {
        v56 = v55;
        v57 = &unk_278D8C000;
        if ([v55 respondsToSelector_])
        {
          v58 = [v56 uniqueIdentifier];
          swift_unknownObjectRelease();
          v90 = sub_242F04F30();
          v91 = v59;
        }

        else
        {
          swift_unknownObjectRelease();
          v90 = 0;
          v91 = 0;
        }
      }

      else
      {
        v90 = 0;
        v91 = 0;
        v57 = 0x278D8C000;
      }

      if ([a1 respondsToSelector_])
      {
        v60 = [a1 *(v57 + 2776)];
        v61 = sub_242F04F30();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0;
      }

      v64 = [*&v12[v54] activeDataSource];
      v65 = v64;
      if (v64)
      {
        if ([v64 respondsToSelector_])
        {
          v66 = [v65 *(v57 + 2776)];
          swift_unknownObjectRelease();
          v67 = sub_242F04F30();
          v65 = v68;

          v57 = 0x1FAA0B000;
          if (!v63)
          {
LABEL_39:
            if (v65)
            {
              goto LABEL_40;
            }

            goto LABEL_43;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v67 = 0;
          v65 = 0;
          if (!v63)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v67 = 0;
        if (!v63)
        {
          goto LABEL_39;
        }
      }

      if (!v65)
      {
LABEL_40:

LABEL_41:
        [*&v12[v54] setActiveDataSource_];
LABEL_48:
        v86 = oslog + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v87 = *(v86 + 1);
          ObjectType = swift_getObjectType();
          v94[0] = v90;
          v94[1] = v91;
          (*(v87 + 16))(v12, oslog, &protocol witness table for WidgetMultiStackViewController, v94, ObjectType, v87);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return result;
      }

      if (v61 == v67 && v63 == v65)
      {
      }

      else
      {
        v69 = sub_242F06110();

        if ((v69 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

LABEL_43:
      if (qword_27ECEF4C8 != -1)
      {
        swift_once();
      }

      v70 = sub_242F039D0();
      __swift_project_value_buffer(v70, qword_27ED5D2F8);
      swift_unknownObjectRetain();
      v71 = v12;
      v72 = sub_242F039B0();
      v73 = sub_242F05700();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v95[0] = v89;
        *v74 = 136446466;
        v75 = v57;
        v76 = [a1 description];
        v77 = sub_242F04F30();
        v79 = v78;

        v80 = sub_242C8FD38(v77, v79, v95);

        *(v74 + 4) = v80;
        *(v74 + 12) = 2082;
        v81 = [*&v12[v54] (v75 + 2040)];
        v82 = sub_242F04F30();
        v84 = v83;

        v85 = sub_242C8FD38(v82, v84, v95);

        *(v74 + 14) = v85;
        _os_log_impl(&dword_242C53000, v72, v73, "Ignoring data source change as it is the same as the currently active data source: %{public}s for: %{public}s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v89, -1, -1);
        MEMORY[0x245D287D0](v74, -1, -1);
      }

      goto LABEL_48;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v32 = sub_242F039D0();
  __swift_project_value_buffer(v32, qword_27ED5D2F8);
  swift_unknownObjectRetain();
  osloga = sub_242F039B0();
  v33 = sub_242F05700();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(osloga, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v95[0] = v35;
    *v34 = 136446210;
    v36 = [a1 description];
    v37 = sub_242F04F30();
    v39 = v38;

    v40 = sub_242C8FD38(v37, v39, v95);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_242C53000, osloga, v33, "Trying to active data source due to user scroll but the data source is unknown! %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v35);
    MEMORY[0x245D287D0](v35, -1, -1);
    MEMORY[0x245D287D0](v34, -1, -1);
  }

  else
  {
  }

  return result;
}

void sub_242ED1DD0(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 widgetConfigurationIdentifier];
    if (v7)
    {
      v8 = v7;
      if (qword_27ECEF4C8 != -1)
      {
        swift_once();
      }

      v9 = sub_242F039D0();
      __swift_project_value_buffer(v9, qword_27ED5D2F8);
      v15 = v8;
      v10 = sub_242F039B0();
      v11 = sub_242F05720();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138543362;
        *(v12 + 4) = v15;
        *v13 = v8;
        v14 = v15;
        _os_log_impl(&dword_242C53000, v10, v11, "Destroying widget view controller for widget identifier:%{public}@", v12, 0xCu);
        sub_242C6D138(v13, &qword_27ECF1950, &unk_242F11300);
        MEMORY[0x245D287D0](v13, -1, -1);
        MEMORY[0x245D287D0](v12, -1, -1);
      }

      [*(v2 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_widgetViewControllers) removeObjectForKey_];
    }

    else
    {
      v15 = v6;
    }
  }
}

void _s14CarPlayAssetUI30WidgetMultiStackViewControllerC010widgetHosthI0_18receivedTouchEventySo011CHUISWidgetkhI0C_So010CHUISTouchN0CtF_0(void *a1)
{
  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v2 = sub_242F039D0();
  __swift_project_value_buffer(v2, qword_27ED5D2F8);
  v3 = a1;
  oslog = sub_242F039B0();
  v4 = sub_242F05720();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = [v3 description];
    v8 = sub_242F04F30();
    v10 = v9;

    v11 = sub_242C8FD38(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_242C53000, oslog, v4, "Received touch event: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v6);
    MEMORY[0x245D287D0](v6, -1, -1);
    MEMORY[0x245D287D0](v5, -1, -1);
  }
}

double keypath_get_6Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

uint64_t sub_242ED2600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242ED2670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242ED26C0()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFC788 = v16;
  *(&xmmword_27ECFC788 + 1) = v15;
  qword_27ECFC798 = v14;
  unk_27ECFC7A0 = v7;
  *&xmmword_27ECFC7A8 = v8;
  *(&xmmword_27ECFC7A8 + 1) = v9;
  qword_27ECFC7B8 = v10;
  unk_27ECFC7C0 = v11;
  qword_27ECFC7C8 = result;
  return result;
}

uint64_t static Color.Ticks.midnight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF808 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFC7B8;
  v8[2] = xmmword_27ECFC7A8;
  v8[3] = *&qword_27ECFC7B8;
  v9 = qword_27ECFC7C8;
  v3 = qword_27ECFC7C8;
  v4 = *&qword_27ECFC798;
  v8[0] = xmmword_27ECFC788;
  v5 = xmmword_27ECFC788;
  v8[1] = *&qword_27ECFC798;
  *(a1 + 32) = xmmword_27ECFC7A8;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.midnight.setter(uint64_t a1)
{
  if (qword_27ECEF808 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFC7A8;
  v5[3] = *&qword_27ECFC7B8;
  v6 = qword_27ECFC7C8;
  v5[0] = xmmword_27ECFC788;
  v5[1] = *&qword_27ECFC798;
  v2 = *(a1 + 48);
  xmmword_27ECFC7A8 = *(a1 + 32);
  *&qword_27ECFC7B8 = v2;
  qword_27ECFC7C8 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFC788 = *a1;
  *&qword_27ECFC798 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.midnight.modify(uint64_t a1))()
{
  if (qword_27ECEF808 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242ED2BA0()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFC7D0 = v16;
  *(&xmmword_27ECFC7D0 + 1) = v15;
  qword_27ECFC7E0 = v14;
  unk_27ECFC7E8 = v7;
  *&xmmword_27ECFC7F0 = v8;
  *(&xmmword_27ECFC7F0 + 1) = v9;
  qword_27ECFC800 = v10;
  unk_27ECFC808 = v11;
  qword_27ECFC810 = result;
  return result;
}

uint64_t static Color.ProgressBars.midnight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF810 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFC800;
  v8[2] = xmmword_27ECFC7F0;
  v8[3] = *&qword_27ECFC800;
  v9 = qword_27ECFC810;
  v3 = qword_27ECFC810;
  v4 = *&qword_27ECFC7E0;
  v8[0] = xmmword_27ECFC7D0;
  v5 = xmmword_27ECFC7D0;
  v8[1] = *&qword_27ECFC7E0;
  *(a1 + 32) = xmmword_27ECFC7F0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.midnight.setter(uint64_t a1)
{
  if (qword_27ECEF810 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFC7F0;
  v5[3] = *&qword_27ECFC800;
  v6 = qword_27ECFC810;
  v5[0] = xmmword_27ECFC7D0;
  v5[1] = *&qword_27ECFC7E0;
  v2 = *(a1 + 48);
  xmmword_27ECFC7F0 = *(a1 + 32);
  *&qword_27ECFC800 = v2;
  qword_27ECFC810 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFC7D0 = *a1;
  *&qword_27ECFC7E0 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.midnight.modify(uint64_t a1))()
{
  if (qword_27ECEF810 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242ED308C()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECFC818 = result;
  return result;
}

uint64_t static Color.Modular.midnight.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECFC818;
}

double static Color.Modular.midnight.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECFC818 = v1;

  return result;
}

uint64_t (*static Color.Modular.midnight.modify(uint64_t a1))()
{
  if (qword_27ECEF818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242ED32FC()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFC820 = v14;
  *(&xmmword_27ECFC820 + 1) = v7;
  qword_27ECFC830 = v8;
  unk_27ECFC838 = v9;
  *&xmmword_27ECFC840 = v10;
  *(&xmmword_27ECFC840 + 1) = v11;
  qword_27ECFC850 = result;
  return result;
}

uint64_t static Color.ACC.midnight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECFC820 + 1);
  v3 = qword_27ECFC830;
  v4 = unk_27ECFC838;
  v5 = xmmword_27ECFC840;
  v6 = qword_27ECFC850;
  *a1 = xmmword_27ECFC820;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

double static Color.ACC.midnight.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFC820 = v5;
  *&qword_27ECFC830 = v4;
  xmmword_27ECFC840 = v3;
  qword_27ECFC850 = v1;

  return result;
}

uint64_t (*static Color.ACC.midnight.modify(uint64_t a1))()
{
  if (qword_27ECEF820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242ED37D8()
{
  if (qword_27ECEF810 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECFC7F0;
  v37 = *&qword_27ECFC800;
  v38 = qword_27ECFC810;
  v34 = xmmword_27ECFC7D0;
  v35 = *&qword_27ECFC7E0;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF808 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECFC7A8;
  v42 = *&qword_27ECFC7B8;
  v43 = qword_27ECFC7C8;
  v39 = xmmword_27ECFC788;
  v40 = *&qword_27ECFC798;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF820;
  v28 = qword_27ECFC818;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECFC820 + 1);
  v2 = qword_27ECFC830;
  v3 = unk_27ECFC838;
  v4 = xmmword_27ECFC840;
  v5 = qword_27ECFC850;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECFC820;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFC878 = v36;
  unk_27ECFC888 = v37;
  xmmword_27ECFC858 = v34;
  unk_27ECFC868 = v35;
  unk_27ECFC8A0 = v39;
  unk_27ECFC8D0 = v42;
  qword_27ECFC898 = v38;
  unk_27ECFC8C0 = v41;
  unk_27ECFC8B0 = v40;
  qword_27ECFC8E0 = v43;
  unk_27ECFC8E8 = v28;
  qword_27ECFC8F0 = v23;
  unk_27ECFC8F8 = v22;
  qword_27ECFC900 = v21;
  unk_27ECFC908 = v27;
  qword_27ECFC910 = v26;
  qword_27ECFC918 = v25;
  unk_27ECFC920 = v3;
  xmmword_27ECFC928 = v4;
  qword_27ECFC938 = v24;
  unk_27ECFC940 = v20;
  qword_27ECFC948 = v19;
  qword_27ECFC950 = v11;
  unk_27ECFC958 = v12;
  qword_27ECFC960 = v13;
  unk_27ECFC968 = v14;
  qword_27ECFC970 = v15;
  unk_27ECFC978 = v16;
  xmmword_27ECFC9A0 = v32;
  unk_27ECFC9B0 = v33;
  xmmword_27ECFC980 = v30;
  *algn_27ECFC990 = v31;
  xmmword_27ECFC9C0 = xmmword_27ECF3708;
  qword_27ECFC9D0 = qword_27ECF3718;
  unk_27ECFC9D8 = unk_27ECF3720;
  xmmword_27ECFC9E0 = xmmword_27ECF3728;
  qword_27ECFC9F0 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.midnight.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF828 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECFC858, sizeof(__dst));
  memcpy(a1, &xmmword_27ECFC858, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242ED3D50()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECFC9F8 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightMidnight.modify(uint64_t a1))()
{
  if (qword_27ECEF830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242ED41F4()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFCA00 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightMidnight.modify(uint64_t a1))()
{
  if (qword_27ECEF838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}
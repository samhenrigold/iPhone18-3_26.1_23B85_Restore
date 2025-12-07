uint64_t sub_1B0D1B1B0(uint64_t a1)
{
  sub_1B0D20BC0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B1EC(uint64_t a1)
{
  sub_1B0D20B6C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B228(uint64_t a1)
{
  sub_1B0D20B6C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B264(uint64_t a1)
{
  sub_1B0D20C14();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B2A0(uint64_t a1)
{
  sub_1B0D20C14();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B2DC(uint64_t a1)
{
  sub_1B0D20C68();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B318(uint64_t a1)
{
  sub_1B0D20C68();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B354(uint64_t a1)
{
  sub_1B0D20998();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B390(uint64_t a1)
{
  sub_1B0D20998();

  return sub_1B0E46F38();
}

uint64_t SearchRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6918, &qword_1B0EEA890);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6920, &qword_1B0EEA898);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6928, &qword_1B0EEA8A0);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6930, &qword_1B0EEA8A8);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6938, &qword_1B0EEA8B0);
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6940, &qword_1B0EEA8B8);
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6948, &qword_1B0EEA8C0);
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v47 - v18;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D20944();
  v62 = v19;
  sub_1B0E46D48();
  v21 = *v2;
  v20 = *(v2 + 8);
  v22 = *(v2 + 16);
  v23 = *(v2 + 40);
  if (v23 <= 1)
  {
    if (*(v2 + 40))
    {
      LOBYTE(v65) = 1;
      sub_1B0D20C14();
      v45 = v61;
      v46 = v62;
      sub_1B0E468B8();
      v65 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B0D25B58(&qword_1EB6DB080, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1B0E46958();
      (*(v54 + 8))(v14, v12);
      return (*(v63 + 8))(v46, v45);
    }

    else
    {
      LOBYTE(v65) = 0;
      sub_1B0D20C68();
      v34 = v61;
      v35 = v62;
      sub_1B0E468B8();
      v65 = v21;
      v66 = v20;
      v67 = v22;
      sub_1B0D20CBC();
      sub_1B0E46958();
      (*(v53 + 8))(v17, v15);
      return (*(v63 + 8))(v35, v34);
    }
  }

  else
  {
    v24 = *(v2 + 24);
    v25 = *(v2 + 28);
    v26 = *(v2 + 32);
    if (v23 == 2)
    {
      v60 = *(v2 + 32);
      LOBYTE(v65) = 2;
      sub_1B0D20BC0();
      v36 = v55;
      v38 = v61;
      v37 = v62;
      sub_1B0E468B8();
      v65 = v21;
      v66 = v20;
      v67 = v22;
      v68 = 0;
      sub_1B0D20A40();
      v39 = v57;
      v40 = v64;
      sub_1B0E46958();
      if (!v40)
      {
        LODWORD(v65) = v24;
        BYTE4(v65) = v25 & 1;
        v68 = 1;
        sub_1B0D20B18();
        sub_1B0E468F8();
        LOBYTE(v65) = 2;
        sub_1B0E46948();
      }

      (*(v56 + 8))(v36, v39);
      return (*(v63 + 8))(v37, v38);
    }

    else
    {
      v27 = v24 | (v25 << 32) | ((*(v2 + 29) | (*(v2 + 31) << 16)) << 40);
      v28 = v61;
      if (v23 == 3)
      {
        LOBYTE(v65) = 4;
        sub_1B0D209EC();
        v29 = v58;
        v30 = v62;
        sub_1B0E468B8();
        v65 = v21;
        v66 = v20;
        v67 = v22;
        v68 = 0;
        sub_1B0D20A40();
        v31 = v60;
        v32 = v64;
        sub_1B0E46958();
        if (!v32)
        {
          v65 = v27;
          v68 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
          sub_1B0D20A94();
          sub_1B0E46958();
        }

        (*(v59 + 8))(v29, v31);
        return (*(v63 + 8))(v30, v28);
      }

      else
      {
        v41 = v62;
        if (v22 | v20 | v21 | v26 | v27)
        {
          LOBYTE(v65) = 5;
          sub_1B0D20998();
          v42 = v50;
          sub_1B0E468B8();
          v44 = v51;
          v43 = v52;
        }

        else
        {
          LOBYTE(v65) = 3;
          sub_1B0D20B6C();
          v42 = v47;
          sub_1B0E468B8();
          v44 = v48;
          v43 = v49;
        }

        (*(v44 + 8))(v42, v43);
        return (*(v63 + 8))(v41, v28);
      }
    }
  }
}

double SearchRequest.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1B0D21020(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_1B0D1BCD8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1B0D21020(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1B0D1BD34(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t sub_1B0D1BD80()
{
  v1 = *v0;
  v2 = 0x6552686372616573;
  v3 = 0x646564756C637865;
  if (v1 != 4)
  {
    v3 = 0x6C616E41746E6573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0x655270756B6F6F6CLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1B0D1BE5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D2202C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D1BE84(uint64_t a1)
{
  sub_1B0D21D8C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1BEC0(uint64_t a1)
{
  sub_1B0D21D8C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1BEFC(uint64_t a1)
{
  sub_1B0D21E34();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1BF38(uint64_t a1)
{
  sub_1B0D21E34();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1BF74(uint64_t a1)
{
  sub_1B0D21EDC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1BFB0(uint64_t a1)
{
  sub_1B0D21EDC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1BFEC(uint64_t a1)
{
  sub_1B0D21E88();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C028(uint64_t a1)
{
  sub_1B0D21E88();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C064(uint64_t a1)
{
  sub_1B0D21F84();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C0A0(uint64_t a1)
{
  sub_1B0D21F84();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C0DC(uint64_t a1)
{
  sub_1B0D21FD8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C118(uint64_t a1)
{
  sub_1B0D21FD8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C154(uint64_t a1)
{
  sub_1B0D21DE0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1C190(uint64_t a1)
{
  sub_1B0D21DE0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1C1CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(*(v3 + 56) + 8 * v12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0D293C0(v15, v14, v16);
    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = *(*(a2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v22)
    {
      v23 = v21 == v17;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = 32;
      while (v22)
      {
        if (*(v21 + v24) != *(v17 + v24))
        {
          goto LABEL_26;
        }

        v24 += 4;
        if (!--v22)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:

    v7 = v25;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t SearchResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6978, &qword_1B0EEA8C8);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6980, &qword_1B0EEA8D0);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6988, &qword_1B0EEA8D8);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6990, &qword_1B0EEA8E0);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6998, &qword_1B0EEA8E8);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E69A0, &qword_1B0EEA8F0);
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E69A8, &unk_1B0EEA8F8);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v20 = &v39 - v19;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D21D8C();
  v53 = v20;
  sub_1B0E46D48();
  v21 = *v2;
  v22 = v2[1];
  v23 = *(v2 + 32);
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      LOBYTE(v55) = 3;
      sub_1B0D21E88();
      v34 = v44;
      v28 = v58;
      v30 = v53;
      sub_1B0E468B8();
      v55 = v21;
      v56 = v22;
      v57 = *(v2 + 1);
      sub_1B0D1DF64();
      v35 = v46;
      sub_1B0E46958();
      (*(v45 + 8))(v34, v35);
    }

    else
    {
      v28 = v58;
      if (v23 != 4)
      {
        LOBYTE(v55) = 5;
        sub_1B0D21DE0();
        v37 = v47;
        v38 = v53;
        sub_1B0E468B8();
        (*(v49 + 8))(v37, v50);
        return (*(v54 + 8))(v38, v28);
      }

      LOBYTE(v55) = 4;
      sub_1B0D21E34();
      v29 = v48;
      v30 = v53;
      sub_1B0E468B8();
      v55 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
      sub_1B0D20A94();
      v31 = v52;
      sub_1B0E46958();
      (*(v51 + 8))(v29, v31);
    }
  }

  else
  {
    if (!*(v2 + 32))
    {
      LOBYTE(v55) = 0;
      sub_1B0D21FD8();
      v32 = v58;
      v33 = v53;
      sub_1B0E468B8();
      v55 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6E69D0, sub_1B0D20A40, sub_1B0D20A94, MEMORY[0x1E69E5E38]);
      sub_1B0E46958();
      (*(v39 + 8))(v18, v16);
      return (*(v54 + 8))(v33, v32);
    }

    if (v23 == 1)
    {
      LOBYTE(v55) = 1;
      sub_1B0D21F84();
      v24 = v58;
      v25 = v53;
      sub_1B0E468B8();
      v55 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6E69D0, sub_1B0D20A40, sub_1B0D20A94, MEMORY[0x1E69E5E38]);
      v26 = v41;
      sub_1B0E46958();
      (*(v40 + 8))(v15, v26);
      return (*(v54 + 8))(v25, v24);
    }

    LOBYTE(v55) = 2;
    sub_1B0D21EDC();
    v28 = v58;
    v30 = v53;
    sub_1B0E468B8();
    v55 = v21;
    v56 = v22;
    sub_1B0D21F30();
    v36 = v43;
    sub_1B0E468F8();
    (*(v42 + 8))(v12, v36);
  }

  return (*(v54 + 8))(v30, v28);
}

double SearchResponse.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B0D2224C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_1B0D1CC08@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B0D2224C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_1B0D1CC68(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (v6 <= 1)
  {
    if (!*(a1 + 40))
    {
      if (*(a2 + 40))
      {
        return 0;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 16);
      v19 = *a2;
      v20 = [result uniqueIdentifier];
      v21 = sub_1B0E44AD8();
      v23 = v22;

      v24 = [v19 uniqueIdentifier];
      v25 = sub_1B0E44AD8();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {

        if (v5 != v18)
        {
          return 0;
        }
      }

      else
      {
        v29 = sub_1B0E46A78();

        if ((v29 & 1) == 0 || v5 != v18)
        {
          return 0;
        }
      }

      return (sub_1B0D19C24(v4, v17) & 1) != 0;
    }

    if (*(a2 + 40) == 1)
    {
      v38 = *a2;

      return sub_1B045202C(result, v38);
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = *(a1 + 32);
  if (v6 == 2)
  {
    if (*(a2 + 40) == 2)
    {
      v30 = *a2;
      v31 = *(result + 16);
      if (v31 == *(*a2 + 16))
      {
        v32 = *(a2 + 24);
        v33 = *(a2 + 28);
        v34 = *(a2 + 32);
        if (v31 && v30 != result)
        {
          v35 = (result + 32);
          v36 = (v30 + 32);
          while (*v35 == *v36)
          {
            ++v35;
            ++v36;
            if (!--v31)
            {
              goto LABEL_36;
            }
          }

          return 0;
        }

LABEL_36:
        if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1B0E46A78() & 1) != 0)
        {
          if (v8)
          {
            if ((v33 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            result = 0;
            if ((v33 & 1) != 0 || v7 != v32)
            {
              return result;
            }
          }

          return v9 == v34;
        }
      }
    }

    return 0;
  }

  v10 = v7 | (v8 << 32) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40);
  if (v6 != 3)
  {
    if (v4 | v5 | result | v9 | v10)
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      if (*a2 != 1)
      {
        return 0;
      }

      v37 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)))
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      v39 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 40) != 3)
  {
    return 0;
  }

  v11 = *a2;
  v12 = *(result + 16);
  if (v12 != *(*a2 + 16))
  {
    return 0;
  }

  v13 = *(a2 + 24);
  if (v12)
  {
    v14 = v11 == result;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_14:
    if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1B0E46A78() & 1) != 0)
    {

      return sub_1B0D19BC8(v10, v13);
    }

    return 0;
  }

  v15 = (result + 32);
  v16 = (v11 + 32);
  while (v12)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      v14[0] = v4;
      v14[1] = v3;
      v14[2] = v5;
      v15 = *(a1 + 24);
      v16 = v6 & 0x3F;
      v7 = *(a2 + 40);
      if ((v7 & 0xC0) == 0x40)
      {
        v8 = *(a2 + 32);
        v9 = *(a2 + 16);
        v11[0] = *a2;
        v11[1] = v9;
        v12 = v8;
        v13 = v7 & 0x3F;
        _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(v14, v11);
      }
    }

    else if ((*(a2 + 40) & 0xC0) == 0x80)
    {
      v10 = *a2;

      _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v4, v10);
    }
  }

  else if (*(a2 + 40) <= 0x3Fu && (v5 & 1) == 0 && !(*(a2 + 16) & 1 | (v4 != *a2)))
  {
    sub_1B0D19D4C(v3, *(a2 + 8));
  }
}

unint64_t sub_1B0D1D15C()
{
  result = qword_1EB6DC928;
  if (!qword_1EB6DC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC928);
  }

  return result;
}

unint64_t sub_1B0D1D1C0()
{
  result = qword_1EB6DC8F8;
  if (!qword_1EB6DC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8F8);
  }

  return result;
}

unint64_t sub_1B0D1D214()
{
  result = qword_1EB6DC558;
  if (!qword_1EB6DC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC558);
  }

  return result;
}

unint64_t sub_1B0D1D268()
{
  result = qword_1EB6DC940;
  if (!qword_1EB6DC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC940);
  }

  return result;
}

unint64_t sub_1B0D1D2BC()
{
  result = qword_1EB6DC650;
  if (!qword_1EB6DC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC650);
  }

  return result;
}

unint64_t sub_1B0D1D310()
{
  result = qword_1EB6DC910;
  if (!qword_1EB6DC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC910);
  }

  return result;
}

unint64_t sub_1B0D1D364()
{
  result = qword_1EB6DC6D8;
  if (!qword_1EB6DC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6D8);
  }

  return result;
}

int64x2_t *_s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(int64x2_t *result, int64x2_t *a2)
{
  v3 = *a2;
  v4 = *result;
  v5 = result[2].u8[0];
  v6 = a2->i64[0];
  v7 = a2[2].u8[0];
  if (v5 <= 2)
  {
    if (result[2].i8[0])
    {
      if (v5 == 1)
      {
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (v7 == 2)
      {
        if (v4.i64[0])
        {
          v16 = v3.i64[1];
          if (v6)
          {
            v19 = result->i64[1];
            v17 = v6;
            if (sub_1B03B6298(v4.i64[0], v6))
            {
              v18 = sub_1B03B6298(v19, v16);
              sub_1B0911DE0(v17);

              if (v18)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_1B0911DE0(v17);
            }
          }

          else
          {
            sub_1B0911DE0(0);
          }
        }

        else if (!v6)
        {
          sub_1B0911DE0(0);
LABEL_37:
          v14 = 1;
          return (v14 & 1);
        }
      }
    }

    else if (!a2[2].i8[0])
    {
LABEL_21:

      return sub_1B0D1C1CC(v4.i64[0], v6);
    }

LABEL_40:
    v14 = 0;
    return (v14 & 1);
  }

  if (v5 == 3)
  {
    if (v7 == 3)
    {
      v14 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v4, v3), vceqq_s64(result[1], a2[1]))));
      return (v14 & 1);
    }

    goto LABEL_40;
  }

  if (v5 != 4)
  {
    if (v7 != 5 || a2[1].i64[1] | a2[1].i64[0] | v6 | v3.i64[1])
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v7 != 4)
  {
    goto LABEL_40;
  }

  v8 = *(v4.i64[0] + 16);
  if (v8 != *(v6 + 16))
  {
    goto LABEL_40;
  }

  if (!v8 || v6 == v4.i64[0])
  {
    goto LABEL_37;
  }

  v9 = (v4.i64[0] + 32);
  v10 = (v6 + 32);
  while (v8)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v10++;
    v14 = v11 == v13;
    if (v14)
    {
      v15 = v8 == 1;
    }

    else
    {
      v15 = 1;
    }

    --v8;
    if (v15)
    {
      return (v14 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2].u8[0];
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v5)
    {
      v13[0] = *a1;
      v13[1] = v3;
      v14 = v4 & 0x3F;
      v9 = a2[2].i8[0];
      if ((v9 & 0xC0) == 0x40)
      {
        v10 = a2[1];
        v11[0] = *a2;
        v11[1] = v10;
        v12 = v9 & 0x3F;
        v6 = _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v11);
        return v6 & 1;
      }
    }

    else if (a2[2].u8[0] <= 0x3Fu)
    {
      v6 = a2->i8[0] == v2.i8[0];
      return v6 & 1;
    }

LABEL_18:
    v6 = 0;
    return v6 & 1;
  }

  if (v5 != 2)
  {
    if (a2[2].u8[0] >= 0xC0u)
    {
      v6 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v2, *a2), vceqq_s64(v3, a2[1]))));
      return v6 & 1;
    }

    goto LABEL_18;
  }

  if ((a2[2].i8[0] & 0xC0) != 0x80)
  {
    goto LABEL_18;
  }

  if (v2.i64[0] == a2->i64[0] && v2.i64[1] == a2->i64[1])
  {
    v6 = 1;
    return v6 & 1;
  }

  return sub_1B0E46A78();
}

uint64_t sub_1B0D1D6D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

double sub_1B0D1D7E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C30, &qword_1B0EED9C8);
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  *&v47 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C38, &qword_1B0EED9D0);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C40, &qword_1B0EED9D8);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C48, &unk_1B0EED9E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v15);
  sub_1B0D1D15C();
  v16 = v48;
  sub_1B0E46D18();
  if (v16)
  {
    goto LABEL_14;
  }

  v17 = v47;
  v40 = v12;
  *&v48 = v14;
  v18 = sub_1B0E468A8();
  v19 = *(v18 + 16);
  if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
  {
    v22 = sub_1B0E46338();
    swift_allocError();
    v23 = v11;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v25 = &type metadata for MessageToSearchIndexer;
    v26 = v48;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v22 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v40 + 8))(v26, v23);
    swift_unknownObjectRelease();
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v53);
    return result;
  }

  if (*(v18 + 32))
  {
    if (v20 == 1)
    {
      LOBYTE(v49) = 1;
      sub_1B0D1D268();
      v27 = v48;
      sub_1B0E467F8();
      v28 = v40;
      sub_1B0D25F6C();
      v29 = v43;
      sub_1B0E46868();
      (*(v44 + 8))(v7, v29);
      (*(v28 + 8))(v27, v11);
      swift_unknownObjectRelease();
      v47 = v50;
      v48 = v49;
      v34 = v51;
      v35 = v52 | 0x40;
      v36 = v46;
    }

    else
    {
      LOBYTE(v49) = 2;
      sub_1B0D1D1C0();
      sub_1B0E467F8();
      v36 = v46;
      v31 = v40;
      sub_1B0D25F18();
      v32 = v41;
      sub_1B0E46868();
      (*(v45 + 8))(v17, v32);
      (*(v31 + 8))(v48, v11);
      swift_unknownObjectRelease();
      v34 = 0;
      *&v37 = v49;
      v48 = v37;
      v47 = 0u;
      v35 = 0x80;
    }
  }

  else
  {
    LOBYTE(v49) = 0;
    sub_1B0D1D310();
    v30 = v48;
    sub_1B0E467F8();
    sub_1B0D25FC0();
    sub_1B0E46868();
    (*(v42 + 8))(v10, v8);
    (*(v40 + 8))(v30, v11);
    swift_unknownObjectRelease();
    v34 = 0;
    v35 = 0;
    v47 = v50;
    v48 = v49;
    v36 = v46;
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  v38 = v47;
  result = *&v48;
  *v36 = v48;
  *(v36 + 16) = v38;
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  return result;
}

unint64_t sub_1B0D1DEBC()
{
  result = qword_1EB6DC8C0;
  if (!qword_1EB6DC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8C0);
  }

  return result;
}

unint64_t sub_1B0D1DF10()
{
  result = qword_1EB6DC878;
  if (!qword_1EB6DC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC878);
  }

  return result;
}

unint64_t sub_1B0D1DF64()
{
  result = qword_1EB6E6850;
  if (!qword_1EB6E6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6850);
  }

  return result;
}

unint64_t sub_1B0D1DFC8()
{
  result = qword_1EB6DC890;
  if (!qword_1EB6DC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC890);
  }

  return result;
}

unint64_t sub_1B0D1E01C()
{
  result = qword_1EB6E6858;
  if (!qword_1EB6E6858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6858);
  }

  return result;
}

unint64_t sub_1B0D1E070()
{
  result = qword_1EB6DC8D8;
  if (!qword_1EB6DC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8D8);
  }

  return result;
}

unint64_t sub_1B0D1E0C4()
{
  result = qword_1EB6E6860;
  if (!qword_1EB6E6860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6860);
  }

  return result;
}

unint64_t sub_1B0D1E118()
{
  result = qword_1EB6DC8A8;
  if (!qword_1EB6DC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8A8);
  }

  return result;
}

unint64_t sub_1B0D1E16C()
{
  result = qword_1EB6E6868;
  if (!qword_1EB6E6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6868);
  }

  return result;
}

uint64_t sub_1B0D1E1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2F790 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

double sub_1B0D1E328@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C08, &qword_1B0EED9A0);
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v52 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C10, &qword_1B0EED9A8);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v41 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C18, &qword_1B0EED9B0);
  v45 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C20, &qword_1B0EED9B8);
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C28, &qword_1B0EED9C0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1B0D1DEBC();
  v17 = v53;
  sub_1B0E46D18();
  if (v17)
  {
    goto LABEL_9;
  }

  v41 = v9;
  v42 = v11;
  v18 = v8;
  v20 = v50;
  v19 = v51;
  v21 = v52;
  *&v53 = v13;
  v22 = sub_1B0E468A8();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
  {
    v26 = sub_1B0E46338();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v28 = &type metadata for MessageFromSearchIndexer;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v53 + 8))(v15, v12);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v58);
    return result;
  }

  if (*(v22 + 32) <= 1u)
  {
    if (*(v22 + 32))
    {
      LOBYTE(v54) = 1;
      sub_1B0D1E070();
      sub_1B0E467F8();
      sub_1B0D25E70();
      sub_1B0E46868();
      (*(v45 + 8))(v18, v20);
      (*(v53 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v39 = v54;
      v37 = v55;
      v53 = v56;
      v38 = v57 | 0x40;
LABEL_18:
      v31 = v49;
      goto LABEL_19;
    }

    LOBYTE(v54) = 0;
    sub_1B0D1E118();
    v30 = v42;
    sub_1B0E467F8();
    sub_1B0D25EC4();
    v36 = v41;
    sub_1B0E46868();
    (*(v43 + 8))(v30, v36);
    (*(v53 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v37 = 0;
    v38 = 0;
    v39 = v54;
    v40 = 0uLL;
LABEL_17:
    v53 = v40;
    goto LABEL_18;
  }

  v50 = v22;
  v31 = v49;
  if (v24 != 2)
  {
    LOBYTE(v54) = 3;
    sub_1B0D1DF10();
    sub_1B0E467F8();
    v34 = v53;
    sub_1B0D259CC();
    v35 = v44;
    sub_1B0E46868();
    (*(v48 + 8))(v21, v35);
    (*(v34 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v39 = v54;
    v37 = v55;
    v38 = -64;
    v40 = v56;
    goto LABEL_17;
  }

  LOBYTE(v54) = 2;
  sub_1B0D1DFC8();
  sub_1B0E467F8();
  v32 = v53;
  sub_1B0D25E1C();
  v33 = v46;
  sub_1B0E46868();
  (*(v47 + 8))(v19, v33);
  (*(v32 + 8))(v15, v12);
  swift_unknownObjectRelease();
  v39 = v54;
  v37 = v55;
  v53 = 0u;
  v38 = 0x80;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(v58);
  *v31 = v39;
  *(v31 + 8) = v37;
  result = *&v53;
  *(v31 + 16) = v53;
  *(v31 + 32) = v38;
  return result;
}

uint64_t sub_1B0D1EB88(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

unint64_t sub_1B0D1EBCC()
{
  result = qword_1EB6DC8E0;
  if (!qword_1EB6DC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8E0);
  }

  return result;
}

unint64_t sub_1B0D1EC20()
{
  result = qword_1EB6DC860;
  if (!qword_1EB6DC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC860);
  }

  return result;
}

uint64_t sub_1B0D1EC74(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 26);
  return v2(&v5);
}

unint64_t sub_1B0D1ECB8()
{
  result = qword_1EB6E6870;
  if (!qword_1EB6E6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6870);
  }

  return result;
}

unint64_t sub_1B0D1ED0C()
{
  result = qword_1EB6E6878;
  if (!qword_1EB6E6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6878);
  }

  return result;
}

unint64_t sub_1B0D1ED60()
{
  result = qword_1EB6DC750;
  if (!qword_1EB6DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC750);
  }

  return result;
}

unint64_t sub_1B0D1EDB4()
{
  result = qword_1EB6E68B0;
  if (!qword_1EB6E68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68B0);
  }

  return result;
}

unint64_t sub_1B0D1EE08()
{
  result = qword_1EB6E68B8;
  if (!qword_1EB6E68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68B8);
  }

  return result;
}

unint64_t sub_1B0D1EE5C()
{
  result = qword_1EB6E68C0;
  if (!qword_1EB6E68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68C0);
  }

  return result;
}

unint64_t sub_1B0D1EEB0()
{
  result = qword_1EB6E68C8;
  if (!qword_1EB6E68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E68C8);
  }

  return result;
}

unint64_t sub_1B0D1EF04()
{
  result = qword_1EB6DC728;
  if (!qword_1EB6DC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC728);
  }

  return result;
}

uint64_t sub_1B0D1EF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265666544646964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746F4E646964 && a2 == 0xEE006574656C706DLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B0F2F7B0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C706D6F43646964 && a2 == 0xEB00000000657465 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D1F11C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BD8, &qword_1B0EED970);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v37[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BE0, &qword_1B0EED978);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BE8, &qword_1B0EED980);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v37[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BF0, &qword_1B0EED988);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BF8, &qword_1B0EED990);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C00, &qword_1B0EED998);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_1B0D1ED60();
  v20 = v53;
  sub_1B0E46D18();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = sub_1B0E468A8();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = sub_1B0E46338();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v30 = &type metadata for IndexRequest.Response;
    v31 = v40;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      sub_1B0D1EEB0();
      v34 = v40;
      sub_1B0E467F8();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      sub_1B0D1EF04();
      v34 = v40;
      sub_1B0E467F8();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      sub_1B0D1EE5C();
      v33 = v40;
      sub_1B0E467F8();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        sub_1B0D1EE08();
        sub_1B0E467F8();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        sub_1B0D1EDB4();
        v35 = v50;
        sub_1B0E467F8();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v54);
  return v38;
}

unint64_t sub_1B0D1F814()
{
  result = qword_1EB6DC7B0;
  if (!qword_1EB6DC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7B0);
  }

  return result;
}

unint64_t sub_1B0D1F868()
{
  result = qword_1EB6DC798;
  if (!qword_1EB6DC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC798);
  }

  return result;
}

unint64_t sub_1B0D1F8BC()
{
  result = qword_1EB6DC758;
  if (!qword_1EB6DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC758);
  }

  return result;
}

unint64_t sub_1B0D1F910()
{
  result = qword_1EB6DC780;
  if (!qword_1EB6DC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC780);
  }

  return result;
}

unint64_t sub_1B0D1F964()
{
  result = qword_1EB6DB318;
  if (!qword_1EB6DB318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E68E8, &qword_1B0EEA860);
    sub_1B0D1F9E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB318);
  }

  return result;
}

unint64_t sub_1B0D1F9E8()
{
  result = qword_1EB6DC400;
  if (!qword_1EB6DC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC400);
  }

  return result;
}

void *sub_1B0D1FA3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BA8, &qword_1B0EED958);
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BB0, &qword_1B0EED960);
  v26 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BB8, &qword_1B0EED968);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_1B0D1F814();
  v13 = v27;
  sub_1B0E46D18();
  if (!v13)
  {
    v27 = v9;
    v14 = sub_1B0E468A8();
    if (*(v14 + 16) == 1)
    {
      if (*(v14 + 32))
      {
        LOBYTE(v31) = 1;
        sub_1B0D1F868();
        sub_1B0E467F8();
        v15 = v27;
        sub_1B0D25CF0();
        v20 = v4;
        v21 = v25;
        sub_1B0E46868();
        (*(v24 + 8))(v20, v21);
        (*(v15 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v5 = v31;
      }

      else
      {
        v25 = v14;
        LOBYTE(v31) = 0;
        sub_1B0D1F910();
        sub_1B0E467F8();
        v19 = v27;
        LOBYTE(v30) = 0;
        sub_1B0D25CF0();
        v22 = v5;
        sub_1B0E46868();
        v5 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68E8, &qword_1B0EEA860);
        v29 = 1;
        sub_1B0D25D44();
        sub_1B0E46868();
        (*(v26 + 8))(v7, v22);
        (*(v19 + 8))(0, v8);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16 = sub_1B0E46338();
      swift_allocError();
      v5 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
      *v5 = &type metadata for IndexRequest;
      sub_1B0E46808();
      sub_1B0E46328();
      (*(*(v16 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      (*(v27 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  return v5;
}

unint64_t sub_1B0D2000C()
{
  result = qword_1EB6DC5C0;
  if (!qword_1EB6DC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5C0);
  }

  return result;
}

unint64_t sub_1B0D20060()
{
  result = qword_1EB6DC5A8;
  if (!qword_1EB6DC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5A8);
  }

  return result;
}

void *sub_1B0D200B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B90, &qword_1B0EED940);
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B98, &qword_1B0EED948);
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v17 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2000C();
  sub_1B0E46D18();
  if (v1)
  {
    goto LABEL_5;
  }

  v18 = a1;
  v19 = v6;
  v10 = v22;
  if (*(sub_1B0E468A8() + 16) != 1)
  {
    v12 = v10;
    v13 = sub_1B0E46338();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v15 = &type metadata for CredentialRequest;
    v9 = v8;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    (*(v19 + 8))(v8, v12);
    swift_unknownObjectRelease();
    a1 = v18;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v9;
  }

  sub_1B0D20060();
  sub_1B0E467F8();
  v11 = v19;
  sub_1B0D12EDC();
  sub_1B0E46868();
  (*(v20 + 8))(v5, v3);
  (*(v11 + 8))(v8, v10);
  swift_unknownObjectRelease();
  v9 = v21;
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v9;
}

unint64_t sub_1B0D20434()
{
  result = qword_1EB6DC588;
  if (!qword_1EB6DC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC588);
  }

  return result;
}

unint64_t sub_1B0D20488()
{
  result = qword_1EB6DC570;
  if (!qword_1EB6DC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC570);
  }

  return result;
}

unint64_t sub_1B0D204DC()
{
  result = qword_1EB6DB320;
  if (!qword_1EB6DB320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6910, &qword_1B0EEA888);
    sub_1B0D20560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB320);
  }

  return result;
}

unint64_t sub_1B0D20560()
{
  result = qword_1EB6DC7D8;
  if (!qword_1EB6DC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7D8);
  }

  return result;
}

void *sub_1B0D205B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B70, &qword_1B0EED930);
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B78, &qword_1B0EED938);
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v17 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D20434();
  sub_1B0E46D18();
  if (v1)
  {
    goto LABEL_5;
  }

  v17 = a1;
  v18 = v6;
  v10 = v20;
  if (*(sub_1B0E468A8() + 16) != 1)
  {
    v12 = v10;
    v13 = sub_1B0E46338();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v15 = &type metadata for CredentialResponse;
    v9 = v8;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    (*(v18 + 8))(v8, v12);
    swift_unknownObjectRelease();
    a1 = v17;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v9;
  }

  sub_1B0D20488();
  sub_1B0E467F8();
  v11 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6910, &qword_1B0EEA888);
  sub_1B0D25C18();
  sub_1B0E46868();
  (*(v19 + 8))(v5, v3);
  (*(v11 + 8))(v8, v10);
  swift_unknownObjectRelease();
  v9 = v21;
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v9;
}

unint64_t sub_1B0D20944()
{
  result = qword_1EB6DC6B8;
  if (!qword_1EB6DC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6B8);
  }

  return result;
}

unint64_t sub_1B0D20998()
{
  result = qword_1EB6DC690;
  if (!qword_1EB6DC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC690);
  }

  return result;
}

unint64_t sub_1B0D209EC()
{
  result = qword_1EB6E6950;
  if (!qword_1EB6E6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6950);
  }

  return result;
}

unint64_t sub_1B0D20A40()
{
  result = qword_1EB6DC390;
  if (!qword_1EB6DC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC390);
  }

  return result;
}

unint64_t sub_1B0D20A94()
{
  result = qword_1EB6E6958;
  if (!qword_1EB6E6958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    sub_1B0D20B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6958);
  }

  return result;
}

unint64_t sub_1B0D20B18()
{
  result = qword_1EB6E6960;
  if (!qword_1EB6E6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6960);
  }

  return result;
}

unint64_t sub_1B0D20B6C()
{
  result = qword_1EB6DC668;
  if (!qword_1EB6DC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC668);
  }

  return result;
}

unint64_t sub_1B0D20BC0()
{
  result = qword_1EB6E6968;
  if (!qword_1EB6E6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6968);
  }

  return result;
}

unint64_t sub_1B0D20C14()
{
  result = qword_1EB6E6970;
  if (!qword_1EB6E6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6970);
  }

  return result;
}

unint64_t sub_1B0D20C68()
{
  result = qword_1EB6DC6D0;
  if (!qword_1EB6DC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6D0);
  }

  return result;
}

unint64_t sub_1B0D20CBC()
{
  result = qword_1EB6DC7B8;
  if (!qword_1EB6DC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7B8);
  }

  return result;
}

uint64_t sub_1B0D20D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756B6F6F6CLL && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2F7D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B0F2F7F0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2F810 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41646E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D20F18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F666562 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D21020@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B28, &qword_1B0EED8F8);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v63 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B30, &qword_1B0EED900);
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v81 = &v63 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B38, &qword_1B0EED908);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v80 = &v63 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B40, &qword_1B0EED910);
  v75 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v79 = &v63 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B48, &qword_1B0EED918);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B50, &qword_1B0EED920);
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B58, &qword_1B0EED928);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - v15;
  v17 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_1B0D20944();
  v18 = v82;
  sub_1B0E46D18();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v83);
  }

  v63 = v10;
  v20 = v79;
  v19 = v80;
  v21 = v81;
  v64 = 0;
  v65 = v14;
  v82 = v16;
  v22 = sub_1B0E468A8();
  v23 = v22;
  if (*(v22 + 16) != 1 || (v24 = *(v22 + 32), v24 == 6))
  {
    v29 = sub_1B0E46338();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v31 = &type metadata for SearchRequest;
    v32 = v82;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v65 + 8))(v32, v13);
LABEL_25:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v83);
  }

  if (*(v22 + 32) <= 2u)
  {
    if (*(v22 + 32))
    {
      v25 = v82;
      if (v24 == 1)
      {
        LOBYTE(v85) = 1;
        sub_1B0D20C14();
        v26 = v64;
        sub_1B0E467F8();
        if (!v26)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B0D25B58(&qword_1EB6E6B60, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          v27 = v71;
          sub_1B0E46868();
          v28 = 0;
          (*(v69 + 8))(v9, v27);
          (*(v65 + 8))(v25, v13);
          swift_unknownObjectRelease();
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = v85;
          v57 = 1;
LABEL_29:
          v41 = v78;
          goto LABEL_30;
        }
      }

      else
      {
        LOBYTE(v85) = 2;
        sub_1B0D20BC0();
        v43 = v20;
        v44 = v64;
        sub_1B0E467F8();
        if (!v44)
        {
          LOBYTE(v88) = 0;
          sub_1B0D25B04();
          v52 = v67;
          sub_1B0E46868();
          v59 = v85;
          v77 = v86;
          v54 = v87;
          v84 = 1;
          sub_1B0D25978();
          sub_1B0E46838();
          v60 = v75;
          v80 = v88;
          v81 = v59;
          v61 = BYTE4(v88);
          v84 = 2;
          v55 = sub_1B0E46858();
          (*(v60 + 8))(v43, v52);
          (*(v65 + 8))(v82, v13);
          swift_unknownObjectRelease();
          v62 = 0x100000000;
          if (!v61)
          {
            v62 = 0;
          }

          v56 = v81;
          v28 = v62 | v80;
          v57 = 2;
          v53 = v77;
          v41 = v78;
          goto LABEL_30;
        }
      }

      (*(v65 + 8))(v25, v13);
    }

    else
    {
      LOBYTE(v85) = 0;
      sub_1B0D20C68();
      v37 = v82;
      v38 = v64;
      sub_1B0E467F8();
      if (!v38)
      {
        sub_1B0D25BC4();
        v49 = v63;
        sub_1B0E46868();
        v28 = 0;
        (*(v66 + 8))(v12, v49);
        (*(v65 + 8))(v37, v13);
        swift_unknownObjectRelease();
        v55 = 0;
        v57 = 0;
        v56 = v85;
        v53 = v86;
        v54 = v87;
        goto LABEL_29;
      }

      (*(v65 + 8))(v37, v13);
    }

    goto LABEL_25;
  }

  if (v24 == 3)
  {
    LOBYTE(v85) = 3;
    sub_1B0D20B6C();
    v39 = v82;
    v40 = v64;
    sub_1B0E467F8();
    v41 = v78;
    v42 = v65;
    if (v40)
    {
      (*(v65 + 8))(v39, v13);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v83);
    }

    (*(v68 + 8))(v19, v70);
    (*(v42 + 8))(v39, v13);
    swift_unknownObjectRelease();
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v28 = 0;
    v55 = 0;
    v57 = 4;
  }

  else
  {
    v80 = v13;
    v33 = v65;
    if (v24 != 4)
    {
      LOBYTE(v85) = 5;
      sub_1B0D20998();
      v45 = v77;
      v46 = v80;
      v47 = v82;
      v48 = v64;
      sub_1B0E467F8();
      v28 = v48;
      if (!v48)
      {
        (*(v72 + 8))(v45, v73);
        (*(v33 + 8))(v47, v46);
        swift_unknownObjectRelease();
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v57 = 4;
        v56 = 1;
        goto LABEL_29;
      }

      (*(v33 + 8))(v47, v46);
      goto LABEL_25;
    }

    LOBYTE(v85) = 4;
    sub_1B0D209EC();
    v34 = v80;
    v35 = v82;
    v36 = v64;
    sub_1B0E467F8();
    if (v36)
    {
      (*(v33 + 8))(v35, v34);
      goto LABEL_25;
    }

    LOBYTE(v88) = 0;
    sub_1B0D25B04();
    v50 = v74;
    sub_1B0E46868();
    v79 = v23;
    v56 = v85;
    v58 = v86;
    v54 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    v84 = 1;
    sub_1B0D258F4();
    sub_1B0E46868();
    v77 = v58;
    (*(v76 + 8))(v21, v50);
    (*(v33 + 8))(v82, v80);
    swift_unknownObjectRelease();
    v55 = 0;
    v28 = v88;
    v57 = 3;
    v53 = v77;
    v41 = v78;
  }

LABEL_30:
  result = __swift_destroy_boxed_opaque_existential_0(v83);
  *v41 = v56;
  *(v41 + 8) = v53;
  *(v41 + 16) = v54;
  *(v41 + 24) = v28;
  *(v41 + 32) = v55;
  *(v41 + 40) = v57;
  return result;
}

unint64_t sub_1B0D21D8C()
{
  result = qword_1EB6DC630;
  if (!qword_1EB6DC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC630);
  }

  return result;
}

unint64_t sub_1B0D21DE0()
{
  result = qword_1EB6DC5F8;
  if (!qword_1EB6DC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5F8);
  }

  return result;
}

unint64_t sub_1B0D21E34()
{
  result = qword_1EB6E69B0;
  if (!qword_1EB6E69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69B0);
  }

  return result;
}

unint64_t sub_1B0D21E88()
{
  result = qword_1EB6DC5E0;
  if (!qword_1EB6DC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5E0);
  }

  return result;
}

unint64_t sub_1B0D21EDC()
{
  result = qword_1EB6E69B8;
  if (!qword_1EB6E69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69B8);
  }

  return result;
}

unint64_t sub_1B0D21F30()
{
  result = qword_1EB6E69C0;
  if (!qword_1EB6E69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69C0);
  }

  return result;
}

unint64_t sub_1B0D21F84()
{
  result = qword_1EB6E69C8;
  if (!qword_1EB6E69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69C8);
  }

  return result;
}

unint64_t sub_1B0D21FD8()
{
  result = qword_1EB6DC648;
  if (!qword_1EB6DC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC648);
  }

  return result;
}

uint64_t sub_1B0D2202C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552686372616573 && a2 == 0xED000073746C7573;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655270756B6F6F6CLL && a2 == 0xED000073746C7573 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2F830 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2F850 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646564756C637865 && a2 == 0xEC00000073444955 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41746E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D2224C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6AE8, &qword_1B0EED8B8);
  v61 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v74 = &v56 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6AF0, &qword_1B0EED8C0);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v56 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6AF8, &qword_1B0EED8C8);
  v67 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v73 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B00, &qword_1B0EED8D0);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B08, &qword_1B0EED8D8);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B10, &qword_1B0EED8E0);
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6B18, &unk_1B0EED8E8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - v16;
  v18 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_1B0D21D8C();
  v19 = v76;
  sub_1B0E46D18();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(v81);
  }

  v57 = v11;
  v20 = v10;
  v22 = v72;
  v21 = v73;
  v23 = v74;
  v58 = 0;
  v59 = v15;
  v24 = v75;
  v76 = v17;
  v25 = sub_1B0E468A8();
  if (*(v25 + 16) != 1 || (v26 = *(v25 + 32), v26 == 6))
  {
    v32 = sub_1B0E46338();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v34 = &type metadata for SearchResponse;
    v35 = v76;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v59 + 8))(v35, v14);
    goto LABEL_11;
  }

  if (*(v25 + 32) > 2u)
  {
    if (v26 == 3)
    {
      LOBYTE(v77) = 3;
      sub_1B0D21E88();
      v37 = v76;
      v44 = v58;
      sub_1B0E467F8();
      if (!v44)
      {
        sub_1B0D259CC();
        v49 = v62;
        sub_1B0E46868();
        v50 = v59;
        v58 = 0;
        (*(v67 + 8))(v21, v49);
        (*(v50 + 8))(v37, v14);
        swift_unknownObjectRelease();
        v55 = v77;
        v53 = v78;
        v31 = v79;
        v54 = v80;
        goto LABEL_30;
      }
    }

    else
    {
      v73 = v25;
      v37 = v76;
      if (v26 == 4)
      {
        LOBYTE(v77) = 4;
        sub_1B0D21E34();
        v38 = v71;
        v39 = v58;
        sub_1B0E467F8();
        if (!v39)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
          sub_1B0D258F4();
          v40 = v68;
          sub_1B0E46868();
          v31 = 0;
          v58 = 0;
          (*(v70 + 8))(v38, v40);
          (*(v59 + 8))(v37, v14);
          swift_unknownObjectRelease();
          v53 = 0;
          v54 = 0;
          v55 = v77;
LABEL_30:
          v24 = v75;
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v77) = 5;
        sub_1B0D21DE0();
        v47 = v58;
        sub_1B0E467F8();
        v31 = v47;
        if (!v47)
        {
          v58 = 0;
          (*(v61 + 8))(v23, v69);
          (*(v59 + 8))(v37, v14);
          swift_unknownObjectRelease();
          v55 = 0;
          v53 = 0;
          v54 = 0;
          goto LABEL_30;
        }
      }
    }

    (*(v59 + 8))(v37, v14);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v81);
  }

  if (!*(v25 + 32))
  {
    v73 = v25;
    LOBYTE(v77) = 0;
    sub_1B0D21FD8();
    v41 = v13;
    v42 = v76;
    v43 = v58;
    sub_1B0E467F8();
    if (!v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6DB750, sub_1B0D25B04, sub_1B0D258F4, MEMORY[0x1E69E5E58]);
      v48 = v57;
      sub_1B0E46868();
      v31 = 0;
      (*(v60 + 8))(v41, v48);
      (*(v59 + 8))(v42, v14);
      swift_unknownObjectRelease();
      v58 = 0;
      goto LABEL_29;
    }

    (*(v59 + 8))(v42, v14);
    goto LABEL_11;
  }

  if (v26 == 1)
  {
    LOBYTE(v77) = 1;
    sub_1B0D21F84();
    v27 = v20;
    v28 = v76;
    v29 = v58;
    sub_1B0E467F8();
    if (!v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
      sub_1B0D25A74(&qword_1EB6DB750, sub_1B0D25B04, sub_1B0D258F4, MEMORY[0x1E69E5E58]);
      v30 = v64;
      sub_1B0E46868();
      v31 = 0;
      v58 = 0;
      (*(v63 + 8))(v27, v30);
      (*(v59 + 8))(v28, v14);
      swift_unknownObjectRelease();
LABEL_29:
      v53 = 0;
      v54 = 0;
      v55 = v77;
      goto LABEL_31;
    }

    (*(v59 + 8))(v28, v14);
    goto LABEL_11;
  }

  LOBYTE(v77) = 2;
  sub_1B0D21EDC();
  v45 = v76;
  v46 = v58;
  sub_1B0E467F8();
  if (v46)
  {
    (*(v59 + 8))(v45, v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v81);
  }

  sub_1B0D25A20();
  v51 = v66;
  sub_1B0E46838();
  v52 = v59;
  v58 = 0;
  (*(v65 + 8))(v22, v51);
  (*(v52 + 8))(v76, v14);
  swift_unknownObjectRelease();
  v31 = 0;
  v54 = 0;
  v55 = v77;
  v53 = v78;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_0(v81);
  *v24 = v55;
  *(v24 + 8) = v53;
  *(v24 + 16) = v31;
  *(v24 + 24) = v54;
  *(v24 + 32) = v26;
  return result;
}

unint64_t sub_1B0D22F08()
{
  result = qword_1EB6E69D8;
  if (!qword_1EB6E69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69D8);
  }

  return result;
}

unint64_t sub_1B0D22F5C()
{
  result = qword_1EB6E69E0;
  if (!qword_1EB6E69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC13SearchRequestO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_1B0D22FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 41))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 40) >> 1) & 0x1C | (*(a1 + 40) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0D23038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC19IndexingDiagnosticsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC14SearchResponseO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1B0D23114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 33))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0D23168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1B0D23238(uint64_t *a1, int a2)
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

uint64_t sub_1B0D23280(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0D232CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D23314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D23364(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1B0D23398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D233E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D23428(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1B0D23698()
{
  result = qword_1EB6E69E8;
  if (!qword_1EB6E69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69E8);
  }

  return result;
}

unint64_t sub_1B0D236F0()
{
  result = qword_1EB6E69F0;
  if (!qword_1EB6E69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69F0);
  }

  return result;
}

unint64_t sub_1B0D23748()
{
  result = qword_1EB6E69F8;
  if (!qword_1EB6E69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E69F8);
  }

  return result;
}

unint64_t sub_1B0D237A0()
{
  result = qword_1EB6E6A00;
  if (!qword_1EB6E6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A00);
  }

  return result;
}

unint64_t sub_1B0D237F8()
{
  result = qword_1EB6E6A08;
  if (!qword_1EB6E6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A08);
  }

  return result;
}

unint64_t sub_1B0D23850()
{
  result = qword_1EB6E6A10;
  if (!qword_1EB6E6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A10);
  }

  return result;
}

unint64_t sub_1B0D238A8()
{
  result = qword_1EB6E6A18;
  if (!qword_1EB6E6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A18);
  }

  return result;
}

unint64_t sub_1B0D23900()
{
  result = qword_1EB6E6A20;
  if (!qword_1EB6E6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A20);
  }

  return result;
}

unint64_t sub_1B0D23958()
{
  result = qword_1EB6E6A28;
  if (!qword_1EB6E6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A28);
  }

  return result;
}

unint64_t sub_1B0D239B0()
{
  result = qword_1EB6E6A30;
  if (!qword_1EB6E6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A30);
  }

  return result;
}

unint64_t sub_1B0D23A08()
{
  result = qword_1EB6E6A38;
  if (!qword_1EB6E6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A38);
  }

  return result;
}

unint64_t sub_1B0D23A60()
{
  result = qword_1EB6E6A40;
  if (!qword_1EB6E6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A40);
  }

  return result;
}

unint64_t sub_1B0D23AB8()
{
  result = qword_1EB6E6A48;
  if (!qword_1EB6E6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A48);
  }

  return result;
}

unint64_t sub_1B0D23B10()
{
  result = qword_1EB6E6A50;
  if (!qword_1EB6E6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A50);
  }

  return result;
}

unint64_t sub_1B0D23B68()
{
  result = qword_1EB6E6A58;
  if (!qword_1EB6E6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A58);
  }

  return result;
}

unint64_t sub_1B0D23BC0()
{
  result = qword_1EB6E6A60;
  if (!qword_1EB6E6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A60);
  }

  return result;
}

unint64_t sub_1B0D23C18()
{
  result = qword_1EB6E6A68;
  if (!qword_1EB6E6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A68);
  }

  return result;
}

unint64_t sub_1B0D23C70()
{
  result = qword_1EB6E6A70;
  if (!qword_1EB6E6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A70);
  }

  return result;
}

unint64_t sub_1B0D23CC8()
{
  result = qword_1EB6E6A78;
  if (!qword_1EB6E6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A78);
  }

  return result;
}

unint64_t sub_1B0D23D20()
{
  result = qword_1EB6E6A80;
  if (!qword_1EB6E6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A80);
  }

  return result;
}

unint64_t sub_1B0D23D78()
{
  result = qword_1EB6E6A88;
  if (!qword_1EB6E6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A88);
  }

  return result;
}

unint64_t sub_1B0D23DD0()
{
  result = qword_1EB6E6A90;
  if (!qword_1EB6E6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A90);
  }

  return result;
}

unint64_t sub_1B0D23E28()
{
  result = qword_1EB6E6A98;
  if (!qword_1EB6E6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6A98);
  }

  return result;
}

unint64_t sub_1B0D23E80()
{
  result = qword_1EB6E6AA0;
  if (!qword_1EB6E6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AA0);
  }

  return result;
}

unint64_t sub_1B0D23ED8()
{
  result = qword_1EB6E6AA8;
  if (!qword_1EB6E6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AA8);
  }

  return result;
}

unint64_t sub_1B0D23F30()
{
  result = qword_1EB6E6AB0;
  if (!qword_1EB6E6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AB0);
  }

  return result;
}

unint64_t sub_1B0D23F88()
{
  result = qword_1EB6E6AB8;
  if (!qword_1EB6E6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AB8);
  }

  return result;
}

unint64_t sub_1B0D23FE0()
{
  result = qword_1EB6E6AC0;
  if (!qword_1EB6E6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AC0);
  }

  return result;
}

unint64_t sub_1B0D24038()
{
  result = qword_1EB6DC638;
  if (!qword_1EB6DC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC638);
  }

  return result;
}

unint64_t sub_1B0D24090()
{
  result = qword_1EB6DC640;
  if (!qword_1EB6DC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC640);
  }

  return result;
}

unint64_t sub_1B0D240E8()
{
  result = qword_1EB6DC600;
  if (!qword_1EB6DC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC600);
  }

  return result;
}

unint64_t sub_1B0D24140()
{
  result = qword_1EB6DC608;
  if (!qword_1EB6DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC608);
  }

  return result;
}

unint64_t sub_1B0D24198()
{
  result = qword_1EB6E6AC8;
  if (!qword_1EB6E6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AC8);
  }

  return result;
}

unint64_t sub_1B0D241F0()
{
  result = qword_1EB6E6AD0;
  if (!qword_1EB6E6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AD0);
  }

  return result;
}

unint64_t sub_1B0D24248()
{
  result = qword_1EB6DC5D0;
  if (!qword_1EB6DC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5D0);
  }

  return result;
}

unint64_t sub_1B0D242A0()
{
  result = qword_1EB6DC5D8;
  if (!qword_1EB6DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5D8);
  }

  return result;
}

unint64_t sub_1B0D242F8()
{
  result = qword_1EB6DC610;
  if (!qword_1EB6DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC610);
  }

  return result;
}

unint64_t sub_1B0D24350()
{
  result = qword_1EB6DC618;
  if (!qword_1EB6DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC618);
  }

  return result;
}

unint64_t sub_1B0D243A8()
{
  result = qword_1EB6DC5E8;
  if (!qword_1EB6DC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5E8);
  }

  return result;
}

unint64_t sub_1B0D24400()
{
  result = qword_1EB6DC5F0;
  if (!qword_1EB6DC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5F0);
  }

  return result;
}

unint64_t sub_1B0D24458()
{
  result = qword_1EB6DC620;
  if (!qword_1EB6DC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC620);
  }

  return result;
}

unint64_t sub_1B0D244B0()
{
  result = qword_1EB6DC628;
  if (!qword_1EB6DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC628);
  }

  return result;
}

unint64_t sub_1B0D24508()
{
  result = qword_1EB6DC6C0;
  if (!qword_1EB6DC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6C0);
  }

  return result;
}

unint64_t sub_1B0D24560()
{
  result = qword_1EB6DC6C8;
  if (!qword_1EB6DC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6C8);
  }

  return result;
}

unint64_t sub_1B0D245B8()
{
  result = qword_1EB6DC698;
  if (!qword_1EB6DC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC698);
  }

  return result;
}

unint64_t sub_1B0D24610()
{
  result = qword_1EB6DC6A0;
  if (!qword_1EB6DC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6A0);
  }

  return result;
}

unint64_t sub_1B0D24668()
{
  result = qword_1EB6E6AD8;
  if (!qword_1EB6E6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AD8);
  }

  return result;
}

unint64_t sub_1B0D246C0()
{
  result = qword_1EB6E6AE0;
  if (!qword_1EB6E6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6AE0);
  }

  return result;
}

unint64_t sub_1B0D24718()
{
  result = qword_1EB6DC658;
  if (!qword_1EB6DC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC658);
  }

  return result;
}

unint64_t sub_1B0D24770()
{
  result = qword_1EB6DC660;
  if (!qword_1EB6DC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC660);
  }

  return result;
}

unint64_t sub_1B0D247C8()
{
  result = qword_1EB6DC670;
  if (!qword_1EB6DC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC670);
  }

  return result;
}

unint64_t sub_1B0D24820()
{
  result = qword_1EB6DC678;
  if (!qword_1EB6DC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC678);
  }

  return result;
}

unint64_t sub_1B0D24878()
{
  result = qword_1EB6DC680;
  if (!qword_1EB6DC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC680);
  }

  return result;
}

unint64_t sub_1B0D248D0()
{
  result = qword_1EB6DC688;
  if (!qword_1EB6DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC688);
  }

  return result;
}

unint64_t sub_1B0D24928()
{
  result = qword_1EB6DC6A8;
  if (!qword_1EB6DC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6A8);
  }

  return result;
}

unint64_t sub_1B0D24980()
{
  result = qword_1EB6DC6B0;
  if (!qword_1EB6DC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6B0);
  }

  return result;
}

unint64_t sub_1B0D249D8()
{
  result = qword_1EB6DC560;
  if (!qword_1EB6DC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC560);
  }

  return result;
}

unint64_t sub_1B0D24A30()
{
  result = qword_1EB6DC568;
  if (!qword_1EB6DC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC568);
  }

  return result;
}

unint64_t sub_1B0D24A88()
{
  result = qword_1EB6DC578;
  if (!qword_1EB6DC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC578);
  }

  return result;
}

unint64_t sub_1B0D24AE0()
{
  result = qword_1EB6DC580;
  if (!qword_1EB6DC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC580);
  }

  return result;
}

unint64_t sub_1B0D24B38()
{
  result = qword_1EB6DC598;
  if (!qword_1EB6DC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC598);
  }

  return result;
}

unint64_t sub_1B0D24B90()
{
  result = qword_1EB6DC5A0;
  if (!qword_1EB6DC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5A0);
  }

  return result;
}

unint64_t sub_1B0D24BE8()
{
  result = qword_1EB6DC5B0;
  if (!qword_1EB6DC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5B0);
  }

  return result;
}

unint64_t sub_1B0D24C40()
{
  result = qword_1EB6DC5B8;
  if (!qword_1EB6DC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5B8);
  }

  return result;
}

unint64_t sub_1B0D24C98()
{
  result = qword_1EB6DC770;
  if (!qword_1EB6DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC770);
  }

  return result;
}

unint64_t sub_1B0D24CF0()
{
  result = qword_1EB6DC778;
  if (!qword_1EB6DC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC778);
  }

  return result;
}

unint64_t sub_1B0D24D48()
{
  result = qword_1EB6DC788;
  if (!qword_1EB6DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC788);
  }

  return result;
}

unint64_t sub_1B0D24DA0()
{
  result = qword_1EB6DC790;
  if (!qword_1EB6DC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC790);
  }

  return result;
}

unint64_t sub_1B0D24DF8()
{
  result = qword_1EB6DC7A0;
  if (!qword_1EB6DC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7A0);
  }

  return result;
}

unint64_t sub_1B0D24E50()
{
  result = qword_1EB6DC7A8;
  if (!qword_1EB6DC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7A8);
  }

  return result;
}

unint64_t sub_1B0D24EA8()
{
  result = qword_1EB6DC718;
  if (!qword_1EB6DC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC718);
  }

  return result;
}

unint64_t sub_1B0D24F00()
{
  result = qword_1EB6DC720;
  if (!qword_1EB6DC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC720);
  }

  return result;
}

unint64_t sub_1B0D24F58()
{
  result = qword_1EB6DC6F8;
  if (!qword_1EB6DC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6F8);
  }

  return result;
}

unint64_t sub_1B0D24FB0()
{
  result = qword_1EB6DC700;
  if (!qword_1EB6DC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC700);
  }

  return result;
}

unint64_t sub_1B0D25008()
{
  result = qword_1EB6DC6E8;
  if (!qword_1EB6DC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6E8);
  }

  return result;
}

unint64_t sub_1B0D25060()
{
  result = qword_1EB6DC6F0;
  if (!qword_1EB6DC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6F0);
  }

  return result;
}

unint64_t sub_1B0D250B8()
{
  result = qword_1EB6DC708;
  if (!qword_1EB6DC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC708);
  }

  return result;
}

unint64_t sub_1B0D25110()
{
  result = qword_1EB6DC710;
  if (!qword_1EB6DC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC710);
  }

  return result;
}

unint64_t sub_1B0D25168()
{
  result = qword_1EB6DC730;
  if (!qword_1EB6DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC730);
  }

  return result;
}

unint64_t sub_1B0D251C0()
{
  result = qword_1EB6DC738;
  if (!qword_1EB6DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC738);
  }

  return result;
}

unint64_t sub_1B0D25218()
{
  result = qword_1EB6DC740;
  if (!qword_1EB6DC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC740);
  }

  return result;
}

unint64_t sub_1B0D25270()
{
  result = qword_1EB6DC748;
  if (!qword_1EB6DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC748);
  }

  return result;
}

unint64_t sub_1B0D252C8()
{
  result = qword_1EB6DC898;
  if (!qword_1EB6DC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC898);
  }

  return result;
}

unint64_t sub_1B0D25320()
{
  result = qword_1EB6DC8A0;
  if (!qword_1EB6DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8A0);
  }

  return result;
}

unint64_t sub_1B0D25378()
{
  result = qword_1EB6DC8C8;
  if (!qword_1EB6DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8C8);
  }

  return result;
}

unint64_t sub_1B0D253D0()
{
  result = qword_1EB6DC8D0;
  if (!qword_1EB6DC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8D0);
  }

  return result;
}

unint64_t sub_1B0D25428()
{
  result = qword_1EB6DC880;
  if (!qword_1EB6DC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC880);
  }

  return result;
}

unint64_t sub_1B0D25480()
{
  result = qword_1EB6DC888;
  if (!qword_1EB6DC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC888);
  }

  return result;
}

unint64_t sub_1B0D254D8()
{
  result = qword_1EB6DC868;
  if (!qword_1EB6DC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC868);
  }

  return result;
}

unint64_t sub_1B0D25530()
{
  result = qword_1EB6DC870;
  if (!qword_1EB6DC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC870);
  }

  return result;
}

unint64_t sub_1B0D25588()
{
  result = qword_1EB6DC8B0;
  if (!qword_1EB6DC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8B0);
  }

  return result;
}

unint64_t sub_1B0D255E0()
{
  result = qword_1EB6DC8B8;
  if (!qword_1EB6DC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8B8);
  }

  return result;
}

unint64_t sub_1B0D25638()
{
  result = qword_1EB6DC900;
  if (!qword_1EB6DC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC900);
  }

  return result;
}

unint64_t sub_1B0D25690()
{
  result = qword_1EB6DC908;
  if (!qword_1EB6DC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC908);
  }

  return result;
}

unint64_t sub_1B0D256E8()
{
  result = qword_1EB6DC930;
  if (!qword_1EB6DC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC930);
  }

  return result;
}

unint64_t sub_1B0D25740()
{
  result = qword_1EB6DC938;
  if (!qword_1EB6DC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC938);
  }

  return result;
}

unint64_t sub_1B0D25798()
{
  result = qword_1EB6DC8E8;
  if (!qword_1EB6DC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8E8);
  }

  return result;
}

unint64_t sub_1B0D257F0()
{
  result = qword_1EB6DC8F0;
  if (!qword_1EB6DC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC8F0);
  }

  return result;
}

unint64_t sub_1B0D25848()
{
  result = qword_1EB6DC918;
  if (!qword_1EB6DC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC918);
  }

  return result;
}

unint64_t sub_1B0D258A0()
{
  result = qword_1EB6DC920;
  if (!qword_1EB6DC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC920);
  }

  return result;
}

unint64_t sub_1B0D258F4()
{
  result = qword_1EB6DB310;
  if (!qword_1EB6DB310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    sub_1B0D25978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB310);
  }

  return result;
}

unint64_t sub_1B0D25978()
{
  result = qword_1EB6DC3F8;
  if (!qword_1EB6DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC3F8);
  }

  return result;
}

unint64_t sub_1B0D259CC()
{
  result = qword_1EB6DC538;
  if (!qword_1EB6DC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC538);
  }

  return result;
}

unint64_t sub_1B0D25A20()
{
  result = qword_1EB6E6B20;
  if (!qword_1EB6E6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B20);
  }

  return result;
}

uint64_t sub_1B0D25A74(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3010, &qword_1B0EA0800);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0D25B04()
{
  result = qword_1EB6DC378;
  if (!qword_1EB6DC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC378);
  }

  return result;
}

uint64_t sub_1B0D25B58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0D25BC4()
{
  result = qword_1EB6E6B68;
  if (!qword_1EB6E6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B68);
  }

  return result;
}

unint64_t sub_1B0D25C18()
{
  result = qword_1EB6E6B80;
  if (!qword_1EB6E6B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6910, &qword_1B0EEA888);
    sub_1B0D25C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B80);
  }

  return result;
}

unint64_t sub_1B0D25C9C()
{
  result = qword_1EB6E6B88;
  if (!qword_1EB6E6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6B88);
  }

  return result;
}

unint64_t sub_1B0D25CF0()
{
  result = qword_1EB6E6BC0;
  if (!qword_1EB6E6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6BC0);
  }

  return result;
}

unint64_t sub_1B0D25D44()
{
  result = qword_1EB6E6BC8;
  if (!qword_1EB6E6BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E68E8, &qword_1B0EEA860);
    sub_1B0D25DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6BC8);
  }

  return result;
}

unint64_t sub_1B0D25DC8()
{
  result = qword_1EB6E6BD0;
  if (!qword_1EB6E6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6BD0);
  }

  return result;
}

unint64_t sub_1B0D25E1C()
{
  result = qword_1EB6DC590;
  if (!qword_1EB6DC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC590);
  }

  return result;
}

unint64_t sub_1B0D25E70()
{
  result = qword_1EB6DC5C8;
  if (!qword_1EB6DC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC5C8);
  }

  return result;
}

unint64_t sub_1B0D25EC4()
{
  result = qword_1EB6DC6E0;
  if (!qword_1EB6DC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC6E0);
  }

  return result;
}

unint64_t sub_1B0D25F18()
{
  result = qword_1EB6E6C50;
  if (!qword_1EB6E6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C50);
  }

  return result;
}

unint64_t sub_1B0D25F6C()
{
  result = qword_1EB6E6C58;
  if (!qword_1EB6E6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C58);
  }

  return result;
}

unint64_t sub_1B0D25FC0()
{
  result = qword_1EB6E6C60;
  if (!qword_1EB6E6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C60);
  }

  return result;
}

uint64_t sub_1B0D26080()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DC3E0);
  __swift_project_value_buffer(v0, qword_1EB6DC3E0);
  return sub_1B0E43998();
}

uint64_t SearchSession.__allocating_init()()
{
  v0 = swift_allocObject();
  SearchSession.init()();
  return v0;
}

uint64_t *SearchSession.init()()
{
  v2 = sub_1B0E439E8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B0E43A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C68, &qword_1B0EED9F0);
  *(swift_allocObject() + 16) = xmmword_1B0EC1E70;
  sub_1B0E439D8();
  sub_1B0D26374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C78, &unk_1B0EEDC70);
  sub_1B0D263CC();
  sub_1B0E460A8();
  v3 = sub_1B0E439C8();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v3;

    sub_1B0E43A08();
  }

  return v0;
}

unint64_t sub_1B0D26374()
{
  result = qword_1EB6DC1A0;
  if (!qword_1EB6DC1A0)
  {
    sub_1B0E439E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC1A0);
  }

  return result;
}

unint64_t sub_1B0D263CC()
{
  result = qword_1EB6DB300;
  if (!qword_1EB6DB300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E6C78, &unk_1B0EEDC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB300);
  }

  return result;
}

uint64_t sub_1B0D26430@<X0>(uint64_t a1@<X8>)
{
  sub_1B0E43A88();
  v2 = sub_1B0E43A98();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1B0D264DC(uint64_t a1)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B0E439A8();
  __swift_project_value_buffer(v1, qword_1EB6DC3E0);
  swift_unknownObjectRetain();
  v2 = sub_1B0E43988();
  v3 = sub_1B0E45908();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CA8, &qword_1B0EEDA38);
    v6 = sub_1B0E44BA8();
    v8 = sub_1B0399D64(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1B0389000, v2, v3, "Ignoring unexpected inbound message %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B272C230](v5, -1, -1);
    MEMORY[0x1B272C230](v4, -1, -1);
  }
}

uint64_t SearchSession.deinit()
{

  sub_1B0E43A48();

  return v0;
}

uint64_t SearchSession.__deallocating_deinit()
{

  sub_1B0E43A48();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SearchSession.cancel(reason:)(Swift::String reason)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B0E439A8();
  __swift_project_value_buffer(v1, qword_1EB6DC3E0);
  v2 = sub_1B0E43988();
  v3 = sub_1B0E45908();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B0389000, v2, v3, "cancel", v4, 2u);
    MEMORY[0x1B272C230](v4, -1, -1);
  }

  sub_1B0E43A48();
}

uint64_t SearchSession.perform(query:_:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B0E439A8();
  __swift_project_value_buffer(v8, qword_1EB6DC3E0);
  v9 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
    v14 = MEMORY[0x1B27272F0](a3, &type metadata for Mailbox);
    MEMORY[0x1B2726E80](v14);

    v15 = sub_1B0399D64(0, 0xE000000000000000, &v22);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1B0389000, v10, v11, "Sending search %s to SearchIndexer.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v23 = v9;
  v24 = a2;
  v26 = 0;
  v27 = 0;
  v25 = a3;
  v28 = 64;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0D293A8;
  *(v17 + 24) = v16;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();
  v18 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E43A28();
}

uint64_t sub_1B0D26C1C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 == -1)
    {
LABEL_3:
      v10 = sub_1B0E439A8();
      __swift_project_value_buffer(v10, qword_1EB6DC3E0);
      sub_1B0D29774(a1, &v49);
      v11 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B0E43988();
      v13 = sub_1B0E458E8();

      sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = a5;
        v17 = swift_slowAlloc();
        v48 = v17;
        v49 = 0;
        *v14 = 136315394;
        v50 = 0xE000000000000000;
        sub_1B0E46508();
        MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
        v18 = MEMORY[0x1B27272F0](a4, &type metadata for Mailbox);
        MEMORY[0x1B2726E80](v18);

        v19 = sub_1B0399D64(v49, v50, &v48);

        *(v14 + 4) = v19;
        *(v14 + 12) = 2112;
        v20 = sub_1B0E42CC8();
        *(v14 + 14) = v20;
        *v15 = v20;
        _os_log_impl(&dword_1B0389000, v12, v13, "Search %s failed: %@", v14, 0x16u);
        sub_1B0398EFC(v15, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v17);
        v21 = v17;
        a5 = v16;
        MEMORY[0x1B272C230](v21, -1, -1);
        MEMORY[0x1B272C230](v14, -1, -1);
      }

LABEL_28:
      sub_1B0D295AC(MEMORY[0x1E69E7CC0]);
      (a5)();
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v22 = qword_1EB6DC3D8;
  if (*(a1 + 32) != 64)
  {
LABEL_23:
    if (v22 != -1)
    {
      swift_once();
    }

    v38 = sub_1B0E439A8();
    __swift_project_value_buffer(v38, qword_1EB6DC3E0);
    v39 = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0E43988();
    v41 = sub_1B0E458E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      v49 = 0;
      *v42 = 136315138;
      v50 = 0xE000000000000000;
      sub_1B0E46508();
      MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
      v44 = MEMORY[0x1B27272F0](a4, &type metadata for Mailbox);
      MEMORY[0x1B2726E80](v44);

      v45 = sub_1B0399D64(v49, v50, &v48);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_1B0389000, v40, v41, "Invalid response for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B272C230](v43, -1, -1);
      MEMORY[0x1B272C230](v42, -1, -1);
    }

    goto LABEL_28;
  }

  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v23 = sub_1B0E439A8();
  __swift_project_value_buffer(v23, qword_1EB6DC3E0);
  sub_1B0D29774(a1, &v49);
  sub_1B0D29774(a1, &v49);
  v24 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0E43988();
  v26 = sub_1B0E45908();

  if (os_log_type_enabled(v25, v26))
  {
    v47 = a5;
    a5 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48 = v27;
    v49 = 0;
    *a5 = 136315394;
    v50 = 0xE000000000000000;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
    v28 = MEMORY[0x1B27272F0](a4, &type metadata for Mailbox);
    MEMORY[0x1B2726E80](v28);

    a2 = sub_1B0399D64(v49, v50, &v48);

    v22 = 0;
    v29 = 0;
    *(a5 + 4) = a2;
    *(a5 + 12) = 2048;
    v30 = 1 << *(v9 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v9 + 64);
    v33 = (v30 + 63) >> 6;
    while (v32)
    {
      v34 = v22;
LABEL_20:
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v36 = *(*(*(v9 + 56) + ((v34 << 9) | (8 * v35))) + 16);
      v37 = __OFADD__(v29, v36);
      v29 += v36;
      if (v37)
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    while (1)
    {
      v34 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v34 >= v33)
      {

        *(a5 + 14) = v29;
        sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
        _os_log_impl(&dword_1B0389000, v25, v26, "Received response for search %s with %ld) results.", a5, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B272C230](v27, -1, -1);
        MEMORY[0x1B272C230](a5, -1, -1);

        a5 = v47;
        return (a5)(v9);
      }

      v32 = *(v9 + 64 + 8 * v34);
      ++v22;
      if (v32)
      {
        v22 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
  sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);

  return (a5)(v9);
}

uint64_t SearchSession.lookUp(identifiers:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B0E439A8();
  __swift_project_value_buffer(v6, qword_1EB6DC3E0);
  v7 = sub_1B0E43988();
  v8 = sub_1B0E45908();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B0389000, v7, v8, "Sending lookup request to SearchIndexer.", v9, 2u);
    MEMORY[0x1B272C230](v9, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B0D296CC;
  *(v11 + 24) = v10;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E43A28();
}

uint64_t sub_1B0D275FC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 == -1)
    {
LABEL_3:
      v7 = sub_1B0E439A8();
      __swift_project_value_buffer(v7, qword_1EB6DC3E0);
      sub_1B0D29774(a1, v43);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = sub_1B0E43988();
      v9 = sub_1B0E458E8();

      sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v43[0] = v12;
        *v10 = 136315394;
        v13 = MEMORY[0x1B2727340](a2, MEMORY[0x1E69E6158]);
        v15 = sub_1B0399D64(v13, v14, v43);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2112;
        v16 = sub_1B0E42CC8();
        *(v10 + 14) = v16;
        *v11 = v16;
        _os_log_impl(&dword_1B0389000, v8, v9, "Lookup %s failed: %@", v10, 0x16u);
        sub_1B0398EFC(v11, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v11, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1B272C230](v12, -1, -1);
        MEMORY[0x1B272C230](v10, -1, -1);
      }

      sub_1B0D295AC(MEMORY[0x1E69E7CC0]);
      (a3)();
    }

LABEL_34:
    swift_once();
    goto LABEL_3;
  }

  v18 = qword_1EB6DC3D8;
  if (*(a1 + 32) == 65)
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v19 = sub_1B0E439A8();
    __swift_project_value_buffer(v19, qword_1EB6DC3E0);
    sub_1B0D29774(a1, v43);
    sub_1B0D29774(a1, v43);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = sub_1B0E43988();
    v21 = sub_1B0E45908();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136315394;
      v24 = MEMORY[0x1B2727340](a2, MEMORY[0x1E69E6158]);
      v26 = sub_1B0399D64(v24, v25, v43);

      v18 = 0;
      a2 = 0;
      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      v27 = 1 << *(v6 + 32);
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & *(v6 + 64);
      v30 = (v27 + 63) >> 6;
      while (v29)
      {
        v31 = v18;
LABEL_20:
        v32 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v33 = *(*(*(v6 + 56) + ((v31 << 9) | (8 * v32))) + 16);
        v34 = __OFADD__(a2, v33);
        a2 += v33;
        if (v34)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      while (1)
      {
        v31 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v31 >= v30)
        {

          *(v22 + 14) = a2;
          sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
          _os_log_impl(&dword_1B0389000, v20, v21, "Received response for lookup %s with %ld) results.", v22, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x1B272C230](v23, -1, -1);
          MEMORY[0x1B272C230](v22, -1, -1);
          goto LABEL_32;
        }

        v29 = *(v6 + 64 + 8 * v31);
        ++v18;
        if (v29)
        {
          v18 = v31;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
LABEL_32:

    return a3(v6);
  }

  else
  {
LABEL_23:
    if (v18 != -1)
    {
      swift_once();
    }

    v35 = sub_1B0E439A8();
    __swift_project_value_buffer(v35, qword_1EB6DC3E0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = sub_1B0E43988();
    v37 = sub_1B0E458E8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v38 = 136315138;
      v40 = MEMORY[0x1B2727340](a2, MEMORY[0x1E69E6158]);
      v42 = sub_1B0399D64(v40, v41, v43);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1B0389000, v36, v37, "Invalid response for lookup %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B272C230](v39, -1, -1);
      MEMORY[0x1B272C230](v38, -1, -1);
    }

    sub_1B0D295AC(MEMORY[0x1E69E7CC0]);
    (a3)();
  }
}

uint64_t SearchSession.getIndexingStatistics(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B0E439A8();
  __swift_project_value_buffer(v4, qword_1EB6DC3E0);
  v5 = sub_1B0E43988();
  v6 = sub_1B0E45908();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B0389000, v5, v6, "Sending request for indexing statistics to SearchIndexer.", v7, 2u);
    MEMORY[0x1B272C230](v7, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B0D296D8;
  *(v9 + 24) = v8;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

void sub_1B0D27EB8(__int128 *a1, void (*a2)(__int128 *))
{
  if (*(a1 + 33))
  {
    v4 = *a1;
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B0E439A8();
    __swift_project_value_buffer(v5, qword_1EB6DC3E0);
    v6 = v4;
    v7 = sub_1B0E43988();
    v8 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v4;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B0389000, v7, v8, "Requesting statistics failed with error %@", v9, 0xCu);
      sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v10, -1, -1);
      MEMORY[0x1B272C230](v9, -1, -1);
    }

    v24 = v4;
    v25 = 0uLL;
    v26 = 1;
LABEL_13:
    a2(&v24);
    return;
  }

  if (*(a1 + 32) == 67)
  {
    v23 = *a1;
    v22 = a1[1];
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v13 = sub_1B0E439A8();
    __swift_project_value_buffer(v13, qword_1EB6DC3E0);
    v14 = sub_1B0E43988();
    v15 = sub_1B0E45908();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B0389000, v14, v15, "Received a response when requesting statistics", v16, 2u);
      MEMORY[0x1B272C230](v16, -1, -1);
    }

    v24 = v23;
    v25 = v22;
    v26 = 0;
    goto LABEL_13;
  }

  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v17 = sub_1B0E439A8();
  __swift_project_value_buffer(v17, qword_1EB6DC3E0);
  v18 = sub_1B0E43988();
  v19 = sub_1B0E458E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1B0389000, v18, v19, "Invalid response when requesting statistics", v20, 2u);
    MEMORY[0x1B272C230](v20, -1, -1);
  }

  sub_1B0D29720();
  v21 = swift_allocError();
  v24 = v21;
  v25 = 0uLL;
  v26 = 1;
  a2(&v24);
}

uint64_t SearchSession.getIndexingDiagnostics(in:before:limit:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B0E439A8();
  __swift_project_value_buffer(v7, qword_1EB6DC3E0);
  v8 = sub_1B0E43988();
  v9 = sub_1B0E45908();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B0389000, v8, v9, "Sending request for indexing diagnostics to SearchIndexer", v10, 2u);
    MEMORY[0x1B272C230](v10, -1, -1);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B0D296E0;
  *(v12 + 24) = v11;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D28540(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B0E439A8();
    __swift_project_value_buffer(v5, qword_1EB6DC3E0);
    v6 = v3;
    v7 = sub_1B0E43988();
    v8 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0389000, v7, v8, "Requesting indexing diagnostics failed with error %@", v9, 0xCu);
    sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v10, -1, -1);
    v13 = v9;
LABEL_16:
    MEMORY[0x1B272C230](v13, -1, -1);
LABEL_17:

    v19 = 0;
    v20 = 0;
    return a2(v19, v20);
  }

  if (*(a1 + 32) != 66)
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B0E439A8();
    __swift_project_value_buffer(v21, qword_1EB6DC3E0);
    v7 = sub_1B0E43988();
    v22 = sub_1B0E458E8();
    if (!os_log_type_enabled(v7, v22))
    {
      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B0389000, v7, v22, "Invalid response when requesting indexing diagnostics", v23, 2u);
    v13 = v23;
    goto LABEL_16;
  }

  v14 = *(a1 + 8);
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B0E439A8();
  __swift_project_value_buffer(v15, qword_1EB6DC3E0);
  v16 = sub_1B0E43988();
  v17 = sub_1B0E45908();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B0389000, v16, v17, "Received a response when requesting indexing diagnostics", v18, 2u);
    MEMORY[0x1B272C230](v18, -1, -1);
  }

  v19 = v3;
  v20 = v14;
  return a2(v19, v20);
}

uint64_t SearchSession.excludeIndexedUIDs(in:from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B0E439A8();
  __swift_project_value_buffer(v9, qword_1EB6DC3E0);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0389000, v10, v11, "Sending request to exclude indexed UIDs to SearchIndexer.", v12, 2u);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B0D296E8;
  *(v14 + 24) = v13;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E43A28();
}

uint64_t sub_1B0D28B24(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, void *a4)
{
  v6 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B0E439A8();
    __swift_project_value_buffer(v8, qword_1EB6DC3E0);
    v9 = v6;
    v10 = sub_1B0E43988();
    v11 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v6;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1B0389000, v10, v11, "Request to exclude indexed UIDs failed with error %@", v12, 0xCu);
      sub_1B0398EFC(v13, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v13, -1, -1);
LABEL_15:
      MEMORY[0x1B272C230](v12, -1, -1);
    }
  }

  else
  {
    if (*(a1 + 32) == 68)
    {
      if (qword_1EB6DC3D8 != -1)
      {
        swift_once();
      }

      v16 = sub_1B0E439A8();
      __swift_project_value_buffer(v16, qword_1EB6DC3E0);
      v10 = sub_1B0E43988();
      v17 = sub_1B0E45908();
      if (!os_log_type_enabled(v10, v17))
      {
        a4 = v6;
        goto LABEL_16;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v10, v17, "Received a response when requesting to exclude indexed UIDs", v12, 2u);
      a4 = v6;
      goto LABEL_15;
    }

    if (qword_1EB6DC3D8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B0E439A8();
    __swift_project_value_buffer(v18, qword_1EB6DC3E0);
    v10 = sub_1B0E43988();
    v19 = sub_1B0E458E8();
    if (os_log_type_enabled(v10, v19))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v10, v19, "Invalid response when requesting to exclude indexed UIDs", v12, 2u);
      goto LABEL_15;
    }
  }

LABEL_16:

  return a2(a4);
}

uint64_t SearchSession.sendAnalytics(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B0E439A8();
  __swift_project_value_buffer(v4, qword_1EB6DC3E0);
  v5 = sub_1B0E43988();
  v6 = sub_1B0E45908();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B0389000, v5, v6, "Sending analytics request to SearchIndexer.", v7, 2u);
    MEMORY[0x1B272C230](v7, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B0D296F4;
  *(v9 + 24) = v8;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D290CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  if ((*(a1 + 33) & 1) == 0)
  {
    if (*(a1 + 32) == 69 && (*(a1 + 8) | *(a1 + 16) | *(a1 + 24) | v3) == 0)
    {
      if (qword_1EB6DC3D8 != -1)
      {
        swift_once();
      }

      v18 = sub_1B0E439A8();
      __swift_project_value_buffer(v18, qword_1EB6DC3E0);
      v7 = sub_1B0E43988();
      v15 = sub_1B0E45908();
      if (!os_log_type_enabled(v7, v15))
      {
        goto LABEL_16;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v16 = "Received a response when requesting analytics";
    }

    else
    {
      if (qword_1EB6DC3D8 != -1)
      {
        swift_once();
      }

      v14 = sub_1B0E439A8();
      __swift_project_value_buffer(v14, qword_1EB6DC3E0);
      v7 = sub_1B0E43988();
      v15 = sub_1B0E458E8();
      if (!os_log_type_enabled(v7, v15))
      {
        goto LABEL_16;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v16 = "Invalid response when requesting analytics";
    }

    _os_log_impl(&dword_1B0389000, v7, v15, v16, v9, 2u);
    goto LABEL_15;
  }

  if (qword_1EB6DC3D8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B0E439A8();
  __swift_project_value_buffer(v5, qword_1EB6DC3E0);
  v6 = v3;
  v7 = sub_1B0E43988();
  v8 = sub_1B0E458E8();
  sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0389000, v7, v8, "Request to send analytics failed with error %@", v9, 0xCu);
    sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v10, -1, -1);
LABEL_15:
    MEMORY[0x1B272C230](v9, -1, -1);
  }

LABEL_16:

  return a2();
}

unint64_t sub_1B0D293C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  v6 = *(a1 + 16);
  MEMORY[0x1B2728D70](v6);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      ++v7;
      sub_1B0E46C68();
      --v6;
    }

    while (v6);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1B0E46CB8();

  return sub_1B0D2947C(a1, a2, a3, v8);
}

unint64_t sub_1B0D2947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(a1 + 16);
    v13 = *(v4 + 48);
    v14 = (a1 + 32);
    do
    {
      v15 = (v13 + 24 * v7);
      v16 = *v15;
      if (*(*v15 + 16) == v12)
      {
        v17 = v15[1];
        v18 = v15[2];
        if (!v12 || v16 == a1)
        {
LABEL_11:
          if (v17 == a2 && v18 == a3 || (sub_1B0E46A78() & 1) != 0)
          {
            return v7;
          }
        }

        else
        {
          v19 = (v16 + 32);
          v20 = v14;
          v21 = v12;
          while (*v19 == *v20)
          {
            ++v19;
            ++v20;
            if (!--v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1B0D295AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CA0, &unk_1B0EEDA28);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0D293C0(v5, v6, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v8;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0D29720()
{
  result = qword_1EB6E6C90;
  if (!qword_1EB6E6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6C90);
  }

  return result;
}

uint64_t sub_1B0D29774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6C88, &unk_1B0EEDA18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Suggestion.encode(to:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [v4 setOutputFormat_];
  v5 = sub_1B0E44AC8();
  [v4 encodeObject:a2 forKey:v5];

  v6 = [v4 encodedData];
  v7 = sub_1B0E42F38();
  v9 = v8;

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E46D38();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1B0BA48CC();
  sub_1B0E46AC8();

  sub_1B0391D50(v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_1B0D29978@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D29EF0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t Suggestion.id.getter(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = sub_1B0E44AD8();

  return v2;
}

IMAPSearchIndexerXPC::Suggestion::ID __swiftcall Suggestion.ID.init(_:)(CSSuggestion a1)
{
  v2 = [(objc_class *)a1.super.isa uniqueIdentifier];
  v3 = sub_1B0E44AD8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.underlying._object = v7;
  result.underlying._countAndFlagsBits = v6;
  return result;
}

uint64_t static Suggestion.ID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t Suggestion.ID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

void sub_1B0D29AE4(uint64_t *a1@<X8>)
{
  v3 = [*v1 uniqueIdentifier];
  v4 = sub_1B0E44AD8();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E437A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E93A0], v7);
  sub_1B0E437F8();
  (*(v8 + 8))(v10, v7);
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0D2A0B8(v6, MEMORY[0x1E69E93F0]);
  sub_1B0D2A0B8(v13, MEMORY[0x1E69E93B0]);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F2736228, sub_1B0DCC968);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F2736250, sub_1B0DCCBE0);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F2736278, sub_1B0DCCC30);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F27362A0, sub_1B0DCCFC8);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F27362C8, sub_1B0DCCC30);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F27362F0, sub_1B0DCD044);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F2736318, sub_1B0DCD154);
}

{
  return sub_1B0DCD1FC(a1, a2, &unk_1F2736340, sub_1B0DCD1B4);
}

{
  return sub_1B0DCD1FC(a1, a2, &unk_1F2736368, sub_1B0DCD3EC);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F2736390, sub_1B0DCD43C);
}

{
  return sub_1B0DCCA10(a1, a2, &unk_1F27363B8, sub_1B0DCD484);
}

{
  return sub_1B0DCD58C(a1, a2, &unk_1F27363E0, sub_1B0DCD4D4);
}

{
  return sub_1B0DCD58C(a1, a2, &unk_1F2736408, sub_1B0DCD75C);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F2736430, sub_1B0DCD818);
}

{
  return sub_1B0DCDCD4(a1, a2, "[", &unk_1F2736458, sub_1B0DCD850, "]");
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F2736480, sub_1B0DCD8C0);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F27364A8, sub_1B0DCD8E8);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F27364D0, sub_1B0DCD930);
}

{
  return sub_1B0DCDCD4(a1, a2, "{", &unk_1F2736548, sub_1B0DCDE8C, "}");
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F2736570, sub_1B0DCDEC8);
}

{
  return sub_1B0DCDCD4(a1, a2, "[", &unk_1F2736598, sub_1B0DCF46C, "]");
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F27365C0, sub_1B0DCE06C);
}

{
  return sub_1B0DCCE70(a1, a2, &unk_1F27365E8, sub_1B0DCE0DC);
}

{
  return sub_1B0DCE128(a1, a2, &unk_1F2736610, sub_1B0DCE104);
}

{
  return sub_1B0DCE128(a1, a2, &unk_1F2736638, sub_1B0DCE340);
}

{
  v44 = a1;
  v47 = sub_1B0E437E8();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v43 = a2;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v64 = sub_1B0E43918();
  v65 = v12;
  v66 = v13;
  v67 = v14;
  v15 = v64;
  v16 = v12;
  v17 = BYTE1(v12);
  v18 = BYTE2(v12);
  v19 = v13;
  v20 = v14;
  sub_1B0507508();
  sub_1B0506134();
  v58 = v15;
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v62 = v19;
  v63 = v20;
  sub_1B0E43898();
  v42 = MEMORY[0x1E69E93B0];
  v21 = v7;
  sub_1B0DCC990(v7, MEMORY[0x1E69E93B0]);
  v41 = MEMORY[0x1E69E93F0];
  sub_1B0DCC990(v10, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v19, v20);

  sub_1B0E44838();
  sub_1B0E438D8();

  v22 = v43;

  v23 = swift_allocObject();
  *(v23 + 16) = v44;
  *(v23 + 24) = v22;
  v24 = v23;
  sub_1B0E44838();
  sub_1B0E438D8();

  v40[1] = v24;

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DCEA94;
  *(v25 + 24) = v24;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v54 = sub_1B0E43918();
  v55 = v26;
  v56 = v27;
  v57 = v28;
  v29 = v54;
  v30 = v26;
  LOBYTE(v24) = BYTE1(v26);
  LOBYTE(v7) = BYTE2(v26);
  v31 = v27;
  v32 = v28;
  sub_1B0507508();
  sub_1B0506134();
  v48 = v29;
  v49 = v30;
  v50 = v24;
  v51 = v7;
  v52 = v31;
  v53 = v32;
  sub_1B0E438A8();
  sub_1B0DCC990(v21, v42);
  sub_1B0DCC990(v10, v41);
  sub_1B04197E4(v31, v32);

  sub_1B0E44838();
  sub_1B0E438D8();

  sub_1B0E44838();
  sub_1B0E438D8();

  v33 = v43;

  v34 = swift_allocObject();
  *(v34 + 16) = v44;
  *(v34 + 24) = v33;

  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B0DCF220;
  *(v35 + 24) = v34;
  sub_1B0E438F8();
  v36 = v46;
  v37 = v45;
  v38 = v47;
  (*(v46 + 104))(v45, *MEMORY[0x1E69E93A8], v47);
  sub_1B0E437C8();
  (*(v36 + 8))(v37, v38);
  sub_1B0E43888();
  sub_1B0DCC990(v21, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v10, MEMORY[0x1E69E93F0]);

  sub_1B0E44838();
  sub_1B0E438D8();
}

{
  v4 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v27 = sub_1B0E43918();
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v14 = v27;
  v15 = v11 & 1;
  v16 = BYTE1(v11) & 1;
  v17 = BYTE2(v11) & 1;
  v18 = v12;
  v19 = v13;
  sub_1B0507508();
  sub_1B0506134();
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  sub_1B0E438A8();
  sub_1B0DCC990(v6, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v9, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v18, v19);

  sub_1B0E44838();
  sub_1B0E438D8();
}

{
  v33 = a1;
  v36 = sub_1B0E437E8();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v32 = a2;

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v10;
  sub_1B0E44838();
  sub_1B0E438D8();

  v30[1] = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B0DCF250;
  *(v12 + 24) = v11;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v43 = sub_1B0E43918();
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v16 = v43;
  v17 = v13;
  v18 = BYTE1(v13);
  v19 = BYTE2(v13);
  v20 = v14;
  v21 = v15;
  sub_1B0507508();
  v22 = v31;
  sub_1B0506134();
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = v21;
  sub_1B0E438A8();
  sub_1B0DCC990(v22, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v9, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v20, v21);

  sub_1B0E44838();
  sub_1B0E438D8();

  v23 = v32;

  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 24) = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DCF288;
  *(v25 + 24) = v24;
  sub_1B0E438F8();
  v26 = v35;
  v27 = v34;
  v28 = v36;
  (*(v35 + 104))(v34, *MEMORY[0x1E69E93A8], v36);
  sub_1B0E437C8();
  (*(v26 + 8))(v27, v28);
  sub_1B0E43888();
  sub_1B0DCC990(v22, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v9, MEMORY[0x1E69E93F0]);

  sub_1B0E44838();
  sub_1B0E438D8();
}

uint64_t _s20IMAPSearchIndexerXPC10SuggestionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = [a1 uniqueIdentifier];
  v4 = sub_1B0E44AD8();
  v6 = v5;

  v7 = [a2 uniqueIdentifier];
  v8 = sub_1B0E44AD8();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B0E46A78();
  }

  return v12 & 1;
}

id sub_1B0D29E30(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B0E42F18();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1B0E42CD8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1B0D29EF0(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E46D08();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_1B0D15CB0();
    sub_1B0E46AA8();
    v4 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_1B03B2000(v8, v9);
    v5 = sub_1B0D29E30(v8, v9);
    sub_1B0391D50(v8, v9);
    [v5 setRequiresSecureCoding_];
    sub_1B0D2A1E8();
    v7 = sub_1B0E45CA8();
    if (v7)
    {
      v2 = v7;

      sub_1B0391D50(v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v10);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v2;
    }

    sub_1B0D2A234();
    swift_allocError();
    swift_willThrow();

    sub_1B0391D50(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_1B0D2A0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0D2A11C()
{
  result = qword_1EB6E6CB0;
  if (!qword_1EB6E6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CB0);
  }

  return result;
}

unint64_t sub_1B0D2A174()
{
  result = qword_1EB6E6CB8;
  if (!qword_1EB6E6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CB8);
  }

  return result;
}

unint64_t sub_1B0D2A1E8()
{
  result = qword_1EB6E6CC0;
  if (!qword_1EB6E6CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6E6CC0);
  }

  return result;
}

unint64_t sub_1B0D2A234()
{
  result = qword_1EB6E6CC8;
  if (!qword_1EB6E6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CC8);
  }

  return result;
}

uint64_t sub_1B0D2A298()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DC3B8);
  __swift_project_value_buffer(v0, qword_1EB6DC3B8);
  return sub_1B0E43998();
}

uint64_t *SyncSession.__allocating_init(generateCredentials:updateIndexingStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v21 = a1;
  v33 = a4;
  v22 = a3;
  v30 = sub_1B0E439E8();
  v27 = *(v30 - 8);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E459C8();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E45988();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1B06CCC58();
  v23 = "IndexerXPC13SearchSession";
  v24 = v10;
  sub_1B0E44258();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1B041E5BC(&qword_1EB6DEEE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B03CFB8C(&qword_1EB6DEEF0, &qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B0E460A8();
  (*(v25 + 104))(v7, *MEMORY[0x1E69E8090], v26);
  v11 = sub_1B0E45A08();
  v12 = sub_1B0E43A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C68, &qword_1B0EED9F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B0EC1E70;
  v14 = v11;
  sub_1B0E439D8();
  v34 = v13;
  sub_1B041E5BC(&qword_1EB6DC1A0, MEMORY[0x1E69E8498], MEMORY[0x1E69E84A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6C78, &unk_1B0EEDC70);
  sub_1B03CFB8C(&qword_1EB6DB300, &unk_1EB6E6C78, &unk_1B0EEDC70);
  sub_1B0E460A8();
  v15 = v12;
  v16 = v31;
  v17 = sub_1B0E439C8();
  if (v16)
  {
  }

  else
  {
    v18 = v17;
    swift_allocObject();
    v15 = sub_1B0D2B9A0(v18, v14, v21, v32, v22, v33);
  }

  return v15;
}

void sub_1B0D2A7A8(uint64_t a1)
{
  v2 = sub_1B0E43A78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B0E439A8();
  __swift_project_value_buffer(v6, qword_1EB6DC3B8);
  v7 = *(v3 + 16);
  v7(v5, a1, v2);
  v8 = sub_1B0E43988();
  v9 = sub_1B0E458E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    sub_1B041E5BC(&unk_1EB6DC190, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    v12 = swift_allocError();
    v7(v13, v5, v2);
    v14 = sub_1B0E42CC8();
    (*(v3 + 8))(v5, v2);

    *(v10 + 4) = v14;
    *v11 = v14;
    _os_log_impl(&dword_1B0389000, v8, v9, "cancelled: %@", v10, 0xCu);
    sub_1B0398EFC(v11, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v11, -1, -1);
    MEMORY[0x1B272C230](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t SyncSession.deinit()
{
  v1 = v0;
  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B0E439A8();
  __swift_project_value_buffer(v2, qword_1EB6DC3B8);
  v3 = sub_1B0E43988();
  v4 = sub_1B0E45908();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0389000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x1B272C230](v5, -1, -1);
  }

  sub_1B0E43A48();

  return v1;
}

uint64_t SyncSession.__deallocating_deinit()
{
  SyncSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0D2AB80@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t (*)(), uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a2;
  v28 = a5;
  v7 = sub_1B0E43AC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B0D1EC20();
  sub_1B0E43AB8();
  v10 = v29;
  v11 = v30;
  v12 = v33;
  v13 = v33 >> 6;
  if (v13 == 3)
  {
    result = a4(v29, v30, v31, v32);
LABEL_9:
    v23 = v28;
    *(v28 + 32) = 0;
    *v23 = 0u;
    v23[1] = 0u;
    return result;
  }

  v24 = v32;
  v25 = v31;
  if (v13 == 2)
  {
    (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B0E439A8();
    __swift_project_value_buffer(v17, qword_1EB6DC3B8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E43988();
    v19 = sub_1B0E45908();
    sub_1B0D2BB98(v10, v11, v25, v24, v12);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1B0399D64(v10, v11, &v29);
      _os_log_impl(&dword_1B0389000, v18, v19, "Responding to credential request for account %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B272C230](v21, -1, -1);
      MEMORY[0x1B272C230](v20, -1, -1);
    }

    v22 = swift_allocObject();
    *(v22 + 16) = sub_1B0D2BAFC;
    *(v22 + 24) = v16;

    v27(v10, v11, sub_1B0D2BC38, v22);

    sub_1B0D2BB98(v10, v11, v25, v24, v12);

    goto LABEL_9;
  }

  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SyncSession.activate()()
{
  sub_1B0E43A58();
  if (v0)
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v1 = sub_1B0E439A8();
    __swift_project_value_buffer(v1, qword_1EB6DC3B8);
    v2 = v0;
    v3 = sub_1B0E43988();
    v4 = sub_1B0E458F8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_1B0389000, v3, v4, "Could not activate XPCSession due to %@.", v5, 0xCu);
      sub_1B0398EFC(v6, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v6, -1, -1);
      MEMORY[0x1B272C230](v5, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B0E439A8();
    __swift_project_value_buffer(v9, qword_1EB6DC3B8);
    v10 = sub_1B0E43988();
    v11 = sub_1B0E45908();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v10, v11, "Activated XPCSession", v12, 2u);
      MEMORY[0x1B272C230](v12, -1, -1);
    }
  }
}

Swift::Void __swiftcall SyncSession.cancel(reason:)(Swift::String reason)
{
  sub_1B0E43A48();
  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B0E439A8();
  __swift_project_value_buffer(v1, qword_1EB6DC3B8);
  oslog = sub_1B0E43988();
  v2 = sub_1B0E45908();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B0389000, oslog, v2, "Cancelled XPCSession", v3, 2u);
    MEMORY[0x1B272C230](v3, -1, -1);
  }
}

uint64_t SyncSession.start(_:configurations:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B0D2BAC0;
  *(v7 + 24) = v6;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D2B51C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (*(a1 + 33))
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B0E439A8();
    __swift_project_value_buffer(v5, qword_1EB6DC3B8);
    v6 = v3;
    v7 = sub_1B0E43988();
    v8 = sub_1B0E458E8();
    sub_1B0398EFC(a1, &qword_1EB6E6C88, &unk_1B0EEDA18);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = sub_1B0E42CC8();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_1B0389000, v7, v8, "Start index request failed: %@", v9, 0xCu);
      sub_1B0398EFC(v10, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v10, -1, -1);
LABEL_15:
      v3 = 4;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (*(a1 + 32) > 0x3Fu)
  {
    if (qword_1EB6DC3B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B0E439A8();
    __swift_project_value_buffer(v14, qword_1EB6DC3B8);
    v7 = sub_1B0E43988();
    v15 = sub_1B0E458E8();
    if (os_log_type_enabled(v7, v15))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v7, v15, "Invalid response for start index request.", v9, 2u);
      goto LABEL_15;
    }

LABEL_17:
    v3 = 4;
    goto LABEL_18;
  }

  if (qword_1EB6DC3B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B0E439A8();
  __swift_project_value_buffer(v12, qword_1EB6DC3B8);
  v7 = sub_1B0E43988();
  v13 = sub_1B0E45908();
  if (os_log_type_enabled(v7, v13))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B0389000, v7, v13, "Received response for start index request.", v9, 2u);
LABEL_16:
    MEMORY[0x1B272C230](v9, -1, -1);
  }

LABEL_18:

  return a2(v3);
}

uint64_t *sub_1B0D2B9A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v7;
  v7[2] = a2;
  v7[3] = a1;
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;

  v16 = a2;

  sub_1B0E43A18();

  sub_1B0E439F8();

  return v7;
}

uint64_t sub_1B0D2BAFC(uint64_t a1)
{
  sub_1B0E43AC8();
  sub_1B0D1EBCC();
  return sub_1B0E43AA8();
}

uint64_t sub_1B0D2BB98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 6;
  if (v5 == 2)
  {
  }

  if (v5 == 1)
  {
    return sub_1B0D2BBC0(result, a2, a3, a4, a5 & 0x3F);
  }

  return result;
}

uint64_t sub_1B0D2BBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  if (a5 == 2)
  {
    return sub_1B0D2BBF8(a1);
  }

  if (a5 == 4)
  {
  }

  return a1;
}

uint64_t sub_1B0D2BBF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SearchQuery.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46508();
  MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
  v4 = MEMORY[0x1B27272F0](a3, &type metadata for Mailbox);
  MEMORY[0x1B2726E80](v4);

  return 0;
}

uint64_t UID.rawValue.setter(uint64_t result)
{
  *v1 = result;
  return result;
}

{
  *v1 = result;
  return result;
}

void (*UID.rawValue.modify())()
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t sub_1B0D2BE3C()
{
  if (*v0)
  {
    return 0x49746E756F636361;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1B0D2BE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D2BF58(uint64_t a1)
{
  sub_1B0D2D534();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2BF94(uint64_t a1)
{
  sub_1B0D2D534();

  return sub_1B0E46F38();
}

uint64_t Mailbox.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CD0, &unk_1B0EEDCB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D534();
  sub_1B0E46D48();
  v15 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B0CF4AC8(&qword_1EB6DAE00, MEMORY[0x1E69E7510], MEMORY[0x1E69E6300]);
  sub_1B0E46958();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_1B0D11D5C();
    sub_1B0E46958();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Mailbox.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = a2 + 32;
    do
    {
      ++v6;
      sub_1B0E46C68();
      --v5;
    }

    while (v5);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t Mailbox.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  v4 = *(a1 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      ++v5;
      sub_1B0E46C68();
      --v4;
    }

    while (v4);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2C2E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D2D588(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1B0D2C354(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0D2C3D0(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  v3 = *(v2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2C470()
{
  v1 = 0x74696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x65786F626C69616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_1B0D2C4D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D2D854(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D2C4F8(uint64_t a1)
{
  sub_1B0D2D7AC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2C534(uint64_t a1)
{
  sub_1B0D2D7AC();

  return sub_1B0E46F38();
}

uint64_t SearchQuery.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CD8, &unk_1B0EEDCC0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D7AC();
  sub_1B0E46D48();
  v15 = a2;
  v14 = 0;
  sub_1B0D2D800();
  sub_1B0E46958();
  if (!v4)
  {
    LOBYTE(v15) = 1;
    sub_1B0E46948();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
    sub_1B0D2E8A8(&qword_1EB6DB308, sub_1B0D20A40, MEMORY[0x1E69E6300]);
    sub_1B0E46958();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B0D2C7E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B0D2C810@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D2D978(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t SearchQuery.id.getter(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = sub_1B0E44AD8();

  return v2;
}

uint64_t IndexingDiagnostics.indexed.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IndexingDiagnostics.unindexed.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B0D2C998()
{
  if (*v0)
  {
    return 0x657865646E696E75;
  }

  else
  {
    return 0x64657865646E69;
  }
}

uint64_t sub_1B0D2C9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657865646E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657865646E696E75 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D2CABC(uint64_t a1)
{
  sub_1B0D2DBE8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2CAF8(uint64_t a1)
{
  sub_1B0D2DBE8();

  return sub_1B0E46F38();
}

uint64_t static IndexingDiagnostics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1B03B6298(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03B6298(a2, a4);
}

uint64_t IndexingDiagnostics.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CE0, &unk_1B0EEDCD0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DBE8();
  sub_1B0E46D48();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30A0, &qword_1B0EA0900);
  sub_1B0D2DC3C(&qword_1EB6E6CF0, sub_1B0D20B18, MEMORY[0x1E69E64F0]);
  sub_1B0E46958();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_1B0E46958();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B0D2CD98@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D2DCB4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B0D2CDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B03B6298(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03B6298(v2, v3);
}

uint64_t IndexingStatistics.messagesNotIndexed.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0D2CF0C()
{
  v1 = 0x73654D6C61746F74;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
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

uint64_t sub_1B0D2CFA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D2DF38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D2CFCC(uint64_t a1)
{
  sub_1B0D2DEE4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D2D008(uint64_t a1)
{
  sub_1B0D2DEE4();

  return sub_1B0E46F38();
}

uint64_t IndexingStatistics.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v12[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6CF8, &qword_1B0EEDCE0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DEE4();
  sub_1B0E46D48();
  v16 = 0;
  sub_1B0E46948();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  sub_1B0E46948();
  v14 = 2;
  sub_1B0E46948();
  v13 = 3;
  sub_1B0E46948();
  return (*(v8 + 8))(v10, v7);
}

uint64_t IndexingStatistics.init(from:)(void *a1)
{
  result = sub_1B0D2E0B8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B0D2D244@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D2E0B8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

double IndexingStatistics.fractionCompleted.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  else
  {
    return a2 / a1;
  }
}

uint64_t IndexingStatistics.fractionCompletedAsInt.getter(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a2 / result * 100.0;
  }

  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B0D2D368()
{
  v1 = *(v0 + 16);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
  v2 = MEMORY[0x1B27272F0](v1, &type metadata for Mailbox);
  MEMORY[0x1B2726E80](v2);

  return 0;
}

uint64_t _s20IMAPSearchIndexerXPC11SearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = [a1 uniqueIdentifier];
  v12 = sub_1B0E44AD8();
  v14 = v13;

  v15 = [a4 uniqueIdentifier];
  v16 = sub_1B0E44AD8();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {

    if (a2 == a5)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v20 = sub_1B0E46A78();

  if ((v20 & 1) == 0 || a2 != a5)
  {
    return 0;
  }

LABEL_7:

  return sub_1B0D19C24(a3, a6);
}

unint64_t sub_1B0D2D534()
{
  result = qword_1EB6DC3A8;
  if (!qword_1EB6DC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC3A8);
  }

  return result;
}

uint64_t sub_1B0D2D588(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D70, &unk_1B0EEE628);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D534();
  sub_1B0E46D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  v9 = 0;
  sub_1B0CF4AC8(&qword_1EB6E64A8, MEMORY[0x1E69E7528], MEMORY[0x1E69E6330]);
  sub_1B0E46868();
  v7 = v8[1];
  v9 = 1;
  sub_1B0D12EDC();
  sub_1B0E46868();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1B0D2D7AC()
{
  result = qword_1EB6DC7D0;
  if (!qword_1EB6DC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7D0);
  }

  return result;
}

unint64_t sub_1B0D2D800()
{
  result = qword_1EB6DC858;
  if (!qword_1EB6DC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC858);
  }

  return result;
}

uint64_t sub_1B0D2D854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D2D978(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D58, &qword_1B0EEE620);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2D7AC();
  sub_1B0E46D18();
  HIBYTE(v8) = 0;
  sub_1B0D2E854();
  sub_1B0E46868();
  v7 = v9;
  LOBYTE(v9) = 1;
  sub_1B0E46858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
  HIBYTE(v8) = 2;
  sub_1B0D2E8A8(&qword_1EB6E6D68, sub_1B0D25B04, MEMORY[0x1E69E6330]);
  sub_1B0E46868();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1B0D2DBE8()
{
  result = qword_1EB6E6CE8;
  if (!qword_1EB6E6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6CE8);
  }

  return result;
}

uint64_t sub_1B0D2DC3C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E30A0, &qword_1B0EA0900);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B0D2DCB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D48, &qword_1B0EEE618);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DBE8();
  sub_1B0E46D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30A0, &qword_1B0EA0900);
  v9 = 0;
  sub_1B0D2DC3C(&qword_1EB6E6D50, sub_1B0D25978, MEMORY[0x1E69E6510]);
  sub_1B0E46868();
  v7 = v10;
  v9 = 1;
  sub_1B0E46868();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1B0D2DEE4()
{
  result = qword_1EB6DC550;
  if (!qword_1EB6DC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC550);
  }

  return result;
}

uint64_t sub_1B0D2DF38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6C61746F74 && a2 == 0xED00007365676173;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEF64657865646E49 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B0F2F970 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2F990 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0D2E0B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6D40, &qword_1B0EEE610);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2DEE4();
  sub_1B0E46D18();
  v12 = 0;
  v6 = sub_1B0E46858();
  v11 = 1;
  sub_1B0E46858();
  v10 = 2;
  sub_1B0E46858();
  v9 = 3;
  sub_1B0E46858();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t sub_1B0D2E2A4()
{
  result = qword_1EB6E6D00;
  if (!qword_1EB6E6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D00);
  }

  return result;
}

unint64_t sub_1B0D2E2FC()
{
  result = qword_1EB6DC380;
  if (!qword_1EB6DC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC380);
  }

  return result;
}

unint64_t sub_1B0D2E3E4()
{
  result = qword_1EB6E6D08;
  if (!qword_1EB6E6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D08);
  }

  return result;
}

unint64_t sub_1B0D2E43C()
{
  result = qword_1EB6E6D10;
  if (!qword_1EB6E6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D10);
  }

  return result;
}

unint64_t sub_1B0D2E494()
{
  result = qword_1EB6E6D18;
  if (!qword_1EB6E6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D18);
  }

  return result;
}

unint64_t sub_1B0D2E4EC()
{
  result = qword_1EB6E6D20;
  if (!qword_1EB6E6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D20);
  }

  return result;
}

unint64_t sub_1B0D2E544()
{
  result = qword_1EB6DC540;
  if (!qword_1EB6DC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC540);
  }

  return result;
}

unint64_t sub_1B0D2E59C()
{
  result = qword_1EB6DC548;
  if (!qword_1EB6DC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC548);
  }

  return result;
}

unint64_t sub_1B0D2E5F4()
{
  result = qword_1EB6E6D28;
  if (!qword_1EB6E6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D28);
  }

  return result;
}

unint64_t sub_1B0D2E64C()
{
  result = qword_1EB6E6D30;
  if (!qword_1EB6E6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D30);
  }

  return result;
}

unint64_t sub_1B0D2E6A4()
{
  result = qword_1EB6DC7C0;
  if (!qword_1EB6DC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7C0);
  }

  return result;
}

unint64_t sub_1B0D2E6FC()
{
  result = qword_1EB6DC7C8;
  if (!qword_1EB6DC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7C8);
  }

  return result;
}

unint64_t sub_1B0D2E754()
{
  result = qword_1EB6DC398;
  if (!qword_1EB6DC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC398);
  }

  return result;
}

unint64_t sub_1B0D2E7AC()
{
  result = qword_1EB6DC3A0;
  if (!qword_1EB6DC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC3A0);
  }

  return result;
}

unint64_t sub_1B0D2E800()
{
  result = qword_1EB6E6D38;
  if (!qword_1EB6E6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D38);
  }

  return result;
}

unint64_t sub_1B0D2E854()
{
  result = qword_1EB6E6D60;
  if (!qword_1EB6E6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6D60);
  }

  return result;
}

uint64_t sub_1B0D2E8A8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1B0D2E930(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFE00000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 512;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

double variable initialization expression of AuthenticatedURLRump.expire@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 1;
  return result;
}

double variable initialization expression of BodyStructure.DispositionAndLanguage.disposition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of ExtendedSearchResponse.correlator@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of FramingParser.buffer()
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }
}

double variable initialization expression of BodyStructure.Multipart.extension@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double variable initialization expression of NetworkPath.command@<D0>(_OWORD *a1@<X8>)
{
  sub_1B0D2E930(v9);
  v2 = v17;
  a1[8] = v16;
  a1[9] = v2;
  v3 = v19;
  a1[10] = v18;
  a1[11] = v3;
  v4 = v13;
  a1[4] = v12;
  a1[5] = v4;
  v5 = v15;
  a1[6] = v14;
  a1[7] = v5;
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  result = *&v10;
  v8 = v11;
  a1[2] = v10;
  a1[3] = v8;
  return result;
}

uint64_t variable initialization expression of QResyncParameter.knownUIDs@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1B0D2EDC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of BodyStructure.Singlepart.extension@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B0EA4610;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

double variable initialization expression of BodyStructure.Singlepart.Extension.dispositionAndLanguage@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B0EA4610;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1B0D2EEA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D2EEC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D2EF48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D2EF68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 28) = v3;
  return result;
}

__n128 __swift_memcpy106_1(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0D2EFD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 106))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D2EFF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 106) = v3;
  return result;
}

uint64_t Access.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v4);

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (a2 | a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  return MEMORY[0x1B2728D70](v6);
}

uint64_t Access.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  if (!a3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v6);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0E46CB8();
  }

  if (a1 | a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  MEMORY[0x1B2728D70](v7);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F1E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v4);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0E46CB8();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  MEMORY[0x1B2728D70](v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F27C(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v2);

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (*v1 == 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return MEMORY[0x1B2728D70](v4);
}

uint64_t sub_1B0D2F314(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_1B0E46C28();
  if (!v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1B2728D70](v5);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0E46CB8();
  }

  if (v2 | v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  MEMORY[0x1B2728D70](v6);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F3C8(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
LABEL_21:
      v29 = *(v3 + 20);
      if (a1 | a2)
      {
        result = sub_1B0CFC1B0(0x756F6D796E6F6E61uLL, 0xE900000000000073, v3 + 8, *(v3 + 20));
        if (v30)
        {
          v31._countAndFlagsBits = 0x756F6D796E6F6E61;
          v31._object = 0xE900000000000073;
          result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
        }

        v32 = *(v3 + 20);
        v16 = __CFADD__(v32, result);
        v33 = v32 + result;
        if (!v16)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      result = sub_1B0CFC1B0(0x7265737568747561uLL, 0xE800000000000000, v3 + 8, v29);
      if (v34)
      {
        v35._countAndFlagsBits = 0x7265737568747561;
        v35._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v35, v29);
      }

      v36 = *(v3 + 20);
      v16 = __CFADD__(v36, result);
      v33 = v36 + result;
      if (!v16)
      {
LABEL_30:
        *(v3 + 20) = v33;
        return result;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v6 = *(v3 + 20);
    result = sub_1B0CFC1B0(0x2B72657375uLL, 0xE500000000000000, v3 + 8, v6);
    if (v8)
    {
      v9._countAndFlagsBits = 0x2B72657375;
      v9._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = result;
    v11 = *(v3 + 20);
    v12 = (v11 + result);
    if (__CFADD__(v11, result))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v3 + 20) = v12;
    result = sub_1B0CFC1B0(a1, a2, v3 + 8, v12);
    if (v13)
    {
      v14._countAndFlagsBits = a1;
      v14._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    v15 = *(v3 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v17;
    v18 = __OFADD__(v10, result);
    result += v10;
    if (!v18)
    {
      return result;
    }

    __break(1u);
  }

  v19 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x2B74696D627573uLL, 0xE700000000000000, v3 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0x2B74696D627573;
    v21._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = result;
  v23 = *(v3 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_32;
  }

  *(v3 + 20) = v24;
  result = sub_1B0CFC1B0(a1, a2, v3 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v16 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v16)
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v28;
  v18 = __OFADD__(v22, result);
  result += v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore26AccessO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1B0E46A78();
  }

  return 0;
}

unint64_t sub_1B0D2F6D8()
{
  result = qword_1EB6E6ED8;
  if (!qword_1EB6E6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6ED8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore26AccessO(uint64_t a1)
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

NIOIMAPCore2::AppendData __swiftcall AppendData.init(byteCount:withoutContentTransferEncoding:)(Swift::Int byteCount, Swift::Bool withoutContentTransferEncoding)
{
  v2 = withoutContentTransferEncoding;
  result.byteCount = byteCount;
  result.withoutContentTransferEncoding = v2;
  return result;
}

uint64_t AppendData.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F868()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2F908(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D2F968()
{
  result = qword_1EB6E6EE0;
  if (!qword_1EB6E6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6EE0);
  }

  return result;
}

uint64_t sub_1B0D2F9BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AppendData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0D2FA50(uint64_t result, char a2)
{
  v3 = *(v2 + 1) | (*(v2 + 5) << 32);
  if ((v3 & 0x8000000000) != 0)
  {
    goto LABEL_26;
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if ((v3 & 0x10000) == 0)
    {
      v10 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v10);

      MEMORY[0x1B2726E80](658813, 0xE300000000000000);
      v11 = *(v2 + 20);
      v12 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v2 + 8, v11);
      if (v13)
      {
        v14._countAndFlagsBits = 123;
        v14._object = 0xE100000000000000;
        v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
      }

      v9 = v12;

      v15 = *(v2 + 20);
      result = (v15 + v9);
      if (!__CFADD__(v15, v9))
      {
LABEL_13:
        *(v2 + 20) = result;
        sub_1B0D7D00C(result);
        return v9;
      }

      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if ((*(v2 + 1) & 0x10000) == 0)
  {
    v4 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v4);

    MEMORY[0x1B2726E80](658813, 0xE300000000000000);
    v5 = *(v2 + 20);
    v6 = sub_1B0CFC1B0(0x7B7EuLL, 0xE200000000000000, v2 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 31614;
      v8._object = 0xE200000000000000;
      v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = v6;

    LODWORD(v3) = *(v2 + 20);
    result = (v3 + v9);
    if (!__CFADD__(v3, v9))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_9;
  }

  v16 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v16);

  MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
  v17 = *(v2 + 20);
  v18 = sub_1B0CFC1B0(0x7B7EuLL, 0xE200000000000000, v2 + 8, v17);
  if (v19)
  {
    v20._countAndFlagsBits = 31614;
    v20._object = 0xE200000000000000;
    v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
  }

  v9 = v18;

  v21 = *(v2 + 20);
  v22 = __CFADD__(v21, v9);
  v23 = v21 + v9;
  if (!v22)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_19:
  v24 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v24);

  MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
  v25 = *(v2 + 20);
  v26 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v2 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 123;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v9 = v26;

  v29 = *(v2 + 20);
  v22 = __CFADD__(v29, v9);
  v23 = v29 + v9;
  if (!v22)
  {
LABEL_22:
    *(v2 + 20) = v23;
    return v9;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AppendMessage.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

__n128 AppendMessage.options.setter(uint64_t a1)
{

  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t AppendMessage.data.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

__n128 AppendMessage.init(options:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t AppendMessage.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AppendOptions.hash(into:)(a1);
  MEMORY[0x1B2728D70](*(v6 + 48));
  return sub_1B0E46C68();
}

uint64_t AppendMessage.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  AppendOptions.hash(into:)(v3);
  MEMORY[0x1B2728D70](*(v0 + 6));
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2FF5C()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  v2 = *(v0 + 6);
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v4);
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D2FFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  AppendOptions.hash(into:)(a1);
  MEMORY[0x1B2728D70](v7);
  return sub_1B0E46C68();
}

uint64_t sub_1B0D3003C(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = v1[2];
  v3 = *(v1 + 6);
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v5);
  MEMORY[0x1B2728D70](v3);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

BOOL sub_1B0D300B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_1B03D1B3C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    return (sub_1B045202C(v7, v11) & 1) != 0 && (sub_1B0D3A338(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  result = 0;
  if ((v9 & 1) == 0 && v4 == v8)
  {
    return (sub_1B045202C(v7, v11) & 1) != 0 && (sub_1B0D3A338(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  return result;
}

unint64_t sub_1B0D301E8()
{
  result = qword_1EB6E6EE8;
  if (!qword_1EB6E6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6EE8);
  }

  return result;
}

uint64_t sub_1B0D3023C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1B0D30284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL static AppendOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B0D390A0(*a1, *a2, MEMORY[0x1E69E6088]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  return (sub_1B045202C(v5, v7) & 1) != 0 && (sub_1B0D3A338(v6, v8) & 1) != 0;
}

void sub_1B0D30380(uint64_t *a1)
{
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
  MEMORY[0x1EEE9AC00](v168);
  v177 = (&v151 - v2);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  MEMORY[0x1EEE9AC00](v167);
  v166 = (&v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v165 = (&v151 - v5);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v162 = (&v151 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v176 = (&v151 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v161 = (&v151 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v160 = &v151 - v14;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F38, &qword_1B0EEEAE8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = (&v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v175 = (&v151 - v17);
  v18 = *a1;
  if (*(*a1 + 16))
  {
    v19 = *(v178 + 20);
    v20 = 0;
    v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v178 + 8, v19);
    if (v22)
    {
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
    }

    v24 = v21;
    v25 = *(v178 + 20);
    v26 = (v25 + v21);
    if (__CFADD__(v25, v21))
    {
      goto LABEL_77;
    }

    v27 = v178;
    *(v178 + 20) = v26;
    v182 = v18;
    v28 = sub_1B0CFC1B0(0, 0xE000000000000000, v27 + 8, v26);
    if (v29)
    {
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v26);
    }

    v31 = v28;
    v32 = *(v178 + 20);
    v33 = (v32 + v28);
    if (__CFADD__(v32, v28))
    {
      goto LABEL_78;
    }

    v34 = v178;
    *(v178 + 20) = v33;
    v35 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v34 + 8, v33);
    if (v36)
    {
      v37._countAndFlagsBits = 40;
      v37._object = 0xE100000000000000;
      v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v33);
    }

    v38 = *(v178 + 20);
    v39 = __CFADD__(v38, v35);
    v40 = v38 + v35;
    if (v39)
    {
      goto LABEL_79;
    }

    *(v178 + 20) = v40;
    v41 = v31 + v35;
    if (__OFADD__(v31, v35))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    MEMORY[0x1EEE9AC00](v35);
    *(&v151 - 6) = sub_1B0D5C820;
    *(&v151 - 5) = 0;
    *(&v151 - 4) = v178;
    *(&v151 - 3) = &v182;
    *(&v151 - 2) = 32;
    *(&v151 - 1) = 0xE100000000000000;
    v42 = sub_1B0DED0F8(0, sub_1B0D3CC60, (&v151 - 8), v18);
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v44 = *(v178 + 20);
    v45 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v178 + 8, v44);
    if (v46)
    {
      v47._countAndFlagsBits = 41;
      v47._object = 0xE100000000000000;
      v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v44);
    }

    v48 = *(v178 + 20);
    v49 = (v48 + v45);
    if (__CFADD__(v48, v45))
    {
      goto LABEL_82;
    }

    *(v178 + 20) = v49;
    v50 = __OFADD__(v43, v45);
    v51 = v43 + v45;
    if (v50)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v52 = sub_1B0CFC1B0(0, 0xE000000000000000, v178 + 8, v49);
    if (v53)
    {
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v49);
    }

    v55 = *(v178 + 20);
    v39 = __CFADD__(v55, v52);
    v56 = v55 + v52;
    if (v39)
    {
      goto LABEL_84;
    }

    *(v178 + 20) = v56;
    v57 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v58 = v24 + v57;
    if (__OFADD__(v24, v57))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (a1[2])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v58 = 0;
    v20 = 0;
    if (a1[2])
    {
LABEL_23:
      v59 = 0;
      goto LABEL_29;
    }
  }

  v60 = a1[1];
  v61 = *(v178 + 20);
  v62 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v178 + 8, v61);
  if (v63)
  {
    v64._countAndFlagsBits = 32;
    v64._object = 0xE100000000000000;
    v62 = ByteBuffer._setStringSlowpath(_:at:)(v64, v61);
  }

  v65 = v62;
  v66 = *(v178 + 20);
  v39 = __CFADD__(v66, v62);
  v67 = v66 + v62;
  if (v39)
  {
    goto LABEL_89;
  }

  *(v178 + 20) = v67;
  v68 = sub_1B0DC7068(v60);
  v59 = v68 + v65;
  if (__OFADD__(v65, v68))
  {
LABEL_90:
    __break(1u);
    return;
  }

LABEL_29:
  v50 = __OFADD__(v58, v59);
  v69 = &v59[v58];
  if (v50)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v152 = v69;
  v70 = a1[3];
  v71 = a1[4];
  v182 = a1[5];
  v157 = v182;
  v72 = *(v182 + 16);
  if (v72)
  {
    v73 = *(v178 + 20);
    v74 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v178 + 8, v73);
    if (v75)
    {
      v76._countAndFlagsBits = 32;
      v76._object = 0xE100000000000000;
      v74 = ByteBuffer._setStringSlowpath(_:at:)(v76, v73);
    }

    v77 = *(v178 + 20);
    v39 = __CFADD__(v77, v74);
    v78 = v77 + v74;
    if (v39)
    {
      goto LABEL_86;
    }

    v153 = v74;
    *(v178 + 20) = v78;
  }

  else
  {
    v153 = 0;
  }

  v180 = v71;
  v181 = v70;
  sub_1B03B5C80(&v181, v179, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B03B5C80(&v180, v179, &qword_1EB6E5578, &qword_1B0ED2740);
  sub_1B03B5C80(&v182, v179, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  sub_1B03B5C80(&v181, v179, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B03B5C80(&v180, v179, &qword_1EB6E5578, &qword_1B0ED2740);
  sub_1B03B5C80(&v182, v179, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  v79 = 0;
  if (v72)
  {
    v80 = 0;
    v154 = v72 - 1;
    v81 = (v71 + 40);
    v82 = v71;
    v156 = v72;
    v155 = v71;
    while (v80 < *(v82 + 16))
    {
      v171 = v79;
      v83 = v167;
      v84 = *(v167 + 48);
      v169 = v81;
      v85 = *(v81 - 1);
      v86 = *v81;
      v173 = v86;
      v87 = v165;
      *v165 = v85;
      *(v87 + 8) = v86;
      v88 = *(type metadata accessor for ParameterValue(0) - 8);
      sub_1B0D3CD9C(v157 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v80, v87 + v84, type metadata accessor for ParameterValue);
      v89 = v166;
      sub_1B03C60A4(v87, v166, &qword_1EB6E6568, &qword_1B0EE7F08);
      v90 = *(v83 + 48);
      v91 = v164;
      v92 = *(v164 + 48);
      v93 = v89[1];
      v94 = v161;
      *v161 = *v89;
      v94[1] = v93;
      sub_1B0D3CD34(v89 + v90, v94 + v92, type metadata accessor for ParameterValue);
      v95 = v94;
      v96 = v160;
      sub_1B03C60A4(v95, v160, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v172 = v20;
      v97 = v159;
      v98 = *(v159 + 48);
      v99 = v175;
      v174 = v80;
      *v175 = v80;
      sub_1B03C60A4(v96, v99 + v98, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v100 = v158;
      sub_1B03B5C80(v99, v158, &qword_1EB6E6F38, &qword_1B0EEEAE8);
      v170 = *v100;
      v101 = (v100 + *(v97 + 48));
      v102 = *(v91 + 48);
      v103 = *v101;
      v104 = v101[1];
      v105 = v162;
      sub_1B0D3CD34(v101 + v102, v162 + v102, type metadata accessor for ParameterValue);
      v106 = *(v91 + 48);
      v107 = v176;
      *v176 = v103;
      v107[1] = v104;
      sub_1B0D3CD34(v105 + v102, v107 + v106, type metadata accessor for ParameterValue);
      sub_1B03B5C80(v107, v105, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v108 = *(v91 + 48);
      v109 = v163;
      sub_1B03B5C80(v107, v163, &qword_1EB6E6F30, &qword_1B0EEEAE0);
      v110 = *(v91 + 48);
      v111 = *v105;
      v112 = v105[1];
      v113 = v177;
      *v177 = *v105;
      v113[1] = v112;
      v114 = *(v168 + 52);
      sub_1B0D3CD34(v109 + v110, v113 + v114, type metadata accessor for ParameterValue);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v115 = v105 + v108;
      v116 = v178;
      sub_1B0D3CE04(v115, type metadata accessor for ParameterValue);
      v117 = *(v116 + 20);
      v20 = v172;
      v118 = sub_1B0CFC1B0(v111, v112, v116 + 8, v117);
      if (v119)
      {
        v120._countAndFlagsBits = v111;
        v120._object = v112;
        v118 = ByteBuffer._setStringSlowpath(_:at:)(v120, v117);
      }

      v121 = v118;
      v122 = *(v178 + 20);
      v123 = (v122 + v118);
      v124 = v174;
      if (__CFADD__(v122, v118))
      {
        goto LABEL_67;
      }

      v125 = v178;
      *(v178 + 20) = v123;
      v126 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v125 + 8, v123);
      if (v127)
      {
        v128._countAndFlagsBits = 32;
        v128._object = 0xE100000000000000;
        v126 = ByteBuffer._setStringSlowpath(_:at:)(v128, v123);
      }

      v129 = *(v178 + 20);
      v39 = __CFADD__(v129, v126);
      v130 = v129 + v126;
      if (v39)
      {
        goto LABEL_68;
      }

      *(v178 + 20) = v130;
      v131 = v121 + v126;
      if (__OFADD__(v121, v126))
      {
        goto LABEL_69;
      }

      v132 = v177;
      v133 = sub_1B0DF818C(v177 + v114);
      v134 = v131 + v133;
      if (__OFADD__(v131, v133))
      {
        goto LABEL_70;
      }

      sub_1B0398EFC(v132, &qword_1EB6E6F28, "P5\a");
      v135 = v171 + v134;
      if (__OFADD__(v171, v134))
      {
        goto LABEL_71;
      }

      if (v170 >= v154)
      {
        sub_1B0398EFC(v176, &qword_1EB6E6F30, &qword_1B0EEEAE0);
        v140 = 0;
        v72 = v156;
        v82 = v155;
      }

      else
      {
        v136 = *(v178 + 20);
        v137 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v178 + 8, v136);
        v72 = v156;
        v82 = v155;
        if (v138)
        {
          v139._countAndFlagsBits = 32;
          v139._object = 0xE100000000000000;
          v137 = ByteBuffer._setStringSlowpath(_:at:)(v139, v136);
        }

        v140 = v137;
        sub_1B0398EFC(v176, &qword_1EB6E6F30, &qword_1B0EEEAE0);
        v141 = *(v178 + 20);
        v39 = __CFADD__(v141, v140);
        v142 = v141 + v140;
        if (v39)
        {
          goto LABEL_73;
        }

        *(v178 + 20) = v142;
      }

      v50 = __OFADD__(v135, v140);
      v79 = v135 + v140;
      if (v50)
      {
        goto LABEL_72;
      }

      v80 = v124 + 1;
      sub_1B0398EFC(v175, &qword_1EB6E6F38, &qword_1B0EEEAE8);
      v81 = v169 + 2;
      if (v72 == v80)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_66;
  }

LABEL_56:
  sub_1B0398EFC(&v181, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B0398EFC(&v180, &qword_1EB6E5578, &qword_1B0ED2740);
  sub_1B0398EFC(&v182, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  sub_1B0398EFC(&v181, &qword_1EB6E5570, &qword_1B0ED2738);
  sub_1B0398EFC(&v180, &qword_1EB6E5578, &qword_1B0ED2740);
  sub_1B0398EFC(&v182, &qword_1EB6E6F40, &qword_1B0EEEAF0);
  v143 = v153 + v79;
  if (__OFADD__(v153, v79))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v72)
  {
    v144 = *(v178 + 20);
    v145 = sub_1B0CFC1B0(0, 0xE000000000000000, v178 + 8, v144);
    if (v146)
    {
      v147._countAndFlagsBits = 0;
      v147._object = 0xE000000000000000;
      v145 = ByteBuffer._setStringSlowpath(_:at:)(v147, v144);
    }

    v148 = *(v178 + 20);
    v39 = __CFADD__(v148, v145);
    v149 = v148 + v145;
    if (v39)
    {
      goto LABEL_88;
    }

    *(v178 + 20) = v149;
    v150 = v143 + v145;
    if (__OFADD__(v143, v145))
    {
      __break(1u);
LABEL_66:
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
      goto LABEL_74;
    }
  }

  else
  {
    v150 = v153 + v79;
  }

  if (__OFADD__(v152, v150))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }
}
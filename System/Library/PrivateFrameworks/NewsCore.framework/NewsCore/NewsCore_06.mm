uint64_t sub_1B64BC19C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B6499B48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B64BC1CC(void *a1)
{

  return sub_1B6499B6C(v1);
}

id sub_1B64BC20C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  v53 = a3;
  v4 = sub_1B67D8C1C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B67D8E6C();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B67D8F7C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D8E8C();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D8EDC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D8C4C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1B67D8F5C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v22 = a1[2];
  v64 = a1[1];
  v65 = v22;
  v66 = a1[3];
  v23 = *(a1 + 32);
  if (v23 != 255)
  {
    v24 = v21;
    v25 = *(a1 + 32);
    if ((v23 & 1) == 0)
    {
      v26 = v53;
      v28 = v64;
      v27 = v65;
      *v53 = v21;
      v26[1] = v28;
      v29 = v66;
      v26[2] = v27;
      v26[3] = v29;
    }

    goto LABEL_7;
  }

  v47 = v6;
  v48 = a1 + 1;
  v68 = 255;
  v49 = v21;
  v50 = a1;
  *v20 = sub_1B67D85BC();
  v20[1] = v31;
  (*(v18 + 104))(v20, *MEMORY[0x1E69D6280], v17);
  sub_1B67D8C3C();
  (*(v13 + 104))(v15, *MEMORY[0x1E69D6270], v12);
  (*(v54 + 104))(v57, *MEMORY[0x1E69D6268], v55);
  (*(v56 + 104))(v60, *MEMORY[0x1E69D62A0], v58);
  (*(v61 + 104))(v63, *MEMORY[0x1E69D6250], v62);
  sub_1B67D8F8C();
  swift_allocObject();
  v69 = 1;
  v32 = v67;
  v33 = sub_1B67D8F6C();
  if (v32)
  {
    v34 = v50;
    *v50 = v32;
    v42 = v48;
    v48[1] = 0;
    v42[2] = 0;
    *v42 = 0;
    *(v34 + 32) = 1;
    v43 = v32;
    v24 = v49;
    v25 = v68;
LABEL_7:
    swift_willThrow();
    return sub_1B64C2628(v24, v64, v65, v66, v25);
  }

  v35 = v33;
  sub_1B64BF734();
  v36 = sub_1B67D8F3C();
  v37 = v50;
  v38 = v36;
  sub_1B649B558();
  v39 = sub_1B67D8F3C();
  sub_1B64C26AC();
  v40 = sub_1B67D8F3C();
  v41 = sub_1B67D8E7C();
  if (v41 != (FCFeedItemVersion | 0x60000))
  {
    v63 = (FCFeedItemVersion | 0x60000);
    v67 = &v47;
    MEMORY[0x1EEE9AC00](v41);
    *(&v47 - 4) = v38;
    *(&v47 - 3) = v39;
    *(&v47 - 2) = v40;
    v45 = v51;
    v46 = v47;
    (*(v51 + 104))(v47, *MEMORY[0x1E69D6188], v52);
    sub_1B67D8F4C();
    (*(v45 + 8))(v46, v52);
    sub_1B67D8EEC();
  }

  *v37 = v35;
  v37[1] = v38;
  v37[2] = v39;
  v37[3] = v40;
  *(v37 + 32) = 0;
  v44 = v53;
  *v53 = v35;
  v44[1] = v38;
  v44[2] = v39;
  v44[3] = v40;
}

uint64_t FeedItemDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL;
  v2 = sub_1B67D85FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_logger;
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t FeedItemDatabase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL;
  v2 = sub_1B67D85FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_logger;
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64BCB70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x496E6F6974636573;
  v4 = 0x44496369706F74;
  if (v1 != 3)
  {
    v4 = 0x7367616C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496C656E6E616863;
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

uint64_t sub_1B64BCC04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B64C10E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B64BCC2C(uint64_t a1)
{
  v2 = sub_1B64C2C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64BCC68(uint64_t a1)
{
  v2 = sub_1B64C2C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64BCCA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B500, &qword_1B6816480);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64C2C68();
  sub_1B67DA47C();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B6413CCC(&qword_1EB94AC80, &qword_1EB94AC38, &qword_1B6813DE0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    sub_1B67DA24C();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    sub_1B67DA24C();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
    sub_1B6413CCC(&qword_1EB94B508, &qword_1EB94B4E0, &qword_1B6816088, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B64BCFAC()
{
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BCC();
}

uint64_t sub_1B64BD074(uint64_t a1)
{
  v2 = sub_1B64C26AC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64BD0C0(uint64_t a1)
{
  v2 = sub_1B64C26AC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64BD10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64C26AC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B64BD170@<D0>(uint64_t a1@<X8>)
{
  sub_1B64C0B10(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1B64BD1B4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B64C1298(a2, v6);
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

uint64_t sub_1B64BD214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64C26AC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64BD260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64C26AC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64BD2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64C26AC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64BD318(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4B8, &qword_1B6816010);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64C2524();
  sub_1B67DA47C();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B64BD530()
{
  if (*v0)
  {
    return 0x6465646F636E65;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B64BD560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B67DA2DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646F636E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B67DA2DC();

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

uint64_t sub_1B64BD634(uint64_t a1)
{
  v2 = sub_1B64C2524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64BD670(uint64_t a1)
{
  v2 = sub_1B64C2524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64BD6D0(uint64_t a1)
{
  v2 = sub_1B64BF734();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64BD71C(uint64_t a1)
{
  v2 = sub_1B64BF734();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64BD768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64BF734();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64BD7CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B64C1C8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B64BD7F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B64C1FD0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B64BD83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64BF734();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64BD888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64BF734();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64BD8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64BF734();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64BD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v36 = a4;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_1B67D8E4C();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_1B67D8B1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v13, &qword_1EB94B470, &unk_1B6815A80);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v24 = v35;
    v25 = sub_1B67D8FEC();
    if (!v24)
    {
      v28 = v25;

      v23 = sub_1B64BE1E8(v28);
      (*(v15 + 8))(v17, v14);
      goto LABEL_12;
    }

    (*(v15 + 8))(v17, v14);
  }

  v18 = v35;
  sub_1B6418AB4(v13, &qword_1EB94B470, &unk_1B6815A80);
  sub_1B6415FF0(v36, v7, &qword_1EB94B510, &unk_1B68102C0);
  v20 = v32;
  v19 = v33;
  if ((*(v32 + 48))(v7, 1, v33) != 1)
  {
    (*(v20 + 32))(v10, v7, v19);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v26 = sub_1B67D8FBC();
    if (!v18)
    {
      v29 = v26;

      v23 = sub_1B64BE1E8(v29);
      (*(v20 + 8))(v10, v19);
      goto LABEL_12;
    }

    (*(v20 + 8))(v10, v19);
  }

  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B649AD64();
  sub_1B67D8D9C();
  v21 = sub_1B67D8F9C();
  if (v18)
  {
  }

  v22 = v21;

  v23 = sub_1B64BE1E8(v22);
LABEL_12:
  *(v31 + 24) = v23;
}

uint64_t sub_1B64BDD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v36 = a4;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_1B67D8E4C();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_1B67D8B1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v13, &qword_1EB94B470, &unk_1B6815A80);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = v35;
    sub_1B6418AB4(v13, &qword_1EB94B470, &unk_1B6815A80);
    sub_1B6415FF0(v36, v7, &qword_1EB94B510, &unk_1B68102C0);
    v20 = v32;
    v19 = v33;
    if ((*(v32 + 48))(v7, 1, v33) == 1)
    {
      sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
      sub_1B649AD64();
      sub_1B67D8D9C();
      v21 = v18;
      v22 = sub_1B67D8F9C();

      if (v21)
      {
        return result;
      }

      v24 = sub_1B64BE1E8(v22);
      goto LABEL_12;
    }

    (*(v20 + 32))(v10, v7, v19);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v27 = sub_1B67D8FBC();
    if (v18)
    {
      (*(v20 + 8))(v10, v19);
    }

    v29 = v27;

    v24 = sub_1B64BE1E8(v29);
    (*(v20 + 8))(v10, v19);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v25 = v35;
    v26 = sub_1B67D8FEC();
    if (v25)
    {
      (*(v15 + 8))(v17, v14);
    }

    v28 = v26;

    v24 = sub_1B64BE1E8(v28);
    (*(v15 + 8))(v17, v14);
  }

LABEL_12:
  *(v31 + 24) = v24;
}

uint64_t sub_1B64BE1E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B64BFF84(v1);
    }

    *(v1 + 8 * i) = v8;

    if (v4 - 4 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    *(v1 + 8 * v4) = v7;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1B64BE2DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  sub_1B64BE344(v2, a1[2], a1[3], a2);

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1B64BE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_1B67D8B1C();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B67D9DFC();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v42 = *(a2 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v43 = a1;
  v22 = *(a1 + 24);
  if (!v22)
  {
    goto LABEL_16;
  }

  if (!*(v22 + 16))
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v34 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v21;
  v36 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  result = sub_1B64BFF84(v22);
  v22 = result;
  v23 = *(result + 16);
  if (!v23)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v38 = a5;
  v39 = a3;
  v24 = v23 - 1;
  v25 = *(v22 + 8 * v24 + 32);
  *(v22 + 16) = v24;
  *(v43 + 24) = v22;

  sub_1B67D8D9C();

  sub_1B64968B8();

  v37 = v25;
  sub_1B646D2FC(v25);
  sub_1B67D8DCC();

  if (!v45)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v46[3] = MEMORY[0x1E69E6158];
  v46[4] = MEMORY[0x1E69D62D8];
  v46[0] = v44;
  v46[1] = v45;
  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v46);
  v26 = sub_1B67D8E4C();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  v27 = v46[6];
  sub_1B67D8FDC();
  if (v27)
  {

    sub_1B6418AB4(v11, &qword_1EB94B510, &unk_1B68102C0);
    (*(v40 + 8))(v14, v41);
    (*(v42 + 56))(v18, 1, 1, a2);
    v29 = v38;
    v28 = v39;
  }

  else
  {

    sub_1B6418AB4(v11, &qword_1EB94B510, &unk_1B68102C0);
    (*(v40 + 8))(v14, v41);
    v30 = v42;
    v31 = (*(v42 + 48))(v18, 1, a2);
    v29 = v38;
    v28 = v39;
    if (v31 != 1)
    {
      v32 = v34;
      (*(v30 + 32))(v34, v18, a2);

      swift_getAtKeyPath();

      (*(v30 + 8))(v32, a2);
      return (*(*(v28 - 8) + 56))(v29, 0, 1, v28);
    }
  }

  (*(v35 + 8))(v18, v36);
  return (*(*(v28 - 8) + 56))(v29, 1, 1, v28);
}

uint64_t sub_1B64BE8CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B64C2520(v2, a1, a2);

  return v3;
}

id sub_1B64BE94C(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B67D858C();
  v15[0] = 0;
  v7 = [v4 *a2];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1B67D85FC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1B67D855C();

    swift_willThrow();
    v13 = sub_1B67D85FC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

void sub_1B64BEAB8()
{
  v2 = v1;
  v3 = *(v0 + 16);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B67DA04C())
  {
    for (j = 4; ; ++j)
    {
      v6 = j - 4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8C95180](j - 4, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * j);
      }

      v8 = v7;
      v9 = j - 3;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = objc_autoreleasePoolPush();
      sub_1B67D8D4C();
      v10 = v8;
      sub_1B6496B74(v10, &v12);
      sub_1B67D8CDC();
      v13 = v2;
      if (v2)
      {

        objc_autoreleasePoolPop(v11);

        return;
      }

      objc_autoreleasePoolPop(v11);

      v2 = v13;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_1B64BECD0@<X0>(uint64_t *a1@<X8>)
{
  sub_1B649AD64();
  sub_1B67D8D9C();
  v3 = sub_1B67D8F9C();

  if (!v1)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1B64BED44@<X0>(void *a2@<X8>)
{
  sub_1B67D8D5C();
  v4 = sub_1B67D8CEC();

  if (!v2)
  {
    v12 = *(v4 + 16);
    if (v12)
    {
      v6 = 0;
      v7 = v4 + 64;
      v8 = MEMORY[0x1E69E7CC8];
      v11 = v4;
      while (v6 < *(v4 + 16))
      {

        sub_1B67D8B4C();
        sub_1B67D8DCC();

        if (!v14)
        {
          goto LABEL_12;
        }

        ++v6;
        v9 = sub_1B64BA55C(result);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B64BFACC(v9, v13, v14, isUniquelyReferenced_nonNull_native);

        v7 += 40;
        v4 = v11;
        if (v12 == v6)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC8];
LABEL_9:

      *a2 = v8;
    }
  }

  return result;
}

void sub_1B64BEF3C()
{
  v1 = *(v0 + 16);
  v17 = v1;
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v5)) | (v8 << 6);
      v10 = *(v17 + 48) + 16 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(*(v17 + 56) + 8 * v9);

      v14 = v13;
      sub_1B67D8D4C();
      v15 = v14;
      sub_1B64BFF98(v11, v12, v15, &v18);
      v16 = v19;
      sub_1B67D8CDC();

      v19 = v16;
      if (v16)
      {
        break;
      }

      v5 &= v5 - 1;
      v7 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        return;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B64BF0F4@<X0>(void *a2@<X8>)
{
  sub_1B67D8D5C();
  v4 = sub_1B67D8CEC();

  if (!v2)
  {
    if (v4[2])
    {
      v6 = v4[4];
      v7 = v4[5];
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *a2 = v6;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1B64BF18C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[8];
  sub_1B67D8D4C();
  sub_1B64C0734(v5, v3, v4);
  if (!v2)
  {
    sub_1B67D8CDC();
  }
}

uint64_t sub_1B64BF250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemPruningPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B64BF2D8()
{
  result = qword_1EB94B4A0;
  if (!qword_1EB94B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B4A0);
  }

  return result;
}

uint64_t sub_1B64BF38C(uint64_t a1)
{
  result = sub_1B67D877C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B64BF440()
{
  result = qword_1EB956140[0];
  if (!qword_1EB956140[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B4A8, &qword_1B6815C78);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956140);
  }

  return result;
}

uint64_t sub_1B64BF4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B64BF524()
{
  result = qword_1EB9563D0;
  if (!qword_1EB9563D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9563D0);
  }

  return result;
}

unint64_t sub_1B64BF57C()
{
  result = qword_1EB9563D8;
  if (!qword_1EB9563D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9563D8);
  }

  return result;
}

unint64_t sub_1B64BF5D4()
{
  result = qword_1EB9563E0[0];
  if (!qword_1EB9563E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9563E0);
  }

  return result;
}

unint64_t sub_1B64BF62C()
{
  result = qword_1EB956470[0];
  if (!qword_1EB956470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956470);
  }

  return result;
}

unint64_t sub_1B64BF684()
{
  result = qword_1EB956580;
  if (!qword_1EB956580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956580);
  }

  return result;
}

unint64_t sub_1B64BF6DC()
{
  result = qword_1EB956588[0];
  if (!qword_1EB956588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956588);
  }

  return result;
}

unint64_t sub_1B64BF734()
{
  result = qword_1EB956610;
  if (!qword_1EB956610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956610);
  }

  return result;
}

unint64_t sub_1B64BF78C()
{
  result = qword_1EB956618[0];
  if (!qword_1EB956618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956618);
  }

  return result;
}

uint64_t sub_1B64BF7FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E8, &unk_1B6816090);
  v37 = v4;
  result = sub_1B67DA0CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B64BFACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6456E70(a2, a3);
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
      sub_1B64817EC(v16, a4 & 1);
      v11 = sub_1B6456E70(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1B67DA34C();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_1B6481A90();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1B64BFC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1B6456E70(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1B64BF7FC(v20, a6 & 1);
      v15 = sub_1B6456E70(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1B67DA34C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1B64BFDF0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    v27 = v26[2];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v25[6] + 16 * v15);
  *v29 = a4;
  v29[1] = a5;
  v30 = (v25[7] + 24 * v15);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = a3;
  v31 = v25[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v32;
}

id sub_1B64BFDF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E8, &unk_1B6816090);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;

        result = v25;
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

uint64_t sub_1B64BFF98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a3;
  v54 = a1;
  v55 = a2;
  v56 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4C8, &qword_1B6816070);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  v24(v11, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  swift_allocObject();
  v25 = sub_1B67D8B3C();
  v24(v13, 1, 1, v23);
  v24(v11, 1, 1, v23);
  swift_allocObject();

  sub_1B67D8DBC();
  swift_allocObject();
  v26 = sub_1B67D8B3C();
  v24(v13, 1, 1, v23);
  v24(v11, 1, 1, v23);
  v27 = v22;
  v28 = v26;
  v29 = v51;
  swift_allocObject();

  sub_1B67D8DBC();
  swift_allocObject();
  v30 = sub_1B67D8B3C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D0, &qword_1B6816078);
  v32 = *(*(v31 - 8) + 56);
  v32(v52, 1, 1, v31);
  v32(v53, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D8, &qword_1B6816080);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
  swift_allocObject();
  v33 = sub_1B67D8B3C();

  sub_1B67D8B4C();
  v57 = v54;
  v58 = v55;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v34 = [v29 channelID];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B67D964C();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v57 = v36;
  v58 = v38;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v39 = [v29 sectionID];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1B67D964C();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v57 = v41;
  v58 = v43;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v44 = [v29 topicID];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1B67D964C();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v57 = v46;
  v58 = v48;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v57 = [v29 flags];
  LOWORD(v58) = 0;
  sub_1B67D8DDC();

  v50 = v56;
  *v56 = v27;
  v50[1] = v25;
  v50[2] = v28;
  v50[3] = v30;
  v50[4] = v33;
  return result;
}

uint64_t sub_1B64C0734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(v12, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v17 = sub_1B67D8B3C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  sub_1B67D8B3C();
  sub_1B67D8B4C();
  v27 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B67D83FC();
  swift_allocObject();
  sub_1B67D83EC();
  v20 = v28;
  v21 = sub_1B67D83DC();
  if (v20)
  {
  }

  else
  {
    v23 = v21;
    v24 = v22;

    *&v27 = v23;
    *(&v27 + 1) = v24;
    sub_1B67D8DDC();
  }

  return v17;
}

uint64_t sub_1B64C0B10@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4C8, &qword_1B6816070);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v15, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v29 = sub_1B67D8B3C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  swift_allocObject();
  v28 = sub_1B67D8B3C();
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v23 = sub_1B67D8B3C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D0, &qword_1B6816078);
  v25 = *(*(v24 - 8) + 56);
  v25(v30, 1, 1, v24);
  v25(v31, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D8, &qword_1B6816080);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v27 = v28;
  *a1 = v29;
  a1[1] = v27;
  a1[2] = v22;
  a1[3] = v23;
  a1[4] = result;
  return result;
}

uint64_t sub_1B64C10E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496369706F74 && a2 == 0xE700000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

uint64_t sub_1B64C1298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4F0, &qword_1B6816478);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4C8, &qword_1B6816070);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v39 = sub_1B67D8B3C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  swift_allocObject();
  v42 = sub_1B67D8B3C();
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v40 = sub_1B67D8B3C();
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v24 = sub_1B67D8B3C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D0, &qword_1B6816078);
  v26 = *(*(v25 - 8) + 56);
  v26(v41, 1, 1, v25);
  v26(v43, 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D8, &qword_1B6816080);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
  swift_allocObject();
  v27 = sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_1B64C2C68();
  v28 = v44;
  sub_1B67DA46C();
  if (v28)
  {

    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v43 = v27;
    v44 = v24;
    v47 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v29 = v48;
    v47 = 1;
    sub_1B6413CCC(&qword_1EB94ACA0, &qword_1EB94AC38, &qword_1B6813DE0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v30 = v48;
    v47 = 2;
    sub_1B67DA1CC();

    v31 = v48;
    v47 = 3;
    sub_1B67DA1CC();

    v32 = v48;
    v47 = 4;
    sub_1B6413CCC(&qword_1EB94B4F8, &qword_1EB94B4E0, &qword_1B6816088, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    (*(v37 + 8))(v45, v38);

    v34 = v48;
    result = __swift_destroy_boxed_opaque_existential_1(v46);
    v35 = v36;
    *v36 = v29;
    v35[1] = v30;
    v35[2] = v31;
    v35[3] = v32;
    v35[4] = v34;
  }

  return result;
}

uint64_t sub_1B64C1C8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(v9, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v14 = sub_1B67D8B3C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);
  v16(v3, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v18 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  return v14;
}

uint64_t sub_1B64C1FD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4B0, &qword_1B6816008);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v14, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v19 = sub_1B67D8B3C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64C2524();
  v22 = v27;
  sub_1B67DA46C();
  if (v22)
  {
  }

  else
  {
    v28 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    v23 = v26;
    sub_1B67DA1CC();

    v19 = v29;
    v28 = 1;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    (*(v25 + 8))(v4, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

unint64_t sub_1B64C2524()
{
  result = qword_1EB9567A0[0];
  if (!qword_1EB9567A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9567A0);
  }

  return result;
}

unint64_t sub_1B64C2578()
{
  result = qword_1EB94B4C0;
  if (!qword_1EB94B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B4C0);
  }

  return result;
}

uint64_t sub_1B64C25CC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_1B64C2628(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1B64C2640(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

id sub_1B64C2640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return a1;
  }

  else
  {
  }
}

unint64_t sub_1B64C26AC()
{
  result = qword_1EB9567B8[0];
  if (!qword_1EB9567B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9567B8);
  }

  return result;
}

uint64_t sub_1B64C2700(uint64_t a1)
{
  sub_1B67D8D3C();
  sub_1B67D8CCC();

  if (!v1)
  {
    sub_1B67D8D6C();
    sub_1B67D8DFC();

    sub_1B67D8D3C();
    sub_1B67D8CCC();

    sub_1B67D8D6C();
    sub_1B67D8DFC();

    sub_1B67D8D3C();
    sub_1B67D8CCC();

    sub_1B67D8D6C();
    sub_1B67D8DFC();
  }

  return result;
}

uint64_t sub_1B64C2834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B64C287C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B64C28F8()
{
  result = qword_1EB9568C0[0];
  if (!qword_1EB9568C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9568C0);
  }

  return result;
}

unint64_t sub_1B64C2950()
{
  result = qword_1EB956BD0;
  if (!qword_1EB956BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956BD0);
  }

  return result;
}

unint64_t sub_1B64C29A8()
{
  result = qword_1EB956BD8;
  if (!qword_1EB956BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956BD8);
  }

  return result;
}

unint64_t sub_1B64C2A00()
{
  result = qword_1EB956BE0[0];
  if (!qword_1EB956BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956BE0);
  }

  return result;
}

unint64_t sub_1B64C2A58()
{
  result = qword_1EB956C70[0];
  if (!qword_1EB956C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956C70);
  }

  return result;
}

unint64_t sub_1B64C2AB4()
{
  result = qword_1EB956D80[0];
  if (!qword_1EB956D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956D80);
  }

  return result;
}

unint64_t sub_1B64C2B0C()
{
  result = qword_1EB956E10;
  if (!qword_1EB956E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956E10);
  }

  return result;
}

unint64_t sub_1B64C2B64()
{
  result = qword_1EB956E18[0];
  if (!qword_1EB956E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956E18);
  }

  return result;
}

unint64_t sub_1B64C2BBC()
{
  result = qword_1EB956EA0;
  if (!qword_1EB956EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956EA0);
  }

  return result;
}

unint64_t sub_1B64C2C14()
{
  result = qword_1EB956EA8[0];
  if (!qword_1EB956EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956EA8);
  }

  return result;
}

unint64_t sub_1B64C2C68()
{
  result = qword_1EB956F30[0];
  if (!qword_1EB956F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956F30);
  }

  return result;
}

unint64_t sub_1B64C2CD0()
{
  result = qword_1EB957040[0];
  if (!qword_1EB957040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957040);
  }

  return result;
}

unint64_t sub_1B64C2D28()
{
  result = qword_1EB957150[0];
  if (!qword_1EB957150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957150);
  }

  return result;
}

unint64_t sub_1B64C2D80()
{
  result = qword_1EDB230E8;
  if (!qword_1EDB230E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB230E8);
  }

  return result;
}

id UserEventHistoryStorage.__allocating_init(privateZone:logger:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B64C6FE0(a1, a2);

  return v2;
}

id UserEventHistoryStorage.__allocating_init(context:location:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for PrivateZoneLocation(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 10);
  v12 = *(v3 + 11);
  v13 = sub_1B64C7024();
  v21[0] = v11;
  v21[1] = &type metadata for UserEventHistorySessionEntity;
  v21[2] = v12;
  v21[3] = v13;
  type metadata accessor for PrivateZone(0, v21);
  sub_1B6418A50(a2, v10);
  v14 = sub_1B67D8A9C();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);

  v17 = PrivateZone.__allocating_init(context:location:logger:)(v16, v10, v7);
  v15(v7, 1, 1, v14);
  v18 = objc_allocWithZone(v3);
  v19 = sub_1B641ABD4(v17, v7);

  sub_1B6416298(a2);
  return v19;
}

id sub_1B64C3000(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.sessionIDs.getter();

  if (v2)
  {
    v3 = sub_1B67D97AC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t UserEventHistoryStorage.sessionIDs.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v26 - v5);
  v26[5] = *(v1 + qword_1EB94B518);

  sub_1B64C3404(v6);
  v7 = sub_1B67D8E4C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = *((v3 & v2) + 0x50);
  v9 = *((v3 & v2) + 0x58);
  v10 = sub_1B64C7024();
  v26[0] = v8;
  v26[1] = &type metadata for UserEventHistorySessionEntity;
  v26[2] = v9;
  v26[3] = v10;
  v11 = type metadata accessor for PrivateZone(0, v26);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1B64C7078();
  v14 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionIDEntity, v6, v11, &type metadata for UserEventHistorySessionIDEntity, WitnessTable, v13);
  sub_1B6418AB4(v6, &qword_1EB94B510, &unk_1B68102C0);

  v15 = v14[2];
  if (v15)
  {
    v26[0] = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v15, 0);
    v16 = v26[0];
    v17 = v14 + 5;
    do
    {
      v18 = *(v17 - 1);

      v19 = sub_1B646D344(v18);
      v21 = v20;

      v26[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B6456B24((v22 > 1), v23 + 1, 1);
        v16 = v26[0];
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v17 += 2;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1B64C3404@<X0>(void *a1@<X8>)
{
  v2 = sub_1B646A6E0();
  v3 = *(v2 + 1);
  *a1 = *v2;
  a1[1] = v3;
  v4 = *MEMORY[0x1E69D6220];
  v5 = sub_1B67D8E4C();
  (*(*(v5 - 8) + 104))(a1, v4, v5);
}

id sub_1B64C3494(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.sessions.getter();

  if (v2)
  {
    type metadata accessor for UserEventHistorySession(0);
    v3 = sub_1B67D97AC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t UserEventHistoryStorage.sessions.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v33 - v6);
  v41[5] = *(v1 + qword_1EB94B518);

  sub_1B64C3404(v7);
  v8 = sub_1B67D8E4C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = *((v4 & v2) + 0x50);
  v10 = *((v4 & v2) + 0x58);
  v11 = sub_1B64C7024();
  v41[0] = v9;
  v41[1] = &type metadata for UserEventHistorySessionEntity;
  v41[2] = v10;
  v41[3] = v11;
  v12 = type metadata accessor for PrivateZone(0, v41);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B64C70CC();
  v15 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v7, v12, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v14);
  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);

  v41[0] = MEMORY[0x1E69E7CC0];
  v36 = v15[2];
  if (v36)
  {
    v17 = 0;
    v18 = v15 + 6;
    v33 = MEMORY[0x1E69E7CC0];
    v34 = v15;
    v35 = v1;
    while (v17 < v15[2])
    {
      v40 = v17;
      v19 = *(v18 - 2);

      v20 = *v1;
      v39 = 0;
      v21 = *v3;
      v37 = sub_1B646D344(v19);
      v23 = v22;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B590, &qword_1B6816650);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v25[2] = *((v21 & v20) + 0x50);
      v25[3] = *((v21 & v20) + 0x58);
      v25[4] = v24;
      v26 = v37;
      v25[5] = v37;
      v25[6] = v23;

      v27 = sub_1B64160BC(sub_1B64C7270, v25);
      type metadata accessor for UserEventHistorySession(0);
      v28 = sub_1B646D394(v19);
      v29 = v26;
      v30 = v39;
      v31 = sub_1B64B4000(v29, v23, v28, v27);
      if (v30)
      {

        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      v1 = v35;
      v3 = MEMORY[0x1E69E7D40];
      if (v32)
      {
        MEMORY[0x1B8C949F0](result);
        if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B67D97FC();
        }

        result = sub_1B67D983C();
        v33 = v41[0];
      }

      v17 = v40 + 1;
      v18 += 3;
      v15 = v34;
      if (v36 == v40 + 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v33;
  }

  return result;
}

uint64_t sub_1B64C3A14(uint64_t a1, ValueMetadata *a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v26 = sub_1B67D8B1C();
  v25[0] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v2 + qword_1EB94B518);

  sub_1B646A6D4();
  v30 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69D62D8];
  v27 = a1;
  v28 = a2;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(&v27);
  v12 = sub_1B67D8E4C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *((v6 & v5) + 0x50);
  v14 = *((v6 & v5) + 0x58);
  v15 = sub_1B64C7024();
  v27 = v13;
  v28 = &type metadata for UserEventHistorySessionEntity;
  v29 = v14;
  v30 = v15;
  v16 = type metadata accessor for PrivateZone(0, &v27);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1B64C7380();
  v19 = v25[1];
  PrivateZoneType.first<A>(_:_:orderBy:)(&type metadata for UserEventHistorySessionDataEntity, v11, v9, v16, &type metadata for UserEventHistorySessionDataEntity, WitnessTable, v18);
  if (v19)
  {
    sub_1B6418AB4(v9, &qword_1EB94B510, &unk_1B68102C0);
    (*(v25[0] + 8))(v11, v26);
  }

  else
  {
    sub_1B6418AB4(v9, &qword_1EB94B510, &unk_1B68102C0);
    (*(v25[0] + 8))(v11, v26);

    v21 = v32;
    if (v32)
    {
      v22 = v33;

      WitnessTable = sub_1B646D450(v21);

      sub_1B64C73D4(v21, v22);
    }

    else
    {
      type metadata accessor for UserEventHistoryStorage.Errors(0, v13, v14, v20);
      swift_getWitnessTable();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
    }
  }

  return WitnessTable;
}

BOOL sub_1B64C3DA8(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.isEmpty.getter();

  return v2;
}

BOOL UserEventHistoryStorage.isEmpty.getter()
{
  v0 = UserEventHistoryStorage.sessionIDs.getter();
  if (!v0)
  {
    return 1;
  }

  v1 = *(v0 + 16);

  return v1 == 0;
}

id sub_1B64C3E18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = a1;
  UserEventHistoryStorage.earliestSessionDate.getter(v4);

  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_1B67D86DC();
    (*(v7 + 8))(v4, v6);
    v9 = v10;
  }

  return v9;
}

uint64_t UserEventHistoryStorage.earliestSessionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1B67D8E4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[5] = *(v1 + qword_1EB94B518);

  v9 = sub_1B646A6E0();
  v10 = *(v9 + 1);
  *v8 = *v9;
  v8[1] = v10;
  (*(v6 + 104))(v8, *MEMORY[0x1E69D6228], v5);
  v11 = *((v4 & v3) + 0x50);
  v12 = *((v4 & v3) + 0x58);
  v13 = sub_1B64C7024();

  v22[0] = v11;
  v22[1] = &type metadata for UserEventHistorySessionEntity;
  v22[2] = v12;
  v22[3] = v13;
  v14 = type metadata accessor for PrivateZone(0, v22);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1B64C7120();
  PrivateZoneType.first<A>(_:orderBy:)(&type metadata for UserEventHistorySessionDateEntity, v8, v14, &type metadata for UserEventHistorySessionDateEntity, WitnessTable, v16);
  (*(v6 + 8))(v8, v5);

  v17 = v23;
  if (v23)
  {
    v18 = v24;

    sub_1B646D1B8(a1);
    sub_1B64C73D4(v17, v18);

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1B67D877C();
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

void UserEventHistoryStorage.storeSessionID(_:sessionData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = sub_1B67D864C();
  v29[0] = 0;
  v9 = [v8 compressedDataUsingAlgorithm:0 error:v29];

  v10 = v29[0];
  if (v9)
  {
    v11 = sub_1B67D866C();
    v13 = v12;

    UserEventHistorySessionEntity.init(sessionID:sessionData:)(a1, a2, v11, v13, &v28);
    v15 = *(v7 + 80);
    v14 = *(v7 + 88);
    v16 = sub_1B64C7024();
    v29[0] = v15;
    v29[1] = &type metadata for UserEventHistorySessionEntity;
    v29[2] = v14;
    v29[3] = v16;
    v17 = type metadata accessor for PrivateZone(0, v29);
    WitnessTable = swift_getWitnessTable();
    PrivateZoneType.add(_:)(&v28, v17, WitnessTable);
  }

  else
  {
    v19 = v10;
    v20 = sub_1B67D855C();

    swift_willThrow();
    v21 = v20;
    v22 = sub_1B67D8A7C();
    v23 = sub_1B67D9C8C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1B63EF000, v22, v23, "failed to add session to storage, error=%{public}@", v24, 0xCu);
      sub_1B6418AB4(v25, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v25, -1, -1);
      MEMORY[0x1B8C96DF0](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B64C45E0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B67D964C();
  v8 = v7;
  v9 = a4;
  v10 = a1;
  v11 = sub_1B67D866C();
  v13 = v12;

  UserEventHistoryStorage.storeSessionID(_:sessionData:)(v6, v8, v11, v13);
  sub_1B645745C(v11, v13);
}

Swift::Void __swiftcall UserEventHistoryStorage.clearAllSessions()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v12[5] = *(v0 + qword_1EB94B518);
  v3 = *((v2 & v1) + 0x58);
  v12[0] = *((v2 & v1) + 0x50);
  v12[1] = &type metadata for UserEventHistorySessionEntity;
  v12[2] = v3;
  v12[3] = sub_1B64C7024();
  type metadata accessor for PrivateZone(0, v12);
  swift_getWitnessTable();
  PrivateZoneType.removeAll()();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B67D8A7C();
    v7 = sub_1B67D9C8C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1B63EF000, v6, v7, "failed to clear all sessions in storage, error=%{public}@", v8, 0xCu);
      sub_1B6418AB4(v9, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v9, -1, -1);
      MEMORY[0x1B8C96DF0](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B64C4850(void *a1)
{
  v1 = a1;
  UserEventHistoryStorage.clearAllSessions()();
}

void sub_1B64C48E4(int a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1B67DA07C();
  __break(1u);
}

uint64_t sub_1B64C4938(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.size.getter();

  return v2;
}

uint64_t UserEventHistoryStorage.size.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v29[5] = *(v1 + qword_1EB94B518);
  v7 = sub_1B67D8E4C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *((v3 & v2) + 0x50);
  v9 = *((v3 & v2) + 0x58);
  v10 = sub_1B64C7024();

  v29[0] = v8;
  v29[1] = &type metadata for UserEventHistorySessionEntity;
  v29[2] = v9;
  v29[3] = v10;
  v11 = type metadata accessor for PrivateZone(0, v29);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1B64C70CC();
  v14 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v6, v11, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v13);
  sub_1B6418AB4(v6, &qword_1EB94B510, &unk_1B68102C0);

  v15 = v14[2];
  if (!v15)
  {

    v16 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  v29[0] = MEMORY[0x1E69E7CC0];
  sub_1B64C6EBC(0, v15, 0);
  v16 = v29[0];
  v17 = v14 + 6;
  do
  {
    v18 = *(v17 - 2);

    v19 = sub_1B646D394(v18);

    v29[0] = v16;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1B64C6EBC((v20 > 1), v21 + 1, 1);
      v16 = v29[0];
    }

    *(v16 + 16) = v21 + 1;
    *(v16 + 8 * v21 + 32) = v19 & ~(v19 >> 63);
    v17 += 3;
    --v15;
  }

  while (v15);

  v23 = *(v16 + 16);
  if (!v23)
  {
    goto LABEL_12;
  }

LABEL_7:
  v24 = 0;
  for (i = 32; ; i += 8)
  {
    v26 = *(v16 + i);
    v27 = __CFADD__(v24, v26);
    v24 += v26;
    if (v27)
    {
      break;
    }

    if (!--v23)
    {
      v28 = v24;

      return v28;
    }
  }

  __break(1u);
  return result;
}

void *UserEventHistoryStorage.prune(policy:)(void *a1)
{
  v2 = v1;
  v84 = (*MEMORY[0x1E69E7D40] & *v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v80 - v5);
  v7 = sub_1B67D8B1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EDB21EB0;
  v12 = a1;
  v13 = sub_1B67D8A7C();
  v14 = sub_1B67D9C9C();

  v15 = os_log_type_enabled(v13, v14);
  v85 = v10;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v82 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v83 = v2;
    v81 = v18;
    v89 = v18;
    *v17 = 136315138;
    v19 = v8;
    v20 = v7;
    v21 = v11;
    v22 = [v12 description];
    v23 = sub_1B67D964C();
    v25 = v24;

    v11 = v21;
    v7 = v20;
    v8 = v19;
    v26 = sub_1B6456540(v23, v25, &v89);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_1B63EF000, v13, v14, "will prune sessions, policy=%s", v17, 0xCu);
    v27 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    v2 = v83;
    MEMORY[0x1B8C96DF0](v27, -1, -1);
    v28 = v17;
    v6 = v82;
    MEMORY[0x1B8C96DF0](v28, -1, -1);
  }

  v29 = sub_1B64C5624(v12);
  v81 = v11;
  v30 = *(v2 + qword_1EB94B518);
  v86 = v30;

  sub_1B646A6D4();

  sub_1B64503A4(v29);
  v82 = v29;
  v31 = v85;
  sub_1B67D8C8C();

  sub_1B64C3404(v6);
  v32 = sub_1B67D8E4C();
  (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
  v33 = v84[10];
  v34 = v84[11];
  v35 = sub_1B64C7024();
  v89 = v33;
  v90 = &type metadata for UserEventHistorySessionEntity;
  v91 = v34;
  v92 = v35;
  v36 = type metadata accessor for PrivateZone(0, &v89);
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1B64C70CC();
  v39 = PrivateZoneType.where<A>(_:_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v31, v6, v36, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v38);
  sub_1B6418AB4(v6, &qword_1EB94B510, &unk_1B68102C0);
  (*(v8 + 8))(v31, v7);

  swift_getKeyPath();
  v40 = v39[2];
  if (v40)
  {
    v80 = v30;
    v85 = 0;
    v83 = v2;
    rawValue = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v40, 0);
    v41._rawValue = rawValue;
    v84 = v39;
    v42 = v39 + 6;
    v43 = v40;
    do
    {
      v44 = *(v42 - 1);
      v45 = *v42;
      v89 = *(v42 - 2);
      v90 = v44;
      v91 = v45;

      swift_getAtKeyPath();

      v46 = v86;
      v47 = v87;
      rawValue = v41._rawValue;
      v49 = *(v41._rawValue + 2);
      v48 = *(v41._rawValue + 3);
      if (v49 >= v48 >> 1)
      {
        sub_1B6456B24((v48 > 1), v49 + 1, 1);
        v41._rawValue = rawValue;
      }

      *(v41._rawValue + 2) = v49 + 1;
      v50 = v41._rawValue + 16 * v49;
      *(v50 + 4) = v46;
      *(v50 + 5) = v47;
      v42 += 3;
      --v43;
    }

    while (v43);

    v2 = v83;
    v39 = v84;
  }

  else
  {

    v41._rawValue = MEMORY[0x1E69E7CC0];
  }

  PrivateZone.remove(_:)(v41);
  v52 = MEMORY[0x1E69E7CC0];
  if (v51)
  {

    v53 = v51;
    v54 = sub_1B67D8A7C();
    v55 = sub_1B67D9C8C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138543362;
      v58 = v51;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_1B63EF000, v54, v55, "failed to prune sessions, error=%{public}@", v56, 0xCu);
      sub_1B6418AB4(v57, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v57, -1, -1);
      MEMORY[0x1B8C96DF0](v56, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();

  sub_1B646A1EC(v61);
  swift_endAccess();
  if (v40)
  {
    v89 = v52;
    sub_1B64C6EBC(0, v40, 0);
    v62 = v89;
    v63 = v39 + 6;
    do
    {
      v64 = *(v63 - 2);

      v65 = sub_1B646D394(v64);

      if (v65 < 0)
      {
        __break(1u);
        goto LABEL_33;
      }

      v89 = v62;
      v67 = *(v62 + 16);
      v66 = *(v62 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1B64C6EBC((v66 > 1), v67 + 1, 1);
        v62 = v89;
      }

      *(v62 + 16) = v67 + 1;
      *(v62 + 8 * v67 + 32) = v65;
      v63 += 3;
      --v40;
    }

    while (v40);

    v68 = *(v62 + 16);
    if (!v68)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v62 = MEMORY[0x1E69E7CC0];
  v68 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v68)
  {
LABEL_21:
    v69 = 0;
    v70 = (v62 + 32);
    v71 = v82;
    while (1)
    {
      v72 = *v70++;
      v73 = __CFADD__(v69, v72);
      v69 += v72;
      if (v73)
      {
        break;
      }

      if (!--v68)
      {
        goto LABEL_27;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_26:
  v69 = 0;
  v71 = v82;
LABEL_27:

  v74 = qword_1EDB20468;
  result = swift_beginAccess();
  v75 = *(v2 + v74);
  v73 = __CFADD__(v75, v69);
  v76 = v75 + v69;
  if (v73)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  *(v2 + v74) = v76;

  v77 = sub_1B67D8A7C();
  v78 = sub_1B67D9C9C();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 134217984;
    *(v79 + 4) = v71[2];

    _os_log_impl(&dword_1B63EF000, v77, v78, "did prune sessions, count=%ld", v79, 0xCu);
    MEMORY[0x1B8C96DF0](v79, -1, -1);
  }

  else
  {
  }

  return v71;
}

unint64_t sub_1B64C5624(void *a1)
{
  v3 = v1;
  v80 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = sub_1B67D8B1C();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1B67D877C();
  v8 = *(v79 - 8);
  v9 = MEMORY[0x1EEE9AC00](v79);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v76 - v17);
  v19 = UserEventHistoryStorage.sessionIDs.getter();
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v82 = a1;
  v21 = [a1 type];
  if (v21 <= 1)
  {
    if (v21 == 1)
    {

      v88 = *(v3 + qword_1EB94B518);

      sub_1B64C3404(v18);
      v22 = sub_1B67D8E4C();
      (*(*(v22 - 8) + 56))(v18, 0, 1, v22);
      v23 = *(v80 + 80);
      v24 = *(v80 + 88);
      v25 = sub_1B64C7024();
      v83 = v23;
      v84 = &type metadata for UserEventHistorySessionEntity;
      v85 = v24;
      v86 = v25;
      v26 = type metadata accessor for PrivateZone(0, &v83);
      WitnessTable = swift_getWitnessTable();
      v28 = sub_1B64C70CC();
      v20 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v18, v26, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v28);
      sub_1B6418AB4(v18, &qword_1EB94B510, &unk_1B68102C0);

      if (v2)
      {
        return v20;
      }

      v29 = *(v20 + 2);
      if (v29)
      {
        v76 = 0;
        v30 = 0;
        v79 = v20;
        v31 = v20 + 48;
        v20 = MEMORY[0x1E69E7CC0];
        v32 = &selRef_value;
        v33 = v82;
        while (1)
        {
          v34 = *(v31 - 2);

          result = sub_1B646D394(v34);
          v36 = __OFADD__(v30, result);
          v30 += result;
          if (v36)
          {
            break;
          }

          v37 = [v33 *v32];
          if (v30 <= 0 || v37 >= v30)
          {
          }

          else
          {
            v38 = sub_1B646D344(v34);
            v80 = v39;
            v81 = v38;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1B646A2E0(0, *(v20 + 2) + 1, 1, v20);
            }

            v41 = *(v20 + 2);
            v40 = *(v20 + 3);
            if (v41 >= v40 >> 1)
            {
              v20 = sub_1B646A2E0((v40 > 1), v41 + 1, 1, v20);
            }

            *(v20 + 2) = v41 + 1;
            v42 = &v20[16 * v41];
            v43 = v80;
            *(v42 + 4) = v81;
            *(v42 + 5) = v43;
            v33 = v82;
            v32 = &selRef_value;
          }

          v31 += 3;
          if (!--v29)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_32:

    return MEMORY[0x1E69E7CC0];
  }

  if (v21 != 2)
  {
    if (v21 == 3)
    {

      sub_1B67D876C();
      [v82 value];
      v50 = v81;
      sub_1B67D86CC();
      v51 = v11;
      v52 = v79;
      v82 = *(v8 + 8);
      (v82)(v51, v79);
      v88 = *(v3 + qword_1EB94B518);

      sub_1B646A6E0();
      v76 = v2;
      v86 = v52;
      v87 = MEMORY[0x1E69D6130];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v83);
      v54 = v50;
      v55 = v52;
      (*(v8 + 16))(boxed_opaque_existential_0, v54, v52);

      sub_1B67D8C5C();

      __swift_destroy_boxed_opaque_existential_1(&v83);
      v56 = sub_1B67D8E4C();
      (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
      v57 = *(v80 + 80);
      v58 = *(v80 + 88);
      v59 = sub_1B64C7024();
      v83 = v57;
      v84 = &type metadata for UserEventHistorySessionEntity;
      v85 = v58;
      v86 = v59;
      v60 = type metadata accessor for PrivateZone(0, &v83);
      v61 = swift_getWitnessTable();
      v62 = sub_1B64C7078();
      v20 = &v88;
      v63 = v76;
      v64 = PrivateZoneType.where<A>(_:_:orderBy:)(&type metadata for UserEventHistorySessionIDEntity, v7, v16, v60, &type metadata for UserEventHistorySessionIDEntity, v61, v62);
      v76 = v63;
      if (v63)
      {
        sub_1B6418AB4(v16, &qword_1EB94B510, &unk_1B68102C0);
        (*(v77 + 8))(v7, v78);

        (v82)(v81, v55);
      }

      else
      {
        v65 = v64;
        v80 = v8 + 8;
        sub_1B6418AB4(v16, &qword_1EB94B510, &unk_1B68102C0);
        (*(v77 + 8))(v7, v78);

        v66 = v65[2];
        if (v66)
        {
          v83 = MEMORY[0x1E69E7CC0];
          sub_1B6456B24(0, v66, 0);
          v20 = v83;
          v67 = v65 + 5;
          v68 = v81;
          do
          {
            v69 = *(v67 - 1);

            v70 = sub_1B646D344(v69);
            v72 = v71;

            v83 = v20;
            v74 = *(v20 + 2);
            v73 = *(v20 + 3);
            if (v74 >= v73 >> 1)
            {
              sub_1B6456B24((v73 > 1), v74 + 1, 1);
              v20 = v83;
            }

            *(v20 + 2) = v74 + 1;
            v75 = &v20[16 * v74];
            *(v75 + 4) = v70;
            *(v75 + 5) = v72;
            v67 += 2;
            --v66;
          }

          while (v66);
          (v82)(v68, v79);
LABEL_39:
        }

        else
        {

          (v82)(v81, v55);
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v20;
    }

    goto LABEL_32;
  }

  v44 = *(v20 + 2);
  v45 = v82;
  v46 = [v82 value];
  if (!v44 || v46 >= v44)
  {
    goto LABEL_32;
  }

  result = [v45 value];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = *(v20 + 2);
  if (v47 >= result)
  {
    if (result)
    {
      sub_1B6456D98(v20, (v20 + 32), result, (2 * v47) | 1);
      v49 = v48;

      return v49;
    }

    return v20;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1B64C5ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B646D2FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B64C5F0C(void *a1)
{

  return sub_1B646D320(v1);
}

id sub_1B64C5F5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UserEventHistoryStorage.prune(policy:)(v4);

  v6 = sub_1B67D97AC();

  return v6;
}

id sub_1B64C5FD8()
{
  sub_1B64C7174();

  v0 = sub_1B67D97AC();

  return v0;
}

uint64_t UserEventHistoryStorage.prunedSessionIDs.getter()
{
  sub_1B64C7174();
}

void sub_1B64C6058(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B67D97BC();
  v5 = a1;
  sub_1B64C60C0(v4);
}

uint64_t sub_1B64C60C0(uint64_t a1)
{
  v3 = qword_1EDB20470;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UserEventHistoryStorage.prunedSessionSize.getter()
{
  v1 = qword_1EDB20468;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B64C61A8(uint64_t a1)
{
  v3 = qword_1EDB20468;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void UserEventHistoryStorage.readBaseDirectory(accessor:)(void (*a1)(char *), void *a2)
{
  v58 = a1;
  v57[1] = a2;
  v69 = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D87BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B67D85FC();
  v66 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v64 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v57 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v57 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_1B67D85AC();
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1B67D9EFC();

  v67 = 0xD000000000000011;
  v68 = 0x80000001B6829A80;
  sub_1B67D87AC();
  v17 = sub_1B67D879C();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20 = v66;
  MEMORY[0x1B8C94910](v17, v19);

  sub_1B67D859C();

  v21 = *(v20 + 8);
  v21(v11, v6);
  v57[0] = v14;
  v22 = [v14 defaultManager];
  v23 = sub_1B67D858C();
  v67 = 0;
  LODWORD(v2) = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v67];

  if (v2)
  {
    v63 = v13;
    v24 = v67;
    v25 = UserEventHistoryStorage.sessions.getter();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v62 = v6;
    if (v26 >> 62)
    {
      goto LABEL_19;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v26; v27; i = v26)
    {
      v29 = 0;
      v65 = v27;
      v66 = i & 0xC000000000000001;
      v59 = i & 0xFFFFFFFFFFFFFF8;
      v60 = i;
      v61 = v21;
      while (1)
      {
        if (v66)
        {
          v30 = MEMORY[0x1B8C95180](v29, i);
        }

        else
        {
          if (v29 >= *(v59 + 16))
          {
            goto LABEL_18;
          }

          v30 = *(i + 8 * v29 + 32);
        }

        v26 = v30;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v32 = UserEventHistorySession.compressedData.getter();
        if (v33 >> 60 != 15)
        {
          v34 = v32;
          v35 = v33;

          v36 = v64;
          sub_1B67D859C();

          sub_1B67D867C();
          v37 = v36;
          v21 = v61;
          v61(v37, v62);
          sub_1B6457448(v34, v35);
          i = v60;
        }

        ++v29;
        if (v31 == v65)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v27 = sub_1B67DA04C();
    }

LABEL_20:

    v43 = v63;
    v58(v63);
    v44 = [v57[0] defaultManager];
    v45 = sub_1B67D858C();
    v67 = 0;
    v46 = [v44 removeItemAtURL:v45 error:&v67];

    if (v46)
    {
      v47 = v67;
      v21(v43, v62);
      return;
    }

    v48 = v67;
    v49 = sub_1B67D855C();

    swift_willThrow();
    v40 = v49;
    v41 = v43;
    v42 = v62;
  }

  else
  {
    v38 = v67;
    v39 = sub_1B67D855C();

    swift_willThrow();
    v40 = v39;
    v41 = v13;
    v42 = v6;
  }

  v21(v41, v42);
  v50 = v40;
  v51 = sub_1B67D8A7C();
  v52 = sub_1B67D9C8C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138543362;
    v55 = v40;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 4) = v56;
    *v54 = v56;
    _os_log_impl(&dword_1B63EF000, v51, v52, "failed to write sessions to temporary directory, error=%{public}@", v53, 0xCu);
    sub_1B6418AB4(v54, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v54, -1, -1);
    MEMORY[0x1B8C96DF0](v53, -1, -1);
  }

  else
  {
  }
}

void sub_1B64C68C4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v6[2] = v4;
  v5 = a1;
  UserEventHistoryStorage.readBaseDirectory(accessor:)(sub_1B64C7214, v6);
  _Block_release(v4);
}

void *UserEventHistoryStorage._metadata.getter()
{
  v1 = qword_1EDB20460;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void UserEventHistoryStorage._metadata.setter(uint64_t a1)
{
  v3 = qword_1EDB20460;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1B64C6A38(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.metadata.getter();

  return v2;
}

uint64_t UserEventHistoryStorage.metadata.getter()
{
  v1 = qword_1EDB20460;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v6 = v2;
    return v3;
  }

  v4 = objc_opt_self();
  result = UserEventHistoryStorage.size.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = [v4 emptyWithSessionsOnDiskSize_];
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UserEventHistoryStorage.setAggregateStoreMetadataWith(generationTime:aggregateTotalCount:meanCountOfEvents:standardDeviationOfEvents:totalEventsCount:headlineEventCount:headlinesWithValidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount:eventCounts:aggregateStoreData:)(Swift::Int64 generationTime, Swift::Int64 aggregateTotalCount, Swift::Double meanCountOfEvents, Swift::Double standardDeviationOfEvents, Swift::Int64 totalEventsCount, Swift::Int64 headlineEventCount, Swift::Int64 headlinesWithValidTitleEmbeddingsEventCount, Swift::Int64 headlinesWithInvalidTitleEmbeddingsEventCount, Swift::Int64 headlinesWithValidBodyEmbeddingsEventCount, Swift::Int64 headlinesWithInvalidBodyEmbeddingsEventCount, FCUserEventHistoryEventCounts_optional *eventCounts, FCUserEventHistoryAggregateStoreData_optional *aggregateStoreData)
{
  v23 = UserEventHistoryStorage.size.getter();
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = [objc_allocWithZone(FCUserEventHistoryMetadata) initWithAggregateStoreGenerationTime:generationTime aggregateTotalCount:aggregateTotalCount meanCountOfEvents:v23 sessionsOnDiskSize:totalEventsCount standardDeviationOfEvents:headlineEventCount totalEventsCount:headlinesWithValidTitleEmbeddingsEventCount headlineEventCount:meanCountOfEvents headlinesWithValidTitleEmbeddingsEventCount:standardDeviationOfEvents headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount headlinesWithValidBodyEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount headlinesWithInvalidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount eventCounts:eventCounts aggregateStoreData:aggregateStoreData];
    v25 = qword_1EDB20460;
    swift_beginAccess();
    v26 = *(v12 + v25);
    *(v12 + v25) = v24;
  }
}

void sub_1B64C6C10(void *a1, Swift::Double a2, Swift::Double a3, uint64_t a4, Swift::Int64 a5, Swift::Int64 a6, Swift::Int64 a7, Swift::Int64 a8, Swift::Int64 a9, Swift::Int64 a10, Swift::Int64 a11, Swift::Int64 a12, FCUserEventHistoryEventCounts_optional *eventCounts, FCUserEventHistoryAggregateStoreData_optional *aggregateStoreData)
{
  v20 = eventCounts;
  v21 = aggregateStoreData;
  v22 = a1;
  UserEventHistoryStorage.setAggregateStoreMetadataWith(generationTime:aggregateTotalCount:meanCountOfEvents:standardDeviationOfEvents:totalEventsCount:headlineEventCount:headlinesWithValidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount:eventCounts:aggregateStoreData:)(a5, a6, a2, a3, a7, a8, a9, a10, a11, a12, eventCounts, aggregateStoreData);
}

void sub_1B64C6CF0(void *a1)
{
  v1 = a1;
  UserEventHistoryStorage.clearHistory()();
}

id UserEventHistoryStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserEventHistoryStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B64C6E20(uint64_t a1)
{

  v2 = qword_1EDB21EB0;
  v3 = sub_1B67D8A9C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1EDB20460);
}

char *sub_1B64C6EBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B64C6EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B64C6EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B588, &qword_1B6816648);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1B64C7024()
{
  result = qword_1EDB1E7B8;
  if (!qword_1EDB1E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7B8);
  }

  return result;
}

unint64_t sub_1B64C7078()
{
  result = qword_1EDB1E7A0;
  if (!qword_1EDB1E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7A0);
  }

  return result;
}

unint64_t sub_1B64C70CC()
{
  result = qword_1EDB1E750;
  if (!qword_1EDB1E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E750);
  }

  return result;
}

unint64_t sub_1B64C7120()
{
  result = qword_1EDB1E768;
  if (!qword_1EDB1E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E768);
  }

  return result;
}

uint64_t sub_1B64C7174()
{
  v1 = qword_1EDB20470;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B64C7214()
{
  v1 = *(v0 + 16);
  v2 = sub_1B67D858C();
  (*(v1 + 16))(v1, v2);
}

void sub_1B64C7270(uint64_t *a1@<X8>)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1B64C3A14(v6, v7);
    v13 = v12;

    if (!v2)
    {
      *a1 = v11;
      a1[1] = v13;
    }
  }

  else
  {
    type metadata accessor for UserEventHistoryStorage.Errors(0, v5, v4, v9);
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1B64C7380()
{
  result = qword_1EDB1E788;
  if (!qword_1EDB1E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E788);
  }

  return result;
}

uint64_t sub_1B64C73D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemInventoryType.validateHasScoredItems()()
{
  LOBYTE(v12) = 3;
  (*(v0 + 16))(v14, &v12);
  if (!v1)
  {
    v2 = __swift_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x1EEE9AC00](v2);
    (*(v4 + 16))(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v16);
    sub_1B67D96FC();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_mutable_project_boxed_opaque_existential_1(v16, AssociatedTypeWitness);
    v5 = sub_1B67D9E0C();
    v6 = v14[0];
    if (v14[0])
    {
      v8 = v14[1];
      v7 = v14[2];
      v9 = v15;
      FeedItemAndScoreEntity.forYouScore.getter(v5);
      sub_1B67D8DCC();

      if (v13)
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 0.0)
        {
          sub_1B64C76D0();
          swift_allocError();
          *v11 = 5;
          swift_willThrow();
        }

        sub_1B649FFF8(v6, v8, v7, v9);
        __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }

    else
    {
      sub_1B64C76D0();
      swift_allocError();
      *v10 = 4;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }
}

unint64_t sub_1B64C76D0()
{
  result = qword_1EB957360[0];
  if (!qword_1EB957360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957360);
  }

  return result;
}

id FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_1B64CCE6C(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 10) - 8) + 8))(a1);
  return v13;
}

id FeedItemInventory.init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1B64CCE6C(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x50) - 8) + 8))(a1);
  return v9;
}

void FeedItemInventory.allFeedItems(order:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B608, &qword_1B6816728);
  a2[4] = swift_getOpaqueTypeConformance2();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  FeedItemDatabase.allFeedItems(order:)(&v5, boxed_opaque_existential_0);
  if (v2)
  {
    __swift_deallocate_boxed_opaque_existential_1(a2);
  }
}

void FeedItemInventory.allScoredFeedItems(order:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B610, &qword_1B6816730);
  v5 = sub_1B64CD22C();
  a2[4] = swift_getOpaqueTypeConformance2();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  FeedItemDatabase.allFeedItemEntities<A>(_:order:)(&v6, &type metadata for FeedItemAndScoreEntity, v5, boxed_opaque_existential_0);
  if (v2)
  {
    __swift_deallocate_boxed_opaque_existential_1(a2);
  }
}

uint64_t FeedItemInventory.refreshIfNeeded(policy:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v4;
  v7 = type metadata accessor for FeedItemInventory.Metadata(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  *(v5 + 24) = v7;
  *(v5 + 32) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  *(v5 + 80) = *(a1 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1B64C7B18, 0, 0);
}

uint64_t sub_1B64C7B18()
{
  v18 = v0;
  sub_1B64C7F50(*(v0 + 40));
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = v1;
  v3 = sub_1B64C83E0(&v16, v2);
  v4 = *(v0 + 40);
  if (v3)
  {
    v5 = *(v0 + 16);
    v6 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x88));
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    os_unfair_lock_lock((v6 + 24));
    sub_1B64CD298((v6 + 16), &v16, v8);
    os_unfair_lock_unlock((v6 + 24));
    v11 = v16;
    *(v0 + 56) = v16;

    v12 = swift_task_alloc();
    *(v0 + 64) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    *v12 = v0;
    v12[1] = sub_1B64C7D20;
    v14 = MEMORY[0x1E69E7288];
    v15 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v13, v11, v15, v13, v14);
  }

  else
  {
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1B64C7D20()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B64C7EBC;
  }

  else
  {
    v2 = sub_1B64C7E34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64C7E34()
{

  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B64C7EBC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B64C7F50@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v3 = *v1;
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B67D9DFC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v30 = v5;
  v31 = v4;
  v12 = type metadata accessor for FeedItemInventory.Metadata(255, v5, v4, v11);
  v13 = sub_1B67D9DFC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  swift_getWitnessTable();
  swift_getWitnessTable();
  FeedItemDatabase.sidecar<A>()(v12, v16);
  if (v2)
  {
    v17 = v2;
    v18 = sub_1B67D8A7C();
    v19 = sub_1B67D9C8C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1B63EF000, v18, v19, "failed to load metadata from database, error=%{public}@", v20, 0xCu);
      sub_1B6418AB4(v21, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v21, -1, -1);
      MEMORY[0x1B8C96DF0](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_7;
  }

  v24 = *(v12 - 8);
  if ((*(v24 + 48))(v16, 1, v12) == 1)
  {
    (*(v14 + 8))(v16, v13);
LABEL_7:
    v25 = sub_1B67D877C();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = v28;
    (*(*(AssociatedTypeWitness - 8) + 56))(v28, 1, 1);
    return sub_1B64CC0A8(v10, v26, v30, v31, v32);
  }

  return (*(v24 + 32))(v32, v16, v12);
}

uint64_t sub_1B64C83E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v93 - v7;
  v9 = sub_1B67D877C();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v93 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v93 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v93 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v93 - v21;
  v97 = *a1;
  v23 = *(a1 + 8);
  v24 = a2;
  v26 = v25;
  v28 = v27;
  sub_1B6415FF0(v24, v8, &unk_1EB94A100, &qword_1B680FD50);
  if ((*(v28 + 48))(v8, 1, v26) != 1)
  {
    (*(v28 + 32))(v22, v8, v26);
    if (v23)
    {
      if (v97 == 0.0)
      {
        v72 = sub_1B67D8A7C();
        v73 = sub_1B67D9C9C();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = v22;
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v75 = 136446210;
          v100 = 0;
          v101 = 0xE000000000000000;
          v102 = v76;
          v98 = 0;
          v29 = 1;
          v99 = 1;
          sub_1B67DA01C();
          v77 = sub_1B6456540(v100, v101, &v102);

          *(v75 + 4) = v77;
          _os_log_impl(&dword_1B63EF000, v72, v73, "should refresh inventory due to policy=%{public}s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v76);
          MEMORY[0x1B8C96DF0](v76, -1, -1);
          MEMORY[0x1B8C96DF0](v75, -1, -1);

          (*(v28 + 8))(v74, v26);
          return v29;
        }

        (*(v28 + 8))(v22, v26);
        return 1;
      }

      sub_1B67D872C();
      v32 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x80));
      v33 = *(v28 + 16);
      if (v32 > fabs(v31))
      {
        v34 = v17;
        v33(v17, v22, v26);
        v35 = v3;
        v36 = sub_1B67D8A7C();
        v37 = sub_1B67D9C9C();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 136446722;
          v100 = 0;
          v101 = 0xE000000000000000;
          v102 = v39;
          v98 = 1;
          v99 = 1;
          sub_1B67DA01C();
          v40 = sub_1B6456540(v100, v101, &v102);

          *(v38 + 4) = v40;
          *(v38 + 12) = 2082;
          sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
          v41 = sub_1B67DA28C();
          v43 = v42;
          v95 = v22;
          v44 = *(v28 + 8);
          v44(v34, v26);
          v45 = sub_1B6456540(v41, v43, &v102);

          *(v38 + 14) = v45;
          *(v38 + 22) = 2050;
          *(v38 + 24) = v32;
          _os_log_impl(&dword_1B63EF000, v36, v37, "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v38, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C96DF0](v39, -1, -1);
          v46 = v38;
LABEL_13:
          MEMORY[0x1B8C96DF0](v46, -1, -1);

          v44(v95, v26);
          return 0;
        }

        goto LABEL_23;
      }

      v14 = v20;
      v33(v20, v22, v26);
      v78 = v3;
      v79 = sub_1B67D8A7C();
      v80 = sub_1B67D9C9C();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = v26;
        v83 = swift_slowAlloc();
        *v81 = 136446722;
        v100 = 0;
        v101 = 0xE000000000000000;
        v102 = v83;
        v29 = 1;
        v98 = 1;
        v99 = 1;
        sub_1B67DA01C();
        v84 = sub_1B6456540(v100, v101, &v102);
        LODWORD(v97) = v80;
        v85 = v84;

        *(v81 + 4) = v85;
        *(v81 + 12) = 2082;
        sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
        v86 = sub_1B67DA28C();
        v88 = v87;
        v95 = v22;
        v89 = *(v28 + 8);
        v89(v14, v82);
        v90 = sub_1B6456540(v86, v88, &v102);

        *(v81 + 14) = v90;
        *(v81 + 22) = 2050;
        *(v81 + 24) = v32;
        _os_log_impl(&dword_1B63EF000, v79, LOBYTE(v97), "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v81, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v83, -1, -1);
        MEMORY[0x1B8C96DF0](v81, -1, -1);

        v89(v95, v82);
        return v29;
      }
    }

    else
    {
      v47 = v97;
      sub_1B67D872C();
      v49 = *(v28 + 16);
      if (fabs(v48) < v47)
      {
        v17 = v96;
        v49(v96, v22, v26);
        v36 = sub_1B67D8A7C();
        v50 = sub_1B67D9C9C();
        if (os_log_type_enabled(v36, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v94 = v52;
          *v51 = 136446722;
          v100 = 0;
          v101 = 0xE000000000000000;
          v102 = v52;
          v53 = v97;
          v98 = *&v97;
          v99 = 0;
          sub_1B67DA01C();
          v54 = sub_1B6456540(v100, v101, &v102);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2082;
          sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
          v55 = sub_1B67DA28C();
          v57 = v56;
          v95 = v22;
          v44 = *(v28 + 8);
          v44(v17, v26);
          v58 = sub_1B6456540(v55, v57, &v102);

          *(v51 + 14) = v58;
          *(v51 + 22) = 2050;
          *(v51 + 24) = v53;
          _os_log_impl(&dword_1B63EF000, v36, v50, "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v51, 0x20u);
          v59 = v94;
          swift_arrayDestroy();
          MEMORY[0x1B8C96DF0](v59, -1, -1);
          v46 = v51;
          goto LABEL_13;
        }

LABEL_23:

        v91 = *(v28 + 8);
        v91(v17, v26);
        v91(v22, v26);
        return 0;
      }

      v49(v14, v22, v26);
      v60 = sub_1B67D8A7C();
      v61 = sub_1B67D9C9C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v96 = v63;
        *v62 = 136446722;
        v100 = 0;
        v101 = 0xE000000000000000;
        v102 = v63;
        v64 = v97;
        v98 = *&v97;
        v99 = 0;
        sub_1B67DA01C();
        v65 = sub_1B6456540(v100, v101, &v102);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2082;
        sub_1B645C75C(&qword_1EDB1EF98, MEMORY[0x1E6969570]);
        v66 = sub_1B67DA28C();
        v68 = v67;
        v95 = v22;
        v69 = *(v28 + 8);
        v69(v14, v26);
        v70 = sub_1B6456540(v66, v68, &v102);

        *(v62 + 14) = v70;
        *(v62 + 22) = 2050;
        *(v62 + 24) = v64;
        _os_log_impl(&dword_1B63EF000, v60, v61, "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v62, 0x20u);
        v71 = v96;
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v71, -1, -1);
        MEMORY[0x1B8C96DF0](v62, -1, -1);

        v69(v95, v26);
        return 1;
      }
    }

    v92 = *(v28 + 8);
    v92(v14, v26);
    v92(v22, v26);
    return 1;
  }

  sub_1B6418AB4(v8, &unk_1EB94A100, &qword_1B680FD50);
  return 1;
}

void sub_1B64C8FD4(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v30 = a3;
  v32 = a4;
  v7 = (*MEMORY[0x1E69E7D40] & *a2);
  v8 = v7[10];
  v9 = v7[11];
  v10 = type metadata accessor for FeedItemInventory.Metadata(0, v8, v9, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v31 = a1;
  v17 = *a1;
  if (v17)
  {
    v18 = v32;

    v19 = sub_1B67D8A7C();
    v20 = sub_1B67D9C9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B63EF000, v19, v20, "refresh is already in flight", v21, 2u);
      MEMORY[0x1B8C96DF0](v21, -1, -1);
    }

    *v18 = v17;
  }

  else
  {
    v29 = v7[12];
    v22 = sub_1B67D993C();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v16, &a2[v29], v22);
    (*(v23 + 56))(v16, 0, 1, v22);
    (*(v11 + 16))(v13, v30, v10);
    v24 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 4) = v8;
    *(v25 + 5) = v9;
    *(v25 + 6) = a2;
    (*(v11 + 32))(&v25[v24], v13, v10);
    v26 = a2;
    v27 = sub_1B64CB48C(0, 0, v16, &unk_1B68168E8, v25);
    sub_1B6418AB4(v16, &unk_1EB94A300, &qword_1B68111C0);
    v28 = v32;
    *v31 = v27;
    *v28 = v27;
  }
}

uint64_t sub_1B64C9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1B64C93E8;

  return sub_1B64C9774(a5);
}

uint64_t sub_1B64C93E8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B64C95A0;
  }

  else
  {
    v2 = sub_1B64C94FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64C94FC()
{
  v1 = *(*(v0 + 16) + *((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x88));
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B64C95A0()
{
  v1 = v0[4];
  v2 = MEMORY[0x1E69E7D40];
  v3 = v1;
  v4 = sub_1B67D8A7C();
  v5 = sub_1B67D9C9C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B63EF000, v4, v5, "failed to refresh inventory, error=%{public}@", v8, 0xCu);
    sub_1B6418AB4(v9, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0[2] + *((*v2 & *v0[2]) + 0x88));
  os_unfair_lock_lock((v12 + 24));

  *(v12 + 16) = 0;
  os_unfair_lock_unlock((v12 + 24));
  v13 = v0[1];

  return v13();
}

uint64_t sub_1B64C9774(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v2[9] = v5;
  v6 = *((v4 & v3) + 0x50);
  v2[10] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B67D9DFC();
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for FeedItemInventory.Metadata(0, v6, v5, v9);
  v2[15] = v10;
  v2[16] = *(v10 - 8);
  v2[17] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FeedItemServiceResult(0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), *(AssociatedConformanceWitness + 16));
  v2[18] = v12;
  v2[19] = *(v12 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64C99D8, 0, 0);
}

uint64_t sub_1B64C99D8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  *(v1 + 176) = *((*MEMORY[0x1E69E7D40] & **(v1 + 64)) + 0x90);
  v3 = sub_1B67D8A7C();
  v4 = sub_1B67D9C9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B63EF000, v3, v4, "refreshing inventory", v5, 2u);
    MEMORY[0x1B8C96DF0](v5, -1, -1);
  }

  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B63EF000, v6, v7, "will acquire write token", v8, 2u);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
  }

  v9 = *(v1 + 64);

  v10 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  *(v1 + 184) = v10;
  v11 = *((*v2 & *v9) + 0x78);
  *(v1 + 192) = *(&v11->super.isa + v9);
  FeedItemDatabase.tokenForCoordinatedWrite()(v11);
  *(v1 + 200) = v12;
  if (v13)
  {

    v14 = *(v1 + 8);

    return v14();
  }

  else
  {
    v16 = v10;
    v17 = sub_1B67D8A7C();
    v18 = sub_1B67D9C9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = [v16 fc_millisecondTimeIntervalUntilNow];

      _os_log_impl(&dword_1B63EF000, v17, v18, "did acquire write token, time=%{public}llums", v19, 0xCu);
      MEMORY[0x1B8C96DF0](v19, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    v20 = *(v1 + 120);
    v21 = *(v1 + 64);
    v34 = *(v1 + 56);
    v35 = *(v1 + 72);

    v22 = swift_allocObject();
    *(v1 + 208) = v22;
    *(v22 + 16) = MEMORY[0x1E69E7CC0];
    v23 = swift_allocObject();
    *(v1 + 216) = v23;
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v24 = swift_allocObject();
    *(v1 + 224) = v24;
    *(v24 + 16) = 0;
    v25 = objc_allocWithZone(MEMORY[0x1E695DF00]);
    v21;

    *(v1 + 232) = [v25 init];
    v26 = *(v20 + 36);
    v27 = swift_allocObject();
    *(v1 + 240) = v27;
    v27[2] = v24;
    v27[3] = v22;
    v27[4] = sub_1B64CE110;
    v27[5] = v23;
    v28 = *(v35 + 24);

    v33 = (v28 + *v28);
    v29 = swift_task_alloc();
    *(v1 + 248) = v29;
    *v29 = v1;
    v29[1] = sub_1B64C9EC4;
    v30 = *(v1 + 168);
    v32 = *(v1 + 72);
    v31 = *(v1 + 80);

    return (v33)(v30, v34 + v26, sub_1B64CE118, v27, v31, v32);
  }
}

uint64_t sub_1B64C9EC4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1B64CAC14;
  }

  else
  {

    v2 = sub_1B64C9FE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64C9FE0()
{
  v1 = *(v0 + 168);
  sub_1B64CBED8(*(v0 + 64), *(v0 + 208));
  FeedItemDatabase.saveFeedContext(_:)(v1->_rawValue);
  v2 = *(v0 + 232);
  if (v3)
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);

    (*(v7 + 8))(v5, v6);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {

    v10 = v2;
    v11 = sub_1B67D8A7C();
    v12 = sub_1B67D9C9C();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    if (v13)
    {
      v16 = swift_slowAlloc();
      *v16 = 134349312;
      swift_beginAccess();
      *(v16 + 4) = *(v15 + 16);

      *(v16 + 12) = 2050;
      *(v16 + 14) = [v14 fc_millisecondTimeIntervalUntilNow];

      _os_log_impl(&dword_1B63EF000, v11, v12, "finished fetching and saving feed items, count=%{public}ld, time=%{public}llums", v16, 0x16u);
      MEMORY[0x1B8C96DF0](v16, -1, -1);
    }

    else
    {
    }

    v17 = sub_1B67D8A7C();
    v18 = sub_1B67D9C9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B63EF000, v17, v18, "will score feed items", v19, 2u);
      MEMORY[0x1B8C96DF0](v19, -1, -1);
    }

    v20 = *(v0 + 64);

    *(v0 + 264) = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v21 = (v20 + *((*MEMORY[0x1E69E7D40] & *v20) + 0x70));
    v22 = v21[3];
    v23 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v26 = (*(v23 + 8) + **(v23 + 8));
    v24 = swift_task_alloc();
    *(v0 + 272) = v24;
    *v24 = v0;
    v24[1] = sub_1B64CA3B4;
    v25 = *(v0 + 192);

    return v26(v25, 11, v22, v23);
  }
}

uint64_t sub_1B64CA3B4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1B64CACEC;
  }

  else
  {
    v2 = sub_1B64CA4C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64CA4C8()
{
  v53 = v0;
  v1 = *(v0 + 264);
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 264);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = [v5 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v2, v3, "successfully scored feed items, time=%{public}llums", v6, 0xCu);
    MEMORY[0x1B8C96DF0](v6, -1, -1);
  }

  else
  {
  }

  v50 = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  v49 = *(v0 + 80);
  v15 = *(v0 + 72);
  sub_1B67D876C();
  v16 = sub_1B67D877C();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  (*(v12 + 16))(v13, v7 + *(v9 + 44), v14);
  sub_1B64CC0A8(v11, v13, v49, v15, v8);
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  FeedItemDatabase.saveSidecar<A>(_:)(v8, v10, WitnessTable, v18);
  if (v50)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v19 = v50;
    v20 = sub_1B67D8A7C();
    v21 = sub_1B67D9C8C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = v50;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B63EF000, v20, v21, "failed to save metadata, error=%{public}@", v22, 0xCu);
      sub_1B6418AB4(v23, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v23, -1, -1);
      MEMORY[0x1B8C96DF0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v26 = sub_1B67D8A7C();
  v27 = sub_1B67D9C9C();
  v28 = os_log_type_enabled(v26, v27);
  v30 = *(v0 + 152);
  v29 = *(v0 + 160);
  v31 = *(v0 + 144);
  if (v28)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v33;
    *v32 = 136446210;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0xE000000000000000;
    type metadata accessor for FeedItemPruningPolicy(0);
    sub_1B67DA01C();
    v34 = *(v0 + 40);
    v35 = *(v0 + 48);
    v51 = *(v30 + 8);
    v51(v29, v31);
    v36 = sub_1B6456540(v34, v35, &v52);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1B63EF000, v26, v27, "will prune feed items, policy=%{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1B8C96DF0](v33, -1, -1);
    MEMORY[0x1B8C96DF0](v32, -1, -1);
  }

  else
  {

    v51 = *(v30 + 8);
    v51(v29, v31);
  }

  FeedItemDatabase.prune(policy:)(*(v0 + 168) + *(*(v0 + 144) + 52));
  v37 = sub_1B67D8A7C();
  v38 = sub_1B67D9C9C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1B63EF000, v37, v38, "did prune feed items", v39, 2u);
    MEMORY[0x1B8C96DF0](v39, -1, -1);
  }

  v40 = sub_1B67D8A7C();
  v41 = sub_1B67D9C9C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1B63EF000, v40, v41, "finished refreshing inventory", v42, 2u);
    MEMORY[0x1B8C96DF0](v42, -1, -1);
  }

  v43 = *(v0 + 232);
  v44 = *(v0 + 200);
  v45 = *(v0 + 168);
  v46 = *(v0 + 144);

  v51(v45, v46);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1B64CAC14()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B64CACEC()
{
  v49 = v0;
  v1 = *(v0 + 280);

  v2 = v1;
  v3 = sub_1B67D8A7C();
  v4 = sub_1B67D9C9C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 280);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B63EF000, v3, v4, "failed to score feed items, error=%{public}@", v7, 0xCu);
    sub_1B6418AB4(v8, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
    MEMORY[0x1B8C96DF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 168);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = *(v0 + 88);
  v46 = *(v0 + 80);
  v19 = *(v0 + 72);
  sub_1B67D876C();
  v20 = sub_1B67D877C();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  (*(v16 + 16))(v17, v11 + *(v13 + 44), v18);
  sub_1B64CC0A8(v15, v17, v46, v19, v12);
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  FeedItemDatabase.saveSidecar<A>(_:)(v12, v14, WitnessTable, v22);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v23 = sub_1B67D8A7C();
  v24 = sub_1B67D9C9C();
  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 152);
  v26 = *(v0 + 160);
  v28 = *(v0 + 144);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136446210;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0xE000000000000000;
    type metadata accessor for FeedItemPruningPolicy(0);
    sub_1B67DA01C();
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    v47 = *(v27 + 8);
    v47(v26, v28);
    v33 = sub_1B6456540(v31, v32, &v48);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1B63EF000, v23, v24, "will prune feed items, policy=%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1B8C96DF0](v30, -1, -1);
    MEMORY[0x1B8C96DF0](v29, -1, -1);
  }

  else
  {

    v47 = *(v27 + 8);
    v47(v26, v28);
  }

  FeedItemDatabase.prune(policy:)(*(v0 + 168) + *(*(v0 + 144) + 52));
  v34 = sub_1B67D8A7C();
  v35 = sub_1B67D9C9C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B63EF000, v34, v35, "did prune feed items", v36, 2u);
    MEMORY[0x1B8C96DF0](v36, -1, -1);
  }

  v37 = sub_1B67D8A7C();
  v38 = sub_1B67D9C9C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1B63EF000, v37, v38, "finished refreshing inventory", v39, 2u);
    MEMORY[0x1B8C96DF0](v39, -1, -1);
  }

  v40 = *(v0 + 232);
  v41 = *(v0 + 200);
  v42 = *(v0 + 168);
  v43 = *(v0 + 144);

  v47(v42, v43);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1B64CB48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B6415FF0(a3, v22 - v9, &unk_1EB94A300, &qword_1B68111C0);
  v11 = sub_1B67D993C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B6418AB4(v10, &unk_1EB94A300, &qword_1B68111C0);
  }

  else
  {
    sub_1B67D992C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B67D989C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B67D965C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t FeedItemInventory.lastRefreshDate.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v5 = type metadata accessor for FeedItemInventory.Metadata(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a2);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  result = sub_1B64C7F50(v10 - v7);
  if (!v3)
  {
    sub_1B6415FF0(v8, a1, &unk_1EB94A100, &qword_1B680FD50);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1B64CB890()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0[2] + *((*MEMORY[0x1E69E7D40] & *v0[2]) + 0x88));
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v0[3] = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = v0[2];
  if (v3)
  {
    v0[4] = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v0[5] = *((*v1 & *v4) + 0x90);
    v5 = sub_1B67D8A7C();
    v6 = sub_1B67D9C9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B63EF000, v5, v6, "will wait for pending refresh before trying to acquire read token", v7, 2u);
      MEMORY[0x1B8C96DF0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[6] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    *v8 = v0;
    v8[1] = sub_1B64CBAD4;
    v10 = MEMORY[0x1E69E7288];
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v9, v3, v11, v9, v10);
  }

  else
  {
    FeedItemDatabase.tokenForCoordinatedRead()(*((*v1 & *v4) + 0x78));
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B64CBAD4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {

    v2 = sub_1B64CBD68;
  }

  else
  {
    v2 = sub_1B64CBBF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64CBBF0()
{
  v1 = *(v0 + 32);
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = [v5 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v2, v3, "did wait for pending refresh before trying to acquire read token, time=%{public}llums", v6, 0xCu);
    MEMORY[0x1B8C96DF0](v6, -1, -1);
  }

  else
  {
  }

  FeedItemDatabase.tokenForCoordinatedRead()(*(v0 + 16));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B64CBD68()
{
  v1 = *(v0 + 32);
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = [v5 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v2, v3, "did wait for pending refresh before trying to acquire read token, time=%{public}llums", v6, 0xCu);
    MEMORY[0x1B8C96DF0](v6, -1, -1);
  }

  else
  {
  }

  FeedItemDatabase.tokenForCoordinatedRead()(*(v0 + 16));
  v7 = *(v0 + 8);

  return v7();
}

void sub_1B64CBED8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  FeedItemDatabase.saveFeedItems(_:)(v3);

  if (v4)
  {
    v5 = v4;
    v6 = sub_1B67D8A7C();
    v7 = sub_1B67D9C8C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1B63EF000, v6, v7, "failed to save feed items, error=%{public}@", v8, 0xCu);
      sub_1B6418AB4(v9, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v9, -1, -1);
      MEMORY[0x1B8C96DF0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B64CC0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B6404758(a1, a5);
  v10 = *(type metadata accessor for FeedItemInventory.Metadata(0, a3, a4, v9) + 36);
  swift_getAssociatedTypeWitness();
  v11 = sub_1B67D9DFC();
  v12 = *(*(v11 - 8) + 32);

  return v12(a5 + v10, a2, v11);
}

id FeedItemInventory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedItemInventory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B64CC254(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v6 = sub_1B67D993C();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x68)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x70)]);

  v7 = *((*v3 & *a1) + 0x90);
  v8 = sub_1B67D8A9C();
  v9 = *(*(v8 - 8) + 8);

  return v9(&a1[v7], v8);
}

uint64_t sub_1B64CC408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726665527473616CLL && a2 == 0xEB00000000687365;
  if (v4 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F73727563 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B64CC4D4(char a1)
{
  if (a1)
  {
    return 0x726F73727563;
  }

  else
  {
    return 0x726665527473616CLL;
  }
}

uint64_t sub_1B64CC558(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B642694C;

  return FeedItemInventory.refreshIfNeeded(policy:)(a1, v4, v5, v6);
}

uint64_t sub_1B64CC638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B6435678;

  return FeedItemInventory.tokenForCoordinatedRead()();
}

uint64_t sub_1B64CC6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64CC408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B64CC6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B64CC74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B64CC7A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for FeedItemInventory.Metadata.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = sub_1B67DA26C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B67DA47C();
  v15 = 0;
  sub_1B67D877C();
  sub_1B645C75C(&unk_1EDB1EFC0, MEMORY[0x1E6969538]);
  v11 = v13[3];
  sub_1B67DA1FC();
  if (!v11)
  {
    v14 = 1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1B67DA1FC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B64CC9C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B67D9DFC();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v27 - v10;
  type metadata accessor for FeedItemInventory.Metadata.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v39 = sub_1B67DA1EC();
  v33 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v27 - v12;
  v37 = a3;
  v15 = type metadata accessor for FeedItemInventory.Metadata(0, a2, a3, v14);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v13;
  v18 = v40;
  sub_1B67DA46C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v17;
  v40 = a1;
  v28 = v15;
  v21 = v33;
  v20 = v34;
  sub_1B67D877C();
  v42 = 0;
  sub_1B645C75C(&unk_1EDB1EFA0, MEMORY[0x1E6969558]);
  v22 = v36;
  v23 = v38;
  sub_1B67DA18C();
  sub_1B6404758(v22, v19);
  v41 = 1;
  swift_getAssociatedConformanceWitness();
  sub_1B67DA18C();
  (*(v21 + 8))(v23, v39);
  v24 = v28;
  (*(v30 + 32))(v19 + *(v28 + 36), v20, v31);
  v25 = v29;
  (*(v29 + 16))(v32, v19, v24);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v25 + 8))(v19, v24);
}

id sub_1B64CCE6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a4;
  v34 = a3;
  v30 = a2;
  ObjectType = swift_getObjectType();
  v9 = *v5;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_1B67D85FC();
  v29 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D991C();
  v19 = *((*v10 & *v6) + 0x88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B600, &qword_1B6816720);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *&v6[v19] = v20;
  (*(*(*((v11 & v9) + 0x50) - 8) + 16))(&v6[*((*v10 & *v6) + 0x68)], v31);
  sub_1B6431D18(a2, &v6[*((*v10 & *v6) + 0x70)]);
  type metadata accessor for FeedItemDatabase(0);
  (*(v16 + 16))(v18, v34, v15);
  v21 = sub_1B67D8A9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v24 = v32;
  v23(v14, v32, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  v25 = FeedItemDatabase.__allocating_init(fileURL:logger:)(v18, v14);
  v26 = MEMORY[0x1E69E7D40];
  *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x78)] = v25;
  *&v6[*((*v26 & *v6) + 0x80)] = a5;
  v23(&v6[*((*v26 & *v6) + 0x90)], v24, v21);
  v35.receiver = v6;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, sel_init);
  (*(v22 + 8))(v24, v21);
  (*(v16 + 8))(v34, v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v27;
}

unint64_t sub_1B64CD22C()
{
  result = qword_1EB94B618;
  if (!qword_1EB94B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B618);
  }

  return result;
}

uint64_t dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B6422E9C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6484E3C;

  return v7(a1, a2);
}

uint64_t sub_1B64CD5E4(uint64_t a1)
{
  result = sub_1B67D993C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1B67D8A9C();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1B64CD758(uint64_t a1)
{
  sub_1B6458D7C(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1B67D9DFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B64CD7FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 + v15;
  if (a2 <= v13)
  {
LABEL_40:
    if (v8 >= v12)
    {
      v26 = (*(v6 + 48))(a1, v7, v5);
    }

    else
    {
      v26 = (*(v10 + 48))((a1 + v18) & ~v15);
    }

    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }

  v19 = v17 + (v18 & ~v15);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 < 2)
    {
LABEL_39:
      if (v13)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_39;
  }

LABEL_26:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_1B64CDA70(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_1B67D877C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = ((v16 + v17) & ~v17) + v18;
  if (a3 <= v15)
  {
LABEL_29:
    if (v15 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v19 > 3)
  {
    v11 = 1;
    if (v15 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v22 = ~v15 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
      if (v11 > 1)
      {
        goto LABEL_32;
      }

LABEL_78:
      if (v11)
      {
        a1[v19] = v23;
      }

      return;
    }

    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v27 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v27;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *a1 = v22;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

LABEL_32:
        if (v11 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v11 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_32;
  }

  v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_29;
  }

  v11 = 4;
  if (v15 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v11)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 >= v14)
  {
    if (v10 >= a2)
    {
      v30 = *(v8 + 56);

      v30(a1, a2 + 1, v9, v7);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v25 = v28 & (~v10 + a2);
        if (v16 <= 3)
        {
          v26 = v16;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v16);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_64;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    a1 = (&a1[v16 + v17] & ~v17);
    if (v14 >= a2)
    {
      v29 = *(v12 + 56);

      v29(a1, a2 + 1);
    }

    else
    {
      if (v18 <= 3)
      {
        v24 = ~(-1 << (8 * v18));
      }

      else
      {
        v24 = -1;
      }

      if (v18)
      {
        v25 = v24 & (~v14 + a2);
        if (v18 <= 3)
        {
          v26 = v18;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v18);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
LABEL_48:
            *a1 = v25;
            return;
          }

LABEL_64:
          *a1 = v25;
          return;
        }

LABEL_83:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FeedItemInventoryErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedItemInventoryErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B64CDFE8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B64CDFFC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1B64CE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for FeedItemInventory.Metadata(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v4[6];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1B642694C;

  return sub_1B64C9348(v9, v10, v11, v8, v4 + v7);
}

uint64_t sub_1B64CE118(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v8;
    swift_beginAccess();
    v9 = a1;
    MEMORY[0x1B8C949F0]();
    if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_1B67D97FC();
LABEL_3:
  sub_1B67D983C();
  v10 = *(v3 + 16);
  swift_endAccess();
  if (v10 >> 62)
  {
    result = sub_1B67DA04C();
    if (result < 10)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 10)
    {
      return result;
    }
  }

  return v5();
}

uint64_t sub_1B64CE28C(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B620, &qword_1B6816A30);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v19 - v2;
  v22 = sub_1B67D877C();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v19 = v4 + 16;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    (*(v4 + 16))(&v3[*(v20 + 48)], *(a1 + 56) + *(v4 + 72) * v14, v22);
    *v3 = v16;
    *(v3 + 1) = v17;

    LOBYTE(v17) = sub_1B67D86EC();
    result = sub_1B6418AB4(v3, &qword_1EB94B620, &qword_1B6816A30);
    if (v17)
    {
      v18 = 1;
LABEL_13:

      (*(v4 + 8))(v21, v22);
      return v18;
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
      v18 = 0;
      goto LABEL_13;
    }

    v8 = *(a1 + 64 + 8 * v12);
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

uint64_t sub_1B64CE4C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if (*(a2 + 16) && (v12 = sub_1B6456E70(*a1, a1[1]), (v13 & 1) != 0))
  {
    (*(v6 + 16))(v9, *(a2 + 56) + *(v6 + 72) * v12, v5);
    (*(v6 + 32))(v11, v9, v5);
    v14 = sub_1B67D86EC();
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1B64CE634(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1B6456B24(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1B6456B24((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_1B64CE7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001B6829DC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B64CE85C(uint64_t a1)
{
  v2 = sub_1B64D2DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64CE898(uint64_t a1)
{
  v2 = sub_1B64D2DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64CE8D4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B628, &qword_1B6816A38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64D2DAC();
  sub_1B67DA47C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B630, &qword_1B6816A40);
  sub_1B64D2E00();
  sub_1B67DA24C();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1B64CEA30@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B64D2EA8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B64CEA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a3;
  v7[8] = a5;
  v7[5] = a1;
  v7[6] = a2;
  v9 = type metadata accessor for RecipeItemPruningPolicy(0);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = sub_1B67D8A9C();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v11 = sub_1B67D877C();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a4;
  v7[22] = v12;
  v7[23] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1B64CEC24, 0, 0);
}

uint64_t sub_1B64CEC24(uint64_t a1)
{
  sub_1B67D876C();
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_1B64CECBC;

  return sub_1B64CF8D4();
}

uint64_t sub_1B64CECBC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v5 = sub_1B64CF80C;
  }

  else
  {
    v5 = sub_1B64CEDD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B64CEDD4()
{
  v60 = v0;
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = sub_1B64318C8();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);

  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58 = v11;
    v59[0] = v9;
    *v10 = 136446210;

    sub_1B64D1F00(v59);
    if (v8)
    {
LABEL_7:
    }

    v54 = v5;
    v56 = v4;
    v12 = *(v0 + 128);
    v50 = *(v0 + 120);
    v52 = *(v0 + 144);
    v13 = MEMORY[0x1B8C94A20](v59[0], MEMORY[0x1E69E6158]);
    v15 = v14;

    v16 = sub_1B6456540(v13, v15, &v58);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1B63EF000, v6, v7, "interested in recipe list IDs: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);

    v17 = v50;
    v51 = *(v12 + 8);
    v51(v52, v17);
    v8 = 0;
  }

  else
  {
    v54 = v5;
    v56 = v4;
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);

    v51 = *(v20 + 8);
    v51(v18, v19);
    v8 = *(v0 + 216);
  }

  v21 = *(v0 + 200);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = *(v0 + 136);
  v53 = *(v0 + 120);
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);
  sub_1B64D302C(v27, v26);
  v28 = sub_1B64D2C80(v27, v26);
  *(v0 + 224) = v28;
  sub_1B67D876C();
  v29 = swift_task_alloc();
  *(v29 + 16) = v28;
  *(v29 + 24) = v23;

  v30 = sub_1B64CE634(sub_1B64D38B4, v29, v21);
  *(v0 + 232) = v30;

  v31 = *(v22 + 8);
  *(v0 + 240) = v31;
  *(v0 + 248) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v23, v24);
  v54(v25, v56, v53);

  v32 = sub_1B67D8A7C();
  v33 = sub_1B67D9C9C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v58 = v35;
    v59[0] = v30;
    *v34 = 136446210;

    sub_1B64D1F00(v59);
    if (v8)
    {
      goto LABEL_7;
    }

    v55 = *(v0 + 120);
    v57 = *(v0 + 136);
    v41 = MEMORY[0x1B8C94A20](v59[0], MEMORY[0x1E69E6158]);
    v43 = v42;

    v44 = sub_1B6456540(v41, v43, &v58);

    *(v34 + 4) = v44;
    _os_log_impl(&dword_1B63EF000, v32, v33, "will fetch from recipe list IDs needing refresh: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1B8C96DF0](v35, -1, -1);
    MEMORY[0x1B8C96DF0](v34, -1, -1);

    v40 = v55;
    v39 = v57;
  }

  else
  {
    v37 = *(v0 + 136);
    v38 = *(v0 + 120);

    v39 = v37;
    v40 = v38;
  }

  v51(v39, v40);
  v45 = *(v0 + 184);
  v46 = *(v0 + 80);
  v47 = swift_task_alloc();
  *(v0 + 256) = v47;
  v48 = *(v0 + 64);
  *(v47 + 16) = v46;
  *(v47 + 24) = v30;
  *(v47 + 32) = v45;
  *(v47 + 40) = v48;
  v49 = swift_task_alloc();
  *(v0 + 264) = v49;
  *v49 = v0;
  v49[1] = sub_1B64CF2D0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B64CF2D0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_1B64CF434;
  }

  else
  {

    v2 = sub_1B64CF500;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64CF434()
{
  (*(v0 + 240))(*(v0 + 176), *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64CF500()
{
  v29 = v0[22];
  v30 = v0[25];
  v1 = v0[20];
  v27 = v0[29];
  v28 = v0[19];
  v32 = v0[14];
  v33 = v0[34];
  v2 = v0[12];
  v31 = sub_1B64D3050(v0[28], v30, v27, v0[26]);

  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B638, &qword_1B6816A58);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B6812A80;
  v7 = (v6 + v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B640, &qword_1B6816A60);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  *v10 = v27;
  swift_storeEnumTagMultiPayload();
  (*(v1 + 16))(v11 + v12, v29, v28);
  swift_storeEnumTagMultiPayload();
  *v7 = v9;
  swift_storeEnumTagMultiPayload();
  *(v7 + v4) = v30;
  swift_storeEnumTagMultiPayload();
  *(v3 + 16) = v6;
  *v32 = v3;
  swift_storeEnumTagMultiPayload();
  sub_1B67D83FC();
  swift_allocObject();
  sub_1B67D83EC();
  v0[4] = v31;
  sub_1B64D339C();
  v13 = sub_1B67D83DC();
  if (v33)
  {

    v15 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    v15 = v13;
    v16 = v14;
  }

  v17 = v0[30];
  v18 = v0[22];
  v19 = v0[19];
  v21 = v0[13];
  v20 = v0[14];
  v22 = v0[5];
  v0[2] = v15;
  v0[3] = v16;
  sub_1B64D33F0(v20, v21);
  v23 = sub_1B64D3454();
  v24 = sub_1B64D34A8();
  sub_1B64E1EA0((v0 + 2), v21, MEMORY[0x1E6969080], v23, v24, v22);
  sub_1B64D34FC(v20);
  v17(v18, v19);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1B64CF80C()
{
  (*(v0[20] + 8))(v0[22], v0[19]);

  v1 = v0[1];

  return v1();
}

void sub_1B64CF8F4()
{
  v18 = v0;
  v1 = MEMORY[0x1E69E7CD0];
  *(v0 + 88) = MEMORY[0x1E69E7CD0];
  v2 = *(*(v0 + 104) + 24);
  *(v0 + 112) = v2;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC8];
  *(v0 + 128) = MEMORY[0x1E69E7CC8];
  *(v0 + 136) = v4;
  *(v0 + 120) = v3;
  if (v3)
  {
    *(v0 + 144) = 0;
    if (*(v2 + 16))
    {
      sub_1B6431D18(v2 + 32, v0 + 16);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
      *(v0 + 72) = (*(v6 + 16))(v5, v6);
      *(v0 + 80) = v7;
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      v16 = (*(v9 + 8) + **(v9 + 8));
      v10 = swift_task_alloc();
      *(v0 + 152) = v10;
      *v10 = v0;
      v10[1] = sub_1B64CFB54;

      v16(v8, v9);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v11 = *(v1 + 16);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = sub_1B646682C(*(v1 + 16), 0);
  v13 = sub_1B648945C(&v17, v12 + 4, v11, MEMORY[0x1E69E7CD0]);
  sub_1B6449D40(v17);
  if (v13 != v11)
  {
    __break(1u);
LABEL_9:

    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v0 + 8);
  v15 = *(v0 + 136);

  v14(v12, v15);
}

uint64_t sub_1B64CFB54(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  __swift_destroy_boxed_opaque_existential_1(v3 + 2);
  if (v1)
  {

    v4 = sub_1B64D001C;
  }

  else
  {
    v4 = sub_1B64CFC8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64CFC8C()
{
  v35 = v0;
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v17 = *(v0 + 144);
    v18 = *(v0 + 120);

    if (v17 + 1 == v18)
    {
      goto LABEL_14;
    }

LABEL_17:
    v16 = *(v0 + 144) + 1;
LABEL_18:
    *(v0 + 144) = v16;
    v23 = *(v0 + 112);
    if (v16 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1B6431D18(v23 + 40 * v16 + 32, v0 + 16);
      v24 = *(v0 + 40);
      v25 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
      *(v0 + 72) = (*(v25 + 16))(v24, v25);
      *(v0 + 80) = v26;
      v27 = *(v0 + 40);
      v28 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
      v34 = (*(v28 + 8) + **(v28 + 8));
      v29 = swift_task_alloc();
      *(v0 + 152) = v29;
      *v29 = v0;
      v29[1] = sub_1B64CFB54;
      v30 = v34;

      return v30(v27, v28);
    }

    return result;
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (v1 + 40);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  do
  {
    v10 = *(v5 - 1);
    v9 = *v5;
    swift_bridgeObjectRetain_n();
    sub_1B6469928((v0 + 56), v10, v9);

    if ((v3 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v6;
      sub_1B64D19BC(v10, v9, isUniquelyReferenced_nonNull_native, v4);

LABEL_4:
      v7 = v6;
      goto LABEL_5;
    }

    v11 = sub_1B6456E70(v10, v9);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 96) = v6;
      if (!v14)
      {
        sub_1B64D1B18();
        v6 = *(v0 + 96);
      }

      sub_1B64D180C(v11, v6);
      goto LABEL_4;
    }

LABEL_5:
    v5 += 2;
    --v2;
  }

  while (v2);

  v16 = *(v0 + 144) + 1;
  *(v0 + 128) = v6;
  *(v0 + 136) = v7;
  if (v16 != *(v0 + 120))
  {
    goto LABEL_18;
  }

LABEL_14:
  v19 = *(v0 + 88);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = sub_1B646682C(*(v19 + 16), 0);
    v22 = sub_1B648945C(&v33, v21 + 4, v20, v19);
    result = sub_1B6449D40(v33);
    if (v22 != v20)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v0 + 8);
  v32 = *(v0 + 136);

  return v31(v21, v32);
}

uint64_t sub_1B64D0034(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B67D8A9C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64D00F8, 0, 0);
}

uint64_t sub_1B64D00F8()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1B64D302C(v1, v2);
  v3 = sub_1B64D2C80(v1, v2);
  v0[8] = v3;
  if (sub_1B64CE28C(v3))
  {

    v4 = v0[1];

    return v4(1);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_1B64D01F8;

    return sub_1B64CF8D4();
  }
}

uint64_t sub_1B64D01F8(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v6 = sub_1B64D04A4;
  }

  else
  {
    *(v5 + 88) = a1;
    v6 = sub_1B64D033C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64D033C()
{
  v14 = v0;
  v1 = v0[8];
  v2 = sub_1B646A4DC(v0[11]);

  v3 = *(v1 + 16);
  v4 = v0[8];
  if (v3)
  {
    v12 = v2;
    v5 = sub_1B646682C(v3, 0);
    v6 = sub_1B64D2938(&v13, v5 + 4, v3, v4);
    v7 = v13;

    result = sub_1B6449D40(v7);
    if (v6 != v3)
    {
      __break(1u);
      return result;
    }

    v2 = v12;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1B646A4DC(v5);

  v10 = sub_1B64D1030(v2, v9);

  v11 = v0[1];

  return v11((v10 & 1) == 0);
}

uint64_t sub_1B64D04A4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_1B64318C8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C8C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1B63EF000, v7, v8, "skipping refresh because we couldn't determine recipe lists, error=%{public}@", v11, 0xCu);
    sub_1B6418AB4(v12, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v15 = v0[1];

  return v15(0);
}

void sub_1B64D064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
  v11 = *(v10 - 8);
  v44 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - v12;
  v13 = sub_1B67D8A9C();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v17 = objc_allocWithZone(FCRecipeItemsOperation);
  v18 = sub_1B67D97AC();
  v19 = [v17 initWithContext:v16 recipeListIDs:v18];

  if (a4)
  {
    [v19 setRecipeItemHandlerQueue_];
  }

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a5;
  v21[4] = a6;
  v53 = sub_1B6465678;
  v54 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1B645C40C;
  v52 = &block_descriptor_9;
  v22 = _Block_copy(&aBlock);

  [v19 setRecipeItemHandler_];
  _Block_release(v22);
  v23 = sub_1B64318C8();
  v25 = v47;
  v24 = v48;
  (*(v47 + 16))(v15, v23, v48);
  v26 = v19;
  v27 = sub_1B67D8A7C();
  v28 = sub_1B67D9C9C();
  if (!os_log_type_enabled(v27, v28))
  {

    (*(v25 + 8))(v15, v24);
    goto LABEL_7;
  }

  v42 = v11;
  v43 = v10;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  aBlock = v30;
  *v29 = 136446210;
  v31 = [v26 shortOperationDescription];

  if (v31)
  {
    v32 = sub_1B67D964C();
    v34 = v33;

    v35 = sub_1B6456540(v32, v34, &aBlock);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1B63EF000, v27, v28, "will fetch global recipe items from CK with operation: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1B8C96DF0](v30, -1, -1);
    MEMORY[0x1B8C96DF0](v29, -1, -1);

    (*(v47 + 8))(v15, v48);
    v11 = v42;
    v10 = v43;
LABEL_7:
    v36 = v45;
    (*(v11 + 16))(v45, v46, v10);
    v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v38 = (v44 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (*(v11 + 32))(v39 + v37, v36, v10);
    *(v39 + v38) = v20;
    v53 = sub_1B64D369C;
    v54 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1B64632F0;
    v52 = &block_descriptor_25;
    v40 = _Block_copy(&aBlock);

    [v26 setCompletionHandler_];
    _Block_release(v40);
    [v26 start];

    return;
  }

  __break(1u);
}

uint64_t sub_1B64D0B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D8A9C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    v16[1] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
    return sub_1B67D98AC();
  }

  else
  {
    v12 = sub_1B64318C8();
    (*(v6 + 16))(v9, v12, v5);

    v13 = sub_1B67D8A7C();
    v14 = sub_1B67D9C9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      swift_beginAccess();
      *(v15 + 4) = *(a3 + 16);

      _os_log_impl(&dword_1B63EF000, v13, v14, "did fetch %{public}ld global recipe items", v15, 0xCu);
      MEMORY[0x1B8C96DF0](v15, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
    return sub_1B67D98BC();
  }
}

uint64_t sub_1B64D0D70()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64D0DB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B642694C;

  return sub_1B64CEA78(a1, v10, v11, a3, a4, a5);
}

uint64_t sub_1B64D0E90(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B64D0F34;

  return sub_1B64D0034(v2, v3);
}

uint64_t sub_1B64D0F34(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1B64D1030(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1B67DA3DC();

    sub_1B67D967C();
    v16 = sub_1B67DA41C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1B67DA2DC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64D11E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B670, &qword_1B6816CA0);
  v33 = v4;
  result = sub_1B67DA0CC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v33 & 1) == 0)
      {
      }

      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1B64D148C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1B67D877C();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B660, &unk_1B6816C90);
  v42 = v4;
  result = sub_1B67DA0CC();
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1B64D180C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B67D9E7C() + 1) & ~v5;
    do
    {
      sub_1B67DA3DC();

      sub_1B67D967C();
      v9 = sub_1B67DA41C();

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

unint64_t sub_1B64D19BC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B6456E70(a1, a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1B64D11E8(v16, a3 & 1);
      result = sub_1B6456E70(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1B67DA34C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B64D1B18();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
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

void *sub_1B64D1B18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B670, &qword_1B6816CA0);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_1B64D1C80()
{
  v1 = v0;
  v35 = sub_1B67D877C();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B660, &unk_1B6816C90);
  v3 = *v0;
  v4 = sub_1B67DA0BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1B64D1F00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B64D2A90(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B64D1F6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B64D1F6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B67DA27C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B67D981C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B64D2134(v7, v8, a1, v4);
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
    return sub_1B64D2064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B64D2064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B67DA2DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B64D2134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B64AD494(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B64D2710((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B67DA2DC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B67DA2DC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B64AB9CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B64AB9CC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B64D2710((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B64AD494(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B64AD408(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B67DA2DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1B64D2710(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B67DA2DC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B67DA2DC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_1B64D2938(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B64D2AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B688, &qword_1B6816CB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B660, &unk_1B6816C90);
    v7 = sub_1B67DA0EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B64D3840(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1B6456E70(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1B67D877C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1B64D2C80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v5 = sub_1B64D2AA4(MEMORY[0x1E69E7CC0]);
    sub_1B6457448(a1, a2);
  }

  else
  {
    sub_1B67D83AC();
    swift_allocObject();
    sub_1B646B894(a1, a2);
    sub_1B67D839C();
    sub_1B64D37EC();
    sub_1B67D838C();
    sub_1B6457448(a1, a2);
    sub_1B6457448(a1, a2);

    return v6;
  }

  return v5;
}

unint64_t sub_1B64D2DAC()
{
  result = qword_1EDB21DA0[0];
  if (!qword_1EDB21DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB21DA0);
  }

  return result;
}

unint64_t sub_1B64D2E00()
{
  result = qword_1EDB1E658;
  if (!qword_1EDB1E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B630, &qword_1B6816A40);
    sub_1B645C75C(&unk_1EDB1EFC0, MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E658);
  }

  return result;
}

void *sub_1B64D2EA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B678, &qword_1B6816CA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64D2DAC();
  sub_1B67DA46C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B630, &qword_1B6816A40);
    sub_1B64D3744();
    sub_1B67DA1CC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1B64D302C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B646B894(result, a2);
  }

  return result;
}

void *sub_1B64D3050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v39 - v12;
  sub_1B67D876C();
  v13 = sub_1B67D956C();
  v14 = *(a3 + 16);
  if (!v14)
  {
LABEL_17:
    (*(v7 + 8))(v43, v6);
    return v13;
  }

  v44 = (v7 + 32);
  v39 = v7 + 40;
  v40 = a4;
  v15 = (a3 + 40);
  v41 = v7;
  while (1)
  {
    v18 = *(v15 - 1);
    v17 = *v15;
    v19 = *(a4 + 16);

    if (v19)
    {
      sub_1B6456E70(v18, v17);
    }

    v20 = v42;
    sub_1B67D86CC();
    v21 = *v44;
    v22 = v20;
    v23 = v6;
    (*v44)(v45, v22, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v13;
    v25 = sub_1B6456E70(v18, v17);
    v27 = v13[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v13[3] < v30)
    {
      sub_1B64D148C(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1B6456E70(v18, v17);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_20;
      }

LABEL_12:
      if (v31)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v37 = v25;
    sub_1B64D1C80();
    v25 = v37;
    if (v31)
    {
LABEL_3:
      v16 = v25;

      v13 = v46;
      v7 = v41;
      v6 = v23;
      (*(v41 + 40))(v46[7] + *(v41 + 72) * v16, v45, v23);
      goto LABEL_4;
    }

LABEL_13:
    v33 = v45;
    v13 = v46;
    v46[(v25 >> 6) + 8] |= 1 << v25;
    v34 = (v13[6] + 16 * v25);
    *v34 = v18;
    v34[1] = v17;
    v7 = v41;
    v6 = v23;
    v21((v13[7] + *(v41 + 72) * v25), v33, v23);
    v35 = v13[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_19;
    }

    v13[2] = v36;
LABEL_4:
    v15 += 2;
    --v14;
    a4 = v40;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1B67DA34C();
  __break(1u);
  return result;
}
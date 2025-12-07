void *sub_1D69229B4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v99 = a2;
  v101 = type metadata accessor for FormatOption(0);
  v5 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v6);
  v97 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v89 = (&v86 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v88 = (&v86 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v86 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v86 - v20;
  v22 = sub_1D72585BC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v100 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v86 - v32;
  v35 = *a3;
  v36 = MEMORY[0x1E69E7CC0];
  v103 = MEMORY[0x1E69E7CC0];
  v98 = v35;
  if (a1)
  {
    swift_getObjectType();
    v102 = v35;
    sub_1D6924500(&v102, v34);
  }

  else
  {
    (*(v23 + 56))(&v86 - v32, 1, 1, v22, v33);
  }

  sub_1D5D253F4(v34, v29, sub_1D5B4D3E0);
  if ((*(v23 + 48))(v29, 1, v22) == 1)
  {
    sub_1D5B6F20C(v29, sub_1D5B4D3E0);
    v37 = MEMORY[0x1E69E7CC0];
    if (v98 != 2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v96 = v5;
    v38 = v100;
    (*(v23 + 32))(v100, v29, v22);
    sub_1D5C4E168(0);
    v39 = v23;
    v41 = v40;
    v42 = swift_allocBox();
    v44 = v43;
    v86 = v39;
    v90 = *(v39 + 16);
    v90(v43, v38, v22);
    *(v44 + *(v41 + 36)) = v36;
    *v21 = 0x752D726564616568;
    *(v21 + 1) = 0xEA00000000006C72;
    *(v21 + 2) = v42 | 0x6000000000000000;
    *(v21 + 3) = 1;
    v45 = *(v101 + 28);
    v46 = type metadata accessor for FormatVersionRequirement(0);
    v47 = *(v46 - 8);
    v92 = *(v47 + 56);
    v93 = v46;
    v91 = v47 + 56;
    v92(&v21[v45], 1, 1);
    v37 = sub_1D5CEABA0(0, 1, 1, v36);
    v49 = v37[2];
    v48 = v37[3];
    v50 = v49 + 1;
    v87 = v34;
    if (v49 >= v48 >> 1)
    {
      v37 = sub_1D5CEABA0((v48 > 1), v49 + 1, 1, v37);
    }

    v37[2] = v50;
    v95 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v94 = *(v96 + 72);
    sub_1D5CAD7EC(v21, v37 + v95 + v94 * v49, type metadata accessor for FormatOption);
    v51 = swift_allocBox();
    v53 = v52;
    v90(v52, v100, v22);
    v54 = MEMORY[0x1E69E7CC0];
    *(v53 + *(v41 + 36)) = MEMORY[0x1E69E7CC0];
    v36 = v54;
    *v17 = 0xD000000000000013;
    v17[1] = 0x80000001D73DC1E0;
    v17[2] = v51 | 0x6000000000000000;
    v17[3] = 1;
    (v92)(v17 + *(v101 + 28), 1, 1, v93);
    v55 = v37[3];
    v56 = v49 + 2;
    if ((v49 + 2) > (v55 >> 1))
    {
      v37 = sub_1D5CEABA0((v55 > 1), v49 + 2, 1, v37);
    }

    v37[2] = v56;
    sub_1D5CAD7EC(v17, v37 + v95 + v94 * v50, type metadata accessor for FormatOption);
    v103 = v37;
    v34 = v87;
    v57 = v98;
    if (((1 << v98) & 0xF3) != 0)
    {
      (*(v86 + 8))(v100, v22);
      v5 = v96;
      if (v57 != 2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v98 != 2)
      {
        v80 = swift_allocBox();
        v82 = v81;
        v90(v81, v100, v22);
        *(v82 + *(v41 + 36)) = MEMORY[0x1E69E7CC0];
        v83 = v80 | 0x6000000000000000;
        v84 = v89;
        *v89 = 0x2D74656B63617262;
        v84[1] = 0xEB000000006C7275;
        v84[2] = v83;
        v84[3] = 1;
        (v92)(v84 + *(v101 + 28), 1, 1, v93);
        v85 = v37[3];
        if ((v49 + 3) > (v85 >> 1))
        {
          v37 = sub_1D5CEABA0((v85 > 1), v49 + 3, 1, v37);
        }

        (*(v86 + 8))(v100, v22);
        v37[2] = v49 + 3;
        v76 = v37 + v95 + v94 * v56;
        v77 = v84;
        goto LABEL_23;
      }

      v58 = swift_allocBox();
      v60 = v59;
      v90(v59, v100, v22);
      *(v60 + *(v41 + 36)) = MEMORY[0x1E69E7CC0];
      v61 = v58 | 0x6000000000000000;
      v62 = v88;
      *v88 = 0x676E69646E617473;
      v62[1] = 0xEC0000006C72752DLL;
      v62[2] = v61;
      v62[3] = 1;
      (v92)(v62 + *(v101 + 28), 1, 1, v93);
      v63 = v37[3];
      if ((v49 + 3) > (v63 >> 1))
      {
        v37 = sub_1D5CEABA0((v63 > 1), v49 + 3, 1, v37);
      }

      v5 = v96;
      (*(v86 + 8))(v100, v22);
      v37[2] = v49 + 3;
      sub_1D5CAD7EC(v62, v37 + v95 + v94 * v56, type metadata accessor for FormatOption);
      v36 = MEMORY[0x1E69E7CC0];
    }
  }

  v64 = v36;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v66 = [objc_opt_self() bundleForClass_];
  v67 = sub_1D725811C();
  v69 = v68;

  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  *(v70 + 24) = v69;
  *(v70 + 32) = v64;
  v71 = v97;
  *v97 = 0x742D726564616568;
  *(v71 + 1) = 0xEC000000656C7469;
  *(v71 + 2) = v70 | 0x5000000000000000;
  *(v71 + 3) = 1;
  v72 = *(v101 + 28);
  v73 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v73 - 8) + 56))(&v71[v72], 1, 1, v73);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1D5CEABA0(0, v37[2] + 1, 1, v37);
  }

  v75 = v37[2];
  v74 = v37[3];
  if (v75 >= v74 >> 1)
  {
    v37 = sub_1D5CEABA0((v74 > 1), v75 + 1, 1, v37);
  }

  v37[2] = v75 + 1;
  v76 = v37 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v75;
  v77 = v71;
LABEL_23:
  sub_1D5CAD7EC(v77, v76, type metadata accessor for FormatOption);
  v103 = v37;
LABEL_24:

  sub_1D5D505F0(v78);
  sub_1D5B6F20C(v34, sub_1D5B4D3E0);
  return v103;
}

void SportsDataVisualizationConfig.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  sub_1D6924A0C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6924BA4(0, &qword_1EC88E3C8, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v30 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6924A74();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v10;
    LOBYTE(v36) = 0;
    v31 = sub_1D72642BC();
    v33 = v15;
    sub_1D6924A40(0);
    v17 = v16;
    LOBYTE(v36) = 1;
    sub_1D5C86478(&unk_1EDF17750, sub_1D6924A40, MEMORY[0x1E69D6C18]);
    sub_1D726427C();
    v32 = 0;
    v18 = v7;
    v19 = *(v17 - 8);
    if ((*(v19 + 48))(v7, 1, v17) == 1)
    {
      sub_1D5B6F20C(v7, sub_1D6924A0C);
      v20 = 0;
    }

    else
    {
      sub_1D725BF7C();
      v20 = v36;
      (*(v19 + 8))(v18, v17);
    }

    v21 = v34;
    sub_1D5B81B04();
    v35 = 2;
    sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    v22 = v13;
    v23 = v32;
    sub_1D726431C();
    if (v23)
    {
      (*(v14 + 8))(v13, v9);
      v24 = v32;
      __swift_destroy_boxed_opaque_existential_1(a1);

      if (!v24)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v34 = v36;
      sub_1D5B54910(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      v35 = 3;
      sub_1D5C4D854(&qword_1EDF1B350, sub_1D5C863EC, MEMORY[0x1E69E6330]);
      sub_1D726431C();
      v25 = v20;
      v26 = v36;
      sub_1D6924AC8(0, &qword_1EDF04B58, MEMORY[0x1E69E62F8]);
      v35 = 4;
      sub_1D6924B1C(&qword_1EC88E3D0, sub_1D60AE838, MEMORY[0x1E69E6330]);
      sub_1D726431C();
      (*(v14 + 8))(v22, v9);
      v27 = v36;
      v28 = v33;
      v29 = v34;
      *v21 = v31;
      v21[1] = v28;
      v21[2] = v25;
      v21[3] = v29;
      v21[4] = v26;
      v21[5] = v27;
      swift_unknownObjectRetain();

      __swift_destroy_boxed_opaque_existential_1(a1);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t SportsDataVisualizationConfig.encode(to:)(void *a1)
{
  sub_1D6924A0C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6924BA4(0, &qword_1EDF02570, MEMORY[0x1E69E6F58]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - v9;
  v11 = v1[3];
  v12 = v1[5];
  v25 = v1[4];
  v26 = v11;
  v24 = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D6924A74();
  sub_1D7264B5C();
  LOBYTE(v30) = 0;
  v17 = v10;
  v18 = v28;
  sub_1D72643FC();
  if (!v18)
  {
    v20 = v25;
    v19 = v26;
    v21 = swift_unknownObjectRetain();
    v22 = v27;
    sub_1D67A8F10(v21, v27);
    LOBYTE(v30) = 1;
    sub_1D6924A40(0);
    sub_1D5C86478(&unk_1EDF17760, sub_1D6924A40, MEMORY[0x1E69D6C10]);
    sub_1D72643BC();
    sub_1D5B6F20C(v22, sub_1D6924A0C);
    v30 = v19;
    v29 = 2;
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
    v30 = v20;
    v29 = 3;
    sub_1D5B54910(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D5C4D854(&qword_1EDF050B0, sub_1D6924C08, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v30 = v24;
    v29 = 4;
    sub_1D6924AC8(0, &qword_1EDF04B58, MEMORY[0x1E69E62F8]);
    sub_1D6924B1C(&qword_1EDF04B50, sub_1D60AD2B0, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v17, v16);
}

uint64_t sub_1D6923DBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6923EA8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6923F80(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6924068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D69258A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6924098@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xE900000000000073;
  v6 = 0x726F7463656C6573;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  result = 0x6574656D61726170;
  if (v2 != 3)
  {
    v8 = 0x6574656D61726170;
    v7 = 0xEA00000000007372;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x54676E696B636162;
    v3 = 0xEA00000000006761;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  *a1 = v10;
  a1[1] = v11;
  return result;
}

uint64_t sub_1D6924140()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x726F7463656C6573;
  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 0x6574656D61726170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x54676E696B636162;
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

unint64_t sub_1D69241E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69258A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D692420C(uint64_t a1)
{
  v2 = sub_1D6924A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6924248(uint64_t a1)
{
  v2 = sub_1D6924A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SportsDataVisualizationConfig.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_1D72621EC();
  if (v2)
  {
    v4 = [v2 identifier];
    sub_1D726207C();

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  else
  {
    sub_1D7264A2C();
  }

  v5 = *(v3 + 16);
  MEMORY[0x1DA6FC0B0](v5);
  if (v5)
  {
    v6 = v3 + 56;
    do
    {

      sub_1D72621EC();
      sub_1D72621EC();

      v6 += 32;
      --v5;
    }

    while (v5);
  }
}

uint64_t SportsDataVisualizationConfig.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_1D7264A0C();
  SportsDataVisualizationConfig.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t sub_1D6924430()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_1D7264A0C();
  SportsDataVisualizationConfig.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t sub_1D6924498(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 5);
  v6 = *v1;
  v7 = v2;
  v8 = *(v1 + 24);
  v9 = v3;
  sub_1D7264A0C();
  SportsDataVisualizationConfig.hash(into:)(v5);
  return sub_1D7264A5C();
}

uint64_t sub_1D6924500@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [v3 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [objc_opt_self() nss:v17 NewsURLForTagID:?];

  sub_1D72584EC();
  v19 = objc_allocWithZone(MEMORY[0x1E696AF20]);
  v20 = sub_1D725844C();
  v21 = [v19 initWithURL:v20 resolvingAgainstBaseURL:1];

  if (((1 << v16) & 0xF3) != 0)
  {
    if (!v21)
    {
LABEL_5:
      (*(v11 + 8))(v15, v10);
      return (*(v11 + 56))(a2, 1, 1, v10);
    }
  }

  else
  {
    if (v16 == 2)
    {
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    else if (!v21)
    {
      goto LABEL_5;
    }

    sub_1D5B54910(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
    sub_1D7257B5C();
    *(swift_allocObject() + 16) = xmmword_1D7273AE0;
    v23 = v21;
    sub_1D7257B2C();
    v24 = sub_1D726265C();

    [v21 setQueryItems_];
  }

  v25 = [v21 URL];
  if (v25)
  {
    v26 = v25;
    sub_1D72584EC();

    (*(v11 + 8))(v15, v10);
    v27 = 0;
  }

  else
  {
    (*(v11 + 8))(v15, v10);

    v27 = 1;
  }

  (*(v11 + 56))(v9, v27, 1, v10);
  return sub_1D5CAD7EC(v9, a2, sub_1D5B4D3E0);
}

unint64_t sub_1D6924A74()
{
  result = qword_1EDF0A190[0];
  if (!qword_1EDF0A190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0A190);
  }

  return result;
}

void sub_1D6924AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SportsConfigResourceParameter);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6924B1C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6924AC8(255, &qword_1EDF04B58, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6924BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6924A74();
    v7 = a3(a1, &type metadata for SportsDataVisualizationConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s8NewsFeed29SportsDataVisualizationConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    v8 = [v2 identifier];
    v9 = sub_1D726207C();
    v11 = v10;

    if (!v6)
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    v11 = 0;
    v9 = 0;
  }

  v12 = [v6 identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  if (!v11)
  {
    if (!v15)
    {
      goto LABEL_19;
    }

LABEL_17:

    return 0;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  if (v9 == v13 && v11 == v15)
  {
  }

  else
  {
    v16 = sub_1D72646CC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  if ((sub_1D5BFC390(v4, v5) & 1) == 0 || (sub_1D633BCCC(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1D6709338();
}

unint64_t sub_1D6924E0C()
{
  result = qword_1EC88E3D8;
  if (!qword_1EC88E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3D8);
  }

  return result;
}

unint64_t sub_1D6924E84()
{
  result = qword_1EC88E3E0;
  if (!qword_1EC88E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3E0);
  }

  return result;
}

unint64_t sub_1D6924EDC()
{
  result = qword_1EDF0A178;
  if (!qword_1EDF0A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A178);
  }

  return result;
}

unint64_t sub_1D6924F34()
{
  result = qword_1EDF0A180;
  if (!qword_1EDF0A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A180);
  }

  return result;
}

void *sub_1D6924F88(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FormatOption(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v92 = &v77 - v10;
  sub_1D5EA74B8(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = a2[1];
  if (v18)
  {
    v93 = &v77 - v16;
    v78 = v4;
    v79 = v17;
    v80 = v7;
    v19 = *a2;
    v20 = a2[2];
    v21 = a2[3];
    v22 = a2[4];
    v23 = a2[5];
    v24 = MEMORY[0x1E69E6F90];
    sub_1D5B54910(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7274590;
    sub_1D5B54910(0, &qword_1EC880490, sub_1D5EA74B8, v24);
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v97 = *(v12 + 72);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    v86 = v22;
    v82 = v21;
    v83 = v19;
    if (v20)
    {
      swift_unknownObjectRetain_n();
      sub_1D5F8B638(v19, v18, v20);
      v27 = [v20 identifier];
      v28 = sub_1D726207C();
      v30 = v29;

      v103 = xmmword_1D7279980;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0;
      *&v98 = v28;
      *(&v98 + 1) = v30;
      v22 = v86;
      *&v99 = v20;
      BYTE8(v99) = 0;
      *&v101 = 0;
      *(&v101 + 1) = 0xE000000000000000;
      *&v100 = 0;
      BYTE8(v100) = 0;
      *&v102 = 0;
      *(&v102 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D7121274(6775124, 0xE300000000000000, &v98, (v26 + v25));
      swift_unknownObjectRelease();
    }

    else
    {
      v107 = 0;
      v106 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;

      sub_1D7121274(6775124, 0xE300000000000000, &v98, (v26 + v25));
    }

    v33 = type metadata accessor for FormatInspectionItem(0);
    v34 = *(v33 - 8);
    v95 = *(v34 + 56);
    v96 = v33;
    v94 = v34 + 56;
    v95(v26 + v25, 0, 1);
    sub_1D6795150(0x20676E696B636142, 0xEB00000000676154, 0, 0, v26, v108);
    swift_setDeallocating();
    sub_1D5B6F20C(v26 + v25, sub_1D5EA74B8);
    swift_deallocClassInstance();
    v35 = inited;
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(v35 + 64) = &off_1F518B2C0;
    v36 = swift_allocObject();
    *(v35 + 32) = v36;
    *(v36 + 48) = v109;
    v37 = v108[1];
    *(v36 + 16) = v108[0];
    *(v36 + 32) = v37;
    v38 = *(v23 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    v84 = v20;
    v85 = v18;
    v81 = v23;
    if (v38)
    {
      *&v98 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v38, 0);
      v39 = v98;
      v90 = type metadata accessor for FormatInspectionItem.Value(0);
      v40 = *(v90 - 8);
      v41 = *(v40 + 56);
      v88 = v40 + 56;
      v89 = v41;
      v42 = (v23 + 56);
      v43 = v93;
      v91 = v25;
      do
      {
        v93 = v38;
        v45 = *(v42 - 3);
        v44 = *(v42 - 2);
        v46 = *v42;
        v47 = v96;
        v48 = (v43 + *(v96 + 24));
        *v48 = *(v42 - 1);
        v48[1] = v46;
        v49 = v39;
        v50 = v90;
        swift_storeEnumTagMultiPayload();
        v51 = v50;
        v39 = v49;
        v89(v48, 0, 1, v51);
        *v43 = v45;
        v43[1] = v44;
        v43[2] = 0;
        v43[3] = 0;
        v52 = v43 + *(v47 + 28);
        *v52 = 0;
        *(v52 + 1) = 0;
        v52[16] = -1;
        (v95)(v43, 0, 1, v47);
        *&v98 = v49;
        v53 = *(v49 + 16);
        v54 = *(v49 + 24);

        if (v53 >= v54 >> 1)
        {
          sub_1D69972A4((v54 > 1), v53 + 1, 1);
          v39 = v98;
        }

        *(v39 + 16) = v53 + 1;
        v25 = v91;
        sub_1D5CAD7EC(v43, v39 + v91 + v53 * v97, sub_1D5EA74B8);
        v42 += 4;
        v38 = (v93 - 1);
      }

      while (v93 != 1);
      v20 = v84;
      v18 = v85;
      v22 = v86;
    }

    sub_1D6795150(0x6574656D61726150, 0xEA00000000007372, 0, 0, v39, v110);

    v55 = inited;
    *(inited + 96) = &type metadata for FormatInspectionGroup;
    *(v55 + 104) = &off_1F518B2C0;
    v56 = swift_allocObject();
    *(v55 + 72) = v56;
    *(v56 + 48) = v111;
    v57 = v110[1];
    *(v56 + 16) = v110[0];
    *(v56 + 32) = v57;
    v58 = *(v22 + 16);
    v59 = MEMORY[0x1E69E7CC0];
    v60 = v80;
    if (v58)
    {
      v61 = v25;
      *&v98 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v58, 0);
      v59 = v98;
      v62 = v79;
      v63 = v22 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v64 = *(v78 + 72);
      do
      {
        v65 = v92;
        sub_1D5D253F4(v63, v92, type metadata accessor for FormatOption);
        sub_1D5D253F4(v65, v60, type metadata accessor for FormatOption);
        sub_1D68B1FA4(v60, v62);
        sub_1D5B6F20C(v65, type metadata accessor for FormatOption);
        (v95)(v62, 0, 1, v96);
        *&v98 = v59;
        v67 = *(v59 + 16);
        v66 = *(v59 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1D69972A4((v66 > 1), v67 + 1, 1);
          v59 = v98;
        }

        *(v59 + 16) = v67 + 1;
        sub_1D5CAD7EC(v62, v59 + v61 + v67 * v97, sub_1D5EA74B8);
        v63 += v64;
        --v58;
      }

      while (v58);
      v20 = v84;
      v18 = v85;
      v22 = v86;
    }

    sub_1D6795150(0x736E6F6974704FLL, 0xE700000000000000, 0, 0, v59, v112);

    v68 = inited;
    *(inited + 136) = &type metadata for FormatInspectionGroup;
    v68[18] = &off_1F518B2C0;
    v69 = swift_allocObject();
    v68[14] = v69;
    *(v69 + 48) = v113;
    v70 = v112[1];
    *(v69 + 16) = v112[0];
    *(v69 + 32) = v70;
    v71 = v82;

    v73 = sub_1D6920F9C(v72);

    sub_1D6795150(0x726F7463656C6553, 0xE900000000000073, 0, 0, v73, &v98);

    v68[22] = &type metadata for FormatInspectionGroup;
    v68[23] = &off_1F518B2C0;
    v74 = swift_allocObject();
    v68[19] = v74;
    *(v74 + 48) = v100;
    v75 = v99;
    *(v74 + 16) = v98;
    *(v74 + 32) = v75;
    v76 = sub_1D7073500(v68);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    sub_1D5F8BBC8(v83, v18, v20, v71, v22, v81);
    return v76;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v31);
  }
}

unint64_t sub_1D69258A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t static FormatArraySubscript.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for FormatArraySubscript(0, a3, a4, a4);
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D6925984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for FormatArraySubscript(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t sub_1D6925AA0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6925ADC(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6925B5C(uint64_t a1)
{
  result = sub_1D6925B84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6925B84()
{
  result = qword_1EC88E3E8;
  if (!qword_1EC88E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3E8);
  }

  return result;
}

unint64_t sub_1D6925BD8(void *a1)
{
  a1[1] = sub_1D66B10E8();
  a1[2] = sub_1D66F9BA4();
  result = sub_1D6925C10();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6925C10()
{
  result = qword_1EC88E3F0[0];
  if (!qword_1EC88E3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC88E3F0);
  }

  return result;
}

uint64_t sub_1D6925CA0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6925D20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1D6925E80(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t FormatInjuryReportDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatInjuryReportDataVisualization.eventIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatInjuryReportDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatInjuryReportDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatInjuryReportDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

double FormatInjuryReportDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

void *FormatInjuryReportDataVisualization.__allocating_init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  swift_beginAccess();
  v16[6] = a5;
  swift_beginAccess();
  v16[7] = a6;
  swift_beginAccess();
  v16[8] = a7;
  v16[9] = a8;
  return v16;
}

void *FormatInjuryReportDataVisualization.init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();
  v8[6] = a5;
  swift_beginAccess();
  v8[7] = a6;
  swift_beginAccess();
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t sub_1D692656C(uint64_t a1)
{
  v2 = sub_1D5E19358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69265A8(uint64_t a1)
{
  v2 = sub_1D5E19358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatInjuryReportDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatInjuryReportDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void FormatInjuryReportDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6927068(0, &qword_1EC87F8B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19358();
  sub_1D7264B5C();
  v17 = 0;
  sub_1D72643FC();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v17 = 1;
    sub_1D72643FC();
    swift_beginAccess();
    if (*(v3[6] + 16))
    {

      sub_1D5E0666C(v11, v10, 2);
    }

    swift_beginAccess();
    v12 = v3[7];
    if (*(v12 + 16))
    {
      v16 = 3;
      v15 = v12;
      sub_1D6926FF4();
      sub_1D5E4C584();
      sub_1D5E4C5D4();

      sub_1D72647EC();
    }

    swift_beginAccess();
    v13 = v3[8];
    v14 = v3[9];

    sub_1D5EAED88(v13, v14, 4);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t FormatInjuryReportDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatInjuryReportDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatInjuryReportDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v40 = v2;
  v41 = v4;
  sub_1D5E18934(0);
  v37 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v9 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6927068(0, &qword_1EC88E478, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19358();
  v18 = v40;
  v19 = v1;
  sub_1D7264B0C();
  if (v18)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v12;
    v21 = v39;
    LOBYTE(v42) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v22;
    LOBYTE(v42) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v24;
    v40 = v1;
    LOBYTE(v42) = 2;
    v25 = sub_1D726434C();
    if (v25)
    {
      v45 = 2;
      sub_1D69270CC(&qword_1EDF3BE00, 255, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      v26 = v9;
      sub_1D726431C();
      v27 = v14;
      v28 = sub_1D725A74C();
      (*(v36 + 8))(v20, v26);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
      v27 = v14;
    }

    v40[6] = v28;
    LOBYTE(v42) = 3;
    if (sub_1D726434C())
    {
      v45 = 3;
      sub_1D69270CC(&qword_1EDF3BD70, 255, sub_1D5E18934, MEMORY[0x1E69D64C8]);
      v29 = v37;
      v30 = v38;
      sub_1D726431C();
      v31 = sub_1D725A74C();
      (*(v35 + 8))(v30, v29);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v40[7] = v31;
    v45 = 4;
    if (sub_1D726434C())
    {
      v44 = 4;
      sub_1D726431C();
      v33 = v42;
      v32 = v43;
    }

    else
    {
      v33 = 0;
      v32 = 0xE000000000000000;
    }

    (*(v21 + 8))(v17, v27);
    v19 = v40;
    v40[8] = v33;
    v19[9] = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

void *sub_1D6926F6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatInjuryReportDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D6926FF4()
{
  result = qword_1EC87F8C0;
  if (!qword_1EC87F8C0)
  {
    sub_1D6927068(255, &qword_1EC87F8B0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8C0);
  }

  return result;
}

void sub_1D6927068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E19358();
    v7 = a3(a1, &type metadata for FormatInjuryReportDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D69270CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D6927114(void *a1, uint64_t a2)
{
  a1[1] = sub_1D69270CC(&qword_1EC885B00, a2, type metadata accessor for FormatInjuryReportDataVisualization, &protocol conformance descriptor for FormatInjuryReportDataVisualization);
  a1[2] = sub_1D69270CC(&qword_1EC885B40, v3, type metadata accessor for FormatInjuryReportDataVisualization, &protocol conformance descriptor for FormatInjuryReportDataVisualization);
  result = sub_1D69270CC(&qword_1EC88E480, v4, type metadata accessor for FormatInjuryReportDataVisualization, &protocol conformance descriptor for FormatInjuryReportDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D692724C()
{
  result = qword_1EC88E488;
  if (!qword_1EC88E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E488);
  }

  return result;
}

unint64_t sub_1D69272A4()
{
  result = qword_1EC88E490;
  if (!qword_1EC88E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E490);
  }

  return result;
}

unint64_t sub_1D69272FC()
{
  result = qword_1EC88E498;
  if (!qword_1EC88E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E498);
  }

  return result;
}

uint64_t LayeredMediaLayerRenderer.shouldShow(_:for:)(_OWORD *a1, uint64_t a2)
{
  v3 = a1[5];
  v25[4] = a1[4];
  v25[5] = v3;
  v26[0] = a1[6];
  *(v26 + 9) = *(a1 + 105);
  v4 = a1[1];
  v25[0] = *a1;
  v25[1] = v4;
  v5 = a1[3];
  v25[2] = a1[2];
  v25[3] = v5;
  v6 = *(a2 + 16);
  v7 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v8 = sub_1D5ED9718(v25);
  v9 = sub_1D5D6EF44(v25);
  if (v8 == 1)
  {
    v10 = 16;
  }

  else
  {
    v10 = 8;
  }

  v11 = 24;
  if (v8 == 1)
  {
    v12 = 24;
  }

  else
  {
    v12 = 16;
  }

  v13 = 32;
  if (v8 == 1)
  {
    v11 = 32;
  }

  v14 = 40;
  if (v8 == 1)
  {
    v13 = 40;
  }

  v15 = 48;
  if (v8 == 1)
  {
    v14 = 48;
  }

  v16 = *v7;
  v17 = 56;
  if (v8 == 1)
  {
    v15 = 56;
  }

  v18 = 64;
  if (v8 == 1)
  {
    v17 = 64;
    v18 = 72;
  }

  v19 = *(v9 + v18);
  v20 = *(v9 + v17);
  v21 = *(v9 + v15);
  v22 = *(v9 + v14);
  if ((*(v9 + v12) & 1) == 0 && *(v9 + v10) > v6 || (*(v9 + v13) & 1) == 0 && v6 > *(v9 + v11))
  {
    return 0;
  }

  if (v21)
  {

    if ((sub_1D6ED84E0(v22, v21, v16) & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
  }

  if (v19)
  {
    v24 = sub_1D6ED8654(v20, v19, v16);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t LayeredMediaLayerRenderer.offscreenRender(_:on:options:)(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v4 = a3[1];
  v31[2] = *a3;
  v32 = v4;
  v33 = *(a3 + 4);
  v5 = a2[7];
  v41[6] = a2[6];
  v42[0] = v5;
  *(v42 + 9) = *(a2 + 121);
  v6 = a2[3];
  v41[2] = a2[2];
  v41[3] = v6;
  v7 = a2[5];
  v41[4] = a2[4];
  v41[5] = v7;
  v8 = a2[1];
  v41[0] = *a2;
  v41[1] = v8;
  v9 = sub_1D692954C(v41);
  v10 = sub_1D5DA9098(v41);
  if (v9 == 1)
  {
    v11 = &qword_1EDF17320;
    v12 = &qword_1EDF17318;
    v13 = &qword_1EDF045A8;
    v14 = 0x1E69CE110;
  }

  else
  {
    v11 = &qword_1EC88E4A0;
    v12 = &qword_1EDF17328;
    v13 = &qword_1EDF04638;
    v14 = 0x1E69CE100;
  }

  sub_1D69295B8(v11, v12, v13, v14);
  v15 = *v10;
  [v15 setFrame_];

  v16 = a2[7];
  v30[6] = a2[6];
  v31[0] = v16;
  *(v31 + 9) = *(a2 + 121);
  v17 = a2[3];
  v30[2] = a2[2];
  v30[3] = v17;
  v18 = a2[5];
  v30[4] = a2[4];
  v30[5] = v18;
  v19 = a2[1];
  v30[0] = *a2;
  v30[1] = v19;
  v20 = sub_1D692954C(v30);
  v21 = sub_1D5DA9098(v30) + 16;
  v23 = *(v21 + 64);
  if (v20 == 1)
  {
    v24 = *(v21 + 96);
    v39 = *(v21 + 80);
    v40[0] = v24;
    *(v40 + 9) = *(v21 + 105);
    v38 = v23;
  }

  else
  {
    v27 = *(v21 + 80);
    v28 = *(v21 + 96);
    LOBYTE(v40[1]) = *(v21 + 112);
    v38 = v23;
    v39 = v27;
    v40[0] = v28;
  }

  v25 = *(v21 + 16);
  v34 = *v21;
  v35 = v25;
  v26 = *(v21 + 48);
  v36 = *(v21 + 32);
  v37 = v26;
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1D5C3978C(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8);
  swift_allocObject();
  return sub_1D725BBAC();
}

void *LayeredMediaLayerRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  return v0;
}

uint64_t LayeredMediaLayerRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return swift_deallocClassInstance();
}

double sub_1D6927814(void (*a1)(id), uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t *a6, __int128 *a7, void *a8, uint64_t a9)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *a6;
  v17 = a7[1];
  v44 = *a7;
  v45 = v17;
  v46 = *(a7 + 4);

  v18 = sub_1D6927C8C(v16, &v44);
  if (v18)
  {
    v19 = v18;
    v37 = a1;
    v39 = a6;
    [a8 setContentsGravity_];
    v40 = a7;
    [a8 setContentsScale_];
    __swift_project_boxed_opaque_existential_1(a5 + 17, a5[20]);
    v20 = a8;
    v21 = type metadata accessor for LayeredMediaLayerProcessorRequest();
    *(&v45 + 1) = v21;
    v22 = sub_1D6929EBC(&qword_1EDF07D18, type metadata accessor for LayeredMediaLayerProcessorRequest, &protocol conformance descriptor for LayeredMediaLayerProcessorRequest);
    v46 = v22;
    *&v44 = v19;

    v23 = sub_1D725D0BC();
    __swift_destroy_boxed_opaque_existential_1(&v44);
    if (v23)
    {

      v37([v20 setImage_]);
    }

    else
    {
      v29 = v20;
      v30 = qword_1EDF044F8;

      if (v30 != -1)
      {
        swift_once();
      }

      v38 = qword_1EDFFC530;
      v31 = swift_allocObject();
      v31[2] = v29;
      v31[3] = sub_1D5DF743C;
      v31[4] = v15;
      v31[5] = a3;
      v31[6] = a4;
      *(&v45 + 1) = v21;
      v46 = v22;
      *&v44 = v19;

      v32 = v29;

      v33 = sub_1D726203C();

      [v32 setIdentifier_];

      __swift_project_boxed_opaque_existential_1(a5 + 17, a5[20]);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D5B68374(&v44, v43);
      v35 = swift_allocObject();
      v35[2] = v38;
      v35[3] = v34;
      sub_1D5B63F14(v43, (v35 + 4));
      v35[9] = sub_1D6929674;
      v35[10] = v31;
      v36 = v38;

      sub_1D725D0AC();

      __swift_destroy_boxed_opaque_existential_1(&v44);
    }

    sub_1D692992C(v39[11], v39[12] & 1, v39[13], *(v39 + 112), v40, a9);
  }

  else
  {

    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDFFC608;
    v25 = sub_1D7262EBC();
    sub_1D725C30C("Failed to find image variant for image layer", 44, 2, &dword_1D5B42000, v24, v25, MEMORY[0x1E69E7CC0]);
    sub_1D6929620();
    v26 = swift_allocError();
    *v27 = 1;
    a3();
  }

  return result;
}

uint64_t sub_1D6927C8C(uint64_t a1, double *a2)
{
  sub_1D5B54974(0, qword_1EDF0CBF8, type metadata accessor for LayeredMediaImageVariant, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for LayeredMediaImageVariant(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v15 = *a2;
  v22 = *(a2 + 2);
  v23[1] = v22;
  v23[0] = v15;
  v24 = v14;
  sub_1D69AB634(a1, v23, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D6929DEC(v8, qword_1EDF0CBF8, type metadata accessor for LayeredMediaImageVariant);
    return 0;
  }

  else
  {
    sub_1D610D154(v8, v13, v16);
    v18 = *v13;
    type metadata accessor for LayeredMediaLayerProcessorRequest();
    v19 = swift_allocObject();
    v20 = v18;
    v21 = sub_1D6929688(v20, v19, v22.n128_f64[0], v22.n128_f64[1], v14);
    sub_1D6929E5C(v13, type metadata accessor for LayeredMediaImageVariant);
    return v21;
  }
}

void sub_1D6927EAC(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  v8 = [a2 setImage_];
  if (a1)
  {
    a3(v8);
  }

  else
  {
    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDFFC608;
    v10 = sub_1D7262EBC();
    sub_1D725C30C("Failed to load image for layer", 30, 2, &dword_1D5B42000, v9, v10, MEMORY[0x1E69E7CC0]);
    sub_1D6929620();
    v11 = swift_allocError();
    *v12 = 2;
    a5();
  }
}

void sub_1D6927FD4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t *a6, double *a7, void *a8, uint64_t a9)
{
  v99 = a5;
  v92 = a9;
  sub_1D5B54974(0, qword_1EDF0CBF8, type metadata accessor for LayeredMediaImageVariant, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v90 - v18;
  v97 = type metadata accessor for LayeredMediaImageVariant(0);
  isa = v97[-1].isa;
  MEMORY[0x1EEE9AC00](v97, v20);
  v98 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v100 = a6;
  v23 = *a6;

  sub_1D6E460C8(v23, a7, &v105);
  v24 = v105;
  if (v105)
  {
    v93 = v22;
    v94 = a4;
    v25 = dispatch_group_create();
    dispatch_group_enter(v25);
    v26 = [v24 filePath];
    v95 = a3;
    if (v26)
    {
      v28 = v26;
      v29 = sub_1D726207C();
      v31 = v30;

      *&v102 = v29;
      *(&v102 + 1) = v31;
      sub_1D5C3978C(0, qword_1EDF179A0, MEMORY[0x1E69E6158]);
      swift_allocObject();
      sub_1D725BB1C();
    }

    else
    {
      MEMORY[0x1EEE9AC00](0, v27);
      *(&v90 - 2) = v24;
      sub_1D5C3978C(v36, qword_1EDF179A0, MEMORY[0x1E69E6158]);
      swift_allocObject();
      sub_1D725BBAC();
    }

    v37 = a7;
    v108[0] = v107;
    v38 = swift_allocObject();
    *(v38 + 16) = v24;
    *(v38 + 24) = v106;
    *(v38 + 40) = v107;
    *(v38 + 56) = a8;
    *(v38 + 64) = v25;
    v39 = v24;
    sub_1D5E422A8(v108, &v102);
    v40 = a8;
    v41 = v25;
    v42 = sub_1D725B92C();
    sub_1D725BA8C();

    *(swift_allocObject() + 16) = v41;
    v43 = v41;
    v44 = sub_1D725B92C();
    sub_1D725BACC();

    v45 = v99;
    __swift_project_boxed_opaque_existential_1(v99 + 7, v99[10]);
    v46 = v100[1];
    v47 = v37[1];
    v102 = *v37;
    v103 = v47;
    v104 = *(v37 + 4);
    sub_1D69AB634(v46, &v102, v19);
    v48 = isa;
    if ((*(isa + 6))(v19, 1, v97) == 1)
    {

      sub_1D6929DEC(v19, qword_1EDF0CBF8, type metadata accessor for LayeredMediaImageVariant);
      v50 = v95;
      if (qword_1EDF11618 != -1)
      {
        swift_once();
      }

      v51 = qword_1EDFFC608;
      v52 = sub_1D7262EBC();
      sub_1D725C30C("Failed to find still image variant for video layer", 50, 2, &dword_1D5B42000, v51, v52, MEMORY[0x1E69E7CC0]);
      sub_1D6929620();
      v53 = swift_allocError();
      *v54 = 1;
      v50();

      sub_1D5BFB68C(v108);
    }

    else
    {
      v55 = v98;
      sub_1D610D154(v19, v98, v49);
      sub_1D5B54974(0, &qword_1EDF01F98, type metadata accessor for LayeredMediaImageVariant, MEMORY[0x1E69E6F90]);
      v56 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7273AE0;
      sub_1D69298C0(v55, v57 + v56, xmmword_1D7273AE0);
      v58 = v37[1];
      v102 = *v37;
      v103 = v58;
      v104 = *(v37 + 4);
      v59 = sub_1D6927C8C(v57, &v102);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v60 = v95;
      if (v59)
      {
        v97 = v43;
        isa = v39;
        v61 = v45;
        v62 = [v40 stillImageLayer];
        [v62 setContentsGravity_];

        v63 = [v40 stillImageLayer];
        [v63 setContentsScale_];

        [v40 setVideoGravity_];
        __swift_project_boxed_opaque_existential_1(v61 + 17, v61[20]);
        v64 = type metadata accessor for LayeredMediaLayerProcessorRequest();
        *(&v103 + 1) = v64;
        v65 = sub_1D6929EBC(&qword_1EDF07D18, type metadata accessor for LayeredMediaLayerProcessorRequest, &protocol conformance descriptor for LayeredMediaLayerProcessorRequest);
        v104 = v65;
        *&v102 = v59;

        v66 = sub_1D725D0BC();
        __swift_destroy_boxed_opaque_existential_1(&v102);
        if (v66)
        {
          v67 = [v40 stillImageLayer];
          [v67 setImage_];
        }

        else
        {
          v72 = v97;
          dispatch_group_enter(v97);
          v91 = [v40 stillImageLayer];
          v73 = qword_1EDF044F8;

          if (v73 != -1)
          {
            swift_once();
          }

          v74 = qword_1EDFFC530;
          v75 = swift_allocObject();
          *(v75 + 16) = v40;
          *(v75 + 24) = v72;
          *(&v103 + 1) = v64;
          v104 = v65;
          *&v102 = v59;
          v76 = v40;
          v77 = v72;

          v78 = sub_1D726203C();

          v79 = v91;
          [v91 setIdentifier_];

          v80 = v99[20];
          v90 = v99[21];
          __swift_project_boxed_opaque_existential_1(v99 + 17, v80);
          v81 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1D5B68374(&v102, v101);
          v82 = swift_allocObject();
          v82[2] = v74;
          v82[3] = v81;
          sub_1D5B63F14(v101, (v82 + 4));
          v82[9] = sub_1D6929924;
          v82[10] = v75;
          v83 = v74;

          sub_1D725D0AC();

          __swift_destroy_boxed_opaque_existential_1(&v102);
          v60 = v95;
        }

        sub_1D692992C(v100[12], v100[13] & 1, v100[14], *(v100 + 120), v37, v92);
        v84 = v94;
        v85 = v93;
        v86 = isa;
        if (qword_1EDF044F8 != -1)
        {
          swift_once();
        }

        v87 = swift_allocObject();
        v87[2] = v40;
        v87[3] = sub_1D6929F6C;
        v87[4] = v85;
        v87[5] = v60;
        v87[6] = v84;
        v88 = v40;

        v89 = v97;
        sub_1D726300C();

        sub_1D5BFB68C(v108);

        sub_1D6929E5C(v98, type metadata accessor for LayeredMediaImageVariant);
      }

      else
      {

        if (qword_1EDF11618 != -1)
        {
          swift_once();
        }

        v68 = qword_1EDFFC608;
        v69 = sub_1D7262EBC();
        sub_1D725C30C("Failed to find still image variant for video layer", 50, 2, &dword_1D5B42000, v68, v69, MEMORY[0x1E69E7CC0]);
        sub_1D6929620();
        v70 = swift_allocError();
        *v71 = 1;
        v60();

        sub_1D5BFB68C(v108);
        sub_1D6929E5C(v98, type metadata accessor for LayeredMediaImageVariant);
      }
    }
  }

  else
  {

    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    v32 = qword_1EDFFC608;
    v33 = sub_1D7262EBC();
    sub_1D725C30C("Failed to find video variant for video layer", 44, 2, &dword_1D5B42000, v32, v33, MEMORY[0x1E69E7CC0]);
    sub_1D6929620();
    v34 = swift_allocError();
    *v35 = 1;
    a3();
  }
}

uint64_t sub_1D6928BE4(void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v5 = v4;
  v71 = a4;
  v72 = a3;
  v75[1] = *MEMORY[0x1E69E9840];
  sub_1D5BB60D4(0);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54974(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v73 = &v65 - v19;
  v20 = sub_1D72585BC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v66 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v65 - v30;
  sub_1D72583FC();
  sub_1D72584AC();
  v32 = [objc_opt_self() defaultManager];
  v70 = v31;
  v33 = sub_1D725844C();
  v74 = v27;
  v34 = sub_1D725844C();
  v75[0] = 0;
  LODWORD(v27) = [v32 linkItemAtURL:v33 toURL:v34 error:v75];

  if (v27)
  {
    v35 = v75[0];
  }

  else
  {
    v36 = v75[0];
    v37 = sub_1D725829C();

    swift_willThrow();
    v5 = 0;
  }

  v38 = [v72 player];
  v39 = v73;
  v68 = v5;
  if (v38)
  {
    v40 = v38;
    v41 = [v38 currentItem];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 asset];

      if (v43)
      {
        objc_opt_self();
        v44 = swift_dynamicCastObjCClass();
        if (v44)
        {
          v45 = [v44 URL];

          v39 = v73;
          sub_1D72584EC();
          v46 = 0;
        }

        else
        {
          v46 = 1;
          v45 = v40;
          v40 = v43;
          v39 = v73;
        }
      }

      else
      {
        v46 = 1;
        v39 = v73;
      }
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 1;
  }

  v47 = *(v21 + 56);
  v47(v39, v46, 1, v20);
  (*(v21 + 16))(v16, v74, v20);
  v47(v16, 0, 1, v20);
  v48 = *(v69 + 48);
  sub_1D5EB84C0(v39, v9);
  sub_1D5EB84C0(v16, &v9[v48]);
  v49 = *(v21 + 48);
  if (v49(v9, 1, v20) != 1)
  {
    v54 = v67;
    sub_1D5EB84C0(v9, v67);
    if (v49(&v9[v48], 1, v20) != 1)
    {
      v61 = v66;
      (*(v21 + 32))(v66, &v9[v48], v20);
      sub_1D6929EBC(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v62 = sub_1D7261FBC();
      v63 = *(v21 + 8);
      v63(v61, v20);
      v64 = MEMORY[0x1E6968FB0];
      sub_1D6929DEC(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D6929DEC(v73, &qword_1EDF45B40, v64);
      v63(v67, v20);
      sub_1D6929DEC(v9, &qword_1EDF45B40, v64);
      v53 = v74;
      if (v62)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v55 = MEMORY[0x1E6968FB0];
    sub_1D6929DEC(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D6929DEC(v73, &qword_1EDF45B40, v55);
    (*(v21 + 8))(v54, v20);
LABEL_20:
    sub_1D6929E5C(v9, sub_1D5BB60D4);
    v53 = v74;
LABEL_21:
    v56 = objc_allocWithZone(MEMORY[0x1E6988098]);
    v57 = sub_1D725844C();
    v58 = [v56 initWithURL_];

    [v58 setPreventsDisplaySleepDuringVideoPlayback_];
    [v58 setMuted_];
    [v72 setPlayer_];

    goto LABEL_22;
  }

  v50 = v16;
  v51 = v39;
  v52 = MEMORY[0x1E6968FB0];
  sub_1D6929DEC(v50, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D6929DEC(v51, &qword_1EDF45B40, v52);
  if (v49(&v9[v48], 1, v20) != 1)
  {
    goto LABEL_20;
  }

  sub_1D6929DEC(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v53 = v74;
LABEL_22:
  dispatch_group_leave(v71);
  v59 = *(v21 + 8);
  v59(v53, v20);
  return (v59)(v70, v20);
}

void sub_1D6929364(uint64_t a1, id a2, NSObject *a3)
{
  v5 = [a2 stillImageLayer];
  [v5 setImage_];

  dispatch_group_leave(a3);
}

void sub_1D69293D8(void *a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = [a1 stillImageLayer];
  v8 = [v7 image];

  if (v8 && (v8, (v9 = [a1 player]) != 0))
  {

    a2();
  }

  else
  {
    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDFFC608;
    v11 = sub_1D7262EBC();
    sub_1D725C30C("Failed to load video layer", 26, 2, &dword_1D5B42000, v10, v11, MEMORY[0x1E69E7CC0]);
    sub_1D6929620();
    v12 = swift_allocError();
    *v13 = 3;
    a4();
  }
}

uint64_t sub_1D69295B8(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5ED98AC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6929620()
{
  result = qword_1EC88E4A8;
  if (!qword_1EC88E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4A8);
  }

  return result;
}

uint64_t sub_1D6929688(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v18[3] = sub_1D5B5A498(0, &qword_1EDF1AB50, 0x1E69B51B8);
  v18[4] = sub_1D5EECFF8();
  v18[0] = a1;
  sub_1D5B68374(v18, a2 + 64);
  sub_1D5B54974(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x616D497265766F63;
  *(inited + 40) = 0xEF726579614C6567;
  sub_1D5B68374(v18, inited + 48);
  v11 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D6929E5C(inited + 32, sub_1D5C16B18);
  *(a2 + 56) = v11;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  *(a2 + 48) = a5;
  v12 = [a1 uniqueKey];
  v13 = sub_1D726207C();
  v15 = v14;

  MEMORY[0x1DA6F9910](v13, v15);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v16 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v16);

  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v18);
  return a2;
}

uint64_t sub_1D69298C0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for LayeredMediaImageVariant(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D692992C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v11 = sub_1D725E5FC();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v52 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1D725D4FC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v52 - v21);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v52 - v25);
  v27 = *(a5 + 16);
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      v28 = *&a3 / 100.0 + 1.0;
      v29 = swift_allocBox();
      v31 = v30;
      v32 = sub_1D725D50C();
      v33 = swift_allocBox();
      *v34 = 0u;
      *(v34 + 16) = 0u;
      *(v34 + 32) = v28;
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69D7918], v32);
      *v31 = v33;
      v35 = *(v15 + 104);
      v35(v31, *MEMORY[0x1E69D78E8], v14);
      *v18 = v29;
      v35(v18, *MEMORY[0x1E69D78E0], v14);
      sub_1D725CB9C();
      v37 = v52;
      v36 = v53;
      *v52 = v28;
      (*(v36 + 104))(v37, *MEMORY[0x1E69D7F28], v54);
      sub_1D725CBAC();
    }

    return sub_1D725CB7C();
  }

  v38 = *(a5 + 24);
  v39 = fabs(*&a1) / 100.0;
  if (a4)
  {
    v40 = v39;
  }

  else
  {
    v40 = *&a3 / 100.0 + *&a3 / 100.0;
  }

  v41 = v39 * v27;
  v42 = sub_1D725D50C();
  result = swift_allocBox();
  if (v39 * v27 >= 0.0)
  {
    v45 = v39 * v38;
    if (v39 * v38 >= 0.0)
    {
      v46 = result;
      *v44 = -v41;
      v44[1] = v41;
      v44[2] = -v45;
      v44[3] = v45;
      v44[4] = v40 + 1.0;
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69D7918], v42);
      *v22 = v46;
      v47 = *(v15 + 104);
      v47(v22, *MEMORY[0x1E69D78E8], v14);
      if (*&a1 >= 0.0)
      {
        v48 = swift_allocBox();
        (*(v15 + 32))(v49, v22, v14);
        *v26 = v48;
        v47(v26, *MEMORY[0x1E69D78E0], v14);
      }

      else
      {
        (*(v15 + 32))(v26, v22, v14);
      }

      (*(v15 + 16))(v18, v26, v14);
      sub_1D725CB9C();
      v51 = v52;
      v50 = v53;
      *v52 = v40 + 1.0;
      (*(v50 + 104))(v51, *MEMORY[0x1E69D7F28], v54);
      sub_1D725CBAC();
      (*(v15 + 8))(v26, v14);
      return sub_1D725CB7C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6929DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B54974(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6929E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6929EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6929F18()
{
  result = qword_1EC88E4B0;
  if (!qword_1EC88E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4B0);
  }

  return result;
}

uint64_t sub_1D6929F84(uint64_t a1, uint64_t a2)
{
  v2[92] = a2;
  v2[91] = a1;
  v3 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v2[93] = v3;
  v2[94] = *(v3 - 8);
  v2[95] = swift_task_alloc();
  type metadata accessor for GroupLayoutBindingContext(0);
  v2[96] = swift_task_alloc();
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v2[97] = v4;
  v2[98] = *(v4 - 8);
  v2[99] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D692A0D0, 0, 0);
}

uint64_t sub_1D692A0D0()
{
  v166 = v0;
  v2 = *(v0 + 728);
  *(v0 + 696) = MEMORY[0x1E69E7CC0];
  type metadata accessor for DebugGroupLayoutKey(0);
  v3 = sub_1D62EF50C();
  sub_1D69856DC(v3);
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext);
  *(v0 + 800) = v4;
  v5 = [v4 subscriptionController];
  if (!v5)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA10](v5, v6, v7, v8, v9);
  }

  v10 = v5;
  v11 = v0 + 232;
  v12 = (v0 + 448);
  v13 = [v5 orderedCachedSubscribedTags];

  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    sub_1D5B65AF4();
    v14 = sub_1D726267C();
  }

  sub_1D69856DC(v14);

  sub_1D725B31C();

  v16 = *(v0 + 608);
  v15 = *(v0 + 624);
  v17 = *(v0 + 592);
  *(v0 + 392) = v16;
  *(v0 + 408) = v15;
  v18 = *(v0 + 624);
  *(v0 + 424) = *(v0 + 640);
  v20 = *(v0 + 544);
  v19 = *(v0 + 560);
  v21 = *(v0 + 528);
  *(v0 + 328) = v20;
  *(v0 + 344) = v19;
  v22 = *(v0 + 560);
  v24 = *(v0 + 576);
  v23 = *(v0 + 592);
  *(v0 + 360) = v24;
  *(v0 + 376) = v23;
  v26 = *(v0 + 480);
  v25 = *(v0 + 496);
  v27 = *(v0 + 464);
  *(v0 + 264) = v26;
  *(v0 + 280) = v25;
  v28 = *(v0 + 496);
  v30 = *(v0 + 512);
  v29 = *(v0 + 528);
  *(v0 + 296) = v30;
  *(v0 + 312) = v29;
  v31 = *(v0 + 464);
  v32 = *v12;
  *v11 = *v12;
  *(v0 + 248) = v31;
  *(v0 + 176) = v16;
  *(v0 + 192) = v18;
  *(v0 + 208) = *(v0 + 640);
  *(v0 + 112) = v20;
  *(v0 + 128) = v22;
  *(v0 + 144) = v24;
  *(v0 + 160) = v17;
  *(v0 + 48) = v26;
  *(v0 + 64) = v28;
  *(v0 + 80) = v30;
  *(v0 + 96) = v21;
  *(v0 + 440) = *(v0 + 656);
  *(v0 + 224) = *(v0 + 656);
  *(v0 + 16) = v32;
  *(v0 + 32) = v27;
  if (sub_1D5DEA380(v0 + 16) != 1)
  {
    v33 = *(v0 + 224);
    v34 = *(v33 + 16);
    if (v34)
    {
      v159 = *(v0 + 224);
      v35 = *(v0 + 792);
      v36 = *(v0 + 784);
      v1 = *(*(v0 + 776) + 20);
      v14 = v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v37 = *(v36 + 72);

      do
      {
        v38 = *(v0 + 792);
        v11 = *(v0 + 768);
        sub_1D692FD34(v14, v38, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v39 = *(v35 + v1);

        sub_1D692FCD4(v38, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D692FD34(v39 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v11, type metadata accessor for GroupLayoutBindingContext);

        v40 = sub_1D62EF50C();
        sub_1D692FCD4(v11, type metadata accessor for GroupLayoutBindingContext);
        sub_1D69856DC(v40);
        v14 += v37;
        --v34;
      }

      while (v34);
      sub_1D5F0B7F0(v0 + 232);
    }

    else
    {
      sub_1D5F0B7F0(v0 + 232);
    }
  }

  v41 = *(v0 + 736);
  v42 = *(v41 + *(type metadata accessor for DebugFormatWorkspace(0) + 36));
  *(v0 + 808) = v42;
  v43 = *(v42 + 16);
  *(v0 + 816) = v43;
  v44 = *(v0 + 696);
  if (v43)
  {
    v45 = *(v0 + 760);
    v46 = *(v0 + 752);
    v47 = *(*(v0 + 744) + 24);
    *(v0 + 864) = v47;
    v48 = *(v46 + 80);
    *(v0 + 868) = v48;
    *(v0 + 832) = v44;
    *(v0 + 824) = 0;
    if (*(v42 + 16))
    {
      sub_1D692FD34(v42 + ((v48 + 32) & ~v48), v45, type metadata accessor for DebugFormatWorkspaceGroup);

      sub_1D692FCD4(v45, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();

      v49 = *(v0 + 704);
      *(v0 + 840) = v49;
      v50 = swift_task_alloc();
      *(v0 + 848) = v50;
      v51 = type metadata accessor for DebugFormatBindingResult(0);
      v8 = sub_1D5BA6EF4();
      *v50 = v0;
      v50[1] = sub_1D692BDD0;
      v9 = MEMORY[0x1E69E7288];
      v5 = (v0 + 712);
      v6 = v49;
      v7 = v51;

      return MEMORY[0x1EEE6DA10](v5, v6, v7, v8, v9);
    }

LABEL_183:
    __break(1u);
  }

  else
  {
    *(v0 + 720) = v44;
    sub_1D5C44878(0);
    sub_1D5C44F84(&qword_1EDF1AEA0, MEMORY[0x1E69E6328]);

    sub_1D72623CC();
    swift_bridgeObjectRelease_n();
    sub_1D5B65AF4();
    v44 = sub_1D72626EC();

    v52 = MEMORY[0x1E69E6F90];
    sub_1D5B66EA4(0, &unk_1EC88E4C0, &type metadata for DebugFormatWorkspaceFeedSection, MEMORY[0x1E69E6F90]);
    v159 = swift_allocObject();
    sub_1D5B66EA4(0, &qword_1EC88F2C0, &type metadata for DebugFormatWorkspaceFeedItem, v52);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D727C500;
    v53 = objc_opt_self();

    v54 = sub_1D726203C();
    v55 = [v53 ts:v54 internalSystemImageNamed:?];

    if (v55)
    {
      v14 = 0x1EC87D000uLL;
      if (qword_1EC87DA40 != -1)
      {
        swift_once();
      }

      v56 = [v55 imageWithConfiguration_];
    }

    else
    {
      v14 = 0x1EC87D000uLL;
      v56 = 0;
    }

    *(v45 + 32) = 24;
    *(v45 + 40) = 0x7961646F54;
    *(v45 + 48) = 0xE500000000000000;
    v156 = xmmword_1D7306700;
    *(v45 + 56) = xmmword_1D7306700;
    *(v45 + 72) = 0xE500000000000000;
    *(v45 + 80) = 0;
    *(v45 + 88) = 0;
    *(v45 + 96) = v56;
    *(v45 + 104) = v55 == 0;
    v57 = sub_1D726203C();
    v58 = [v53 ts:v57 internalSystemImageNamed:?];

    v157 = v0;
    if (v58)
    {
      if (qword_1EC87DA40 != -1)
      {
        swift_once();
      }

      v59 = [v58 imageWithConfiguration_];
    }

    else
    {
      v59 = 0;
    }

    *(v45 + 112) = 10;
    *(v45 + 120) = 0x2B7377654ELL;
    *(v45 + 128) = 0xE500000000000000;
    *(v45 + 136) = xmmword_1D7306710;
    *(v45 + 152) = 0xE500000000000000;
    *(v45 + 160) = 0;
    *(v45 + 168) = 0;
    *(v45 + 176) = v59;
    *(v45 + 184) = v58 == 0;
    type metadata accessor for FormatWorkspaceFeedDescriptor();
    v60 = swift_allocObject();
    *(v60 + 16) = 0xD000000000000017;
    *(v60 + 24) = 0x80000001D73DC3E0;
    *(v60 + 32) = 0x7374726F7053;
    *(v60 + 40) = 0xE600000000000000;
    *(v60 + 48) = 0;
    *(v60 + 56) = 3;
    *(v60 + 64) = 0;
    v61 = sub_1D726203C();
    v158 = v53;
    v62 = [v53 systemImageNamed_];

    if (v62)
    {
      v47 = &unk_1EC9BA000;
      if (qword_1EC87DA40 != -1)
      {
        swift_once();
      }

      v63 = [v62 imageWithConfiguration_];
    }

    else
    {
      v63 = 0;
      v47 = &unk_1EC9BA000;
    }

    *(v45 + 192) = 11;
    *(v45 + 200) = 0x7374726F7053;
    *(v45 + 208) = 0xE600000000000000;
    *(v45 + 216) = v60;
    *(v45 + 224) = 0x7374726F7053;
    *(v45 + 232) = 0xE600000000000000;
    *(v45 + 240) = 0;
    *(v45 + 248) = 0;
    *(v45 + 256) = v63;
    *(v45 + 264) = v62 == 0;
    v64 = sub_1D726203C();
    v65 = [v158 systemImageNamed_];

    if (v65)
    {
      if (qword_1EC87DA40 != -1)
      {
        swift_once();
      }

      v66 = [v65 imageWithConfiguration_];
    }

    else
    {
      v66 = 0;
    }

    *(v45 + 272) = 1;
    v11 = 1685024582;
    *(v45 + 280) = 0x6F69647541;
    *(v45 + 288) = 0xE500000000000000;
    *(v45 + 296) = 0;
    *(v45 + 304) = 0x6F69647541;
    *(v45 + 312) = 0xE500000000000000;
    *(v45 + 320) = 0;
    *(v45 + 328) = 0;
    *(v45 + 336) = v66;
    *(v45 + 344) = v65 == 0;
    v1 = swift_allocObject();
    *(v1 + 16) = 0xD000000000000017;
    *(v1 + 24) = 0x80000001D73DC400;
    *(v1 + 32) = 1685024582;
    *(v1 + 40) = 0xE400000000000000;
    *(v1 + 48) = 0;
    *(v1 + 56) = 12;
    *(v1 + 64) = 0;
    if (qword_1EDF05B68 == -1)
    {
      goto LABEL_36;
    }
  }

  swift_once();
LABEL_36:
  v67 = qword_1EDF05B70;
  if (*(v14 + 2624) != -1)
  {
    v155 = qword_1EDF05B70;
    swift_once();
    v67 = v155;
  }

  v68 = *(v47 + 2952);
  v69 = [v67 imageWithConfiguration_];
  LOBYTE(v160) = 0;
  *(v45 + 352) = 6;
  *(v45 + 360) = v11;
  *(v45 + 368) = 0xE400000000000000;
  *(v45 + 376) = v1;
  *(v45 + 384) = v11;
  *(v45 + 392) = 0xE400000000000000;
  *(v45 + 400) = 0;
  *(v45 + 408) = 0;
  *(v45 + 416) = v69;
  *(v45 + 424) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = 0xD000000000000017;
  *(v70 + 24) = 0x80000001D73DC420;
  *(v70 + 32) = 0x73657069636552;
  *(v70 + 40) = 0xE700000000000000;
  *(v70 + 48) = 0;
  *(v70 + 56) = 13;
  *(v70 + 64) = 0;
  if (qword_1EDF05C38 != -1)
  {
    swift_once();
  }

  v71 = [qword_1EDF05C40 &selRef:v68 bezierPathWithRect:? + 7];
  LOBYTE(v160) = 0;
  *(v45 + 432) = 16;
  *(v45 + 440) = 0x73657069636552;
  *(v45 + 448) = 0xE700000000000000;
  *(v45 + 456) = v70;
  *(v45 + 464) = 0x73657069636552;
  *(v45 + 472) = 0xE700000000000000;
  *(v45 + 480) = 0;
  *(v45 + 488) = 0;
  *(v45 + 496) = v71;
  *(v45 + 504) = 0;
  v72 = swift_allocObject();
  *(v72 + 16) = 0xD000000000000017;
  *(v72 + 24) = 0x80000001D73DC440;
  *(v72 + 32) = 0x73656C7A7A7550;
  *(v72 + 40) = 0xE700000000000000;
  *(v72 + 48) = 0;
  *(v72 + 56) = 9;
  *(v72 + 64) = 0;
  v73 = sub_1D726203C();
  v74 = [v158 systemImageNamed_];

  if (v74)
  {
    v75 = [v74 imageWithConfiguration_];
  }

  else
  {
    v75 = 0;
  }

  v76 = v159;
  *(v45 + 512) = 12;
  *(v45 + 520) = 0x73656C7A7A7550;
  *(v45 + 528) = 0xE700000000000000;
  *(v45 + 536) = v72;
  *(v45 + 544) = 0x73656C7A7A7550;
  *(v45 + 552) = 0xE700000000000000;
  *(v45 + 560) = 0u;
  *(v45 + 576) = v75;
  *(v45 + 584) = v74 == 0;
  v77 = sub_1D726203C();
  v78 = [v158 ts:v77 internalSystemImageNamed:?];

  if (v78)
  {
    v79 = [v78 imageWithConfiguration_];
  }

  else
  {
    v79 = 0;
  }

  *(v45 + 592) = 23;
  *(v45 + 600) = 0x7720646572616853;
  *(v45 + 608) = 0xEF756F5920687469;
  *(v45 + 616) = 0;
  *(v45 + 624) = 0x7720646572616853;
  *(v45 + 632) = 0xEF756F5920687469;
  *(v45 + 640) = 0;
  *(v45 + 648) = 0;
  *(v45 + 656) = v79;
  *(v45 + 664) = v78 == 0;
  v80 = sub_1D726203C();
  v81 = [v158 systemImageNamed_];

  if (v81)
  {
    v82 = [v81 &selRef:v68 bezierPathWithRect:? + 7];
  }

  else
  {
    v82 = 0;
  }

  *(v45 + 672) = 17;
  strcpy((v45 + 680), "Saved Stories");
  *(v45 + 694) = -4864;
  *(v45 + 696) = 0;
  strcpy((v45 + 704), "Saved Stories");
  *(v45 + 718) = -4864;
  *(v45 + 720) = 0;
  *(v45 + 728) = 0;
  *(v45 + 736) = v82;
  *(v45 + 744) = v81 == 0;
  if (qword_1EDF05CB8 != -1)
  {
    swift_once();
  }

  v83 = [qword_1EDF05CC0 &selRef:v68 bezierPathWithRect:? + 7];
  LOBYTE(v160) = 0;
  *(v45 + 752) = 15;
  strcpy((v45 + 760), "Saved Recipes");
  *(v45 + 774) = -4864;
  *(v45 + 776) = 0;
  strcpy((v45 + 784), "Saved Recipes");
  *(v45 + 798) = -4864;
  *(v45 + 800) = 0;
  *(v45 + 808) = 0;
  *(v45 + 816) = v83;
  *(v45 + 824) = 0;
  v84 = sub_1D726203C();
  v85 = [v158 systemImageNamed_];

  if (v85)
  {
    v86 = [v85 &selRef:v68 bezierPathWithRect:? + 7];
  }

  else
  {
    v86 = 0;
  }

  *(v45 + 832) = 7;
  *(v45 + 840) = 0x79726F74736948;
  *(v45 + 848) = 0xE700000000000000;
  *(v45 + 856) = 0;
  *(v45 + 864) = 0x79726F74736948;
  *(v45 + 872) = 0xE700000000000000;
  *(v45 + 880) = 0;
  *(v45 + 888) = 0;
  *(v45 + 896) = v86;
  *(v45 + 904) = v85 == 0;
  v87 = sub_1D726203C();
  v88 = [v158 systemImageNamed_];

  if (v88)
  {
    v89 = [v88 &selRef:v68 bezierPathWithRect:? + 7];
  }

  else
  {
    v89 = 0;
  }

  *(v45 + 912) = 18;
  *(v45 + 920) = 0x686372616553;
  *(v45 + 928) = 0xE600000000000000;
  *(v45 + 936) = 0;
  *(v45 + 944) = 0x686372616553;
  *(v45 + 952) = 0xE600000000000000;
  *(v45 + 960) = 0;
  *(v45 + 968) = 0;
  *(v45 + 976) = v89;
  *(v45 + 984) = v88 == 0;
  v90 = sub_1D726203C();
  v91 = [v158 systemImageNamed_];

  if (v91)
  {
    v92 = [v91 &selRef:v68 bezierPathWithRect:? + 7];
  }

  else
  {
    v92 = 0;
  }

  *(v45 + 992) = 19;
  *(v45 + 1000) = 0x4D20686372616553;
  *(v45 + 1008) = 0xEB0000000065726FLL;
  *(v45 + 1016) = 0;
  *(v45 + 1024) = 0x4D20686372616553;
  *(v45 + 1032) = 0xEB0000000065726FLL;
  *(v45 + 1040) = 0;
  *(v45 + 1048) = 0;
  *(v45 + 1056) = v92;
  *(v45 + 1064) = v91 == 0;
  v159[4] = 1937204558;
  v159[5] = 0xE400000000000000;
  v159[6] = v45;
  if (v44 >> 62)
  {
    v1 = sub_1D7263BFC();
  }

  else
  {
    v1 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = 0;
    v94 = v44 & 0xC000000000000001;
    v45 = MEMORY[0x1E69E7CC0];
    v14 = 80;
    while (2)
    {
      v47 = v11;
      while (1)
      {
        if (v94)
        {
          v95 = MEMORY[0x1DA6FB460](v47, v44);
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_173;
          }
        }

        else
        {
          if (v47 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_174;
          }

          v95 = *(v44 + 8 * v47 + 32);
          swift_unknownObjectRetain();
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }
        }

        if ([v95 isSports])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v47;
        if (v11 == v1)
        {
          goto LABEL_79;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v157 + 800) tag:v95 feedConfiguration:0], &v160);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1D6995068(0, *(v45 + 16) + 1, 1, v45);
      }

      v97 = *(v45 + 16);
      v96 = *(v45 + 24);
      if (v97 >= v96 >> 1)
      {
        v45 = sub_1D6995068((v96 > 1), v97 + 1, 1, v45);
      }

      *(v45 + 16) = v97 + 1;
      v98 = (v45 + 80 * v97);
      v98[2] = v160;
      v99 = v161;
      v100 = v162;
      v101 = v163[0];
      *(v98 + 89) = *(v163 + 9);
      v98[4] = v100;
      v98[5] = v101;
      v98[3] = v99;
      v76 = v159;
      if (v11 != v1)
      {
        continue;
      }

      break;
    }

LABEL_79:
    v76[7] = 0x7374726F7053;
    v76[8] = 0xE600000000000000;
    v76[9] = v45;
    v11 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v14 = 80;
    do
    {
      v47 = v11;
      while (1)
      {
        if (v94)
        {
          v102 = MEMORY[0x1DA6FB460](v47, v44);
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_175;
          }
        }

        else
        {
          if (v47 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_176;
          }

          v102 = *(v44 + 8 * v47 + 32);
          swift_unknownObjectRetain();
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_175;
          }
        }

        if ([v102 isPuzzleType])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v47;
        if (v11 == v1)
        {
          goto LABEL_99;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v157 + 800) tag:v102 feedConfiguration:10], &v160);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1D6995068(0, *(v45 + 16) + 1, 1, v45);
      }

      v104 = *(v45 + 16);
      v103 = *(v45 + 24);
      if (v104 >= v103 >> 1)
      {
        v45 = sub_1D6995068((v103 > 1), v104 + 1, 1, v45);
      }

      *(v45 + 16) = v104 + 1;
      v105 = (v45 + 80 * v104);
      v105[2] = v160;
      v106 = v161;
      v107 = v162;
      v108 = v163[0];
      *(v105 + 89) = *(v163 + 9);
      v105[4] = v107;
      v105[5] = v108;
      v105[3] = v106;
      v76 = v159;
    }

    while (v11 != v1);
LABEL_99:
    v76[10] = 0x73656C7A7A7550;
    v76[11] = 0xE700000000000000;
    v76[12] = v45;
    v11 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v14 = &off_1E84D3000;
    do
    {
      v47 = v11;
      while (1)
      {
        if (v94)
        {
          v115 = MEMORY[0x1DA6FB460](v47, v44);
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_177;
          }
        }

        else
        {
          if (v47 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_178;
          }

          v115 = *(v44 + 8 * v47 + 32);
          swift_unknownObjectRetain();
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_177;
          }
        }

        if ([v115 isLocal])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v47;
        if (v11 == v1)
        {
          goto LABEL_135;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v157 + 800) tag:v115 feedConfiguration:1], &v160);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1D6995068(0, *(v45 + 16) + 1, 1, v45);
      }

      v117 = *(v45 + 16);
      v116 = *(v45 + 24);
      if (v117 >= v116 >> 1)
      {
        v45 = sub_1D6995068((v116 > 1), v117 + 1, 1, v45);
      }

      *(v45 + 16) = v117 + 1;
      v118 = (v45 + 80 * v117);
      v118[2] = v160;
      v119 = v161;
      v120 = v162;
      v121 = v163[0];
      *(v118 + 89) = *(v163 + 9);
      v118[4] = v120;
      v118[5] = v121;
      v118[3] = v119;
      v76 = v159;
    }

    while (v11 != v1);
LABEL_135:
    v76[13] = 0x654E206C61636F4CLL;
    v76[14] = 0xEA00000000007377;
    v76[15] = v45;
    v136 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = v136;
      while (1)
      {
        if (v94)
        {
          v45 = MEMORY[0x1DA6FB460](v11, v44);
          v136 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v11 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_180;
          }

          v45 = *(v44 + 8 * v11 + 32);
          swift_unknownObjectRetain();
          v136 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_179;
          }
        }

        ObjectType = swift_getObjectType();
        if (FCTagProviding.isChannel.getter(ObjectType) && ![v45 isLocal] && (objc_msgSend(v45, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v45, sel_isMySports) & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v11;
        if (v136 == v1)
        {
          goto LABEL_154;
        }
      }

      v138 = *(v157 + 800);
      v139 = [objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:v138 tag:v45 feedConfiguration:{objc_msgSend(swift_unknownObjectRetain(), sel_isNewspaper)}];
      swift_unknownObjectRelease();

      sub_1D6C137E4(v139, &v160);
      swift_unknownObjectRelease();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_1D6995068(0, *(v47 + 16) + 1, 1, v47);
      }

      v142 = *(v47 + 16);
      v141 = *(v47 + 24);
      v45 = v142 + 1;
      if (v142 >= v141 >> 1)
      {
        v47 = sub_1D6995068((v141 > 1), v142 + 1, 1, v47);
      }

      *(v47 + 16) = v45;
      v143 = (v47 + 80 * v142);
      *(v143 + 2) = v160;
      v144 = v161;
      v145 = v162;
      v146 = v163[0];
      *(v143 + 89) = *(v163 + 9);
      *(v143 + 4) = v145;
      *(v143 + 5) = v146;
      *(v143 + 3) = v144;
      v76 = v159;
    }

    while (v136 != v1);
LABEL_154:
    v76[16] = 0x736C656E6E616843;
    v76[17] = 0xE800000000000000;
    v76[18] = v47;
    v11 = 0;
    v109 = MEMORY[0x1E69E7CC0];
    v14 = 80;
    do
    {
      v47 = v11;
      while (1)
      {
        if (v94)
        {
          v45 = MEMORY[0x1DA6FB460](v47, v44);
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_181;
          }
        }

        else
        {
          if (v47 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_182;
          }

          v45 = *(v44 + 8 * v47 + 32);
          swift_unknownObjectRetain();
          v11 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_181;
          }
        }

        v147 = swift_getObjectType();
        if (FCTagProviding.isTopic.getter(v147) && ![v45 isSports])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v47;
        if (v11 == v1)
        {
          goto LABEL_97;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v157 + 800) tag:v45 feedConfiguration:0], &v160);
      swift_unknownObjectRelease();
      v148 = swift_isUniquelyReferenced_nonNull_native();
      if ((v148 & 1) == 0)
      {
        v109 = sub_1D6995068(0, *(v109 + 2) + 1, 1, v109);
      }

      v150 = *(v109 + 2);
      v149 = *(v109 + 3);
      v45 = v150 + 1;
      if (v150 >= v149 >> 1)
      {
        v109 = sub_1D6995068((v149 > 1), v150 + 1, 1, v109);
      }

      *(v109 + 2) = v45;
      v151 = &v109[80 * v150];
      *(v151 + 2) = v160;
      v152 = v161;
      v153 = v162;
      v154 = v163[0];
      *(v151 + 89) = *(v163 + 9);
      *(v151 + 4) = v153;
      *(v151 + 5) = v154;
      *(v151 + 3) = v152;
      v76 = v159;
    }

    while (v11 != v1);
  }

  else
  {
    v159[7] = 0x7374726F7053;
    v159[8] = 0xE600000000000000;
    v159[9] = v93;
    v159[10] = 0x73656C7A7A7550;
    v159[11] = 0xE700000000000000;
    v109 = MEMORY[0x1E69E7CC0];
    v159[12] = MEMORY[0x1E69E7CC0];
    v159[13] = 0x654E206C61636F4CLL;
    v159[14] = 0xEA00000000007377;
    v159[15] = v109;
    v159[16] = 0x736C656E6E616843;
    v159[17] = 0xE800000000000000;
    v159[18] = v109;
  }

LABEL_97:

  v76[19] = 0x736369706F54;
  v76[20] = 0xE600000000000000;
  v76[21] = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1D7270C10;
  v111 = sub_1D726203C();
  v112 = [v158 systemImageNamed_];

  if (v112)
  {
    v113 = v68;
    v114 = [v112 imageWithConfiguration_];
  }

  else
  {
    v114 = 0;
    v113 = v68;
  }

  v164 = v112 == 0;
  *(v110 + 32) = 27;
  *(v110 + 40) = 0x7961646F54;
  *(v110 + 48) = 0xE500000000000000;
  *(v110 + 56) = v156;
  *(v110 + 72) = 0xE500000000000000;
  *(v110 + 80) = 0;
  *(v110 + 88) = 0;
  *(v110 + 96) = v114;
  *(v110 + 104) = v112 == 0;
  v122 = sub_1D726203C();
  v47 = [v158 systemImageNamed_];

  if (v47)
  {
    v11 = [v47 imageWithConfiguration_];
  }

  else
  {
    v11 = 0;
  }

  v14 = 0;
  v165 = v47 == 0;
  *(v110 + 112) = 28;
  *(v110 + 120) = 0x6C6F626D7953;
  *(v110 + 128) = 0xE600000000000000;
  *(v110 + 136) = xmmword_1D7306720;
  *(v110 + 152) = 0xE600000000000000;
  *(v110 + 160) = 0;
  *(v110 + 168) = 0;
  *(v110 + 176) = v11;
  *(v110 + 184) = v47 == 0;
  v76[22] = 0x736B636F7453;
  v76[23] = 0xE600000000000000;
  v123 = v76 + 6;
  v76[24] = v110;
  v124 = 7;
  v1 = 24;
  v45 = MEMORY[0x1E69E7CC0];
LABEL_121:
  if (v14 > 7)
  {
    v124 = v14;
  }

  v125 = &v123[3 * v14];
  v126 = v124 + 1;
  while (v14 != 7)
  {
    if (v126 == ++v14)
    {
      __break(1u);
      goto LABEL_173;
    }

    v127 = v125 + 3;
    v47 = *v125;
    v128 = *(*v125 + 16);
    v125 += 3;
    if (v128)
    {
      v129 = *(v127 - 5);
      v11 = *(v127 - 4);

      v130 = swift_isUniquelyReferenced_nonNull_native();
      *&v160 = v45;
      if ((v130 & 1) == 0)
      {
        sub_1D69996C8(0, *(v45 + 16) + 1, 1);
        v45 = v160;
      }

      v132 = *(v45 + 16);
      v131 = *(v45 + 24);
      if (v132 >= v131 >> 1)
      {
        sub_1D69996C8((v131 > 1), v132 + 1, 1);
        v45 = v160;
      }

      *(v45 + 16) = v132 + 1;
      v133 = (v45 + 24 * v132);
      v133[4] = v129;
      v133[5] = v11;
      v133[6] = v47;
      v124 = 7;
      goto LABEL_121;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v134 = *(v157 + 8);

  return v134(v45);
}

uint64_t sub_1D692BDD0()
{
  *(*v1 + 856) = v0;

  if (v0)
  {

    v2 = sub_1D692DBE0;
  }

  else
  {

    v2 = sub_1D692BF18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D692BF18()
{
  v140 = v0;
  v1 = v0[96];
  v2 = v0[89];
  sub_1D692FD34(v2 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v1, type metadata accessor for GroupLayoutBindingContext);
  v3 = sub_1D62EF50C();
  sub_1D692FCD4(v1, type metadata accessor for GroupLayoutBindingContext);
  v4 = v0[107];
  v5 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_174:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v0[104];
  v8 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v9 + v6;
    if (!__OFADD__(v9, v6))
    {
      goto LABEL_5;
    }

LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v108 = sub_1D7263BFC();
  v10 = v108 + v6;
  if (__OFADD__(v108, v6))
  {
    goto LABEL_177;
  }

LABEL_5:
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v8)
  {
LABEL_11:
    sub_1D7263BFC();
    goto LABEL_12;
  }

  v7 &= 0xFFFFFFFFFFFFFF8uLL;
  v11 = *(v7 + 24) >> 1;
  if (v11 >= v10)
  {
    v133 = v0[104];
    goto LABEL_13;
  }

LABEL_12:
  v133 = sub_1D7263DDC();
  v7 = v133 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_13:
  v10 = *(v7 + 16);
  if (!v5)
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v6 <= 0)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_22;
  }

  v12 = sub_1D7263BFC();
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v11 - v10 < v6)
  {
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    swift_once();
    goto LABEL_53;
  }

  v131 = v6;
  v6 = v7 + 8 * v10 + 32;
  if (!v5)
  {
    sub_1D5B65AF4();
    v10 = v131;
    swift_arrayInitWithCopy();

    if (v131 <= 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (v12 < 1)
  {
    goto LABEL_206;
  }

  v129 = v4;
  v132 = v0;
  v5 = (v0 + 83);
  sub_1D5C44878(0);
  v2 = v13;
  sub_1D5C44F84(&qword_1EC88E4D0, MEMORY[0x1E69E6340]);
  for (i = 0; i != v12; ++i)
  {
    v15 = sub_1D6D87860(v5, i, v3);
    v17 = *v16;
    swift_unknownObjectRetain();
    (v15)(v5, 0);
    *(v6 + 8 * i) = v17;
  }

  v10 = v131;
  v0 = v132;
  v4 = v129;
  if (v131 > 0)
  {
LABEL_26:
    v18 = *(v7 + 16);
    v19 = __OFADD__(v18, v10);
    v20 = v18 + v10;
    if (!v19)
    {
      *(v7 + 16) = v20;
      goto LABEL_28;
    }

LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

LABEL_28:
  v21 = (v0[103] + 1);
  if (v21 != v0[102])
  {
    v0[104] = v133;
    v0[103] = v21;
    v25 = v0[101];
    if (v21 < *(v25 + 2))
    {
      v26 = v0[95];
      sub_1D692FD34(&v25[((*(v0 + 868) + 32) & ~*(v0 + 868)) + *(v0[94] + 9) * v21], v26, type metadata accessor for DebugFormatWorkspaceGroup);

      sub_1D692FCD4(v26, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();

      v27 = v0[88];
      v0[105] = v27;
      v28 = swift_task_alloc();
      v0[106] = v28;
      v29 = type metadata accessor for DebugFormatBindingResult(0);
      v30 = sub_1D5BA6EF4();
      *v28 = v0;
      *(v28 + 1) = sub_1D692BDD0;
      v31 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA10](v0 + 89, v27, v29, v30, v31);
    }

    goto LABEL_179;
  }

  v132 = v0;
  v0[87] = v133;
  v0[90] = v133;
  sub_1D5C44878(0);
  sub_1D5C44F84(&qword_1EDF1AEA0, MEMORY[0x1E69E6328]);

  sub_1D72623CC();
  swift_bridgeObjectRelease_n();
  sub_1D5B65AF4();
  v10 = sub_1D72626EC();

  v22 = MEMORY[0x1E69E6F90];
  sub_1D5B66EA4(0, &unk_1EC88E4C0, &type metadata for DebugFormatWorkspaceFeedSection, MEMORY[0x1E69E6F90]);
  v133 = swift_allocObject();
  sub_1D5B66EA4(0, &qword_1EC88F2C0, &type metadata for DebugFormatWorkspaceFeedItem, v22);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D727C500;
  v12 = objc_opt_self();

  v23 = sub_1D726203C();
  v2 = &selRef_setHyphenationFactor_;
  v4 = [v12 ts:v23 internalSystemImageNamed:?];

  v5 = 0x1EC87D000uLL;
  v7 = &unk_1EC9BA000;
  v6 = &selRef_setHyphenationFactor_;
  if (v4)
  {
    if (qword_1EC87DA40 == -1)
    {
LABEL_31:
      v24 = [v4 *(v6 + 1768)];

      goto LABEL_37;
    }

LABEL_207:
    swift_once();
    goto LABEL_31;
  }

  v24 = 0;
LABEL_37:
  *(v3 + 32) = 24;
  *(v3 + 40) = 0x7961646F54;
  *(v3 + 48) = 0xE500000000000000;
  v128 = xmmword_1D7306700;
  *(v3 + 56) = xmmword_1D7306700;
  *(v3 + 72) = 0xE500000000000000;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = v24;
  *(v3 + 104) = v4 == 0;
  v32 = sub_1D726203C();
  v33 = [v12 *(v2 + 1776)];

  v131 = v12;
  if (v33)
  {
    if (*(v5 + 2624) != -1)
    {
      swift_once();
    }

    v34 = [v33 *(v6 + 1768)];
  }

  else
  {
    v34 = 0;
  }

  *(v3 + 112) = 10;
  *(v3 + 120) = 0x2B7377654ELL;
  *(v3 + 128) = 0xE500000000000000;
  *(v3 + 136) = xmmword_1D7306710;
  *(v3 + 152) = 0xE500000000000000;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = v34;
  *(v3 + 184) = v33 == 0;
  type metadata accessor for FormatWorkspaceFeedDescriptor();
  v35 = swift_allocObject();
  *(v35 + 16) = 0xD000000000000017;
  *(v35 + 24) = 0x80000001D73DC3E0;
  *(v35 + 32) = 0x7374726F7053;
  *(v35 + 40) = 0xE600000000000000;
  *(v35 + 48) = 0;
  *(v35 + 56) = 3;
  *(v35 + 64) = 0;
  v36 = sub_1D726203C();
  v37 = [v12 systemImageNamed_];

  if (v37)
  {
    if (*(v5 + 2624) != -1)
    {
      swift_once();
    }

    v38 = [v37 imageWithConfiguration_];
  }

  else
  {
    v38 = 0;
  }

  *(v3 + 192) = 11;
  *(v3 + 200) = 0x7374726F7053;
  *(v3 + 208) = 0xE600000000000000;
  *(v3 + 216) = v35;
  *(v3 + 224) = 0x7374726F7053;
  *(v3 + 232) = 0xE600000000000000;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = v38;
  *(v3 + 264) = v37 == 0;
  v39 = sub_1D726203C();
  v40 = [v12 systemImageNamed_];

  if (v40)
  {
    if (*(v5 + 2624) != -1)
    {
      swift_once();
    }

    v41 = [v40 imageWithConfiguration_];
  }

  else
  {
    v41 = 0;
  }

  *(v3 + 272) = 1;
  v6 = 1685024582;
  *(v3 + 280) = 0x6F69647541;
  *(v3 + 288) = 0xE500000000000000;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0x6F69647541;
  *(v3 + 312) = 0xE500000000000000;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = v41;
  *(v3 + 344) = v40 == 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000017;
  *(v4 + 24) = 0x80000001D73DC400;
  *(v4 + 32) = 1685024582;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 48) = 0;
  *(v4 + 56) = 12;
  *(v4 + 64) = 0;
  if (qword_1EDF05B68 != -1)
  {
    goto LABEL_180;
  }

LABEL_53:
  v42 = qword_1EDF05B70;
  if (*(v5 + 2624) != -1)
  {
    v109 = qword_1EDF05B70;
    swift_once();
    v42 = v109;
  }

  v43 = *(v7 + 2952);
  v44 = [v42 imageWithConfiguration_];
  LOBYTE(v134) = 0;
  *(v3 + 352) = 6;
  *(v3 + 360) = v6;
  *(v3 + 368) = 0xE400000000000000;
  *(v3 + 376) = v4;
  *(v3 + 384) = v6;
  *(v3 + 392) = 0xE400000000000000;
  *(v3 + 400) = 0;
  *(v3 + 408) = 0;
  *(v3 + 416) = v44;
  *(v3 + 424) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 0xD000000000000017;
  *(v45 + 24) = 0x80000001D73DC420;
  *(v45 + 32) = 0x73657069636552;
  *(v45 + 40) = 0xE700000000000000;
  *(v45 + 48) = 0;
  *(v45 + 56) = 13;
  *(v45 + 64) = 0;
  if (qword_1EDF05C38 != -1)
  {
    swift_once();
  }

  v46 = [qword_1EDF05C40 imageWithConfiguration_];
  LOBYTE(v134) = 0;
  *(v3 + 432) = 16;
  *(v3 + 440) = 0x73657069636552;
  *(v3 + 448) = 0xE700000000000000;
  *(v3 + 456) = v45;
  *(v3 + 464) = 0x73657069636552;
  *(v3 + 472) = 0xE700000000000000;
  *(v3 + 480) = 0;
  *(v3 + 488) = 0;
  *(v3 + 496) = v46;
  *(v3 + 504) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = 0xD000000000000017;
  *(v47 + 24) = 0x80000001D73DC440;
  *(v47 + 32) = 0x73656C7A7A7550;
  *(v47 + 40) = 0xE700000000000000;
  *(v47 + 48) = 0;
  *(v47 + 56) = 9;
  *(v47 + 64) = 0;
  v48 = sub_1D726203C();
  v49 = [v131 systemImageNamed_];

  v130 = v43;
  if (v49)
  {
    v50 = [v49 &selRef:v43 bezierPathWithRect:? + 7];
  }

  else
  {
    v50 = 0;
  }

  *(v3 + 512) = 12;
  *(v3 + 520) = 0x73656C7A7A7550;
  *(v3 + 528) = 0xE700000000000000;
  *(v3 + 536) = v47;
  *(v3 + 544) = 0x73656C7A7A7550;
  *(v3 + 552) = 0xE700000000000000;
  *(v3 + 560) = 0u;
  *(v3 + 576) = v50;
  *(v3 + 584) = v49 == 0;
  v51 = sub_1D726203C();
  v52 = [v131 ts:v51 internalSystemImageNamed:?];

  v2 = 0xD000000000000017;
  if (v52)
  {
    v53 = [v52 &selRef:v43 bezierPathWithRect:? + 7];
  }

  else
  {
    v53 = 0;
  }

  *(v3 + 592) = 23;
  *(v3 + 600) = 0x7720646572616853;
  *(v3 + 608) = 0xEF756F5920687469;
  *(v3 + 616) = 0;
  *(v3 + 624) = 0x7720646572616853;
  *(v3 + 632) = 0xEF756F5920687469;
  *(v3 + 640) = 0;
  *(v3 + 648) = 0;
  *(v3 + 656) = v53;
  *(v3 + 664) = v52 == 0;
  v54 = sub_1D726203C();
  v55 = [v131 systemImageNamed_];

  if (v55)
  {
    v56 = [v55 &selRef:v43 bezierPathWithRect:? + 7];
  }

  else
  {
    v56 = 0;
  }

  *(v3 + 672) = 17;
  strcpy((v3 + 680), "Saved Stories");
  *(v3 + 694) = -4864;
  *(v3 + 696) = 0;
  strcpy((v3 + 704), "Saved Stories");
  *(v3 + 718) = -4864;
  *(v3 + 720) = 0;
  *(v3 + 728) = 0;
  *(v3 + 736) = v56;
  *(v3 + 744) = v55 == 0;
  if (qword_1EDF05CB8 != -1)
  {
    swift_once();
  }

  v57 = [qword_1EDF05CC0 &selRef:v43 bezierPathWithRect:? + 7];
  LOBYTE(v134) = 0;
  *(v3 + 752) = 15;
  strcpy((v3 + 760), "Saved Recipes");
  *(v3 + 774) = -4864;
  *(v3 + 776) = 0;
  strcpy((v3 + 784), "Saved Recipes");
  *(v3 + 798) = -4864;
  *(v3 + 800) = 0;
  *(v3 + 808) = 0;
  *(v3 + 816) = v57;
  *(v3 + 824) = 0;
  v58 = sub_1D726203C();
  v59 = [v131 systemImageNamed_];

  if (v59)
  {
    v60 = [v59 &selRef:v43 bezierPathWithRect:? + 7];
  }

  else
  {
    v60 = 0;
  }

  *(v3 + 832) = 7;
  *(v3 + 840) = 0x79726F74736948;
  *(v3 + 848) = 0xE700000000000000;
  *(v3 + 856) = 0;
  *(v3 + 864) = 0x79726F74736948;
  *(v3 + 872) = 0xE700000000000000;
  *(v3 + 880) = 0;
  *(v3 + 888) = 0;
  *(v3 + 896) = v60;
  *(v3 + 904) = v59 == 0;
  v61 = sub_1D726203C();
  v62 = [v131 systemImageNamed_];

  if (v62)
  {
    v63 = [v62 &selRef:v43 bezierPathWithRect:? + 7];
  }

  else
  {
    v63 = 0;
  }

  *(v3 + 912) = 18;
  *(v3 + 920) = 0x686372616553;
  *(v3 + 928) = 0xE600000000000000;
  *(v3 + 936) = 0;
  *(v3 + 944) = 0x686372616553;
  *(v3 + 952) = 0xE600000000000000;
  *(v3 + 960) = 0;
  *(v3 + 968) = 0;
  *(v3 + 976) = v63;
  *(v3 + 984) = v62 == 0;
  v64 = sub_1D726203C();
  v65 = [v131 systemImageNamed_];

  if (v65)
  {
    v66 = [v65 &selRef:v43 bezierPathWithRect:? + 7];
  }

  else
  {
    v66 = 0;
  }

  *(v3 + 992) = 19;
  *(v3 + 1000) = 0x4D20686372616553;
  *(v3 + 1008) = 0xEB0000000065726FLL;
  *(v3 + 1016) = 0;
  *(v3 + 1024) = 0x4D20686372616553;
  *(v3 + 1032) = 0xEB0000000065726FLL;
  *(v3 + 1040) = 0;
  *(v3 + 1048) = 0;
  *(v3 + 1056) = v66;
  *(v3 + 1064) = v65 == 0;
  *(v133 + 32) = 1937204558;
  *(v133 + 40) = 0xE400000000000000;
  *(v133 + 48) = v3;
  if (v10 >> 62)
  {
    v5 = sub_1D7263BFC();
    if (v5)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_79:
      v2 = 0;
      v67 = v10 & 0xC000000000000001;
      v3 = MEMORY[0x1E69E7CC0];
      v0 = &off_1E84D3000;
      while (2)
      {
        v4 = v2;
        while (1)
        {
          if (v67)
          {
            v68 = MEMORY[0x1DA6FB460](v4, v10);
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_164;
            }
          }

          else
          {
            if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_165;
            }

            v68 = *(v10 + 8 * v4 + 32);
            swift_unknownObjectRetain();
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
              goto LABEL_174;
            }
          }

          if ([v68 v0[508]])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v4;
          if (v2 == v5)
          {
            goto LABEL_95;
          }
        }

        sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:v132[100] tag:v68 feedConfiguration:0], &v134);
        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D6995068(0, *(v3 + 16) + 1, 1, v3);
        }

        v70 = *(v3 + 16);
        v69 = *(v3 + 24);
        if (v70 >= v69 >> 1)
        {
          v3 = sub_1D6995068((v69 > 1), v70 + 1, 1, v3);
        }

        *(v3 + 16) = v70 + 1;
        v71 = (v3 + 80 * v70);
        v71[2] = v134;
        v72 = v135;
        v73 = v136;
        v74 = v137[0];
        *(v71 + 89) = *(v137 + 9);
        v71[4] = v73;
        v71[5] = v74;
        v71[3] = v72;
        v0 = &off_1E84D3000;
        if (v2 != v5)
        {
          continue;
        }

        break;
      }

LABEL_95:
      v2 = 0;
      *(v133 + 56) = 0x7374726F7053;
      *(v133 + 64) = 0xE600000000000000;
      *(v133 + 72) = v3;
      v3 = MEMORY[0x1E69E7CC0];
      v0 = &off_1E84D3000;
      do
      {
        v4 = v2;
        while (1)
        {
          if (v67)
          {
            v75 = MEMORY[0x1DA6FB460](v4, v10);
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_166;
            }
          }

          else
          {
            if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_167;
            }

            v75 = *(v10 + 8 * v4 + 32);
            swift_unknownObjectRetain();
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_166;
            }
          }

          if ([v75 v0[509]])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v4;
          if (v2 == v5)
          {
            goto LABEL_111;
          }
        }

        sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:v132[100] tag:v75 feedConfiguration:10], &v134);
        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D6995068(0, *(v3 + 16) + 1, 1, v3);
        }

        v77 = *(v3 + 16);
        v76 = *(v3 + 24);
        if (v77 >= v76 >> 1)
        {
          v3 = sub_1D6995068((v76 > 1), v77 + 1, 1, v3);
        }

        *(v3 + 16) = v77 + 1;
        v78 = (v3 + 80 * v77);
        v78[2] = v134;
        v79 = v135;
        v80 = v136;
        v81 = v137[0];
        *(v78 + 89) = *(v137 + 9);
        v78[4] = v80;
        v78[5] = v81;
        v78[3] = v79;
        v0 = &off_1E84D3000;
      }

      while (v2 != v5);
LABEL_111:
      v2 = 0;
      *(v133 + 80) = 0x73656C7A7A7550;
      *(v133 + 88) = 0xE700000000000000;
      *(v133 + 96) = v3;
      v3 = MEMORY[0x1E69E7CC0];
      do
      {
        v4 = v2;
        while (1)
        {
          if (v67)
          {
            v82 = MEMORY[0x1DA6FB460](v4, v10);
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_168;
            }
          }

          else
          {
            if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_169;
            }

            v82 = *(v10 + 8 * v4 + 32);
            swift_unknownObjectRetain();
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_168;
            }
          }

          if ([v82 isLocal])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v4;
          if (v2 == v5)
          {
            goto LABEL_127;
          }
        }

        sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:v132[100] tag:v82 feedConfiguration:1], &v134);
        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D6995068(0, *(v3 + 16) + 1, 1, v3);
        }

        v84 = *(v3 + 16);
        v83 = *(v3 + 24);
        v0 = (v84 + 1);
        if (v84 >= v83 >> 1)
        {
          v3 = sub_1D6995068((v83 > 1), v84 + 1, 1, v3);
        }

        *(v3 + 16) = v0;
        v85 = (v3 + 80 * v84);
        v85[2] = v134;
        v86 = v135;
        v87 = v136;
        v88 = v137[0];
        *(v85 + 89) = *(v137 + 9);
        v85[4] = v87;
        v85[5] = v88;
        v85[3] = v86;
      }

      while (v2 != v5);
LABEL_127:
      v4 = 0;
      *(v133 + 104) = 0x654E206C61636F4CLL;
      *(v133 + 112) = 0xEA00000000007377;
      *(v133 + 120) = v3;
      v89 = MEMORY[0x1E69E7CC0];
      v0 = &selRef_accountStore;
      do
      {
        v2 = v4;
        while (1)
        {
          if (v67)
          {
            v3 = MEMORY[0x1DA6FB460](v2, v10);
            v4 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_170;
            }
          }

          else
          {
            if (v2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_171;
            }

            v3 = *(v10 + 8 * v2 + 32);
            swift_unknownObjectRetain();
            v4 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_170;
            }
          }

          ObjectType = swift_getObjectType();
          if (FCTagProviding.isChannel.getter(ObjectType) && ![v3 isLocal] && (objc_msgSend(v3, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v3, sel_isMySports) & 1) == 0)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v2;
          if (v4 == v5)
          {
            goto LABEL_146;
          }
        }

        v127 = v132[100];
        v91 = [objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:v127 tag:v3 feedConfiguration:{objc_msgSend(swift_unknownObjectRetain(), sel_isNewspaper)}];
        swift_unknownObjectRelease();

        sub_1D6C137E4(v91, &v134);
        swift_unknownObjectRelease();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v89 = sub_1D6995068(0, *(v89 + 2) + 1, 1, v89);
        }

        v94 = *(v89 + 2);
        v93 = *(v89 + 3);
        v3 = v94 + 1;
        if (v94 >= v93 >> 1)
        {
          v89 = sub_1D6995068((v93 > 1), v94 + 1, 1, v89);
        }

        *(v89 + 2) = v3;
        v95 = &v89[80 * v94];
        *(v95 + 2) = v134;
        v96 = v135;
        v97 = v136;
        v98 = v137[0];
        *(v95 + 89) = *(v137 + 9);
        *(v95 + 4) = v97;
        *(v95 + 5) = v98;
        *(v95 + 3) = v96;
      }

      while (v4 != v5);
LABEL_146:
      v2 = 0;
      *(v133 + 128) = 0x736C656E6E616843;
      *(v133 + 136) = 0xE800000000000000;
      *(v133 + 144) = v89;
      v99 = MEMORY[0x1E69E7CC0];
      v0 = &off_1E84D3000;
      do
      {
        v4 = v2;
        while (1)
        {
          if (v67)
          {
            v3 = MEMORY[0x1DA6FB460](v4, v10);
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_172;
            }
          }

          else
          {
            if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_173;
            }

            v3 = *(v10 + 8 * v4 + 32);
            swift_unknownObjectRetain();
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_172;
            }
          }

          v100 = swift_getObjectType();
          if (FCTagProviding.isTopic.getter(v100) && ![v3 v0[508]])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v4;
          if (v2 == v5)
          {
            goto LABEL_183;
          }
        }

        sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:v132[100] tag:v3 feedConfiguration:0], &v134);
        swift_unknownObjectRelease();
        v101 = swift_isUniquelyReferenced_nonNull_native();
        if ((v101 & 1) == 0)
        {
          v99 = sub_1D6995068(0, *(v99 + 2) + 1, 1, v99);
        }

        v103 = *(v99 + 2);
        v102 = *(v99 + 3);
        v3 = v103 + 1;
        if (v103 >= v102 >> 1)
        {
          v99 = sub_1D6995068((v102 > 1), v103 + 1, 1, v99);
        }

        *(v99 + 2) = v3;
        v104 = &v99[80 * v103];
        *(v104 + 2) = v134;
        v105 = v135;
        v106 = v136;
        v107 = v137[0];
        *(v104 + 89) = *(v137 + 9);
        *(v104 + 4) = v106;
        *(v104 + 5) = v107;
        *(v104 + 3) = v105;
        v0 = &off_1E84D3000;
      }

      while (v2 != v5);
      goto LABEL_183;
    }
  }

  v99 = MEMORY[0x1E69E7CC0];
  *(v133 + 56) = 0x7374726F7053;
  *(v133 + 64) = 0xE600000000000000;
  *(v133 + 72) = v99;
  *(v133 + 80) = 0x73656C7A7A7550;
  *(v133 + 88) = 0xE700000000000000;
  *(v133 + 96) = v99;
  *(v133 + 104) = 0x654E206C61636F4CLL;
  *(v133 + 112) = 0xEA00000000007377;
  *(v133 + 120) = v99;
  *(v133 + 128) = 0x736C656E6E616843;
  *(v133 + 136) = 0xE800000000000000;
  *(v133 + 144) = v99;
LABEL_183:

  *(v133 + 152) = 0x736369706F54;
  *(v133 + 160) = 0xE600000000000000;
  *(v133 + 168) = v99;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1D7270C10;
  v111 = sub_1D726203C();
  v6 = &off_1E84D3000;
  v112 = [v131 systemImageNamed_];

  if (v112)
  {
    v113 = v130;
    v114 = [v112 imageWithConfiguration_];
  }

  else
  {
    v114 = 0;
    v113 = v130;
  }

  v138 = v112 == 0;
  *(v110 + 32) = 27;
  *(v110 + 40) = 0x7961646F54;
  *(v110 + 48) = 0xE500000000000000;
  *(v110 + 56) = v128;
  *(v110 + 72) = 0xE500000000000000;
  *(v110 + 80) = 0;
  *(v110 + 88) = 0;
  *(v110 + 96) = v114;
  *(v110 + 104) = v112 == 0;
  v115 = sub_1D726203C();
  v4 = [v131 systemImageNamed_];

  if (v4)
  {
    v7 = [v4 imageWithConfiguration_];
  }

  else
  {
    v7 = 0;
  }

  v116 = 0;
  v139 = v4 == 0;
  *(v110 + 112) = 28;
  *(v110 + 120) = 0x6C6F626D7953;
  *(v110 + 128) = 0xE600000000000000;
  *(v110 + 136) = xmmword_1D7306720;
  *(v110 + 152) = 0xE600000000000000;
  *(v110 + 160) = 0;
  *(v110 + 168) = 0;
  *(v110 + 176) = v7;
  *(v110 + 184) = v4 == 0;
  *(v133 + 176) = 0x736B636F7453;
  *(v133 + 184) = 0xE600000000000000;
  v12 = v133 + 48;
  *(v133 + 192) = v110;
  v117 = 7;
  v5 = 24;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_190:
  if (v116 > 7)
  {
    v117 = v116;
  }

  v118 = (v12 + 24 * v116);
  v119 = v117 + 1;
  while (v116 != 7)
  {
    if (v119 == ++v116)
    {
      __break(1u);
      goto LABEL_205;
    }

    v120 = v118 + 3;
    v4 = *v118;
    v121 = *(*v118 + 16);
    v118 += 3;
    if (v121)
    {
      v2 = *(v120 - 5);
      v7 = *(v120 - 4);

      v122 = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v3;
      if ((v122 & 1) == 0)
      {
        sub_1D69996C8(0, *(v3 + 16) + 1, 1);
        v3 = v134;
      }

      v6 = *(v3 + 16);
      v123 = *(v3 + 24);
      if (v6 >= v123 >> 1)
      {
        sub_1D69996C8((v123 > 1), v6 + 1, 1);
        v3 = v134;
      }

      *(v3 + 16) = v6 + 1;
      v124 = (v3 + 24 * v6);
      v124[4] = v2;
      v124[5] = v7;
      v124[6] = v4;
      v117 = 7;
      goto LABEL_190;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v125 = v132[1];

  return (v125)(v3);
}

uint64_t sub_1D692DBE0()
{
  v141 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0] >> 62;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
LABEL_197:
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 832);
  v6 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v4 + v7;
    if (!__OFADD__(v7, v4))
    {
      goto LABEL_5;
    }

LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v127 = sub_1D7263BFC();
  v8 = v4 + v127;
  if (__OFADD__(v127, v4))
  {
    goto LABEL_200;
  }

LABEL_5:
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v6)
  {
LABEL_11:
    sub_1D7263BFC();
    goto LABEL_12;
  }

  v5 &= 0xFFFFFFFFFFFFFF8uLL;
  v9 = *(v5 + 24) >> 1;
  if (v9 >= v8)
  {
    v10 = *(v0 + 832);
    goto LABEL_13;
  }

LABEL_12:
  v10 = sub_1D7263DDC();
  v5 = v10 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_13:
  v11 = *(v5 + 16);
  if (!v3)
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v133 = v0;
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_19:

    if (v4 <= 0)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_21;
  }

  v6 = sub_1D7263BFC();
  v133 = v0;
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v9 - v11 < v4)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v132 = v10;
  v9 = v5 + 8 * v11 + 32;
  v134 = v4;
  if (!v3)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    sub_1D5B65AF4();
    swift_arrayInitWithCopy();
    goto LABEL_24;
  }

LABEL_21:
  if (v6 < 1)
  {
    goto LABEL_206;
  }

  v11 = (v0 + 664);
  sub_1D5C44878(0);
  v4 = sub_1D5C44F84(&qword_1EC88E4D0, MEMORY[0x1E69E6340]);
  v1 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v3 = sub_1D6D87860(v11, v1, v12);
    v14 = *v13;
    swift_unknownObjectRetain();
    (v3)(v11, 0);
    *(v9 + 8 * v1++) = v14;
  }

  while (v6 != v1);
LABEL_24:

  v0 = v133;
  v10 = v132;
  if (v134 > 0)
  {
    v15 = *(v5 + 16);
    v16 = __OFADD__(v15, v134);
    v17 = v134 + v15;
    if (!v16)
    {
      *(v5 + 16) = v17;
      goto LABEL_27;
    }

    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

LABEL_27:
  v18 = *(v0 + 824) + 1;
  if (v18 == *(v0 + 816))
  {
    *(v0 + 696) = v10;
    *(v0 + 720) = v10;
    sub_1D5C44878(0);
    sub_1D5C44F84(&qword_1EDF1AEA0, MEMORY[0x1E69E6328]);

    sub_1D72623CC();
    swift_bridgeObjectRelease_n();
    sub_1D5B65AF4();
    v5 = sub_1D72626EC();

    v19 = MEMORY[0x1E69E6F90];
    sub_1D5B66EA4(0, &unk_1EC88E4C0, &type metadata for DebugFormatWorkspaceFeedSection, MEMORY[0x1E69E6F90]);
    v134 = swift_allocObject();
    sub_1D5B66EA4(0, &qword_1EC88F2C0, &type metadata for DebugFormatWorkspaceFeedItem, v19);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D727C500;
    v1 = objc_opt_self();

    v20 = sub_1D726203C();
    v11 = &selRef_setHyphenationFactor_;
    v6 = [v1 ts:v20 internalSystemImageNamed:?];

    v4 = &selRef_setHyphenationFactor_;
    if (!v6)
    {
      v21 = 0;
LABEL_36:
      *(v3 + 32) = 24;
      *(v3 + 40) = 0x7961646F54;
      *(v3 + 48) = 0xE500000000000000;
      v130 = xmmword_1D7306700;
      *(v3 + 56) = xmmword_1D7306700;
      *(v3 + 72) = 0xE500000000000000;
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;
      *(v3 + 96) = v21;
      *(v3 + 104) = v6 == 0;
      v29 = sub_1D726203C();
      v30 = [v1 v11[222]];

      if (v30)
      {
        if (qword_1EC87DA40 != -1)
        {
          swift_once();
        }

        v31 = [v30 v4[221]];
      }

      else
      {
        v31 = 0;
      }

      *(v3 + 112) = 10;
      *(v3 + 120) = 0x2B7377654ELL;
      *(v3 + 128) = 0xE500000000000000;
      *(v3 + 136) = xmmword_1D7306710;
      *(v3 + 152) = 0xE500000000000000;
      *(v3 + 160) = 0;
      *(v3 + 168) = 0;
      *(v3 + 176) = v31;
      *(v3 + 184) = v30 == 0;
      type metadata accessor for FormatWorkspaceFeedDescriptor();
      v32 = swift_allocObject();
      *(v32 + 16) = 0xD000000000000017;
      *(v32 + 24) = 0x80000001D73DC3E0;
      *(v32 + 32) = 0x7374726F7053;
      *(v32 + 40) = 0xE600000000000000;
      *(v32 + 48) = 0;
      *(v32 + 56) = 3;
      *(v32 + 64) = 0;
      v33 = sub_1D726203C();
      v132 = v1;
      v34 = [v1 systemImageNamed_];

      if (v34)
      {
        v6 = 0x1EC87D000uLL;
        if (qword_1EC87DA40 != -1)
        {
          swift_once();
        }

        v35 = [v34 imageWithConfiguration_];
      }

      else
      {
        v35 = 0;
        v6 = 0x1EC87D000uLL;
      }

      *(v3 + 192) = 11;
      *(v3 + 200) = 0x7374726F7053;
      *(v3 + 208) = 0xE600000000000000;
      *(v3 + 216) = v32;
      *(v3 + 224) = 0x7374726F7053;
      *(v3 + 232) = 0xE600000000000000;
      *(v3 + 240) = 0;
      *(v3 + 248) = 0;
      *(v3 + 256) = v35;
      *(v3 + 264) = v34 == 0;
      v36 = sub_1D726203C();
      v37 = [v132 systemImageNamed_];

      if (v37)
      {
        if (qword_1EC87DA40 != -1)
        {
          swift_once();
        }

        v38 = [v37 imageWithConfiguration_];
      }

      else
      {
        v38 = 0;
      }

      *(v3 + 272) = 1;
      v0 = 1685024582;
      *(v3 + 280) = 0x6F69647541;
      *(v3 + 288) = 0xE500000000000000;
      *(v3 + 296) = 0;
      *(v3 + 304) = 0x6F69647541;
      *(v3 + 312) = 0xE500000000000000;
      *(v3 + 320) = 0;
      *(v3 + 328) = 0;
      *(v3 + 336) = v38;
      *(v3 + 344) = v37 == 0;
      v1 = swift_allocObject();
      *(v1 + 16) = 0xD000000000000017;
      *(v1 + 24) = 0x80000001D73DC400;
      *(v1 + 32) = 1685024582;
      *(v1 + 40) = 0xE400000000000000;
      *(v1 + 48) = 0;
      *(v1 + 56) = 12;
      *(v1 + 64) = 0;
      if (qword_1EDF05B68 == -1)
      {
        goto LABEL_52;
      }

      goto LABEL_203;
    }

    if (qword_1EC87DA40 == -1)
    {
LABEL_30:
      v21 = [v6 v4[221]];

      goto LABEL_36;
    }

LABEL_207:
    swift_once();
    goto LABEL_30;
  }

  *(v0 + 832) = v10;
  *(v0 + 824) = v18;
  v22 = *(v0 + 808);
  if (v18 < *(v22 + 16))
  {
    v23 = *(v0 + 760);
    sub_1D692FD34(v22 + ((*(v0 + 868) + 32) & ~*(v0 + 868)) + *(*(v0 + 752) + 72) * v18, v23, type metadata accessor for DebugFormatWorkspaceGroup);

    sub_1D692FCD4(v23, type metadata accessor for DebugFormatWorkspaceGroup);
    sub_1D725B77C();

    v24 = *(v0 + 704);
    *(v0 + 840) = v24;
    v25 = swift_task_alloc();
    *(v0 + 848) = v25;
    v26 = type metadata accessor for DebugFormatBindingResult(0);
    v27 = sub_1D5BA6EF4();
    *v25 = v0;
    v25[1] = sub_1D692BDD0;
    v28 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 712, v24, v26, v27, v28);
  }

LABEL_202:
  __break(1u);
LABEL_203:
  swift_once();
LABEL_52:
  v39 = qword_1EDF05B70;
  if (*(v6 + 2624) != -1)
  {
    v128 = qword_1EDF05B70;
    swift_once();
    v39 = v128;
  }

  v40 = qword_1EC9BAB88;
  v41 = [v39 imageWithConfiguration_];
  LOBYTE(v135) = 0;
  *(v3 + 352) = 6;
  *(v3 + 360) = v0;
  *(v3 + 368) = 0xE400000000000000;
  *(v3 + 376) = v1;
  *(v3 + 384) = v0;
  *(v3 + 392) = 0xE400000000000000;
  *(v3 + 400) = 0;
  *(v3 + 408) = 0;
  *(v3 + 416) = v41;
  *(v3 + 424) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0xD000000000000017;
  *(v42 + 24) = 0x80000001D73DC420;
  *(v42 + 32) = 0x73657069636552;
  *(v42 + 40) = 0xE700000000000000;
  *(v42 + 48) = 0;
  *(v42 + 56) = 13;
  *(v42 + 64) = 0;
  if (qword_1EDF05C38 != -1)
  {
    swift_once();
  }

  v43 = [qword_1EDF05C40 imageWithConfiguration_];
  LOBYTE(v135) = 0;
  *(v3 + 432) = 16;
  *(v3 + 440) = 0x73657069636552;
  *(v3 + 448) = 0xE700000000000000;
  *(v3 + 456) = v42;
  *(v3 + 464) = 0x73657069636552;
  *(v3 + 472) = 0xE700000000000000;
  *(v3 + 480) = 0;
  *(v3 + 488) = 0;
  *(v3 + 496) = v43;
  *(v3 + 504) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0xD000000000000017;
  *(v44 + 24) = 0x80000001D73DC440;
  *(v44 + 32) = 0x73656C7A7A7550;
  *(v44 + 40) = 0xE700000000000000;
  *(v44 + 48) = 0;
  *(v44 + 56) = 9;
  *(v44 + 64) = 0;
  v45 = sub_1D726203C();
  v46 = [v132 systemImageNamed_];

  v131 = v40;
  if (v46)
  {
    v47 = [v46 &selRef:v40 bezierPathWithRect:? + 7];
  }

  else
  {
    v47 = 0;
  }

  *(v3 + 512) = 12;
  *(v3 + 520) = 0x73656C7A7A7550;
  *(v3 + 528) = 0xE700000000000000;
  *(v3 + 536) = v44;
  *(v3 + 544) = 0x73656C7A7A7550;
  *(v3 + 552) = 0xE700000000000000;
  *(v3 + 560) = 0u;
  *(v3 + 576) = v47;
  *(v3 + 584) = v46 == 0;
  v48 = sub_1D726203C();
  v49 = [v132 ts:v48 internalSystemImageNamed:?];

  if (v49)
  {
    v50 = v40;
    v51 = [v49 &selRef:v40 bezierPathWithRect:? + 7];
  }

  else
  {
    v51 = 0;
    v50 = v40;
  }

  *(v3 + 592) = 23;
  *(v3 + 600) = 0x7720646572616853;
  *(v3 + 608) = 0xEF756F5920687469;
  *(v3 + 616) = 0;
  *(v3 + 624) = 0x7720646572616853;
  *(v3 + 632) = 0xEF756F5920687469;
  *(v3 + 640) = 0;
  *(v3 + 648) = 0;
  *(v3 + 656) = v51;
  *(v3 + 664) = v49 == 0;
  v52 = sub_1D726203C();
  v53 = [v132 systemImageNamed_];

  if (v53)
  {
    v54 = [v53 &selRef:v50 bezierPathWithRect:? + 7];
  }

  else
  {
    v54 = 0;
  }

  *(v3 + 672) = 17;
  strcpy((v3 + 680), "Saved Stories");
  *(v3 + 694) = -4864;
  *(v3 + 696) = 0;
  strcpy((v3 + 704), "Saved Stories");
  *(v3 + 718) = -4864;
  *(v3 + 720) = 0;
  *(v3 + 728) = 0;
  *(v3 + 736) = v54;
  *(v3 + 744) = v53 == 0;
  if (qword_1EDF05CB8 != -1)
  {
    swift_once();
  }

  v55 = [qword_1EDF05CC0 &selRef:v50 bezierPathWithRect:? + 7];
  LOBYTE(v135) = 0;
  *(v3 + 752) = 15;
  strcpy((v3 + 760), "Saved Recipes");
  *(v3 + 774) = -4864;
  *(v3 + 776) = 0;
  strcpy((v3 + 784), "Saved Recipes");
  *(v3 + 798) = -4864;
  *(v3 + 800) = 0;
  *(v3 + 808) = 0;
  *(v3 + 816) = v55;
  *(v3 + 824) = 0;
  v56 = sub_1D726203C();
  v57 = [v132 systemImageNamed_];

  if (v57)
  {
    v58 = [v57 &selRef:v50 bezierPathWithRect:? + 7];
  }

  else
  {
    v58 = 0;
  }

  *(v3 + 832) = 7;
  *(v3 + 840) = 0x79726F74736948;
  *(v3 + 848) = 0xE700000000000000;
  *(v3 + 856) = 0;
  *(v3 + 864) = 0x79726F74736948;
  *(v3 + 872) = 0xE700000000000000;
  *(v3 + 880) = 0;
  *(v3 + 888) = 0;
  *(v3 + 896) = v58;
  *(v3 + 904) = v57 == 0;
  v59 = sub_1D726203C();
  v60 = [v132 systemImageNamed_];

  if (v60)
  {
    v61 = [v60 &selRef:v50 bezierPathWithRect:? + 7];
  }

  else
  {
    v61 = 0;
  }

  *(v3 + 912) = 18;
  *(v3 + 920) = 0x686372616553;
  *(v3 + 928) = 0xE600000000000000;
  *(v3 + 936) = 0;
  *(v3 + 944) = 0x686372616553;
  *(v3 + 952) = 0xE600000000000000;
  *(v3 + 960) = 0;
  *(v3 + 968) = 0;
  *(v3 + 976) = v61;
  *(v3 + 984) = v60 == 0;
  v62 = sub_1D726203C();
  v63 = [v132 systemImageNamed_];

  if (v63)
  {
    v64 = [v63 &selRef:v50 bezierPathWithRect:? + 7];
  }

  else
  {
    v64 = 0;
  }

  *(v3 + 992) = 19;
  *(v3 + 1000) = 0x4D20686372616553;
  *(v3 + 1008) = 0xEB0000000065726FLL;
  *(v3 + 1016) = 0;
  *(v3 + 1024) = 0x4D20686372616553;
  *(v3 + 1032) = 0xEB0000000065726FLL;
  *(v3 + 1040) = 0;
  *(v3 + 1048) = 0;
  *(v3 + 1056) = v64;
  *(v3 + 1064) = v63 == 0;
  v134[4] = 1937204558;
  v134[5] = 0xE400000000000000;
  v134[6] = v3;
  if (v5 >> 62)
  {
    v1 = sub_1D7263BFC();
  }

  else
  {
    v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v65 = 0;
    v66 = v5 & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v0 = &off_1E84D3000;
    while (2)
    {
      v67 = v65;
      while (1)
      {
        if (v66)
        {
          v2 = MEMORY[0x1DA6FB460](v67, v5);
          v65 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_187;
          }
        }

        else
        {
          if (v67 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_188;
          }

          v2 = *(v5 + 8 * v67 + 32);
          swift_unknownObjectRetain();
          v65 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }
        }

        if ([v2 *(v0 + 4064)])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v67;
        if (v65 == v1)
        {
          goto LABEL_95;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v133 + 800) tag:v2 feedConfiguration:0], &v135);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D6995068(0, *(v3 + 16) + 1, 1, v3);
      }

      v69 = *(v3 + 16);
      v68 = *(v3 + 24);
      if (v69 >= v68 >> 1)
      {
        v3 = sub_1D6995068((v68 > 1), v69 + 1, 1, v3);
      }

      *(v3 + 16) = v69 + 1;
      v70 = (v3 + 80 * v69);
      v70[2] = v135;
      v71 = v136;
      v72 = v137;
      v73 = v138[0];
      *(v70 + 89) = *(v138 + 9);
      v70[4] = v72;
      v70[5] = v73;
      v70[3] = v71;
      v0 = 0x1E84D3000;
      if (v65 != v1)
      {
        continue;
      }

      break;
    }

LABEL_95:
    v74 = 0;
    v134[7] = 0x7374726F7053;
    v134[8] = 0xE600000000000000;
    v134[9] = v3;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v75 = v74;
      while (1)
      {
        if (v66)
        {
          v2 = MEMORY[0x1DA6FB460](v75, v5);
          v74 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_189;
          }
        }

        else
        {
          if (v75 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_190;
          }

          v2 = *(v5 + 8 * v75 + 32);
          swift_unknownObjectRetain();
          v74 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_189;
          }
        }

        if ([v2 isPuzzleType])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v75;
        if (v74 == v1)
        {
          goto LABEL_111;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v133 + 800) tag:v2 feedConfiguration:10], &v135);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D6995068(0, *(v3 + 16) + 1, 1, v3);
      }

      v0 = *(v3 + 16);
      v76 = *(v3 + 24);
      if (v0 >= v76 >> 1)
      {
        v3 = sub_1D6995068((v76 > 1), v0 + 1, 1, v3);
      }

      *(v3 + 16) = v0 + 1;
      v77 = (v3 + 80 * v0);
      v77[2] = v135;
      v78 = v136;
      v79 = v137;
      v80 = v138[0];
      *(v77 + 89) = *(v138 + 9);
      v77[4] = v79;
      v77[5] = v80;
      v77[3] = v78;
    }

    while (v74 != v1);
LABEL_111:
    v81 = 0;
    v134[10] = 0x73656C7A7A7550;
    v134[11] = 0xE700000000000000;
    v134[12] = v3;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v82 = v81;
      while (1)
      {
        if (v66)
        {
          v2 = MEMORY[0x1DA6FB460](v82, v5);
          v81 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_191;
          }
        }

        else
        {
          if (v82 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_192;
          }

          v2 = *(v5 + 8 * v82 + 32);
          swift_unknownObjectRetain();
          v81 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_191;
          }
        }

        if ([v2 isLocal])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v82;
        if (v81 == v1)
        {
          goto LABEL_127;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v133 + 800) tag:v2 feedConfiguration:1], &v135);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D6995068(0, *(v3 + 16) + 1, 1, v3);
      }

      v0 = *(v3 + 16);
      v83 = *(v3 + 24);
      if (v0 >= v83 >> 1)
      {
        v3 = sub_1D6995068((v83 > 1), v0 + 1, 1, v3);
      }

      *(v3 + 16) = v0 + 1;
      v84 = (v3 + 80 * v0);
      v84[2] = v135;
      v85 = v136;
      v86 = v137;
      v87 = v138[0];
      *(v84 + 89) = *(v138 + 9);
      v84[4] = v86;
      v84[5] = v87;
      v84[3] = v85;
    }

    while (v81 != v1);
LABEL_127:
    v0 = 0;
    v134[13] = 0x654E206C61636F4CLL;
    v134[14] = 0xEA00000000007377;
    v134[15] = v3;
    v88 = MEMORY[0x1E69E7CC0];
    do
    {
      v2 = v0;
      while (1)
      {
        if (v66)
        {
          v3 = MEMORY[0x1DA6FB460](v2, v5);
          v0 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_193;
          }
        }

        else
        {
          if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_194;
          }

          v3 = *(v5 + 8 * v2 + 32);
          swift_unknownObjectRetain();
          v0 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_193;
          }
        }

        ObjectType = swift_getObjectType();
        if (FCTagProviding.isChannel.getter(ObjectType) && ![v3 isLocal] && (objc_msgSend(v3, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v3, sel_isMySports) & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v2;
        if (v0 == v1)
        {
          goto LABEL_146;
        }
      }

      v90 = *(v133 + 800);
      v91 = [objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:v90 tag:v3 feedConfiguration:{objc_msgSend(swift_unknownObjectRetain(), sel_isNewspaper)}];
      swift_unknownObjectRelease();

      sub_1D6C137E4(v91, &v135);
      swift_unknownObjectRelease();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = sub_1D6995068(0, *(v88 + 2) + 1, 1, v88);
      }

      v94 = *(v88 + 2);
      v93 = *(v88 + 3);
      v3 = v94 + 1;
      if (v94 >= v93 >> 1)
      {
        v88 = sub_1D6995068((v93 > 1), v94 + 1, 1, v88);
      }

      *(v88 + 2) = v3;
      v95 = &v88[80 * v94];
      *(v95 + 2) = v135;
      v96 = v136;
      v97 = v137;
      v98 = v138[0];
      *(v95 + 89) = *(v138 + 9);
      *(v95 + 4) = v97;
      *(v95 + 5) = v98;
      *(v95 + 3) = v96;
    }

    while (v0 != v1);
LABEL_146:
    v99 = 0;
    v134[16] = 0x736C656E6E616843;
    v134[17] = 0xE800000000000000;
    v134[18] = v88;
    v2 = MEMORY[0x1E69E7CC0];
    v0 = &off_1E84D3000;
    do
    {
      v100 = v99;
      while (1)
      {
        if (v66)
        {
          v3 = MEMORY[0x1DA6FB460](v100, v5);
          v99 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_195;
          }
        }

        else
        {
          if (v100 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_196;
          }

          v3 = *(v5 + 8 * v100 + 32);
          swift_unknownObjectRetain();
          v99 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_195;
          }
        }

        v101 = swift_getObjectType();
        if (FCTagProviding.isTopic.getter(v101) && ![v3 *(v0 + 4064)])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v100;
        if (v99 == v1)
        {
          goto LABEL_165;
        }
      }

      sub_1D6C137E4([objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(v133 + 800) tag:v3 feedConfiguration:0], &v135);
      swift_unknownObjectRelease();
      v102 = swift_isUniquelyReferenced_nonNull_native();
      if ((v102 & 1) == 0)
      {
        v2 = sub_1D6995068(0, *(v2 + 16) + 1, 1, v2);
      }

      v104 = *(v2 + 16);
      v103 = *(v2 + 24);
      v3 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        v2 = sub_1D6995068((v103 > 1), v104 + 1, 1, v2);
      }

      *(v2 + 16) = v3;
      v105 = (v2 + 80 * v104);
      v105[2] = v135;
      v106 = v136;
      v107 = v137;
      v108 = v138[0];
      *(v105 + 89) = *(v138 + 9);
      v105[4] = v107;
      v105[5] = v108;
      v105[3] = v106;
      v0 = 0x1E84D3000;
    }

    while (v99 != v1);
  }

  else
  {
    v134[7] = 0x7374726F7053;
    v134[8] = 0xE600000000000000;
    v134[9] = v2;
    v134[10] = 0x73656C7A7A7550;
    v134[11] = 0xE700000000000000;
    v134[12] = v2;
    v134[13] = 0x654E206C61636F4CLL;
    v134[14] = 0xEA00000000007377;
    v134[15] = v2;
    v134[16] = 0x736C656E6E616843;
    v134[17] = 0xE800000000000000;
    v134[18] = v2;
  }

LABEL_165:

  v134[19] = 0x736369706F54;
  v134[20] = 0xE600000000000000;
  v134[21] = v2;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1D7270C10;
  v110 = sub_1D726203C();
  v111 = [v132 systemImageNamed_];

  if (v111)
  {
    v2 = [v111 imageWithConfiguration_];
  }

  else
  {
    v2 = 0;
  }

  v139 = v111 == 0;
  *(v109 + 32) = 27;
  *(v109 + 40) = 0x7961646F54;
  *(v109 + 48) = 0xE500000000000000;
  *(v109 + 56) = v130;
  *(v109 + 72) = 0xE500000000000000;
  *(v109 + 80) = 0;
  *(v109 + 88) = 0;
  *(v109 + 96) = v2;
  *(v109 + 104) = v111 == 0;
  v112 = sub_1D726203C();
  v113 = [v132 systemImageNamed_];

  if (v113)
  {
    v114 = [v113 imageWithConfiguration_];
  }

  else
  {
    v114 = 0;
  }

  v0 = 0;
  v140 = v113 == 0;
  *(v109 + 112) = 28;
  *(v109 + 120) = 0x6C6F626D7953;
  *(v109 + 128) = 0xE600000000000000;
  *(v109 + 136) = xmmword_1D7306720;
  *(v109 + 152) = 0xE600000000000000;
  *(v109 + 160) = 0;
  *(v109 + 168) = 0;
  *(v109 + 176) = v114;
  *(v109 + 184) = v113 == 0;
  v134[22] = 0x736B636F7453;
  v134[23] = 0xE600000000000000;
  v134[24] = v109;
  v115 = 7;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_172:
  if (v0 > 7)
  {
    v115 = v0;
  }

  v116 = &v134[3 * v0 + 6];
  v117 = v115 + 1;
  while (v0 != 7)
  {
    if (v117 == ++v0)
    {
      __break(1u);
      goto LABEL_187;
    }

    v118 = v116 + 24;
    v119 = *v116;
    v120 = *(*v116 + 16);
    v116 += 24;
    if (v120)
    {
      v1 = *(v118 - 40);
      v121 = *(v118 - 32);

      v122 = swift_isUniquelyReferenced_nonNull_native();
      *&v135 = v3;
      if ((v122 & 1) == 0)
      {
        sub_1D69996C8(0, *(v3 + 16) + 1, 1);
        v3 = v135;
      }

      v124 = *(v3 + 16);
      v123 = *(v3 + 24);
      v2 = v124 + 1;
      if (v124 >= v123 >> 1)
      {
        sub_1D69996C8((v123 > 1), v124 + 1, 1);
        v3 = v135;
      }

      *(v3 + 16) = v2;
      v125 = (v3 + 24 * v124);
      v125[4] = v1;
      v125[5] = v121;
      v125[6] = v119;
      v115 = 7;
      goto LABEL_172;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v126 = *(v133 + 8);

  return v126(v3);
}

id sub_1D692F84C()
{
  v1 = 0;
  switch(*v0)
  {
    case 1:
    case 7:
    case 0xB:
    case 0xC:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x1B:
    case 0x1C:
      v6 = sub_1D726203C();
      v7 = [objc_opt_self() systemImageNamed_];
      goto LABEL_13;
    case 6:
      if (qword_1EDF05B68 != -1)
      {
        swift_once();
      }

      v1 = qword_1EDF05B70;
      v2 = qword_1EDF05B70;
      break;
    case 0xA:
    case 0x17:
    case 0x18:
      v5 = objc_opt_self();
      v6 = sub_1D726203C();
      v7 = [v5 ts:v6 internalSystemImageNamed:?];
LABEL_13:
      v1 = v7;

      break;
    case 0xF:
      if (qword_1EDF05CB8 != -1)
      {
        swift_once();
      }

      v1 = qword_1EDF05CC0;
      v3 = qword_1EDF05CC0;
      break;
    case 0x10:
      if (qword_1EDF05C38 != -1)
      {
        swift_once();
      }

      v1 = qword_1EDF05C40;
      v4 = qword_1EDF05C40;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_1D692FCD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D692FD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1D692FD9C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v1 setMinimumLineHeight_];
  [v1 setAlignment_];
  [v1 setLineBreakMode_];
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DB980];
  v6 = v3;
  v7 = [v4 systemFontOfSize:17.0 weight:v5];
  v8 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v9 = MEMORY[0x1E69DB650];
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v12 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v13 = *(v11 + 64);
  v14 = v10;
  v13(v25, v12, v11);
  v15 = v25[1];

  v16 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v1;
  v18 = v17;
  v19 = v1;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v21 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v22 = sub_1D7261D2C();

  v23 = [v20 initWithString:v21 attributes:v22];

  return v23;
}

id sub_1D6930034()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v1 setMinimumLineHeight_];
  [v1 setAlignment_];
  [v1 setLineBreakMode_];
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DB980];
  v6 = v3;
  v7 = [v4 systemFontOfSize:17.0 weight:v5];
  v8 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  v9 = MEMORY[0x1E69DB650];
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v12 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v13 = *(v11 + 64);
  v14 = v10;
  v13(v25, v12, v11);
  v15 = v25[0];

  v16 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v1;
  v18 = v17;
  v19 = v1;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v21 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v22 = sub_1D7261D2C();

  v23 = [v20 initWithString:v21 attributes:v22];

  return v23;
}

void sub_1D69302CC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatContentSlotItemObject(0);
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = v61 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v64 = v61 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v67 = v61 - v19;
  v20 = type metadata accessor for FormatOption(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = (v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for FormatContentSlotItemResolution(0);
  MEMORY[0x1EEE9AC00](v70, v25);
  v27 = (v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v29);
  v69 = v61 - v31;
  v32 = *a1;
  v33 = a1[1];
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  v71 = v10;
  v72 = v6;
  v63 = v32;
  v61[1] = v33;
  if (v34)
  {
    v68 = v30;
    v73 = v27;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v34, 0);
    v35 = v74;
    v36 = v33 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v37 = *(v21 + 72);
    do
    {
      sub_1D5D2545C(v36, v24, type metadata accessor for FormatOption);
      v39 = *v24;
      v38 = v24[1];
      v40 = v24[2];

      sub_1D5D28A44(v24, type metadata accessor for FormatOption);
      v74 = v35;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D69988B8((v41 > 1), v42 + 1, 1);
        v35 = v74;
      }

      *(v35 + 16) = v42 + 1;
      v43 = (v35 + 24 * v42);
      v43[4] = v39;
      v43[5] = v38;
      v43[6] = v40;
      v36 += v37;
      --v34;
    }

    while (v34);
    v32 = v63;
    v27 = v73;
    v30 = v68;
  }

  v44 = *(v32 + 16);
  if (v44)
  {
    v45 = v32 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v68 = *(v30 + 72);
    v73 = MEMORY[0x1E69E7CC0];
    v46 = v69;
    do
    {
      sub_1D5D2545C(v45, v46, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D5D2545C(v46, v27, type metadata accessor for FormatContentSlotItemResolution);
      v47 = v72;
      sub_1D5D2545C(v27, v72, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v48 = *(v27 + *(v70 + 28));
      v49 = v27;
      v50 = *(v27 + *(v70 + 24));

      v51 = v71;
      sub_1D6E7F164(v47, v48, v50, v71);
      sub_1D5D28A44(v49, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D5D28A44(v46, type metadata accessor for FormatContentSlotItemResolution);
      v52 = v65;
      sub_1D6930894(v51, v65);
      v53 = v52;
      v54 = v64;
      sub_1D6930894(v53, v64);
      sub_1D6930894(v54, v67);
      v27 = v49;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v55 = v73;
      }

      else
      {
        v55 = sub_1D699514C(0, v73[2] + 1, 1, v73);
      }

      v57 = v55[2];
      v56 = v55[3];
      if (v57 >= v56 >> 1)
      {
        v55 = sub_1D699514C((v56 > 1), v57 + 1, 1, v55);
      }

      v55[2] = v57 + 1;
      v58 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v73 = v55;
      sub_1D6930894(v67, v55 + v58 + *(v66 + 72) * v57);
      v45 += v68;
      --v44;
    }

    while (v44);

    v59 = v73;
  }

  else
  {

    v59 = MEMORY[0x1E69E7CC0];
  }

  v60 = v62;
  *v62 = v35;
  v60[1] = v59;
}

uint64_t sub_1D6930894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *FormatMotion.TranslateWithScale.init(translate:scale:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = result[1];
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 32) = a3;
  return result;
}

void FormatMotion.transform.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v4 <= v3 && v6 <= v5)
      {
        *a1 = v4;
        *(a1 + 8) = v3;
        *(a1 + 16) = v6;
        *(a1 + 24) = v5;
        v8 = MEMORY[0x1E69D7928];
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    if (v7 != 4)
    {
      if (v4 <= v3 && v6 <= v5)
      {
        v12 = *(v1 + 32);
        *a1 = v4;
        *(a1 + 8) = v3;
        *(a1 + 16) = v6;
        *(a1 + 24) = v5;
        *(a1 + 32) = v12;
        v8 = MEMORY[0x1E69D7918];
        goto LABEL_26;
      }

LABEL_33:
      __break(1u);
      return;
    }

    if (v4 <= v3)
    {
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = MEMORY[0x1E69D7910];
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*(v1 + 40))
  {
    *a1 = v4;
    v8 = MEMORY[0x1E69D7920];
    goto LABEL_26;
  }

  if (v7 != 1)
  {
    if (v4 <= v3 && v6 <= v5)
    {
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = v6;
      *(a1 + 24) = v5;
      v8 = MEMORY[0x1E69D7908];
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if (v4 > v3)
  {
    __break(1u);
    goto LABEL_30;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  v8 = MEMORY[0x1E69D7900];
LABEL_26:
  v13 = *v8;
  v14 = sub_1D725D50C();
  v15 = *(*(v14 - 8) + 104);

  v15(a1, v13, v14);
}

uint64_t _s8NewsFeed12FormatMotionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v7 == 3)
      {
        return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v4, v6)))) & 1;
      }
    }

    else if (v2 == 4)
    {
      if (v7 == 4)
      {
        goto LABEL_9;
      }
    }

    else if (v7 == 5)
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v4, v6)))) & (*(a1 + 32) == *(a2 + 32));
    }
  }

  else
  {
    if (!*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        v11 = vzip1q_s64(v3, v5);
        return *&vmovn_s64(vceqq_f64(vdupq_laneq_s64(v11, 1), v11)) & 1;
      }

      return 0;
    }

    if (v2 == 1)
    {
      if (v7 != 1)
      {
        return 0;
      }

LABEL_9:
      v8 = vzip1q_s64(v3, v5);
      v9 = vzip2q_s64(v3, v5);
      return vmovn_s64(vceqq_f64(vdupq_laneq_s64(v8, 1), v8)).u32[0] & vmovn_s64(vceqq_f64(vdupq_laneq_s64(v9, 1), v9)).u32[0] & 1;
    }

    if (v7 == 2)
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v4, v6)))) & 1;
    }
  }

  return 0;
}

unint64_t sub_1D6930C04(uint64_t a1)
{
  result = sub_1D6930C2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6930C2C()
{
  result = qword_1EC88E4D8;
  if (!qword_1EC88E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4D8);
  }

  return result;
}

unint64_t sub_1D6930CC0()
{
  result = qword_1EC88E4E0;
  if (!qword_1EC88E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4E0);
  }

  return result;
}

unint64_t sub_1D6930D14(uint64_t a1)
{
  result = sub_1D6930D3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6930D3C()
{
  result = qword_1EC88E4E8;
  if (!qword_1EC88E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4E8);
  }

  return result;
}

uint64_t sub_1D6930DD0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6930E24()
{
  result = qword_1EC88E4F0;
  if (!qword_1EC88E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatMotion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
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

void *sub_1D6930EF0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[3];
  v5 = *(a2 + 40);
  if (v5 <= 2)
  {
    if (!*(a2 + 40))
    {
      v37 = MEMORY[0x1E69E6F90];
      sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v37);
      sub_1D5EA74B8(0);
      v40 = *(*(v39 - 8) + 72);
      v41 = (*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1D7270C10;
      v43 = (v42 + v41);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x656C616353, 0xE500000000000000, v43);
      v44 = type metadata accessor for FormatInspectionItem(0);
      v45 = *(*(v44 - 8) + 56);
      v45(v43, 0, 1, v44);
      sub_1D71224F4(0x656C616353, 0xE500000000000000, v3, 0, &v43[v40]);
      v45(&v43[v40], 0, 1, v44);
      sub_1D6795150(0x6E6F69746F4DLL, 0xE600000000000000, 0, 0, v42, &v73);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(inited + 64) = &off_1F518B2C0;
      v46 = swift_allocObject();
      *(inited + 32) = v46;
      *(v46 + 48) = v75;
      v47 = v74;
      *(v46 + 16) = v73;
      *(v46 + 32) = v47;
      v48 = sub_1D7073500(inited);
      swift_setDeallocating();
      v49 = inited + 32;
LABEL_17:
      sub_1D5F10AA0(v49);
      return v48;
    }

    v72 = *a2;
    if (v5 != 1)
    {
      v69 = a2[2];
      v50 = MEMORY[0x1E69E6F90];
      sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_1D7273AE0;
      sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v50);
      sub_1D5EA74B8(0);
      v9 = *(*(v51 - 8) + 72);
      v52 = (*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80);
      v11 = 2 * v9;
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D7279970;
      v13 = v12 + v52;
      v14 = 0x725420656C616353;
      v16 = 0xEF6574616C736E61;
      v15 = (v12 + v52);
      goto LABEL_12;
    }

    v17 = MEMORY[0x1E69E6F90];
    sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v70 = v2;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v17);
    sub_1D5EA74B8(0);
    v20 = *(*(v19 - 8) + 72);
    v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
    v22 = 2 * v20;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7279970;
    v24 = (v23 + v21);
    v25 = 0x615220656C616353;
    v26 = 0xEB0000000065676ELL;
LABEL_15:
    sub_1D711F844(1701869908, 0xE400000000000000, v25, v26, v24);
    v61 = type metadata accessor for FormatInspectionItem(0);
    v62 = *(*(v61 - 8) + 56);
    v62(v24, 0, 1, v61);
    sub_1D71224F4(0x6F42207265776F4CLL, 0xEB00000000646E75, v72, 0, &v24[v20]);
    v62(&v24[v20], 0, 1, v61);
    sub_1D71224F4(0x6F42207265707055, 0xEB00000000646E75, v70, 0, &v24[v22]);
    v62(&v24[v22], 0, 1, v61);
    sub_1D6795150(0x6E6F69746F4DLL, 0xE600000000000000, 0, 0, v23, &v73);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v18 + 56) = &type metadata for FormatInspectionGroup;
    *(v18 + 64) = &off_1F518B2C0;
    v63 = swift_allocObject();
    *(v18 + 32) = v63;
    v56 = v18 + 32;
    *(v63 + 48) = v75;
    v64 = v74;
    *(v63 + 16) = v73;
    *(v63 + 32) = v64;
    v48 = sub_1D7073500(v18);
    goto LABEL_16;
  }

  if (*(a2 + 40) <= 4u)
  {
    v72 = *a2;
    if (v5 == 3)
    {
      v69 = a2[2];
      v6 = MEMORY[0x1E69E6F90];
      sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_1D7273AE0;
      sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v6);
      sub_1D5EA74B8(0);
      v9 = *(*(v8 - 8) + 72);
      v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
      v11 = 2 * v9;
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D7279970;
      v13 = v12 + v10;
      v14 = 0x74616C736E617254;
      v15 = (v12 + v10);
      v16 = 0xE900000000000065;
LABEL_12:
      sub_1D711F844(1701869908, 0xE400000000000000, v14, v16, v15);
      v53 = type metadata accessor for FormatInspectionItem(0);
      v54 = *(*(v53 - 8) + 56);
      v54(v13, 0, 1, v53);
      sub_1D7122A08(88, 0xE100000000000000, v72, v2, 0, (v13 + v9));
      v54(v13 + v9, 0, 1, v53);
      sub_1D7122A08(89, 0xE100000000000000, v69, v4, 0, (v13 + v11));
      v54(v13 + v11, 0, 1, v53);
      sub_1D6795150(0x6E6F69746F4DLL, 0xE600000000000000, 0, 0, v12, &v73);
      swift_setDeallocating();
      goto LABEL_13;
    }

    v58 = MEMORY[0x1E69E6F90];
    sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v70 = v2;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v58);
    sub_1D5EA74B8(0);
    v20 = *(*(v59 - 8) + 72);
    v60 = (*(*(v59 - 8) + 80) + 32) & ~*(*(v59 - 8) + 80);
    v22 = 2 * v20;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7279970;
    v24 = (v23 + v60);
    v25 = 0x74616C736E617254;
    v26 = 0xEF65676E61522065;
    goto LABEL_15;
  }

  if (v5 == 5)
  {
    v68 = a2[4];
    v71 = a2[2];
    v27 = MEMORY[0x1E69E6F90];
    sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v27);
    sub_1D5EA74B8(0);
    v29 = *(*(v28 - 8) + 72);
    v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7274590;
    v32 = v31 + v30;
    sub_1D711F844(1701869908, 0xE400000000000000, 0xD00000000000001ALL, 0x80000001D73DC500, (v31 + v30));
    v67 = v4;
    v33 = v2;
    v34 = v3;
    v35 = type metadata accessor for FormatInspectionItem(0);
    v36 = *(*(v35 - 8) + 56);
    v36(v32, 0, 1, v35);
    sub_1D71224F4(0x656C616353, 0xE500000000000000, v68, 0, (v32 + v29));
    v36(v32 + v29, 0, 1, v35);
    sub_1D7122A08(88, 0xE100000000000000, v34, v33, 0, (v32 + 2 * v29));
    v36(v32 + 2 * v29, 0, 1, v35);
    sub_1D7122A08(89, 0xE100000000000000, v71, v67, 0, (v32 + 3 * v29));
    v36(v32 + 3 * v29, 0, 1, v35);
    sub_1D6795150(0x6E6F69746F4DLL, 0xE600000000000000, 0, 0, v31, &v73);
    swift_setDeallocating();
LABEL_13:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v7 + 56) = &type metadata for FormatInspectionGroup;
    *(v7 + 64) = &off_1F518B2C0;
    v55 = swift_allocObject();
    *(v7 + 32) = v55;
    v56 = v7 + 32;
    *(v55 + 48) = v75;
    v57 = v74;
    *(v55 + 16) = v73;
    *(v55 + 32) = v57;
    v48 = sub_1D7073500(v7);
LABEL_16:
    swift_setDeallocating();
    v49 = v56;
    goto LABEL_17;
  }

  v66 = MEMORY[0x1E69E7CC0];

  return sub_1D7073500(v66);
}

id sub_1D6931C0C(void *a1)
{
  v2 = [a1 layer];
  v3 = [v2 cornerCurve];

  v4 = sub_1D726207C();
  v6 = v5;
  if (v4 == sub_1D726207C() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1D72646CC();

  if (v9)
  {

LABEL_8:
    [a1 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [a1 layer];
    [v18 maskedCorners];

    v19 = sub_1D7262E5C();
    v20 = [a1 layer];
    [v20 cornerRadius];
    v22 = v21;

    v23 = [a1 layer];
    [v23 cornerRadius];
    v25 = v24;

    v26 = [objc_opt_self() bezierPathWithRoundedRect:v19 byRoundingCorners:v11 cornerRadii:{v13, v15, v17, v22, v25}];
    goto LABEL_15;
  }

  v27 = sub_1D726207C();
  v29 = v28;
  if (v27 != sub_1D726207C() || v29 != v30)
  {
    sub_1D72646CC();
  }

  [a1 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [a1 layer];
  [v40 cornerRadius];
  v42 = v41;

  v26 = [objc_opt_self() bezierPathWithRoundedRect:v33 cornerRadius:{v35, v37, v39, v42}];
LABEL_15:

  return v26;
}

void sub_1D6931F20(uint64_t a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_1D6931C0C(a2);
  v9 = [v8 CGPath];

  [a3 setShadowPath_];
  [a3 setShadowRadius_];
  [a3 setShadowOffset_];
  LODWORD(v10) = v5;
  [a3 setShadowOpacity_];
  v12 = FormatColor.color.getter(v11);
  v13 = [(objc_class *)v12 CGColor];

  [a3 setShadowColor_];
}

void sub_1D6932044(uint64_t a1, id a2)
{
  v3 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v3;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v4 = v18;
  v5 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v5;
  if (v18 == 254)
  {
    v12 = [a2 layer];
    [v12 setShadowPath_];
    [v12 setShadowRadius_];
    [v12 setShadowOffset_];
    [v12 setShadowOpacity_];
    [v12 setShadowColor_];
  }

  else
  {
    v6 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v6;
    v15[4] = *(a1 + 64);
    v16 = *(a1 + 80);
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    sub_1D62B7F58(v15, v13);
    [a2 setClipsToBounds_];
    v9 = *(a1 + 48);
    v13[2] = *(a1 + 32);
    v13[3] = v9;
    v13[4] = *(a1 + 64);
    v10 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v10;
    v14 = v4;
    v11 = [a2 layer];
    sub_1D6931F20(v13, a2, v11);

    sub_1D67F4170(v17);
  }
}

uint64_t FormatSponsoredBanner.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double FormatSponsoredBanner.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

Swift::Void __swiftcall FormatSponsoredBanner.loadingCoverDismissed()()
{
  v1 = [v0 subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1D7263BFC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA6FB460](v4, v2);
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v7 = v5;
    sub_1D725C11C();
    if (swift_dynamicCastClass())
    {
      goto LABEL_13;
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_18;
    }
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v2 + 8 * v4 + 32);
  v6 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  sub_1D725C0FC();
}

id FormatSponsoredBanner.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FormatSponsoredBanner.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_identifier];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_adIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id FormatSponsoredBanner.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FormatSponsoredBanner.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_identifier];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_adIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id FormatSponsoredBanner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D69327E0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t static FormatGroupBinding.Temperature.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s8NewsFeed20FormatWeatherBindingV11TemperatureO2eeoiySbAE_AEtFZ_0(&v7, &v5) & 1;
}

uint64_t sub_1D6932B04(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s8NewsFeed20FormatWeatherBindingV11TemperatureO2eeoiySbAE_AEtFZ_0(&v7, &v5) & 1;
}

unint64_t sub_1D6932B50(uint64_t a1)
{
  result = sub_1D6932B78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6932B78()
{
  result = qword_1EC88E508;
  if (!qword_1EC88E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E508);
  }

  return result;
}

unint64_t sub_1D6932BCC(void *a1)
{
  a1[1] = sub_1D6932C04();
  a1[2] = sub_1D6932C58();
  result = sub_1D6932CAC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6932C04()
{
  result = qword_1EC88E510;
  if (!qword_1EC88E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E510);
  }

  return result;
}

unint64_t sub_1D6932C58()
{
  result = qword_1EC88E518;
  if (!qword_1EC88E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E518);
  }

  return result;
}

unint64_t sub_1D6932CAC()
{
  result = qword_1EC88E520;
  if (!qword_1EC88E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E520);
  }

  return result;
}

uint64_t sub_1D6932D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 17))
  {
    return (*a1 + 29);
  }

  v3 = ((2 * *(a1 + 16)) & 0x1C | (*(a1 + 16) >> 4) & 3) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6932D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
    }
  }

  return result;
}

double sub_1D6932DF0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1D6932EB8(a2);
  sub_1D72618EC();
  v7 = *(a2 + 16);
  *a3 = v5;
  *(a3 + 8) = 0x726F7463656C6553;
  *(a3 + 16) = 0xE900000000000073;
  *(a3 + 24) = v6;
  *(a3 + 32) = 0x6B73697265747361;
  *(a3 + 40) = 0xE800000000000000;
  *(a3 + 48) = 0x726F7463656C6553;
  *(a3 + 56) = 0xE900000000000073;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v7;
  *(a3 + 88) = 0;
  *(a3 + 96) = v9;
  *(a3 + 104) = v10;

  return result;
}

void *sub_1D6932EB8(uint64_t a1)
{
  sub_1D693329C(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v29 - v4);
  sub_1D693329C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v12)
    {
LABEL_4:
      *&v35[0] = v7;
      sub_1D69972A4(0, v12, 0);
      v13 = *&v35[0];
      v14 = type metadata accessor for FormatInspectionItem(0);
      v15 = type metadata accessor for FormatInspectionItem.Value(0);
      v16 = *(v15 - 8);
      v33 = v14 - 8;
      v17 = *(v16 + 56);
      v31 = v16 + 56;
      v32 = v17;
      v29[1] = v8;
      v18 = v8 + 5;
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v21 = (v5 + *(v14 + 24));
        *v21 = 0;
        v21[1] = 0xE000000000000000;
        swift_storeEnumTagMultiPayload();
        v32(v21, 0, 1, v15);
        *v5 = v20;
        v5[1] = v19;
        v5[2] = 0;
        v5[3] = 0;
        v22 = v5 + *(v14 + 28);
        *v22 = 0;
        *(v22 + 1) = 0;
        v22[16] = -1;
        (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
        *&v35[0] = v13;
        v23 = *(v13 + 16);
        v24 = *(v13 + 24);

        if (v23 >= v24 >> 1)
        {
          sub_1D69972A4((v24 > 1), v23 + 1, 1);
          v13 = *&v35[0];
        }

        *(v13 + 16) = v23 + 1;
        sub_1D5E4F52C(v5, v13 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23);
        v18 += 2;
        --v12;
      }

      while (v12);

      goto LABEL_11;
    }

LABEL_10:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
    sub_1D6795150(0x726F7463656C6553, 0xE900000000000073, 0, 0, v13, v35);

    v25 = inited;
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(v25 + 64) = &off_1F518B2C0;
    v26 = swift_allocObject();
    *(v25 + 32) = v26;
    *(v26 + 48) = v36;
    v27 = v35[1];
    *(v26 + 16) = v35[0];
    *(v26 + 32) = v27;
    v28 = sub_1D7073500(v25);
    swift_setDeallocating();
    sub_1D5F10AA0(v25 + 32);
    return v28;
  }

  v8 = sub_1D5B9A6D8(*(a1 + 16), 0);
  v9 = sub_1D5B9A6EC(v35, v8 + 4, v6, a1);
  v10 = *&v35[0];

  result = sub_1D5BA45DC(v10);
  if (v9 == v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v12 = v8[2];
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1D693329C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6933300()
{
  result = qword_1EC88E528;
  if (!qword_1EC88E528)
  {
    sub_1D6933358(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E528);
  }

  return result;
}

void sub_1D6933358(uint64_t a1)
{
  if (!qword_1EC88E530)
  {
    v2 = sub_1D5EFF0C0();
    v4 = type metadata accessor for DebugFormatInspectorPopoverView(a1, &type metadata for DebugFormatBindingTreeRowView, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC88E530);
    }
  }
}

uint64_t sub_1D69333C4(void *a1)
{
  v3 = v1;
  sub_1D6936DD0(0, &qword_1EC88E5D8, sub_1D6936D7C, &type metadata for A18_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6936D7C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6936E38(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D693360C(uint64_t a1)
{
  v2 = sub_1D6936D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6933648(uint64_t a1)
{
  v2 = sub_1D6936D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6933684@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6936ADC(a2, v6);
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

uint64_t sub_1D69336E4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6936810();

  return sub_1D725A24C();
}

uint64_t sub_1D6933760@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6936DD0(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D693381C(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v119 = a2;
  v136 = a1;
  v108 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v118 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v124 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v107 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for GroupLayoutContext(0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v23);
  v117 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v107 - v27;
  v113 = &v107 - v27;
  v122 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v122 - 1);
  MEMORY[0x1EEE9AC00](v122, v30);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v112 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v136, v32, type metadata accessor for GroupLayoutBindingContext);
  v114 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v119, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v111 = sub_1D725893C();
  v110 = v35;
  (*(v19 + 8))(v22, v18);
  v134 = &type metadata for A18_V1;
  v36 = sub_1D5ECE3DC();
  v135 = v36;
  LOBYTE(v132) = v33;
  *(&v132 + 1) = v34;
  v133 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v125[0] = sub_1D7264C5C();
  v125[1] = v39;
  v130 = 95;
  v131 = 0xE100000000000000;
  v128 = 45;
  v129 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v117;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v110;
  *v44 = v111;
  v44[1] = v45;
  sub_1D5B68374(&v132, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v122);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v113, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v115 + 56);
  v115 = v37;
  v48(v37 + v47, 0, 1, v116);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v134 = &type metadata for A18_V1;
  v135 = v36;
  LOBYTE(v132) = v112;
  v49 = v38;
  *(&v132 + 1) = v38;
  v133 = v5;
  sub_1D5BE3ED8(v119, v43, v114);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v119 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v116 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v122[14];
    v59 = v136;
    v60 = *&v136[v56];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v57 = sub_1D5C14D80(v63), , v57))
    {
      v114 = v56;
      v52 = *(v57 + 2);
      if (v52)
      {
        v43 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        v53 = v120;
        v54 = v121;
        while (1)
        {
          v55 = *(v57 + 2);
          if (v43 >= v55)
          {
            break;
          }

          v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v64 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v36 + v64 * v43], v54, type metadata accessor for FeedHeadline);
          if ((*(v54 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v54, v124, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v125[0] = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            v37 = *(v56 + 16);
            v66 = *(v56 + 24);
            if (v37 >= v66 >> 1)
            {
              sub_1D5C0F91C((v66 > 1), v37 + 1, 1);
              v53 = v120;
              v56 = v125[0];
            }

            *(v56 + 16) = v37 + 1;
            sub_1D5BDA904(v124, v56 + v36 + v37 * v64, type metadata accessor for FeedHeadline);
            v54 = v121;
          }

          else
          {
            sub_1D5BE780C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v59 = v136;
      if ((*v136 & 1) == 0)
      {

        sub_1D62F071C(v56);
        v71 = v70;

        v56 = v71;
      }

      v43 = v117;
      v52 = MEMORY[0x1E69E7CC0];
      v72 = *&v59[v122[18]];
      v73 = *&v59[v122[19]];
      if (__OFSUB__(v72, v73))
      {
        __break(1u);
        goto LABEL_72;
      }

      v74 = sub_1D5C0FAD4(v56, v72 - v73);
      v36 = sub_1D5C11E10(&unk_1F51139A8, v74, v57);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F51139A8, v56, v57);

        if (!v36)
        {
          v125[0] = &unk_1F51139A8;
          v4 = v109;
          sub_1D5E239F4(v125);
          if (v4)
          {
            goto LABEL_76;
          }

          if (!*(v125[0] + 2))
          {
            goto LABEL_74;
          }

          v103 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v104, "FeedHeadline");
          v104[13] = 0;
          *(v104 + 7) = -5120;
          *(v104 + 2) = 0;
          *(v104 + 3) = 0;
          *(v104 + 4) = 4;
          *(v104 + 5) = v103;
          *(v104 + 6) = 0;
          *(v104 + 7) = 0;
          v104[64] = 0;
          swift_willThrow();
          goto LABEL_65;
        }
      }

      strcpy(v125, "FeedHeadline");
      BYTE5(v125[1]) = 0;
      HIWORD(v125[1]) = -5120;
      v126 = 0;
      v127 = 0;

      v76 = sub_1D5C107C4(v75);

      sub_1D5BDACA8(v125, v76);
      swift_setDeallocating();

      v56 = v114;
    }

    else
    {
      if (qword_1F51139C8)
      {
        v125[0] = &unk_1F51139A8;
        v4 = v109;
        sub_1D5E239F4(v125);
        if (v4)
        {
          goto LABEL_76;
        }

        v67 = *(v125[0] + 2);
        if (v67)
        {
          v68 = *(v125[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_47:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v132);
          return;
        }

        __break(1u);
LABEL_70:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v77 = swift_initStackObject();
    v124 = v77;
    *(v77 + 16) = v52;
    v60 = (v77 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_70;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v78 = &v57[16 * v54];
    *(v78 + 4) = sub_1D63106DC;
    *(v78 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v79 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v80);

    if (!v37)
    {
      break;
    }

    v121 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_50:
      if ((*v59 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v89 = v88;

        v57 = v89;
      }

      v36 = v121;
      v90 = *&v59[v122[18]];
      v91 = *&v59[v122[19]];
      if (__OFSUB__(v90, v91))
      {
        goto LABEL_73;
      }

      v92 = sub_1D5C0FAD4(v57, v90 - v91);
      v93 = sub_1D5C11E10(&unk_1F51139D0, v92, v37);

      if (v93)
      {

        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v95 = sub_1D5C107C4(v94);

        sub_1D5BDACA8(v125, v95);
        swift_setDeallocating();

        v87 = v93;
LABEL_57:
        v43 = v117;
        goto LABEL_58;
      }

      v96 = sub_1D5C11E10(&unk_1F51139D0, v57, v37);

      if (v96)
      {
        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v98 = sub_1D5C107C4(v97);

        sub_1D5BDACA8(v125, v98);
        swift_setDeallocating();

        v87 = v96;
        goto LABEL_57;
      }

      v125[0] = &unk_1F51139D0;
      v4 = v109;
      sub_1D5E239F4(v125);
      if (v4)
      {
        goto LABEL_76;
      }

      v43 = v117;
      if (!*(v125[0] + 2))
      {
        goto LABEL_75;
      }

      v105 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v106, "FeedHeadline");
      v106[13] = 0;
      *(v106 + 7) = -5120;
      *(v106 + 2) = 0;
      *(v106 + 3) = 0;
      *(v106 + 4) = 0;
      *(v106 + 5) = v105;
      *(v106 + 6) = 0;
      *(v106 + 7) = 0;
      v106[64] = 0;
      swift_willThrow();
LABEL_65:
      swift_setDeallocating();
      goto LABEL_47;
    }

    v36 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v120;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v36 >= v55)
      {
        break;
      }

      v81 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v82 = v118;
      sub_1D5BE3ED8(v37 + v81 + v52 * v36, v118, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v82, v123, type metadata accessor for FeedHeadline);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v57;
      if ((v83 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      v54 = *(v57 + 2);
      v84 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v84 >> 1)
      {
        sub_1D5C0F91C((v84 > 1), v54 + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      ++v36;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v123, &v57[v81 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v136;
      if (v43 == v36)
      {
        goto LABEL_50;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if (!qword_1F51139F0 || !qword_1F51139F8)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v125[0] = v36;
    sub_1D5C122E4(v87);
    v99 = v125[0];
    v100 = type metadata accessor for A18_V1.Bound(0);
    v101 = v108;
    v108[3] = v100;
    v101[4] = sub_1D6936E38(&qword_1EC88E548, type metadata accessor for A18_V1.Bound, &unk_1D730749C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    *boxed_opaque_existential_1 = v115;
    sub_1D5B63F14(&v132, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v100 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v100 + 28)) = v99;
    return;
  }

  v125[0] = &unk_1F51139D0;
  v4 = v109;
  sub_1D5E239F4(v125);
  if (!v4)
  {

    if (*(v125[0] + 2))
    {
      v85 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v86, "FeedHeadline");
      v86[13] = 0;
      *(v86 + 7) = -5120;
      *(v86 + 2) = 0;
      *(v86 + 3) = 0;
      *(v86 + 4) = 0;
      *(v86 + 5) = v85;
      *(v86 + 6) = 0;
      *(v86 + 7) = 0;
      v86[64] = 0;
      swift_willThrow();
      goto LABEL_47;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_76:

  __break(1u);
}

void sub_1D6934A58(_BYTE *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1D725A36C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A18_V1.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v42);
  sub_1D5B68374(v12 + 56, v41);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v42, v15 + 16);
  sub_1D5B63F14(v41, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v40[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v40, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v41);
  sub_1D5B68374(v16 + 56, v40);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v41, v18 + 16);
  sub_1D5B63F14(v40, v18 + 56);
  *(v18 + 96) = v17;
  v39[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v39, v42);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v42, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v42[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v42[0];
  v38[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D69367AC, v38);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v35);
  v37 = v22;
  sub_1D69368B8(0, &qword_1EC88E568, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v35 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v43;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v33 = v42[1];
  v34 = v42[0];
  *&v42[0] = v22;
  *&v41[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v36;
  *v36 = 0;
  v30 = v34;
  *(v29 + 24) = v33;
  *(v29 + 8) = v30;
  *&v42[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v32 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
}

uint64_t sub_1D6934FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6935074(uint64_t a1, uint64_t a2)
{
  sub_1D6936DD0(0, &qword_1EC88E580, sub_1D69367BC, &type metadata for A18_V1.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 18;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D69368B8(0, &qword_1EC88E588, MEMORY[0x1E69D7150]);
  sub_1D6936874(&qword_1EC88E590, &qword_1EC88E588, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6935260(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  sub_1D6936DD0(0, &qword_1EC88E580, sub_1D69367BC, &type metadata for A18_V1.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v41 - v7);
  v55 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  v11 = *(v9 - 8);
  v12 = *(v11 + 104);
  v45 = *MEMORY[0x1E69D6F50];
  v46 = v9;
  v43 = v11 + 104;
  v44 = v12;
  v12(v13);
  *v8 = v10;
  v14 = *MEMORY[0x1E69D73C0];
  v53 = *(v5 + 104);
  v42 = v14;
  v51 = v4;
  v53(v8);
  v15 = MEMORY[0x1E69D6F38];
  sub_1D69368B8(0, &qword_1EC88E598, MEMORY[0x1E69D6F38]);
  v17 = v16;
  v18 = sub_1D6936874(&qword_1EC88E5A0, &qword_1EC88E598, v15, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v19 = *(v5 + 8);
  v19(v8, v4);
  v50 = a1;
  v55 = a1;
  sub_1D60DF7C0(0);
  v21 = v20;
  v22 = swift_allocBox();
  v24 = v23;
  v25 = *(v21 + 48);
  *v23 = 11;
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = v24 + v25;
  v30 = v51;
  v29 = v52;
  (*(*(v27 - 8) + 104))(v28, v26, v27);
  *v8 = v22;
  (v53)(v8, *MEMORY[0x1E69D73E0], v30);
  v54 = v29;
  v49 = v18;
  v31 = v17;
  sub_1D72599EC();
  v47 = v5 + 8;
  v48 = v19;
  result = (v19)(v8, v30);
  if (*(v29 + 16) >= 3uLL)
  {
    v33 = v50;
    v55 = v50;
    v34 = v46;
    v35 = swift_allocBox();
    v44(v36, v45, v34);
    *v8 = v35;
    v37 = v53;
    (v53)(v8, v42, v30);
    v41[1] = v31;
    sub_1D7259A9C();
    v38 = v48;
    v48(v8, v30);
    v55 = v33;
    v39 = (v37)(v8, *MEMORY[0x1E69D74A8], v30);
    MEMORY[0x1EEE9AC00](v39, v40);
    sub_1D72599EC();
    return v38(v8, v30);
  }

  return result;
}

uint64_t sub_1D69356C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6936DD0(0, &qword_1EC88E580, sub_1D69367BC, &type metadata for A18_V1.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D74A8], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE780C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D69368B8(0, &qword_1EC88E598, MEMORY[0x1E69D6F38]);
    sub_1D6936874(&qword_1EC88E5A0, &qword_1EC88E598, v26, MEMORY[0x1E69D6F40]);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6935AA4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6936DD0(0, &qword_1EC88E580, sub_1D69367BC, &type metadata for A18_V1.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 9;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D69368B8(0, &qword_1EC88E598, MEMORY[0x1E69D6F38]);
  sub_1D6936874(&qword_1EC88E5A0, &qword_1EC88E598, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6935D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6936DD0(0, &qword_1EC88E580, sub_1D69367BC, &type metadata for A18_V1.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v32 - v12);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4060E00000000000;
  *v13 = v15;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = a2 + *(v17 + 72);
    v32[1] = KeyPath;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v33 = v9;
    v24 = v23;
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v24 + 56))(&v7[v20], 0, 1, v22);
    v25 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v25;
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = v25;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v19 + v18, v7, v26, v27, v28, v29);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v31 = MEMORY[0x1E69D6F38];
    sub_1D69368B8(0, &qword_1EC88E598, MEMORY[0x1E69D6F38]);
    sub_1D6936874(&qword_1EC88E5A0, &qword_1EC88E598, v31, MEMORY[0x1E69D6F40]);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v33);
  }

  return result;
}

uint64_t sub_1D6936120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6936DD0(0, &qword_1EC88E580, sub_1D69367BC, &type metadata for A18_V1.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v29 - v12);
  v29[1] = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72);
    v18 = v4[5];
    v29[0] = v9;
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v21 + 56))(&v7[v18], 0, 1, v20);
    v22 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v22;
    v23 = *MEMORY[0x1E69DDCE0];
    v24 = *(MEMORY[0x1E69DDCE0] + 8);
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v26 = *(MEMORY[0x1E69DDCE0] + 24);
    v27 = v22;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v17, v7, v23, v24, v25, v26);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v28 = MEMORY[0x1E69D6F38];
    sub_1D69368B8(0, &qword_1EC88E598, MEMORY[0x1E69D6F38]);
    sub_1D6936874(&qword_1EC88E5A0, &qword_1EC88E598, v28, MEMORY[0x1E69D6F40]);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v29[0]);
  }

  return result;
}

uint64_t sub_1D69364F4@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V1.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6936608(uint64_t a1)
{
  *(a1 + 8) = sub_1D6936638();
  result = sub_1D693668C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6936638()
{
  result = qword_1EC88E538;
  if (!qword_1EC88E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E538);
  }

  return result;
}

unint64_t sub_1D693668C()
{
  result = qword_1EC88E540;
  if (!qword_1EC88E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E540);
  }

  return result;
}

uint64_t type metadata accessor for A18_V1.Bound(uint64_t a1)
{
  result = qword_1EC88E550;
  if (!qword_1EC88E550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6936754(uint64_t a1)
{
  result = sub_1D6936E38(&qword_1EC88E560, type metadata accessor for A18_V1.Bound, &unk_1D7307474);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69367BC()
{
  result = qword_1EC88E570;
  if (!qword_1EC88E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E570);
  }

  return result;
}

unint64_t sub_1D6936810()
{
  result = qword_1EC88E578;
  if (!qword_1EC88E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E578);
  }

  return result;
}

uint64_t sub_1D6936874(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D69368B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D69368B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V1.Layout;
    v8[1] = &type metadata for A18_V1.Layout.Attributes;
    v8[2] = sub_1D69367BC();
    v8[3] = sub_1D6936810();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6936980()
{
  result = qword_1EC88E5A8;
  if (!qword_1EC88E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5A8);
  }

  return result;
}

unint64_t sub_1D69369D8()
{
  result = qword_1EC88E5B0;
  if (!qword_1EC88E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5B0);
  }

  return result;
}

unint64_t sub_1D6936A30()
{
  result = qword_1EC88E5B8;
  if (!qword_1EC88E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5B8);
  }

  return result;
}

unint64_t sub_1D6936A88()
{
  result = qword_1EC88E5C0;
  if (!qword_1EC88E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5C0);
  }

  return result;
}

uint64_t sub_1D6936ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6936DD0(0, &qword_1EC88E5C8, sub_1D6936D7C, &type metadata for A18_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6936D7C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6936E38(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6936D7C()
{
  result = qword_1EC88E5D0;
  if (!qword_1EC88E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5D0);
  }

  return result;
}

void sub_1D6936DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6936E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6936E94()
{
  result = qword_1EC88E5E0;
  if (!qword_1EC88E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5E0);
  }

  return result;
}

unint64_t sub_1D6936EEC()
{
  result = qword_1EC88E5E8;
  if (!qword_1EC88E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5E8);
  }

  return result;
}

unint64_t sub_1D6936F44()
{
  result = qword_1EC88E5F0;
  if (!qword_1EC88E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5F0);
  }

  return result;
}

uint64_t sub_1D6936F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      if (*v3)
      {
        v4 = sub_1D72621DC();
        v6 = v5;
      }

      else
      {

        v4 = FormatFloat.description.getter(v7);
        v6 = v8;
      }

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D5BFC364((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v4;
      *(v11 + 40) = v6;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v12 = sub_1D7261F3C();

  return v12;
}

uint64_t sub_1D6937104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v3 = v20;
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 17);
      if (*v4)
      {
        v6 = sub_1D72621DC();
      }

      else
      {
        v8 = *(v4 - 9);
        v9 = *(v4 - 1);
        if (v9)
        {
          sub_1D5E04C58(v5, v8, v9, 0);
          MEMORY[0x1DA6F9910](v5, v8);
          MEMORY[0x1DA6F9910](41, 0xE100000000000000);
          sub_1D5E04C68(v5, v8, v9, 0);
          v6 = 0x286E6F6974706FLL;
          v7 = 0xE700000000000000;
        }

        else
        {
          v10 = sub_1D72644BC();
          v12 = v11;
          sub_1D5E04C68(v5, v8, v9, 0);
          v7 = v12;
          v6 = v10;
        }
      }

      v21 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v6;
        v17 = v7;
        sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        v7 = v17;
        v6 = v16;
        v3 = v21;
      }

      *(v3 + 16) = v14 + 1;
      v15 = v3 + 16 * v14;
      *(v15 + 32) = v6;
      *(v15 + 40) = v7;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v18 = sub_1D7261F3C();

  return v18;
}

void static FormatPointEquation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1D633A310(*a1, *a2);
  if (v4)
  {

    sub_1D633A310(v2, v3);
  }
}

uint64_t FormatPointEquation.description.getter()
{
  v1 = v0[1];
  v2 = sub_1D6936F98(*v0);
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v3 = sub_1D6936F98(v1);
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_1D6937418(uint64_t a1)
{
  result = sub_1D6937440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6937440()
{
  result = qword_1EC88E5F8;
  if (!qword_1EC88E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E5F8);
  }

  return result;
}

unint64_t sub_1D6937494(void *a1)
{
  a1[1] = sub_1D5C8DC6C();
  a1[2] = sub_1D6676B58();
  result = sub_1D69374CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69374CC()
{
  result = qword_1EC88E600;
  if (!qword_1EC88E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E600);
  }

  return result;
}

uint64_t sub_1D6937538()
{
  v1 = v0[1];
  v2 = sub_1D6936F98(*v0);
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v3 = sub_1D6936F98(v1);
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

BOOL static FormatSlotItemPuzzleStatisticTransform.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

unint64_t sub_1D693761C(uint64_t a1)
{
  result = sub_1D6937644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6937644()
{
  result = qword_1EC88E608;
  if (!qword_1EC88E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E608);
  }

  return result;
}

unint64_t sub_1D6937698(void *a1)
{
  a1[1] = sub_1D66B920C();
  a1[2] = sub_1D66F84EC();
  result = sub_1D69376D0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69376D0()
{
  result = qword_1EC88E610;
  if (!qword_1EC88E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E610);
  }

  return result;
}

BOOL sub_1D6937754(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return result;
}

uint64_t sub_1D693779C(uint64_t a1)
{
  sub_1D5B7A5F0(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v119 = v110 - v4;
  v116 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v116, v5);
  v7 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7A5F0(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v110 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v110 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v110[3] = v110 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v114 = v110 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v113 = v110 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v112 = v110 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v111 = v110 - v34;
  v122 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v122, v35);
  v115 = v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v117 = v110 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v121 = v110 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v120 = v110 - v45;
  v127 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v127, v46);
  v123 = v110 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v129, v48);
  v50 = v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for PuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v126, v51);
  v125 = v110 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v124 = v110 - v55;
  v56 = type metadata accessor for FormatContentSlotItemResolution(0) - 8;
  MEMORY[0x1EEE9AC00](v56, v57);
  v130 = v110 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v63 = v110 - v62;
  v64 = *(a1 + 16);
  if (v64)
  {
    v110[2] = v19;
    v110[0] = v15;
    v110[1] = v11;
    v65 = *(v61 + 72);
    v128 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = a1 + v128;
    v67 = MEMORY[0x1E69E7CC0];
    v68 = v123;
    v118 = v110 - v62;
    while (1)
    {
      sub_1D5CEC738(v66, v63, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D5CEC738(v63, v50, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v74 = type metadata accessor for FormatContentSlotItemObject.Resolved;
        v75 = v50;
LABEL_14:
        sub_1D5D1EA98(v75, v74);
LABEL_15:
        sub_1D69387AC(v63, v130, type metadata accessor for FormatContentSlotItemResolution);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131 = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6997C80(0, *(v67 + 16) + 1, 1);
          v67 = v131;
        }

        v78 = *(v67 + 16);
        v77 = *(v67 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1D6997C80((v77 > 1), v78 + 1, 1);
          v67 = v131;
        }

        *(v67 + 16) = v78 + 1;
        sub_1D69387AC(v130, v67 + v128 + v78 * v65, type metadata accessor for FormatContentSlotItemResolution);
        goto LABEL_5;
      }

      v69 = v125;
      sub_1D69387AC(v50, v125, type metadata accessor for PuzzleStatistic);
      v70 = v69;
      v71 = v124;
      sub_1D69387AC(v70, v124, type metadata accessor for PuzzleStatistic);
      sub_1D5CEC738(v71 + *(v126 + 20), v68, type metadata accessor for PuzzleStatisticCategory);
      sub_1D5D1EA98(v71, type metadata accessor for PuzzleStatistic);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v79 = v68;
          v80 = v7;
          v81 = v119;
          sub_1D6938814(v79, v119, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v82 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
          v84 = v81;
          v7 = v80;
          v68 = v123;
          v63 = v118;
          sub_1D6938880(v84, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          if (v83 != 1)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1D5D1EA98(v68, type metadata accessor for PuzzleStatisticCategory);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload)
      {
        sub_1D69387AC(v68, v7, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        sub_1D5CEC738(v7, v121, type metadata accessor for PuzzleStatisticValue);
        v85 = swift_getEnumCaseMultiPayload();
        if (v85 > 4)
        {
          if (v85 > 6)
          {
            v68 = v123;
            if ((*(v121 + 8) & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v85 == 5)
            {
              v88 = v121;
              v89 = v113;
            }

            else
            {
              v88 = v121;
              v89 = v114;
            }

            sub_1D6938814(v88, v89, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
            v95 = type metadata accessor for PuzzleStreak(0);
            v96 = (*(*(v95 - 8) + 48))(v89, 1, v95);
            sub_1D6938880(v89, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
            v68 = v123;
            if (v96 != 1)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          if (v85 > 2)
          {
            v68 = v123;
          }

          else
          {
            v68 = v123;
            if ((v85 - 1) < 2)
            {
              goto LABEL_71;
            }
          }

          if ((*(v121 + 8) & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        sub_1D5CEC738(&v7[*(v116 + 20)], v117, type metadata accessor for PuzzleStatisticValue);
        v97 = swift_getEnumCaseMultiPayload();
        if (v97 > 4)
        {
          if (v97 > 6)
          {
            v68 = v123;
            if ((*(v117 + 8) & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v97 == 5)
            {
              v98 = v117;
              v99 = &v135;
            }

            else
            {
              v98 = v117;
              v99 = &v134;
            }

            v103 = *(v99 - 32);
            sub_1D6938814(v98, v103, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
            v104 = type metadata accessor for PuzzleStreak(0);
            v105 = (*(*(v104 - 8) + 48))(v103, 1, v104);
            sub_1D6938880(v103, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
            v68 = v123;
            if (v105 != 1)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          if (v97 > 2)
          {
            v68 = v123;
          }

          else
          {
            v68 = v123;
            if ((v97 - 1) < 2)
            {
              goto LABEL_71;
            }
          }

          if ((*(v117 + 8) & 1) == 0)
          {
LABEL_71:
            v74 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
            v75 = v7;
            goto LABEL_14;
          }
        }

        sub_1D5CEC738(&v7[*(v116 + 24)], v115, type metadata accessor for PuzzleStatisticValue);
        sub_1D5D1EA98(v7, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v100 = swift_getEnumCaseMultiPayload();
        if (v100 <= 4)
        {
          if (v100 > 2)
          {
            v68 = v123;
            v91 = v115;
          }

          else
          {
            v68 = v123;
            if ((v100 - 1) < 2)
            {
              goto LABEL_15;
            }

            v91 = v115;
          }

          goto LABEL_40;
        }

        if (v100 > 6)
        {
          v90 = v115;
LABEL_34:
          v68 = v123;
          if ((*(v90 + 8) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

        if (v100 == 5)
        {
          v101 = v115;
          v102 = &v132;
        }

        else
        {
          v101 = v115;
          v102 = &v133;
        }

        v106 = *(v102 - 32);
        sub_1D6938814(v101, v106, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v107 = type metadata accessor for PuzzleStreak(0);
        v108 = (*(*(v107 - 8) + 48))(v106, 1, v107);
        sub_1D6938880(v106, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v94 = v108 == 1;
      }

      else
      {
        sub_1D69387AC(v68, v120, type metadata accessor for PuzzleStatisticValue);
        v73 = swift_getEnumCaseMultiPayload();
        if (v73 <= 4)
        {
          if (v73 > 2)
          {
            v68 = v123;
          }

          else
          {
            v68 = v123;
            if ((v73 - 1) < 2)
            {
              goto LABEL_15;
            }
          }

          v91 = v120;
LABEL_40:
          if ((*(v91 + 8) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

        if (v73 > 6)
        {
          v90 = v120;
          goto LABEL_34;
        }

        if (v73 == 5)
        {
          v86 = v120;
          v87 = v111;
        }

        else
        {
          v86 = v120;
          v87 = v112;
        }

        sub_1D6938814(v86, v87, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v92 = type metadata accessor for PuzzleStreak(0);
        v93 = (*(*(v92 - 8) + 48))(v87, 1, v92);
        sub_1D6938880(v87, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v94 = v93 == 1;
      }

      v68 = v123;
      if (!v94)
      {
        goto LABEL_15;
      }

LABEL_4:
      sub_1D5D1EA98(v63, type metadata accessor for FormatContentSlotItemResolution);
LABEL_5:
      v66 += v65;
      if (!--v64)
      {
        return v67;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D69384B4(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a3;
  v38 = a2;
  v4 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36[-v10];
  v12 = type metadata accessor for PuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v36[-v18];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v36[-v22];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v36[-v26];
  sub_1D5CEC738(a1, v11, type metadata accessor for FormatContentSlotItemObject.Resolved);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v31 = type metadata accessor for FormatContentSlotItemObject.Resolved;
    v32 = v11;
LABEL_7:
    sub_1D5D1EA98(v32, v31);
    v33 = 1;
    return v33 & 1;
  }

  sub_1D69387AC(v11, v23, type metadata accessor for PuzzleStatistic);
  sub_1D69387AC(v23, v27, type metadata accessor for PuzzleStatistic);
  sub_1D5CEC738(v38, v7, type metadata accessor for FormatContentSlotItemObject.Resolved);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1D5D1EA98(v7, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v31 = type metadata accessor for PuzzleStatistic;
    v32 = v27;
    goto LABEL_7;
  }

  sub_1D69387AC(v7, v15, type metadata accessor for PuzzleStatistic);
  sub_1D69387AC(v15, v19, type metadata accessor for PuzzleStatistic);
  v28 = *(v12 + 20);
  if (v37)
  {
    v29 = &v27[v28];
    v30 = &v19[v28];
  }

  else
  {
    v29 = &v19[v28];
    v30 = &v27[v28];
  }

  v34 = _s8NewsFeed23PuzzleStatisticCategoryO1loiySbAC_ACtFZ_0(v29, v30);
  sub_1D5D1EA98(v19, type metadata accessor for PuzzleStatistic);
  sub_1D5D1EA98(v27, type metadata accessor for PuzzleStatistic);
  v33 = !v34;
  return v33 & 1;
}
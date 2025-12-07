unint64_t sub_1D5CE6B14()
{
  result = qword_1EDF205A8;
  if (!qword_1EDF205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205A8);
  }

  return result;
}

unint64_t sub_1D5CE6BC8()
{
  result = qword_1EDF205B0;
  if (!qword_1EDF205B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205B0);
  }

  return result;
}

unint64_t sub_1D5CE6C1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5CE6C4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D5CE6C4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D5CE6C98()
{
  result = qword_1EDF205B8;
  if (!qword_1EDF205B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205B8);
  }

  return result;
}

uint64_t sub_1D5CE6CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5CE6D2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D5CE6DE8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = a2(0);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, a5, &unk_1D7321584);
  sub_1D7264B0C();
  v15 = v6;
  if (v6)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v15);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1D7264AFC();
  v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

  v20 = v34;
  v19 = v35;
  v21 = v14;
  if (v18)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v24 - 2);
      v26 = *(v24 - 1);

      v28 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x726F74617265706FLL, 0xE800000000000000);
      sub_1D5E2D970();
      v15 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v16 + 8))(v21, v20);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v36 = 0uLL;
  v37 = 0;
  sub_1D726431C();
  v25 = v38;
  v36 = xmmword_1D728CF30;
  v37 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v16 + 8))(v14, v20);
  v31 = v38;
  *v19 = v25;
  *(v19 + 8) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CE7168(uint64_t a1)
{
  if (!qword_1EDF24E70)
  {
    v4[0] = &_s10CodingKeysON_23;
    v4[1] = sub_1D5CE7280();
    v4[2] = sub_1D5CE72D4();
    v4[3] = sub_1D5CE73D8();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24E70);
    }
  }
}

void sub_1D5CE71EC(uint64_t a1)
{
  if (!qword_1EDF19E48)
  {
    sub_1D5CE7168(255);
    sub_1D5B58B84(&qword_1EDF24E78, sub_1D5CE7168, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19E48);
    }
  }
}

unint64_t sub_1D5CE7280()
{
  result = qword_1EDF205D0;
  if (!qword_1EDF205D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205D0);
  }

  return result;
}

unint64_t sub_1D5CE72D4()
{
  result = qword_1EDF205D8;
  if (!qword_1EDF205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205D8);
  }

  return result;
}

unint64_t sub_1D5CE732C()
{
  result = qword_1EDF205C0;
  if (!qword_1EDF205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205C0);
  }

  return result;
}

unint64_t sub_1D5CE7384()
{
  result = qword_1EDF205C8;
  if (!qword_1EDF205C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205C8);
  }

  return result;
}

unint64_t sub_1D5CE73D8()
{
  result = qword_1EDF205E0;
  if (!qword_1EDF205E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF205E0);
  }

  return result;
}

uint64_t sub_1D5CE7430()
{
  v1 = 0x726F74617265706FLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

unint64_t sub_1D5CE74E8()
{
  result = qword_1EDF32470;
  if (!qword_1EDF32470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32470);
  }

  return result;
}

NewsFeed::FormatOperator_optional __swiftcall FormatOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D5CE75A4()
{
  result = qword_1EDF2BE10;
  if (!qword_1EDF2BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE10);
  }

  return result;
}

unint64_t sub_1D5CE7658()
{
  result = qword_1EDF2BE18;
  if (!qword_1EDF2BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE18);
  }

  return result;
}

uint64_t sub_1D5CE76AC@<X0>(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

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

unint64_t sub_1D5CE776C()
{
  result = qword_1EDF2BDF8;
  if (!qword_1EDF2BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDF8);
  }

  return result;
}

NewsFeed::FormatTextAlignment_optional __swiftcall FormatTextAlignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatEnumPropertyDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v58 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE8280(0);
  v12 = v11;
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE8314(0);
  sub_1D5B58B84(&qword_1EDF24EE8, sub_1D5CE8314, &unk_1D7321584);
  v16 = v77;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    v37 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v77 = v10;
  v18 = v76;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1D7264AFC();
  v20 = Dictionary<>.errorOnUnknownKeys.getter(v19);

  v21 = v12;
  v22 = v15;
  if (v20)
  {
    v23 = sub_1D726433C();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = (v23 + 48);
      while (*v25 != 1)
      {
        v25 += 24;
        if (!--v24)
        {
          goto LABEL_7;
        }
      }

      v29 = *(v25 - 2);
      v28 = *(v25 - 1);

      v30 = sub_1D661A744();
      sub_1D5E2D970();
      v31 = swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v28;
      *(v32 + 16) = v30;
      v17 = v31;
      *(v32 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v22, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v80 = 0uLL;
  v81 = 0;
  v26 = sub_1D72642BC();
  v72 = v27;
  v80 = xmmword_1D728CF30;
  v81 = 0;
  v33 = sub_1D72642BC();
  v71 = v34;
  v80 = xmmword_1D7297410;
  v81 = 0;
  v69 = sub_1D72642BC();
  v70 = v33;
  v36 = v35;
  v80 = xmmword_1D72BAA60;
  v81 = 0;
  v67 = sub_1D726422C();
  v68 = v26;
  v40 = v39;
  v80 = xmmword_1D72BAA70;
  v81 = 0;
  v65 = sub_1D72642BC();
  v66 = v41;
  v80 = xmmword_1D72BAA80;
  v81 = 0;
  v82 = sub_1D72642CC();
  v64 = v36;
  v80 = xmmword_1D72BAA90;
  v81 = 0;
  v62 = sub_1D726422C();
  v63 = v42;
  sub_1D5C34D84(0, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
  v80 = xmmword_1D72BAAA0;
  v81 = 0;
  sub_1D5CE02B4();
  sub_1D726431C();
  v59 = v78;
  v58 = xmmword_1D72BAAB0;
  v80 = xmmword_1D72BAAB0;
  v81 = 0;
  v43 = sub_1D726434C();
  v61 = a1;
  v60 = v40;
  if (v43)
  {
    v78 = v58;
    v79 = 0;
    sub_1D726431C();
    v44 = v83;
  }

  else
  {
    v44 = 0;
  }

  v58 = xmmword_1D72BAAC0;
  v80 = xmmword_1D72BAAC0;
  v81 = 0;
  if (sub_1D726434C())
  {
    v78 = v58;
    v79 = 0;
    sub_1D5B58B84(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v45 = v21;
    v46 = v22;
    sub_1D726431C();
    v47 = v7;
    v48 = v77;
    v49 = sub_1D725A74C();
    (*(v73 + 8))(v48, v47);
  }

  else
  {
    v46 = v15;
    v45 = v21;
    v49 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v80 = xmmword_1D72BAAD0;
  v81 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v18 + 8))(v46, v45);
  v50 = type metadata accessor for FormatEnumPropertyDefinition(0);
  v51 = v74;
  sub_1D5C4E944(v75, v74 + *(v50 + 56), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v52 = v72;
  *v51 = v68;
  *(v51 + 8) = v52;
  v53 = v71;
  *(v51 + 16) = v70;
  *(v51 + 24) = v53;
  v54 = v64;
  *(v51 + 32) = v69;
  *(v51 + 40) = v54;
  v55 = v60;
  *(v51 + 48) = v67;
  *(v51 + 56) = v55;
  v56 = v66;
  *(v51 + 64) = v65;
  *(v51 + 72) = v56;
  *(v51 + 80) = v82 & 1;
  v57 = v63;
  *(v51 + 88) = v62;
  *(v51 + 96) = v57;
  *(v51 + 104) = v59;
  *(v51 + 112) = v44;
  *(v51 + 120) = v49;
  v37 = v61;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_1D5CE8280(uint64_t a1)
{
  if (!qword_1EDF19E80)
  {
    sub_1D5CE8314(255);
    sub_1D5B58B84(&qword_1EDF24EE8, sub_1D5CE8314, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19E80);
    }
  }
}

void sub_1D5CE8314(uint64_t a1)
{
  if (!qword_1EDF24EE0)
  {
    v4[0] = &_s10CodingKeysON_157;
    v4[1] = sub_1D5CE8398();
    v4[2] = sub_1D5CE83EC();
    v4[3] = sub_1D5CE84F0();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24EE0);
    }
  }
}

unint64_t sub_1D5CE8398()
{
  result = qword_1EDF218E0;
  if (!qword_1EDF218E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218E0);
  }

  return result;
}

unint64_t sub_1D5CE83EC()
{
  result = qword_1EDF218E8;
  if (!qword_1EDF218E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218E8);
  }

  return result;
}

unint64_t sub_1D5CE8444()
{
  result = qword_1EDF218D0;
  if (!qword_1EDF218D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218D0);
  }

  return result;
}

unint64_t sub_1D5CE849C()
{
  result = qword_1EDF218D8;
  if (!qword_1EDF218D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218D8);
  }

  return result;
}

unint64_t sub_1D5CE84F0()
{
  result = qword_1EDF218F0[0];
  if (!qword_1EDF218F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF218F0);
  }

  return result;
}

uint64_t sub_1D5CE854C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x72656C69706D6F63;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x746C7561666564;
    v9 = 0x7365736163;
    if (a1 != 7)
    {
      v9 = 0x7461636572706564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x656D614E6D756E65;
    v3 = 0x7470697263736564;
    if (a1 != 4)
    {
      v3 = 0x6465726975716572;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x696669746E656469;
    if (a1 != 1)
    {
      v4 = 1701667182;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D5CE86E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5CE87B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t FormatCompilerEnumProperty.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v51[-v5];
  sub_1D5C4F6F8(0);
  v7 = v6;
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5CE92B0(0);
  v12 = v11;
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE922C(0);
  sub_1D5B58B84(&qword_1EDF25028, sub_1D5CE922C, &unk_1D7321584);
  v16 = v75;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v75 = v10;
  v18 = v67;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1D7264AFC();
  v20 = Dictionary<>.errorOnUnknownKeys.getter(v19);

  v21 = v68;
  if (v20)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D6619C68();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v73 = 0uLL;
  v74 = 0;
  v25 = sub_1D72642BC();
  v64 = v26;
  v73 = xmmword_1D728CF30;
  v74 = 0;
  v62 = sub_1D72642BC();
  v63 = v32;
  v73 = xmmword_1D7297410;
  v74 = 0;
  v58 = sub_1D72642BC();
  v59 = v25;
  v35 = v34;
  v61 = xmmword_1D72BAA60;
  v73 = xmmword_1D72BAA60;
  v74 = 0;
  v36 = sub_1D726434C();
  if (v36)
  {
    v71 = v61;
    v72 = 0;
    sub_1D726431C();
    *&v61 = v35;
    v37 = v70;
    v56 = v69;
  }

  else
  {
    *&v61 = v35;
    v56 = 0;
    v37 = 0xE000000000000000;
  }

  v60 = v37;
  v57 = xmmword_1D72BAA70;
  v73 = xmmword_1D72BAA70;
  v74 = 0;
  if (sub_1D726434C())
  {
    v71 = v57;
    v72 = 0;
    sub_1D726431C();
    v38 = v69;
  }

  else
  {
    v38 = 1;
  }

  LODWORD(v57) = v38;
  v73 = xmmword_1D72BAA80;
  v74 = 0;
  v39 = sub_1D726422C();
  v41 = v40;
  v54 = v39;
  v55 = xmmword_1D72BAA90;
  v73 = xmmword_1D72BAA90;
  v74 = 0;
  if (sub_1D726434C())
  {
    v71 = v55;
    v72 = 0;
    sub_1D726431C();
    v42 = v69;
  }

  else
  {
    v42 = 0;
  }

  v52 = v42;
  *&v55 = v41;
  v53 = xmmword_1D72BAAA0;
  v73 = xmmword_1D72BAAA0;
  v74 = 0;
  if (sub_1D726434C())
  {
    v71 = v53;
    v72 = 0;
    sub_1D5B58B84(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v43 = v75;
    sub_1D726431C();
    *&v53 = sub_1D725A74C();
    (*(v65 + 8))(v43, v7);
  }

  else
  {
    *&v53 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v73 = xmmword_1D72BAAB0;
  v74 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  v44 = v66;
  sub_1D726427C();
  (*(v18 + 8))(v15, v12);
  v45 = type metadata accessor for FormatCompilerEnumProperty(0);
  sub_1D5C4E944(v44, v21 + *(v45 + 48), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v46 = v64;
  *v21 = v59;
  *(v21 + 8) = v46;
  v47 = v63;
  *(v21 + 16) = v62;
  *(v21 + 24) = v47;
  v48 = v61;
  *(v21 + 32) = v58;
  *(v21 + 40) = v48;
  v49 = v60;
  *(v21 + 48) = v56;
  *(v21 + 56) = v49;
  *(v21 + 64) = v57;
  v50 = v55;
  *(v21 + 72) = v54;
  *(v21 + 80) = v50;
  *(v21 + 88) = v52;
  *(v21 + 96) = v53;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CE922C(uint64_t a1)
{
  if (!qword_1EDF25020)
  {
    v4[0] = &_s10CodingKeysON_172;
    v4[1] = sub_1D5CE9344();
    v4[2] = sub_1D5CE9398();
    v4[3] = sub_1D5CE949C();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF25020);
    }
  }
}

void sub_1D5CE92B0(uint64_t a1)
{
  if (!qword_1EDF19F20)
  {
    sub_1D5CE922C(255);
    sub_1D5B58B84(&qword_1EDF25028, sub_1D5CE922C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19F20);
    }
  }
}

unint64_t sub_1D5CE9344()
{
  result = qword_1EDF235E0;
  if (!qword_1EDF235E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235E0);
  }

  return result;
}

unint64_t sub_1D5CE9398()
{
  result = qword_1EDF235E8;
  if (!qword_1EDF235E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235E8);
  }

  return result;
}

unint64_t sub_1D5CE93F0()
{
  result = qword_1EDF235D0;
  if (!qword_1EDF235D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235D0);
  }

  return result;
}

unint64_t sub_1D5CE9448()
{
  result = qword_1EDF235D8;
  if (!qword_1EDF235D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235D8);
  }

  return result;
}

unint64_t sub_1D5CE949C()
{
  result = qword_1EDF235F0[0];
  if (!qword_1EDF235F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF235F0);
  }

  return result;
}

uint64_t sub_1D5CE94F8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x72656C69706D6F63;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746C7561666564;
    if (a1 != 5)
    {
      v7 = 0x7461636572706564;
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
    v1 = 0x696669746E656469;
    v2 = 1701667182;
    v3 = 0x7470697263736564;
    if (a1 != 3)
    {
      v3 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
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

uint64_t static FormatContentSubgroupNeighborsResolver.resolve(subgroups:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = a2;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D5CE97C8(0, v2, 0);
    v3 = v21;
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v17[0] = *v5;
      v17[1] = v6;
      v7 = v5[3];
      v18 = v5[2];
      v19 = v7;
      v20 = v5[4];
      v8 = *(&v17[0] + 1);
      v14 = v18;
      v15 = *&v17[0];

      sub_1D5CE9930(v17, v16);

      v21 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D5CE97C8((v9 > 1), v10 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v10 + 1;
      v11 = (v3 + 24 * v10);
      v11[4] = v15;
      v11[5] = v8;
      v11[6] = v14 & 0x7FFFFFFFFFFFFFFFLL;
      v5 += 5;
      --v2;
    }

    while (v2);
    a2 = v13;
  }

  sub_1D5CE998C(v3, a2);
}

char *sub_1D5CE97C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D5CE97F8(a1, a2, a3, *v3, &qword_1EDF195D8, &type metadata for FormatContentSubgroupNeighborsRequest);
  *v3 = result;
  return result;
}

char *sub_1D5CE97F8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void sub_1D5CE998C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v106 = a2;
  v142 = type metadata accessor for FormatVersionRequirement(0);
  v3 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v4);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for FormatOption(0);
  v113 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v123 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v122 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v121 = &v106 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v120 = &v106 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v106 - v26;
  v29 = *(a1 + 16);
  if (v29)
  {
    v30 = 0;
    v135 = 0;
    v126 = 0;
    v31 = 0;
    v107 = "subgroup-current-trait-";
    v109 = "subgroup-next-trait-";
    v108 = "subgroup-reverse-index";
    v140 = (v3 + 56);
    v110 = 0x80000001D74012B0;
    v32 = (a1 + 72);
    v33 = 0;
    v34 = MEMORY[0x1E69E7CC8];
    v130 = -1;
    v112 = v27;
    v131 = v29;
    v114 = v23;
    v111 = &v106 - v26;
    while (1)
    {
      v35 = *(v32 - 5);
      v129 = *(v32 - 4);
      v36 = *(v32 - 3);
      v115 = v30 + 1;
      v118 = v32;
      v128 = v30;
      if (v30 + 1 >= v29)
      {
        v125 = 0;
        v134 = 0;
        v127 = 0;
      }

      else
      {
        v37 = *(v32 - 1);
        v125 = *(v32 - 2);
        v127 = *v32;

        v134 = v37;
      }

      v144 = MEMORY[0x1E69E7CD0];
      v124 = v36;
      v132 = v33;
      if (v135)
      {
        if (v33)
        {
          swift_beginAccess();

          sub_1D5CEAA24(v126, v135, v132);

          sub_1D71C80DC(v38, 0xD000000000000018, v107 | 0x8000000000000000);
          v40 = v39;

          sub_1D5B87D50(v40);

          v36 = v124;
        }

        else
        {

          sub_1D5CEAA24(v126, v135, 0);
        }

        if (!v36)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (!v36)
        {
          goto LABEL_14;
        }
      }

      swift_beginAccess();

      sub_1D71C80DC(v41, 0xD000000000000017, v109 | 0x8000000000000000);
      v43 = v42;

      sub_1D5B87D50(v43);

LABEL_14:
      if (v134)
      {
        v44 = v34;
        v45 = v35;
        v46 = v127;
        if (v127)
        {
          swift_beginAccess();
          sub_1D5CEAA24(v125, v134, v46);

          sub_1D71C80DC(v47, 0xD000000000000014, v108 | 0x8000000000000000);
          v49 = v48;

          sub_1D5B87D50(v49);
        }

        v35 = v45;
        v34 = v44;
        v23 = v114;
      }

      v116 = v35;
      v117 = v34;
      v119 = v31;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v50 = v135 == 0;
      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCE38);
      v53 = *(v51 - 8);
      v54 = *(v53 + 16);
      v138 = v53 + 16;
      v139 = v54;
      v54(v6, v52, v51);
      v136 = type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v55 = swift_allocObject();
      *(v55 + 16) = v50;
      v56 = MEMORY[0x1E69E7CC0];
      *(v55 + 24) = MEMORY[0x1E69E7CC0];
      strcpy(v28, "subgroup-first");
      v28[15] = -18;
      *(v28 + 2) = v55;
      *(v28 + 3) = 1;
      v57 = *(v141 + 28);
      sub_1D5CEAB38(v6, &v28[v57], type metadata accessor for FormatVersionRequirement);
      v137 = *v140;
      v137(&v28[v57], 0, 1, v142);
      v58 = sub_1D5CEABA0(0, 1, 1, v56);
      v60 = v58[2];
      v59 = v58[3];
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v58 = sub_1D5CEABA0((v59 > 1), v60 + 1, 1, v58);
      }

      v58[2] = v61;
      v62 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v63 = *(v113 + 72);
      sub_1D5CEAB38(v28, v58 + v62 + v63 * v60, type metadata accessor for FormatOption);
      v139(v6, v52, v51);
      swift_storeEnumTagMultiPayload();
      v64 = swift_allocObject();
      *(v64 + 16) = v128;
      *(v64 + 24) = MEMORY[0x1E69E7CC0];
      strcpy(v23, "subgroup-index");
      v23[15] = -18;
      *(v23 + 2) = v64 | 0x4000000000000000;
      *(v23 + 3) = 1;
      v65 = *(v141 + 28);
      sub_1D5CEAB38(v6, &v23[v65], type metadata accessor for FormatVersionRequirement);
      v137(&v23[v65], 0, 1, v142);
      v66 = v58[3];
      v67 = v60 + 2;
      if ((v60 + 2) > (v66 >> 1))
      {
        v58 = sub_1D5CEABA0((v66 > 1), v60 + 2, 1, v58);
      }

      v58[2] = v67;
      sub_1D5CEAB38(v23, v58 + v62 + v63 * v61, type metadata accessor for FormatOption);
      v133 = v52;
      v139(v6, v52, v51);
      swift_storeEnumTagMultiPayload();
      v68 = v131 + v130;
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = MEMORY[0x1E69E7CC0];
      v70 = v120;
      v71 = v110;
      *v120 = 0xD000000000000016;
      *(v70 + 1) = v71;
      *(v70 + 2) = v69 | 0x4000000000000000;
      *(v70 + 3) = 1;
      v72 = *(v141 + 28);
      sub_1D5CEAB38(v6, &v70[v72], type metadata accessor for FormatVersionRequirement);
      v137(&v70[v72], 0, 1, v142);
      v73 = v58[3];
      v74 = v60 + 3;
      if ((v60 + 3) > (v73 >> 1))
      {
        v58 = sub_1D5CEABA0((v73 > 1), v60 + 3, 1, v58);
      }

      v58[2] = v74;
      sub_1D5CEAB38(v120, v58 + v62 + v63 * v67, type metadata accessor for FormatOption);
      v139(v6, v133, v51);
      swift_storeEnumTagMultiPayload();
      v75 = swift_allocObject();
      *(v75 + 16) = v131;
      *(v75 + 24) = MEMORY[0x1E69E7CC0];
      v76 = v121;
      *v121 = 0x70756F7267627573;
      *(v76 + 1) = 0xEE00746E756F632DLL;
      *(v76 + 2) = v75 | 0x4000000000000000;
      *(v76 + 3) = 1;
      v77 = *(v141 + 28);
      sub_1D5CEAB38(v6, &v76[v77], type metadata accessor for FormatVersionRequirement);
      v137(&v76[v77], 0, 1, v142);
      v78 = v58[3];
      v79 = v60 + 4;
      if ((v60 + 4) > (v78 >> 1))
      {
        v58 = sub_1D5CEABA0((v78 > 1), v60 + 4, 1, v58);
      }

      v58[2] = v79;
      sub_1D5CEAB38(v121, v58 + v62 + v63 * v74, type metadata accessor for FormatOption);
      v139(v6, v133, v51);
      swift_storeEnumTagMultiPayload();
      v80 = swift_allocObject();
      v81 = v128 & 1;
      *(v80 + 16) = !(v128 & 1);
      *(v80 + 24) = MEMORY[0x1E69E7CC0];
      v82 = v122;
      *v122 = 0x70756F7267627573;
      *(v82 + 1) = 0xED00006E6576652DLL;
      *(v82 + 2) = v80;
      *(v82 + 3) = 1;
      v83 = *(v141 + 28);
      sub_1D5CEAB38(v6, &v82[v83], type metadata accessor for FormatVersionRequirement);
      v137(&v82[v83], 0, 1, v142);
      v84 = v58[3];
      v85 = v60 + 5;
      if ((v60 + 5) > (v84 >> 1))
      {
        v58 = sub_1D5CEABA0((v84 > 1), v60 + 5, 1, v58);
      }

      v58[2] = v85;
      sub_1D5CEAB38(v122, v58 + v62 + v63 * v79, type metadata accessor for FormatOption);
      v86 = v133;
      v139(v6, v133, v51);
      swift_storeEnumTagMultiPayload();
      v87 = swift_allocObject();
      *(v87 + 16) = v81;
      *(v87 + 24) = MEMORY[0x1E69E7CC0];
      v88 = v123;
      *v123 = 0x70756F7267627573;
      *(v88 + 1) = 0xEC00000064646F2DLL;
      *(v88 + 2) = v87;
      *(v88 + 3) = 1;
      v89 = *(v141 + 28);
      sub_1D5CEAB38(v6, &v88[v89], type metadata accessor for FormatVersionRequirement);
      v137(&v88[v89], 0, 1, v142);
      v90 = v58[3];
      v91 = v60 + 6;
      if ((v60 + 6) > (v90 >> 1))
      {
        v58 = sub_1D5CEABA0((v90 > 1), v60 + 6, 1, v58);
      }

      v92 = v134 == 0;
      v58[2] = v91;
      sub_1D5CEAB38(v123, v58 + v62 + v63 * v85, type metadata accessor for FormatOption);
      v139(v6, v86, v51);
      swift_storeEnumTagMultiPayload();
      v93 = swift_allocObject();
      *(v93 + 16) = v92;
      *(v93 + 24) = MEMORY[0x1E69E7CC0];
      v94 = v112;
      *v112 = 0x70756F7267627573;
      *(v94 + 1) = 0xED00007473616C2DLL;
      *(v94 + 2) = v93;
      *(v94 + 3) = 1;
      v95 = *(v141 + 28);
      sub_1D5CEAB38(v6, &v94[v95], type metadata accessor for FormatVersionRequirement);
      v137(&v94[v95], 0, 1, v142);
      v96 = v58[3];
      v97 = v60 + 7;
      if ((v60 + 7) > (v96 >> 1))
      {
        v58 = sub_1D5CEABA0((v96 > 1), v60 + 7, 1, v58);
      }

      v23 = v114;
      v28 = v111;
      v98 = v116;
      sub_1D5CEABD4(v126, v135, v132);
      v58[2] = v97;
      sub_1D5CEAB38(v94, v58 + v62 + v63 * v91, type metadata accessor for FormatOption);
      v99 = v144;
      v100 = v124;

      v101 = v129;

      v102 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v102;
      v104 = v99;
      v105 = v100;
      sub_1D5CEAC18(v104, v58, v98, v101, isUniquelyReferenced_nonNull_native);

      sub_1D5CEABD4(v125, v134, v127);
      v32 = v118 + 3;
      --v130;
      v34 = v143;
      v30 = v115;
      v33 = v100;
      v135 = v101;
      v126 = v98;
      v29 = v131;
      v31 = v119;
      if (v131 == v115)
      {
        goto LABEL_37;
      }
    }
  }

  v98 = 0;
  v101 = 0;
  v105 = 0;
  v34 = MEMORY[0x1E69E7CC8];
LABEL_37:
  sub_1D5CEABD4(v98, v101, v105);
  *v106 = v34;
}

uint64_t sub_1D5CEA9E8()
{

  return swift_deallocObject();
}

void sub_1D5CEAA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1D5CEAA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEAAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEAB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D5CEABD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1D5CEAC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D5B69D90(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D5CEADBC(v18, a5 & 1, sub_1D5CEB078);
      v13 = sub_1D5B69D90(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D7DB60();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1D5CEADBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v34 = v5;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v6 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v35 = *(*(v6 + 56) + v22);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void sub_1D5CEB078()
{
  if (!qword_1EDF1A3D8)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A3D8);
    }
  }
}

void sub_1D5CEB0D8(uint64_t a1)
{
  if (!qword_1EDF177B0)
  {
    sub_1D5B5534C(255, &qword_1EDF3C770, &protocolRef_FCTagProviding);
    v1 = sub_1D725BFAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF177B0);
    }
  }
}

uint64_t sub_1D5CEB140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEB1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEB200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEB274(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for FormatWebEmbed(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1D5B4D72C(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_1D5B5D160(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5CEB3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB448(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5AB88(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CEB4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D5CEB528()
{
  result = qword_1EDF138A8;
  if (!qword_1EDF138A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF138A8);
  }

  return result;
}

uint64_t sub_1D5CEB57C(uint64_t a1, uint64_t a2)
{
  sub_1D5B49800(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEB5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5CEB648()
{
  result = qword_1EDF42B10[0];
  if (!qword_1EDF42B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF42B10);
  }

  return result;
}

unint64_t sub_1D5CEB6FC()
{
  result = qword_1EDF366E0;
  if (!qword_1EDF366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF366E0);
  }

  return result;
}

NewsFeed::FeedGroupPaidVisibility_optional __swiftcall FeedGroupPaidVisibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D5CEB7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB958(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v26 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v26 + 80 * v1);
    v5 = v4[1];
    v32[0] = *v4;
    v32[1] = v5;
    v6 = v4[4];
    *&v33[16] = v4[3];
    *&v33[32] = v6;
    *v33 = v4[2];
    v30[1] = v5;
    *&v31[8] = *&v33[8];
    *&v31[24] = *&v33[24];
    *v31 = *v33 & 0x7FFFFFFFFFFFFFFFLL;
    *&v31[40] = *(&v6 + 1);
    v29[2] = *v31;
    v29[3] = *&v31[16];
    v29[4] = *&v31[32];
    v30[0] = v32[0];
    v29[0] = v32[0];
    v29[1] = v5;
    sub_1D5CE9930(v32, v28);
    sub_1D5CE9930(v32, v28);
    sub_1D5CE9930(v32, v28);
    sub_1D5CEBCF0();
    v8 = sub_1D5CEBF90(v7);
    sub_1D5CB71DC(v30);

    sub_1D5CEC67C(v32);
    sub_1D5CEC67C(v32);
    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1D7263BFC();
      v13 = v25 + v10;
      if (__OFADD__(v25, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v2 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v34)
    {
      goto LABEL_36;
    }

    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_1D5B9F048(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
      sub_1D5F396FC();
      for (i = 0; i != v17; ++i)
      {
        v19 = sub_1D6D87760(v29, i, v8);
        v21 = *v20;
        swift_unknownObjectRetain();
        (v19)(v29, 0);
        *(v14 + 8 * v15 + 32 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
      swift_arrayInitWithCopy();
    }

    if (v34 >= 1)
    {
      v22 = *(v14 + 16);
      v23 = __OFADD__(v22, v34);
      v24 = v22 + v34;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v14 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  result = sub_1D7263BFC();
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
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

void sub_1D5CEBCF0()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

    sub_1D5D1E934(v5);
    return;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698BCE4(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_25;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

char *sub_1D5CEBE6C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5CEBF90(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v27 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v27 + (v1 << 6));
    v5 = v4[1];
    v29[0] = *v4;
    v29[1] = v5;
    v6 = v4[3];
    v29[2] = v4[2];
    v29[3] = v6;
    v7 = FormatContentSlot.Resolved.headlines.getter();
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_1D7263BFC();
      v13 = v26 + v10;
      if (__OFADD__(v26, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v11)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v2 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v10)
    {
      goto LABEL_36;
    }

    v30 = v10;
    v18 = v14 + 8 * v15 + 32;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_1D6D5BC7C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
      sub_1D5F396FC();
      for (i = 0; i != v17; ++i)
      {
        v20 = sub_1D6D87760(v29, i, v8);
        v22 = *v21;
        swift_unknownObjectRetain();
        (v20)(v29, 0);
        *(v18 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
      swift_arrayInitWithCopy();
    }

    if (v30 >= 1)
    {
      v23 = *(v14 + 16);
      v24 = __OFADD__(v23, v30);
      v25 = v23 + v30;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v14 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  result = sub_1D7263BFC();
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v10 <= 0)
  {
    goto LABEL_4;
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

uint64_t FormatContentSlot.Resolved.headlines.getter()
{
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FormatWebEmbed.Resolved(0);
  MEMORY[0x1EEE9AC00](v31, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v29 - v15;
  v17 = *(v0 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v32 = MEMORY[0x1E69E7CC0];
    v30 = v7;
    while (1)
    {
      sub_1D5CEC8D8(v19, v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v16, v11, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (((1 << EnumCaseMultiPayload) & 0x3F6) != 0)
      {
        sub_1D5CECA00(v11, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_11;
        }

        sub_1D5D53BB8(v11, v7, type metadata accessor for FormatWebEmbed.Resolved);
        sub_1D5CEC8D8(&v7[*(v31 + 36)], v4, sub_1D5B5D160);
        sub_1D5B5D194(0);
        v22 = v4;
        v24 = v23;
        v25 = v7;
        v26 = *(v23 - 8);
        if ((*(v26 + 48))(v22, 1, v23) != 1)
        {
          sub_1D725BF7C();
          sub_1D5CECA00(v25, type metadata accessor for FormatWebEmbed.Resolved);
          (*(v26 + 8))(v22, v24);
          v4 = v22;
          v7 = v30;
LABEL_11:
          v27 = sub_1D5CECA00(v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
          MEMORY[0x1DA6F9CE0](v27);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v7 = v30;
          }

          sub_1D726278C();
          v32 = v33;
          goto LABEL_5;
        }

        sub_1D5CECA00(v25, type metadata accessor for FormatWebEmbed.Resolved);
        sub_1D5CECA00(v22, sub_1D5B5D160);
        v4 = v22;
        v7 = v25;
      }

      sub_1D5CECA00(v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_5:
      v19 += v20;
      if (!--v18)
      {
        return v32;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D5CEC6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEC9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CECA00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CECA60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CECAC0(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v29 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v29 + 80 * v1);
    v5 = v4[1];
    v37[0] = *v4;
    v37[1] = v5;
    v6 = v4[4];
    *&v38[16] = v4[3];
    *&v38[32] = v6;
    *v38 = v4[2];
    v35[1] = v5;
    *&v36[8] = *&v38[8];
    *&v36[24] = *&v38[24];
    *v36 = *v38 & 0x7FFFFFFFFFFFFFFFLL;
    *&v36[40] = *(&v6 + 1);
    v34[2] = *v36;
    v34[3] = *&v36[16];
    v34[4] = *&v36[32];
    v35[0] = v37[0];
    v34[0] = v37[0];
    v34[1] = v5;
    sub_1D5CE9930(v37, v33);
    sub_1D5CE9930(v37, v33);
    sub_1D5CE9930(v37, v33);
    sub_1D5CEBCF0();
    v8 = sub_1D5CECE68(v7);
    sub_1D5CB71DC(v35);

    sub_1D5CEC67C(v37);
    sub_1D5CEC67C(v37);
    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_1D7263BFC();
      v13 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v2 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v39)
    {
      goto LABEL_36;
    }

    v31 = v1;
    v32 = v2;
    v19 = v14 + 8 * v15 + 32;
    v28 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_1D5B9F048(0, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, sub_1D5B5A498);
      sub_1D5F39780();
      for (i = 0; i != v17; ++i)
      {
        v21 = sub_1D6D877E0(v34, i, v8);
        v23 = *v22;
        (v21)(v34, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
      swift_arrayInitWithCopy();
    }

    v2 = v32;
    v1 = v31;
    if (v39 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v39);
      v26 = v24 + v39;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v18 = v14;
  result = sub_1D7263BFC();
  v14 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v39 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_1D5CECE68(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v42 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v46 = *(a1 + 16);
  if (!v46)
  {
    return v10;
  }

  v11 = 0;
  v45 = a1 + 32;
  result = MEMORY[0x1E69E7CC0];
  v42[2] = v2;
  while (1)
  {
    v49 = result;
    v50[0] = v10;
    v47 = v11;
    v14 = *(v45 + (v11 << 6) + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v17 = *(v43 + 72);
      v18 = v10;
      do
      {
        sub_1D5CED2F0(v16, v9);
        sub_1D5CED2F0(v9, v5);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v19 = sub_1D5CED354(v9);
          MEMORY[0x1DA6F9CE0](v19);
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v10 = MEMORY[0x1E69E7CC0];
          }

          sub_1D726278C();
          v18 = v50[0];
        }

        else
        {
          sub_1D5CED354(v5);
          sub_1D5CED354(v9);
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = v10;
    }

    v20 = v18 >> 62;
    v21 = v49;
    if (v18 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 >> 62;
    v51 = v18;
    if (v21 >> 62)
    {
      v41 = sub_1D7263BFC();
      v25 = v41 + v22;
      if (__OFADD__(v41, v22))
      {
LABEL_41:
        __break(1u);
        return v10;
      }
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1D7263BFC();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1D7263DDC();
    v21 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v48 = v22;
    v49 = v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      break;
    }

    v29 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v28 >> 1) - v27) < v48)
    {
      goto LABEL_45;
    }

    v31 = v26 + 8 * v27 + 32;
    v44 = v26;
    if (v20)
    {
      v32 = v51;
      if (v29 < 1)
      {
        goto LABEL_47;
      }

      sub_1D6D5BC7C(0, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, sub_1D5B5A498);
      sub_1D5F39780();
      v33 = v32;
      for (i = 0; i != v29; ++i)
      {
        v35 = sub_1D6D877E0(v50, i, v33);
        v37 = *v36;
        (v35)(v50, 0);
        *(v31 + 8 * i) = v37;
        v33 = v51;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
      swift_arrayInitWithCopy();
    }

    v13 = v47;
    v10 = MEMORY[0x1E69E7CC0];
    result = v49;
    if (v48 >= 1)
    {
      v38 = *(v44 + 16);
      v39 = __OFADD__(v38, v48);
      v40 = v38 + v48;
      if (v39)
      {
        goto LABEL_46;
      }

      *(v44 + 16) = v40;
    }

LABEL_4:
    v11 = v13 + 1;
    if (v11 == v46)
    {
      return result;
    }
  }

  v30 = v26;
  result = sub_1D7263BFC();
  v26 = v30;
  v29 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v13 = v47;
  result = v49;
  if (v48 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D5CED2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CED354(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CED3DC(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1D7263BFC();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D5CED4E4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D7263BFC();
LABEL_9:
  result = sub_1D7263DDC();
  *v2 = result;
  return result;
}

uint64_t sub_1D5CED584(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D609C43C(0);
          sub_1D5B5990C(&qword_1EC8832C0, sub_1D609C43C, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D87760(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5534C(0, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5CED730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED7F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED8B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CED978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5CEDA50()
{
  result = qword_1EDF13CD0;
  if (!qword_1EDF13CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13CD0);
  }

  return result;
}

uint64_t sub_1D5CEDAA4@<X0>(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

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

void sub_1D5CEDB04(uint64_t a1)
{
  sub_1D5CEDC80(319, &qword_1EDF210B0, sub_1D5CEDCD4);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FCFeedFilterOptions(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FCTagFilterOptions(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FormatTransformData(319);
        if (v4 <= 0x3F)
        {
          sub_1D5B81B04();
          if (v5 <= 0x3F)
          {
            type metadata accessor for FCOperationPurpose(319);
            if (v6 <= 0x3F)
            {
              sub_1D5B5F6D0();
              if (v7 <= 0x3F)
              {
                sub_1D5CEDC80(319, qword_1EDF24518, type metadata accessor for FormatServiceMergeContext);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D5CEDC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5CEDCD4()
{
  result = qword_1EDF210B8;
  if (!qword_1EDF210B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF210B8);
  }

  return result;
}

uint64_t type metadata accessor for FormatTransformData(uint64_t a1)
{
  result = qword_1EDF2BBA8;
  if (!qword_1EDF2BBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CEDDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5CEDE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5CEDE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5CEDEE0(uint64_t a1)
{
  sub_1D5CEDE8C(319, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  if (v1 <= 0x3F)
  {
    sub_1D5CEE124(319);
    if (v2 <= 0x3F)
    {
      sub_1D5B81B04();
      if (v3 <= 0x3F)
      {
        sub_1D5CEDE8C(319, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for FormatTransformKnobs(uint64_t a1)
{
  result = qword_1EDF2A980;
  if (!qword_1EDF2A980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5CEE03C(uint64_t a1)
{
  result = type metadata accessor for FeedContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D5CEE0C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5CEE0C0()
{
  result = qword_1EDF20FD8;
  if (!qword_1EDF20FD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF20FD8);
  }

  return result;
}

void sub_1D5CEE124(uint64_t a1)
{
  if (!qword_1EDF1AD28)
  {
    sub_1D5CEE180();
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AD28);
    }
  }
}

unint64_t sub_1D5CEE180()
{
  result = qword_1EDF24468;
  if (!qword_1EDF24468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24468);
  }

  return result;
}

unint64_t sub_1D5CEE1D8()
{
  result = qword_1EDF24460;
  if (!qword_1EDF24460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24460);
  }

  return result;
}

uint64_t type metadata accessor for FeedPersonalizationClusteringRules(uint64_t a1)
{
  result = qword_1EDF35278;
  if (!qword_1EDF35278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CEE278(uint64_t a1)
{
  sub_1D5B49CBC(319, &qword_1EDF3C7C0, MEMORY[0x1E69E6530]);
  if (v1 <= 0x3F)
  {
    sub_1D5CEE38C(319, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
    if (v2 <= 0x3F)
    {
      sub_1D5CEE38C(319, &qword_1EDF1B808, sub_1D5CEE608);
      if (v3 <= 0x3F)
      {
        sub_1D5B49CBC(319, qword_1EDF351C8, &type metadata for FeedGroupTopicDiversityRequirements);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5CEE38C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FeedGroupBundleArticleQuotas(uint64_t a1)
{
  result = qword_1EDF35A88;
  if (!qword_1EDF35A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CEE42C(uint64_t a1)
{
  sub_1D5CEE4F4();
  if (v1 <= 0x3F)
  {
    sub_1D72593CC();
    if (v2 <= 0x3F)
    {
      sub_1D5CEE5A8(319, &qword_1EDF1B5E8, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5CEE4F4()
{
  if (!qword_1EDF1AF00)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AF00);
    }
  }
}

void sub_1D5CEE544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5CEE5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D72593CC();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5CEE608()
{
  if (!qword_1EDF1B810)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B810);
    }
  }
}

double sub_1D5CEE6B4@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for FormatTransformData(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF2BBB8 != -1)
  {
    v22 = v14;
    swift_once();
    v14 = v22;
  }

  v17 = __swift_project_value_buffer(v14, qword_1EDFFCAD0);
  sub_1D5CEF028(v17, v16, type metadata accessor for FormatTransformData);
  *(a6 + 40) = a3;
  *(a6 + 48) = a4 & 1;
  v18 = type metadata accessor for FormatServiceOptions(0);
  *(a6 + v18[12]) = a1;
  *(a6 + v18[13]) = a2;
  *(a6 + 56) = xmmword_1D7282F10;
  *(a6 + 72) = 0x40F5180000000000;
  *(a6 + 80) = 30;
  sub_1D5CEF028(v16, a6 + v18[10], type metadata accessor for FormatTransformData);
  v19 = a1;
  v20 = a2;
  sub_1D5CEF0DC(v16);
  *(a6 + v18[11]) = MEMORY[0x1E69E7CD0];
  *(a6 + v18[16]) = 0;
  *(a6 + 32) = 0;
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + v18[15]) = a5;
  *(a6 + v18[14]) = 0;
  return result;
}

uint64_t sub_1D5CEE864()
{
  v0 = type metadata accessor for FormatTransformData(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEDE8C(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  sub_1D5CEDE8C(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v17 - v10;
  __swift_allocate_value_buffer(v0, qword_1EDFFCAD0);
  v12 = __swift_project_value_buffer(v0, qword_1EDFFCAD0);
  v13 = type metadata accessor for FormatTransformKnobs(0);
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1D5CEEC58(v11, v3);
  v15 = MEMORY[0x1E69E7CD0];
  *&v3[v0[5]] = MEMORY[0x1E69E7CD0];
  *&v3[v0[6]] = v15;
  sub_1D5CEEE64(v11);
  *&v3[v0[7]] = v15;
  v3[v0[8]] = 0;
  v3[v0[9]] = 0;
  sub_1D5CEEEDC(v7, &v3[v0[11]]);
  return sub_1D5CEEF5C(v3, v12);
}

uint64_t sub_1D5CEEAB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1D5CEEB80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5CEE38C(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2;
  }
}

uint64_t sub_1D5CEEC58(uint64_t a1, uint64_t a2)
{
  sub_1D5CEDE38(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEECEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72593CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5CEEDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5CEEE64(uint64_t a1)
{
  sub_1D5CEDE8C(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CEEEDC(uint64_t a1, uint64_t a2)
{
  sub_1D5CEDE8C(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEEF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatTransformData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEEFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEF028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for FormatServiceOptions(uint64_t a1)
{
  result = qword_1EDF2AC08;
  if (!qword_1EDF2AC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5CEF0DC(uint64_t a1)
{
  v2 = type metadata accessor for FormatTransformData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatServiceType.prefetch(content:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v32 = a4;
  v6 = type metadata accessor for FormatServiceOptions(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatContent.Resolved(0);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, &qword_1EDF17A58, type metadata accessor for FormatContent.Resolved, MEMORY[0x1E69D6B18]);
  v28 = v18;
  (*(v13 + 16))(v17, v29, a3);
  sub_1D5CEFE68(v30, v12, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(a2, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatServiceOptions);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = (v14 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = (v10 + *(v31 + 80) + v20) & ~*(v31 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v13 + 32))(v22 + v19, v17, a3);
  sub_1D5CEFF38(v12, v22 + v20, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v26, v22 + v21, type metadata accessor for FormatServiceOptions);
  return sub_1D725BA6C();
}

uint64_t sub_1D5CEF458()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for FormatContent.Resolved(0);
  v52 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v52) & ~v52;
  v8 = *(*(v6 - 1) + 64);
  v53 = type metadata accessor for FormatServiceOptions(0);
  v9 = *(*(v53 - 8) + 80);
  v51 = v7 + v8 + v9;
  (*(v3 + 8))(v1 + v4, v2);
  v10 = v1 + v7;

  v11 = v6[5];
  v12 = sub_1D725891C();
  v50 = *(*(v12 - 8) + 8);
  v50(v1 + v7 + v11, v12);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v13 = v1 + v7 + v6[16];
  v14 = type metadata accessor for FormatWebEmbed.Resolved(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v48 = v12;
    v49 = v1;

    v15 = v13 + v14[5];

    v16 = type metadata accessor for FormatWebEmbed(0);
    v17 = *(v16 + 20);
    v18 = sub_1D72585BC();
    v19 = *(v18 - 8);
    v47 = *(v19 + 8);
    v47(v15 + v17, v18);
    v20 = *(v16 + 24);
    if (!(*(v19 + 48))(v15 + v20, 1, v18))
    {
      v47(v15 + v20, v18);
    }

    v21 = v13 + v14[8];
    v22 = type metadata accessor for WebEmbedDataVisualization(0);
    v12 = v48;
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v23 = type metadata accessor for GenericDataVisualization(0);
        v47(v21 + *(v23 + 20), v18);
      }

      else
      {
      }
    }

    v24 = v14[9];
    sub_1D5B5D194(0);
    v26 = v25;
    v27 = *(v25 - 8);
    v1 = v49;
    if (!(*(v27 + 48))(v13 + v24, 1, v25))
    {
      (*(v27 + 8))(v13 + v24, v26);
    }
  }

  v28 = v51 & ~v9;

  v29 = v6[21];
  v30 = sub_1D72608BC();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v10 + v29, 1, v30))
  {
    (*(v31 + 8))(v10 + v29, v30);
  }

  v32 = v1 + v28;
  if (*(v1 + v28 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + v28));
  }

  v33 = v53;
  v34 = (v32 + *(v53 + 40));
  v35 = type metadata accessor for FormatTransformKnobs(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {

    v36 = type metadata accessor for FeedContext(0);
    v37 = v34 + v36[5];
    v38 = type metadata accessor for BundleSession(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {
      v50(&v37[*(v38 + 20)], v12);
    }

    if (*(v34 + v36[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v34 + *(v35 + 20)));
    v33 = v53;
  }

  v39 = type metadata accessor for FormatTransformData(0);

  v40 = v34 + *(v39 + 44);
  v41 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
  {
    v42 = &v40[*(v41 + 24)];
    v43 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {

      v44 = *(v43 + 24);
      v45 = sub_1D72593CC();
      (*(*(v45 - 8) + 8))(&v42[v44], v45);
    }

    if (*&v40[*(v41 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5CEFD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5CEE38C(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void sub_1D5CEFE04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5CEFE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEFED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEFF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEFFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CF0008(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(type metadata accessor for FormatContent.Resolved(0) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5CF01B4(a1, v1 + v8, v1 + v10, v1 + v13, v5, v6);
}

uint64_t sub_1D5CF01B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (*(a6 + 24) + **(a6 + 24));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1D5B64680;

  return v14(a1, a3, a4, a5, a6);
}

uint64_t sub_1D5CF0300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return FormatService.prefetch(content:options:)(a1, a2, a3);
}

uint64_t FormatService.prefetch(content:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[357] = v3;
  v4[351] = a3;
  v4[345] = a2;
  v4[339] = a1;
  v5 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v4[363] = v5;
  v4[369] = *(v5 + 64);
  v4[375] = swift_task_alloc();
  v4[381] = swift_task_alloc();
  v6 = type metadata accessor for FormatContent.Resolved(0);
  v4[387] = v6;
  v7 = *(v6 - 8);
  v4[393] = v7;
  v4[399] = *(v7 + 64);
  v4[405] = swift_task_alloc();
  v4[411] = swift_task_alloc();
  v4[417] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5CF050C, 0, 0);
}

uint64_t sub_1D5CF050C()
{
  v1 = v0[417];
  v2 = v0[399];
  v23 = v0[405];
  v3 = v0[393];
  v4 = v0[381];
  v20 = v0[411];
  v21 = v0[375];
  v5 = v0[363];
  v6 = v0[357];
  v7 = v0[351];
  v18 = v7;
  v19 = v0[345];
  sub_1D5CEFE68(v19, v1, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v7, v4, type metadata accessor for FormatServiceOptions);
  v22 = *(v3 + 80);
  v8 = v2 + ((v22 + 16) & ~v22);
  v9 = (v22 + 16) & ~v22;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v5 + 80) + v10 + 8) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[418] = v12;
  sub_1D5CEFF38(v1, v12 + v9, type metadata accessor for FormatContent.Resolved);
  *(v12 + v10) = v6;
  sub_1D5CEFF38(v4, v12 + v11, type metadata accessor for FormatServiceOptions);

  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v19, v20, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v18, v21, type metadata accessor for FormatServiceOptions);
  v13 = swift_allocObject();
  v0[419] = v13;
  sub_1D5CEFF38(v20, v13 + v9, type metadata accessor for FormatContent.Resolved);
  *(v13 + v10) = v6;
  sub_1D5CEFF38(v21, v13 + v11, type metadata accessor for FormatServiceOptions);

  sub_1D5B5A7A0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v14 = sub_1D5CF0E04(v19);
  v15 = swift_allocObject();
  v0[420] = v15;
  *(v15 + 16) = v6;
  *(v15 + 24) = v14;

  swift_asyncLet_begin();
  sub_1D5CEFE68(v19, v23, type metadata accessor for FormatContent.Resolved);
  v16 = swift_allocObject();
  v0[421] = v16;
  *(v16 + 16) = v6;
  sub_1D5CEFF38(v23, v16 + ((v22 + 24) & ~v22), type metadata accessor for FormatContent.Resolved);

  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 327, sub_1D5D0BB7C, v0 + 322);
}

uint64_t sub_1D5CF08E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5CF0920()
{
  v1 = type metadata accessor for FormatContent.Resolved(0);
  v2 = *(*(v1 - 1) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v1[5];
  v5 = sub_1D725891C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v3 + v1[16];
  v7 = type metadata accessor for FormatWebEmbed.Resolved(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v6 + v7[5];

    v9 = type metadata accessor for FormatWebEmbed(0);
    v10 = *(v9 + 20);
    v11 = sub_1D72585BC();
    v12 = *(v11 - 8);
    v25 = *(v12 + 8);
    v25(v8 + v10, v11);
    v13 = *(v9 + 24);
    if (!(*(v12 + 48))(v8 + v13, 1, v11))
    {
      v25(v8 + v13, v11);
    }

    v14 = v6 + v7[8];
    v15 = type metadata accessor for WebEmbedDataVisualization(0);
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v16 = type metadata accessor for GenericDataVisualization(0);
        v25(v14 + *(v16 + 20), v11);
      }

      else
      {
      }
    }

    v17 = v7[9];
    sub_1D5B5D194(0);
    v19 = v18;
    v20 = *(v18 - 8);
    if (!(*(v20 + 48))(v6 + v17, 1, v18))
    {
      (*(v20 + 8))(v6 + v17, v19);
    }
  }

  v21 = v1[21];
  v22 = sub_1D72608BC();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  return swift_deallocObject();
}

void *sub_1D5CF0E04(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatContentSlotItemResolution(0);
  v98 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v99 = (v94 - v13);
  sub_1D5CEFE04(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v108 = (v94 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v100 = v94 - v23;
  v24 = type metadata accessor for WebEmbedDataVisualization(0);
  v106 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v111 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v96 = v94 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v104 = v94 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v95 = (v94 - v35);
  v36 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v110 = v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v94 - v42;
  v101 = a1;
  v44 = FormatContent.Resolved.webEmbeds.getter();
  v45 = *(v44 + 16);
  v105 = v2;
  v107 = v24;
  v46 = v106;
  v112 = v36;
  v97 = v37;
  if (v45)
  {
    v47 = *(v36 + 32);
    v48 = *(v37 + 80);
    v94[1] = v44;
    v49 = v44 + ((v48 + 32) & ~v48);
    v102 = *(v37 + 72);
    v103 = v47;
    v50 = (v106 + 48);
    v109 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5CEFE68(v49, v43, type metadata accessor for FormatWebEmbed.Resolved);
      v51 = v108;
      sub_1D5CF23F8(v103 + v43, v108, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5EA08F4(v43, type metadata accessor for FormatWebEmbed.Resolved);
      if ((*v50)(v51, 1, v107) == 1)
      {
        sub_1D5CF274C(v51, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      else
      {
        sub_1D5CEFF38(v51, v104, type metadata accessor for WebEmbedDataVisualization);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v52 = v109;
        }

        else
        {
          v52 = sub_1D698C498(0, v109[2] + 1, 1, v109);
        }

        v54 = v52[2];
        v53 = v52[3];
        if (v54 >= v53 >> 1)
        {
          v52 = sub_1D698C498((v53 > 1), v54 + 1, 1, v52);
        }

        v52[2] = v54 + 1;
        v55 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v109 = v52;
        sub_1D5CEFF38(v104, v52 + v55 + *(v106 + 72) * v54, type metadata accessor for WebEmbedDataVisualization);
        v2 = v105;
      }

      v49 += v102;
      --v45;
    }

    while (v45);

    v56 = v106;
    v57 = v109;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
    v56 = v46;
  }

  v58 = v57;
  v113 = v57;
  v59 = type metadata accessor for FormatContent.Resolved(0);
  v60 = v99;
  sub_1D5CF23F8(v101 + *(v59 + 64), v99, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
  v61 = v112;
  if ((*(v97 + 48))(v60, 1, v112) == 1)
  {
    sub_1D5CF274C(v60, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v62 = v100;
    (*(v56 + 56))(v100, 1, 1, v107);
  }

  else
  {
    v63 = v60 + *(v61 + 32);
    v62 = v100;
    sub_1D5CF23F8(v63, v100, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5EA08F4(v60, type metadata accessor for FormatWebEmbed.Resolved);
    if ((*(v56 + 48))(v62, 1, v107) != 1)
    {
      v60 = v95;
      sub_1D5CEFF38(v62, v95, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5CEFE68(v60, v96, type metadata accessor for WebEmbedDataVisualization);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      goto LABEL_60;
    }
  }

  sub_1D5CF274C(v62, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  while (1)
  {
    v66 = FormatContent.Resolved.itemAuxiliaries.getter();
    v67 = v66;
    v100 = *(v66 + 16);
    if (!v100)
    {
      break;
    }

    v68 = 0;
    v99 = (v66 + 32);
    v108 = (v56 + 48);
    v109 = (v56 + 56);
    v69 = MEMORY[0x1E69E7CC0];
    v97 = v66;
    while (v68 < *(v67 + 16))
    {
      v104 = v68;
      v71 = &v99[2 * v68];
      v72 = *v71;
      v73 = *(*v71 + 16);
      if (v73)
      {
        v102 = *v71;
        v103 = v69;
        v74 = v71[1];
        v75 = v98;
        v76 = v72 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        swift_bridgeObjectRetain_n();
        v101 = v74;

        v77 = *(v75 + 72);
        v78 = v107;
        v58 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          sub_1D5CEFE68(v76, v9, type metadata accessor for FormatContentSlotItemResolution);
          sub_1D5CEFE68(v9, v5, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5EA08F4(v9, type metadata accessor for FormatContentSlotItemResolution);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v60 = v2;
            v79 = v110;
            sub_1D5CEFF38(v5, v110, type metadata accessor for FormatWebEmbed.Resolved);
            sub_1D5CF23F8(v79 + *(v112 + 32), v17, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
            v80 = v79;
            v2 = v60;
            sub_1D5EA08F4(v80, type metadata accessor for FormatWebEmbed.Resolved);
            if ((*v108)(v17, 1, v78) != 1)
            {
              sub_1D5CEFF38(v17, v111, type metadata accessor for WebEmbedDataVisualization);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v58 = sub_1D698C498(0, v58[2] + 1, 1, v58);
              }

              v82 = v58[2];
              v81 = v58[3];
              if (v82 >= v81 >> 1)
              {
                v58 = sub_1D698C498((v81 > 1), v82 + 1, 1, v58);
              }

              v58[2] = v82 + 1;
              sub_1D5CEFF38(v111, v58 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v82, type metadata accessor for WebEmbedDataVisualization);
              v2 = v105;
              v78 = v107;
              goto LABEL_31;
            }
          }

          else
          {
            sub_1D5EA08F4(v5, type metadata accessor for FormatContentSlotItemObject.Resolved);
            (*v109)(v17, 1, 1, v78);
          }

          sub_1D5CF274C(v17, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_31:
          v76 += v77;
          if (!--v73)
          {

            swift_bridgeObjectRelease_n();
            v67 = v97;
            v69 = v103;
            goto LABEL_41;
          }
        }
      }

      v58 = MEMORY[0x1E69E7CC0];
LABEL_41:
      v56 = v58[2];
      v83 = v69[2];
      v84 = v83 + v56;
      if (__OFADD__(v83, v56))
      {
        goto LABEL_56;
      }

      v60 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v60;
      if (!isUniquelyReferenced_nonNull_native || v84 > v60[3] >> 1)
      {
        if (v83 <= v84)
        {
          v87 = v83 + v56;
        }

        else
        {
          v87 = v83;
        }

        v86 = sub_1D698C498(isUniquelyReferenced_nonNull_native, v87, 1, v60);
      }

      if (v58[2])
      {
        if ((v86[3] >> 1) - v86[2] < v56)
        {
          goto LABEL_58;
        }

        v88 = v86;
        swift_arrayInitWithCopy();

        v69 = v88;
        if (v56)
        {
          v89 = v88[2];
          v90 = __OFADD__(v89, v56);
          v91 = v89 + v56;
          if (v90)
          {
            goto LABEL_59;
          }

          v88[2] = v91;
        }
      }

      else
      {
        v70 = v86;

        v69 = v70;
        if (v56)
        {
          goto LABEL_57;
        }
      }

      v68 = v104 + 1;
      if (v104 + 1 == v100)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v58 = sub_1D698C498(0, v58[2] + 1, 1, v58);
LABEL_19:
    v65 = v58[2];
    v64 = v58[3];
    if (v65 >= v64 >> 1)
    {
      v58 = sub_1D698C498((v64 > 1), v65 + 1, 1, v58);
    }

    sub_1D5EA08F4(v60, type metadata accessor for WebEmbedDataVisualization);
    v58[2] = v65 + 1;
    sub_1D5CEFF38(v96, v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v65, type metadata accessor for WebEmbedDataVisualization);
    v113 = v58;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v92 = v69;

  sub_1D5CFED40(v92);
  return v113;
}

uint64_t type metadata accessor for FormatContentSlotItemResolution(uint64_t a1)
{
  result = qword_1EDF1FC38;
  if (!qword_1EDF1FC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CF1B20(uint64_t a1)
{
  type metadata accessor for FormatContentSlotItemObject.Resolved(319);
  if (v1 <= 0x3F)
  {
    sub_1D5CF1BD4();
    if (v2 <= 0x3F)
    {
      sub_1D5B81B04();
      if (v3 <= 0x3F)
      {
        sub_1D5B5AD98(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5CF1BD4()
{
  if (!qword_1EDF20858)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF20858);
    }
  }
}

uint64_t sub_1D5CF1C50(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  result = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v5 + 32);
    while (v8 < *(v5 + 16))
    {
      v18 = *v9;
      v10 = v9[3];
      v11 = v9[4];
      v12 = v9[2];
      v19 = v9[1];
      *v20 = v12;
      *&v20[16] = v10;
      *&v20[32] = v11;
      ++v8;
      v16[1] = v19;
      *&v17[8] = *&v20[8];
      *&v17[24] = *&v20[24];
      *v17 = v12 & 0x7FFFFFFFFFFFFFFFLL;
      *&v17[40] = *(&v11 + 1);
      v15[7] = *v17;
      v15[8] = *&v17[16];
      v15[9] = *&v17[32];
      v16[0] = v18;
      v15[5] = v18;
      v15[6] = v19;
      sub_1D5CE9930(&v18, v15);
      sub_1D5CE9930(&v18, v15);
      v13 = sub_1D5CE9930(&v18, v15);
      v14 = a1(v13);
      sub_1D5CB71DC(v16);
      sub_1D5CEC67C(&v18);
      sub_1D5CEC67C(&v18);
      result = a2(v14);
      v9 += 5;
      if (v7 == v8)
      {
        return v21;
      }
    }

    __break(1u);
  }

  return result;
}

void FormatContentSubgroup.Resolved.webEmbeds.getter()
{
  sub_1D5B5AB88(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  v56 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v10);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = v0[3];
  v59 = v0[2];
  v60 = v19;
  v61 = v0[4];
  v20 = v0[1];
  v57 = *v0;
  v58 = v20;
  sub_1D5CEBCF0();
  v47 = *(v21 + 16);
  if (v47)
  {
    v22 = 0;
    v46 = v21 + 32;
    v52 = (v9 + 56);
    v50 = v9;
    v23 = (v9 + 48);
    v49 = MEMORY[0x1E69E7CC0];
    v51 = v4;
    v45 = v21;
    while (v22 < *(v21 + 16))
    {
      v48 = v22;
      v24 = *(v46 + (v22 << 6) + 32);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v55 = *(v44 + 72);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D5CEC7A0(v26, v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5CEC7A0(v18, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            sub_1D6B678B8(v14, v4, type metadata accessor for FormatWebEmbed.Resolved);
            v28 = 0;
          }

          else
          {
            sub_1D5D1EB58(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
            v28 = 1;
          }

          v29 = v56;
          (*v52)(v4, v28, 1, v56);
          sub_1D5CEB448(v4, v8, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
          sub_1D5D1EB58(v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((*v23)(v8, 1, v29) == 1)
          {
            sub_1D5D1ECD8(v8, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
          }

          else
          {
            sub_1D6B678B8(v8, v54, type metadata accessor for FormatWebEmbed.Resolved);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_1D5CF237C(0, v27[2] + 1, 1, v27);
            }

            v31 = v27[2];
            v30 = v27[3];
            if (v31 >= v30 >> 1)
            {
              v27 = sub_1D5CF237C((v30 > 1), v31 + 1, 1, v27);
            }

            v27[2] = v31 + 1;
            sub_1D6B678B8(v54, v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31, type metadata accessor for FormatWebEmbed.Resolved);
            v4 = v51;
          }

          v26 += v55;
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v32 = v27[2];
      v33 = v49;
      v34 = v49[2];
      v35 = v34 + v32;
      if (__OFADD__(v34, v32))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v35 <= v33[3] >> 1)
      {
        v4 = v51;
        v37 = v33;
      }

      else
      {
        if (v34 <= v35)
        {
          v38 = v34 + v32;
        }

        else
        {
          v38 = v34;
        }

        v37 = sub_1D5CF237C(isUniquelyReferenced_nonNull_native, v38, 1, v33);
        v4 = v51;
      }

      v39 = v27[2];
      v49 = v37;
      if (v39)
      {
        if ((v37[3] >> 1) - v37[2] < v32)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v40 = v49[2];
          v41 = __OFADD__(v40, v32);
          v42 = v40 + v32;
          if (v41)
          {
            goto LABEL_39;
          }

          v49[2] = v42;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_37;
        }
      }

      v22 = v48 + 1;
      v21 = v45;
      if (v48 + 1 == v47)
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
LABEL_39:
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_34:
  }
}

uint64_t sub_1D5CF23F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5CEFE04(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CF2478(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C0ECB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CF24F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5CEDC80(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CF2564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CF25E0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for FormatWebEmbed(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1D5B4D72C(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_1D5B5D160(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_1D5CF274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5CF27AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF280C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C0ECB0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF287C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B59538(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF28EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5CEDC80(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF2948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B5959C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF29A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF2A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatContentSubgroup.Resolved.itemAuxiliaries.getter()
{
  v1 = v0[3];
  v25 = v0[2];
  v26 = v1;
  v27 = v0[4];
  v2 = v0[1];
  v23 = *v0;
  v24 = v2;
  sub_1D5CEBCF0();
  v4 = v3;
  result = swift_getKeyPath();
  v6 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v4 + 32);
    while (v8 < *(v4 + 16))
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v19 = v9[2];
      v20 = v12;
      v18[0] = v10;
      v18[1] = v11;
      ++v8;
      v13 = v10;
      v14 = v11;
      v15 = v19;
      v16 = v12;
      sub_1D5CB6F58(v18, v21);
      sub_1D5CB6F58(v18, v21);
      swift_getAtKeyPath();
      sub_1D5CB6FB4(v18);
      v21[0] = v13;
      v21[1] = v14;
      v21[2] = v15;
      v21[3] = v16;
      sub_1D5CB6FB4(v21);
      result = sub_1D5CFE2B8(v17);
      v9 += 4;
      if (v7 == v8)
      {
        v6 = v22;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return v6;
  }

  return result;
}

uint64_t sub_1D5CF2BD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5CF2C1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContent.Resolved(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D5B64680;

  return sub_1D5CF2D74(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1D5CF2D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for FormatContent.Resolved(0);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = *(v7 + 64);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5CF2FF8, 0, 0);
}

uint64_t sub_1D5CF2EA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContent.Resolved(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D5B64680;

  return sub_1D5CF323C(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1D5CF2FF8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v7 + *(v0[10] + 32));
  v0[14] = v9;
  v0[2] = v9;
  sub_1D5CEFE68(v7, v1, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v2 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5CEFF38(v1, v12 + v10, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v4, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  v15 = v14;
  v16 = type metadata accessor for FormatPackageInventory(0);
  v17 = sub_1D5CF35F8(&qword_1EDF1B088, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory);
  *v13 = v0;
  v13[1] = sub_1D5D0A0D0;

  return MEMORY[0x1EEE45320](&unk_1D7279C00, v12, v15, v16, v17);
}

uint64_t sub_1D5CF323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for FormatContent.Resolved(0);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = *(v7 + 64);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5CF3368, 0, 0);
}

uint64_t sub_1D5CF3368()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v7 + *(v0[10] + 36));
  v0[14] = v9;
  v0[2] = v9;
  sub_1D5CEFE68(v7, v1, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v2 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5CEFF38(v1, v12 + v10, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v4, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5B5A7A0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  v15 = v14;
  v16 = sub_1D5CF35A0(&qword_1EDF1B0D0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E6328]);
  *v13 = v0;
  v13[1] = sub_1D5D0BA10;

  return MEMORY[0x1EEE45320](&unk_1D7279BE8, v12, v15, &type metadata for FormatContentSubgroup.ResolvedContainer, v16);
}

uint64_t sub_1D5CF35A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5A7A0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CF35F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5CEFE04(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CF365C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 80))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 32) >> 57) >> 6) | (2 * ((*(a1 + 32) >> 57) & 0x38 | *(a1 + 32) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5CF36B8(uint64_t a1, _OWORD *a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for FormatContent.Resolved(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5CF380C(a1, a2, v12, v2 + v8, v2 + v11);
}

uint64_t sub_1D5CF380C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 256) = a1;
  *(v5 + 264) = a3;
  v6 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v6;
  *(v5 + 80) = a2[4];
  v7 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1D5CF3BD4, 0, 0);
}

uint64_t sub_1D5CF3848(uint64_t a1, uint64_t a2)
{
  v30 = v2;
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 472);
  v4 = *(v2 + 456);
  sub_1D5C2AF10(qword_1EDF33048, a2, type metadata accessor for FormatService, &protocol conformance descriptor for FormatService);
  sub_1D725964C();
  *(v2 + 248) = 0u;
  *(v2 + 240) = 0;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  v5 = *(v2 + 288);
  v25 = *(v2 + 272);
  v26 = v5;
  v27 = *(v2 + 304);
  *&v28 = *(v2 + 320);
  v6 = *(v2 + 256);
  v23 = *(v2 + 240);
  v24 = v6;
  sub_1D5CEFE04(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  swift_retain_n();
  sub_1D5CF6A5C(v2 + 240, v2 + 328);
  swift_unknownObjectRetain();
  v7 = sub_1D725A80C();
  *(v2 + 16) = v4;
  v8 = v26;
  *(v2 + 56) = v25;
  *(v2 + 72) = v8;
  *(v2 + 88) = v27;
  v9 = v28;
  v10 = v24;
  *(v2 + 24) = v23;
  *(v2 + 40) = v10;
  *(v2 + 104) = v9;
  *(v2 + 112) = v3;
  *(v2 + 120) = v7;
  v11 = *(v2 + 96);
  v27 = *(v2 + 80);
  v28 = v11;
  v29 = *(v2 + 112);
  v12 = *(v2 + 32);
  v23 = *(v2 + 16);
  v24 = v12;
  v13 = *(v2 + 64);
  v25 = *(v2 + 48);
  v26 = v13;
  FormatPackageInventory.resources(context:)(&v23, (v2 + 416));
  sub_1D5CF6244((v2 + 416), (v2 + 16), *(v2 + 464));
  v14 = *(v2 + 416);

  sub_1D5D056DC(v2 + 16, v2 + 128);
  v15 = sub_1D5D05DC8(v14, (v2 + 16));
  v16 = *(v2 + 480);
  v17 = v15;
  sub_1D5D05738(v2 + 16);

  v18 = sub_1D5D06170(v17);

  v19 = *(v16 + 40);
  *(v2 + 504) = v19;
  v20 = *(v16 + 48);
  *(v2 + 536) = v20;
  *(v2 + 512) = FeedFontManager.load(fonts:downloadIfNeeded:)(v18, (v19 != 1) | ((v20 & 1) == 0));

  v21 = swift_task_alloc();
  *(v2 + 520) = v21;
  *v21 = v2;
  v21[1] = sub_1D5D09964;

  return MEMORY[0x1EEE44EE0](v2 + 440);
}

uint64_t sub_1D5CF3BD4()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 288) = v2;
  v4 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = *(v0 + 32);
  v6 = *(v0 + 88);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v5;
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  v7 = *(v0 + 56);
  *(v0 + 296) = v7;
  *(v0 + 136) = v7;
  v8 = v7;
  *(v0 + 152) = *(v0 + 72);
  *(v0 + 168) = v6;

  sub_1D5CE9930(v0 + 16, v0 + 176);

  sub_1D5CB71DC(v0 + 96);
  v9 = *(v1 + *(type metadata accessor for FormatContent.Resolved(0) + 52));
  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_1D5D0B6C4;
  v11 = *(v0 + 280);

  return sub_1D5CF3D04(v4, v8, v9, v11);
}

uint64_t sub_1D5CF3D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[60] = a4;
  v5[61] = v4;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v5[62] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1D5CF3848, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B9AppConfigVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D5CF3D6C(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = (&v21 - v10);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    v23 = (&v21 - v10);
    while (1)
    {
      sub_1D5CF8338(v13, v11, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v14 = a1;
      v15 = a2;
      v17 = v11[10];
      v16 = v11[11];
      v18 = v11[14];
      v19 = v11[15];

      sub_1D5CF4060(v14, v15, v16);
      if (v3)
      {
        break;
      }

      sub_1D5CF6244(v14, v15, v18);
      a2 = v15;

      sub_1D5CFD3E0(v14, v15, v19);
      a1 = v14;

      sub_1D5CF6090(v14, a2, v17);

      v11 = v23;
      sub_1D5CF9D88(v23, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v13 += v22;
      if (!--v12)
      {
        return;
      }
    }

    v20 = v23;

    sub_1D5CF9D88(v20, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  }
}

char **sub_1D5CF4060(char **result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 4)
    {
      v8 = i[1];
      v25[0] = *i;
      v25[1] = v8;
      v9 = i[3];
      v11 = *i;
      v10 = i[1];
      v25[2] = i[2];
      v25[3] = v9;
      v21 = v11;
      v22 = v10;
      v12 = i[3];
      v23 = i[2];
      v24 = v12;
      v13 = a2[5];
      v20[4] = a2[4];
      v20[5] = v13;
      v20[6] = a2[6];
      v14 = a2[1];
      v20[0] = *a2;
      v20[1] = v14;
      v15 = a2[3];
      v20[2] = a2[2];
      v20[3] = v15;
      sub_1D5C8C900(v25, &v16);
      sub_1D5CFC8D8(v6, v20);
      if (v3)
      {
        break;
      }

      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      result = sub_1D5C8C974(&v16);
      if (!--v4)
      {
        return result;
      }
    }

    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    return sub_1D5C8C974(&v16);
  }

  return result;
}

void sub_1D5CF4160(uint64_t a1)
{
  if (!qword_1EDF3A6D8)
  {
    sub_1D5CF4A48(255, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3A6D8);
    }
  }
}

void sub_1D5CF41D4(char **a1, __int128 *a2)
{
  v3 = v2;
  v77 = a1;
  sub_1D5CF4160(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4A48(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v76 - v12;
  sub_1D5B54684(0, &qword_1EDF3A6C8, sub_1D5CF4AE4);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v76 - v16;
  sub_1D5C8E028(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2[5];
  v90[4] = a2[4];
  v90[5] = v25;
  v90[6] = a2[6];
  v26 = a2[1];
  v90[0] = *a2;
  v90[1] = v26;
  v27 = a2[3];
  v28 = *v3;
  v29 = *v3 >> 60;
  v90[2] = a2[2];
  v90[3] = v27;
  if (v29 > 6)
  {
    if (v29 <= 9)
    {
      v41 = v28 & 0xFFFFFFFFFFFFFFFLL;
      if (v29 == 7)
      {
        *&v83 = *(v41 + 16);
        sub_1D5CF9A24(v77, a2);
      }

      else if (v29 == 8)
      {
        v42 = *(v41 + 16);
        v43 = *(v41 + 24);

        sub_1D5D0AD60(v77, v90, v42, v43, sub_1D5CF41D4);
      }

      else
      {
        *&v83 = *(v41 + 16);
        sub_1D5CF94EC(v77, a2, v21, v22);
      }
    }

    else
    {
      v40 = v93;
      if (v29 > 11)
      {
        v44 = v28 & 0xFFFFFFFFFFFFFFFLL;
        if (v29 == 12)
        {
          v45 = *(v44 + 16);
          v46 = v45 >> 61;
          if ((v45 >> 61) > 2)
          {
            v69 = v45 & 0x1FFFFFFFFFFFFFFFLL;
            if (v46 == 3)
            {
              v70 = *(v69 + 32);
              v71 = *(v69 + 40);
              v78 = *(v69 + 16);
              v79 = v70;
              LOBYTE(v80) = v71;
              v72 = a2[5];
              v87 = a2[4];
              v88 = v72;
              v89 = a2[6];
              v73 = a2[1];
              v83 = *a2;
              v84 = v73;
              v74 = a2[3];
              v85 = a2[2];
              v86 = v74;
              sub_1D607AC1C(v77);
            }

            else
            {
              v75 = *(v69 + 32);
              v91[0] = *(v69 + 16);
              v91[1] = v75;
              v92 = *(v69 + 48);
              sub_1D62B50EC(v91, &v83, sub_1D62B5154);
              sub_1D62A7020(v77, v90);
              sub_1D62B51D0(v91, sub_1D62B5154);
            }
          }

          else if ((v45 >> 61) >= 2)
          {
            v47 = v45 & 0x1FFFFFFFFFFFFFFFLL;
            v48 = *(v47 + 16);
            v49 = *(v47 + 32);
            v50 = *(v47 + 40);
            v51 = *(v47 + 48);
            LOWORD(v47) = *(v47 + 56);
            v78 = v48;
            v79 = v49;
            v80 = v50;
            v81 = v51;
            v82 = v47;
            v52 = a2[5];
            v87 = a2[4];
            v88 = v52;
            v89 = a2[6];
            v53 = a2[1];
            v83 = *a2;
            v84 = v53;
            v54 = a2[3];
            v85 = a2[2];
            v86 = v54;
            sub_1D5FD7C7C(v77);
          }
        }

        else
        {
          v65 = *(v44 + 16);
          if ((v65 & 0x8000000000000000) == 0)
          {
            v66 = *(v65 + 16);
            v67 = *(v65 + 24);

            v68 = v77;
            sub_1D6E60F24(v77, v90, v66);
            if (!v40)
            {
              sub_1D62B28C0(v68, v90, v67);
            }
          }
        }
      }

      else if (v29 == 10)
      {
        *&v83 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D62AF89C(v77, a2);
      }
    }
  }

  else if (v29 <= 2)
  {
    if (v29 >= 2)
    {
      v55 = swift_projectBox();
      sub_1D62B50EC(v55, v24, sub_1D5C8E028);
      v56 = *&v24[*(v19 + 36)];
      v57 = *(v56 + 16);
      if (v57)
      {
        sub_1D5CF4AE4(0);
        v59 = v58;
        v60 = *(v58 - 8);
        v61 = v56 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
        v62 = *(v60 + 72);
        v63 = (v60 + 56);
        do
        {
          sub_1D62B50EC(v61, v17, sub_1D5CF4AE4);
          (*v63)(v17, 0, 1, v59);
          sub_1D5B6EF64(v17, &qword_1EDF3A6C8, sub_1D5CF4AE4);
          v61 += v62;
          --v57;
        }

        while (v57);
      }

      sub_1D5CF4AE4(0);
      (*(*(v64 - 8) + 56))(v17, 1, 1, v64);
      sub_1D62B51D0(v24, sub_1D5C8E028);
    }
  }

  else if ((v29 - 3) >= 3)
  {
    v30 = swift_projectBox();
    sub_1D62B7198(v30, v13, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
    v31 = *&v13[*(v10 + 36)];
    v32 = *(v31 + 16);
    if (v32)
    {
      sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
      v34 = v33;
      v35 = *(v33 - 8);
      v36 = v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v37 = *(v35 + 72);
      v38 = (v35 + 56);
      do
      {
        sub_1D62B7198(v36, v8, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
        (*v38)(v8, 0, 1, v34);
        sub_1D62B51D0(v8, sub_1D5CF4160);
        v36 += v37;
        --v32;
      }

      while (v32);
    }

    sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_1D62B7204(v13, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  }
}

void sub_1D5CF49AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D72585BC();
    v7 = sub_1D5FBA0C0(&qword_1EDF45B80, MEMORY[0x1E6968FB0], &protocol conformance descriptor for URL);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5CF4A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D72585BC();
    v7 = sub_1D5B57348(&qword_1EDF45B80, MEMORY[0x1E6968FB0], &protocol conformance descriptor for URL);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5CF4AE4(uint64_t a1)
{
  if (!qword_1EDF3A6D0)
  {
    v2 = sub_1D725891C();
    v3 = sub_1D5B57348(&qword_1EDF45B20, MEMORY[0x1E6969530], &protocol conformance descriptor for Date);
    v5 = type metadata accessor for FormatSelectorValueSelector(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF3A6D0);
    }
  }
}

uint64_t sub_1D5CF4B78(uint64_t a1, void *a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for FormatContent.Resolved(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5CF4CCC(a1, a2, v12, v2 + v8, v2 + v11);
}

uint64_t sub_1D5CF4CCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5CF4CF8, 0, 0);
}

uint64_t sub_1D5CF4CF8()
{
  v1 = v0[4];
  v2 = type metadata accessor for FormatContent.Resolved(0);
  v3 = *(v1 + *(v2 + 44));
  v4 = *(v1 + *(v2 + 52));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D5D09C9C;
  v6 = v0[5];
  v7 = v0[6];

  return sub_1D5CF3D04(v7, v3, v4, v6);
}

uint64_t sub_1D5CF4DBC(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v17[4] = a2[4];
  v17[5] = v5;
  v17[6] = a2[6];
  v6 = a2[1];
  v17[0] = *a2;
  v17[1] = v6;
  v7 = a2[3];
  v17[2] = a2[2];
  v17[3] = v7;
  swift_beginAccess();
  v8 = v2[4];

  sub_1D5CF5C18(a1, v17, v8);

  if (!v3)
  {
    v10 = v2[6];
    if (v10)
    {
      v12 = v2[10];
      v11 = v2[11];
      v14 = v2[8];
      v13 = v2[9];
      v15 = v2[7];
      sub_1D62A42E0();
      sub_1D5EB1D80(v10, v15, v14, v13, v12, v11);

      sub_1D5CBF568(v12);
    }

    swift_beginAccess();
    v16 = v2[5];

    sub_1D5CF6090(a1, v17, v16);
  }

  return result;
}

void sub_1D5CF4F50(char **result, __int128 *a2)
{
  v4 = a2[5];
  v46[4] = a2[4];
  v46[5] = v4;
  v46[6] = a2[6];
  v5 = a2[1];
  v46[0] = *a2;
  v46[1] = v5;
  v6 = a2[3];
  v46[2] = a2[2];
  v46[3] = v6;
  v7 = *v2;
  v8 = a2;
  switch((*v2 >> 58) & 0x3C | (*v2 >> 1) & 3)
  {
    case 2uLL:
    case 3uLL:

      sub_1D5D08784(result, v8);
      goto LABEL_60;
    case 4uLL:

      sub_1D5D08EAC(result, v8);
      goto LABEL_60;
    case 5uLL:

      sub_1D5CFC4E4(result, v8);
      goto LABEL_60;
    case 6uLL:

      sub_1D5D07854(result, v8);
      goto LABEL_60;
    case 7uLL:
      goto LABEL_46;
    case 8uLL:

      sub_1D5CFDB80(result, v8);
      goto LABEL_60;
    case 9uLL:
      v22 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v23 = *(v22 + 88);

      sub_1D5CF6244(result, v46, v23);
      if (v3)
      {
        goto LABEL_73;
      }

      swift_beginAccess();
      v8 = *(v22 + 96);
      if (v8 >> 62)
      {
        goto LABEL_75;
      }

      v24 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (2)
      {

        if (!v24)
        {
          goto LABEL_72;
        }

        v25 = 0;
        v47 = v8 & 0xC000000000000001;
LABEL_38:
        if (v47)
        {
          v26 = MEMORY[0x1DA6FB460](v25, v8);
          v27 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v25 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_75:
            v24 = sub_1D7263BFC();
            continue;
          }

          v26 = *(v8 + v25 + 4);

          v27 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
LABEL_41:
            swift_beginAccess();
            v28 = *(v26 + 40);

            sub_1D5CF6244(result, v46, v28);

            swift_beginAccess();
            v29 = *(v26 + 32);

            sub_1D5CF6090(result, v46, v29);

            ++v25;
            if (v27 == v24)
            {
LABEL_72:

              return;
            }

            goto LABEL_38;
          }
        }

        break;
      }

      __break(1u);
LABEL_46:

      sub_1D5D0A704(result, v8);
LABEL_60:

      return;
    case 0xAuLL:

      sub_1D5CF66F0(result, v8);
      goto LABEL_60;
    case 0xBuLL:

      sub_1D5CFDDFC(result, v8);
      goto LABEL_60;
    case 0xCuLL:
      v20 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v21 = *(v20 + 56);

      sub_1D5CF6244(result, v46, v21);
      if (v3)
      {
        goto LABEL_73;
      }

      swift_beginAccess();
      v16 = *(v20 + 40);
      goto LABEL_65;
    case 0xDuLL:

      sub_1D5CF7734(result, v8);
      goto LABEL_60;
    case 0xEuLL:

      sub_1D5D06868(result, v8);
      goto LABEL_60;
    case 0xFuLL:

      sub_1D5D095B4(result, v8);
      goto LABEL_60;
    case 0x10uLL:

      sub_1D5D0A2B4(result, v8);
      goto LABEL_60;
    case 0x11uLL:

      sub_1D5D08B44(result, v8);
      goto LABEL_60;
    case 0x12uLL:

      sub_1D5D0AB34(result, v8);
      goto LABEL_60;
    case 0x13uLL:

      sub_1D5CF4DBC(result, v8);
      goto LABEL_60;
    case 0x14uLL:

      sub_1D62ADBBC(result, v8);
      goto LABEL_60;
    case 0x15uLL:

      sub_1D62A8450(result, v8);
      goto LABEL_60;
    case 0x16uLL:
      return;
    case 0x17uLL:

      sub_1D5D08CB8(result, v8);
      goto LABEL_60;
    case 0x18uLL:

      sub_1D62AD138(result, v8);
      goto LABEL_60;
    case 0x19uLL:

      sub_1D62ABE28(result, v8);
      goto LABEL_60;
    case 0x1AuLL:

      sub_1D62ADE80(result, v8);
      goto LABEL_60;
    case 0x1BuLL:

      sub_1D62AB09C(result, v8);
      goto LABEL_60;
    case 0x1CuLL:
      sub_1D62AE178(result, a2);
      return;
    case 0x1DuLL:
      v38 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v39 = *(v38 + 56);

      sub_1D5CF6244(result, v46, v39);
      goto LABEL_70;
    case 0x1EuLL:
      v30 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = v30[8];
      if (v31)
      {
        v32 = v30[9];
        v33 = v30[10];
        v35 = v30[11];
        v34 = v30[12];
        v36 = v30[13];
        sub_1D62A42E0();
        v37 = v3;
        if (v3)
        {
          sub_1D5EB1D80(v31, v32, v33, v35, v34, v36);

          sub_1D5CBF568(v34);

          return;
        }

        sub_1D5EB1D80(v31, v32, v33, v35, v34, v36);

        sub_1D5CBF568(v34);
      }

      else
      {
        v37 = v3;
      }

      swift_beginAccess();
      v45 = v30[7];

      sub_1D5CF6090(result, v46, v45);
      if (!v37)
      {
        goto LABEL_70;
      }

      goto LABEL_60;
    case 0x1FuLL:

      sub_1D62AE39C(result, v8);
      goto LABEL_60;
    case 0x20uLL:

      sub_1D62AE81C(result, v8);
      goto LABEL_60;
    case 0x21uLL:
      v17 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v18 = v17[7];

      sub_1D5CF6244(result, v46, v18);
      if (v3)
      {
        goto LABEL_73;
      }

      swift_beginAccess();
      v19 = v17[8];

      sub_1D5CF4060(result, v46, v19);

      swift_beginAccess();
      v16 = v17[9];
      goto LABEL_65;
    case 0x22uLL:
      v14 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v15 = *(v14 + 48);

      sub_1D5CF6244(result, v46, v15);
      if (v3)
      {
LABEL_73:

        return;
      }

      swift_beginAccess();
      v16 = *(v14 + 32);
LABEL_65:

      sub_1D5CF6090(result, v46, v16);
LABEL_70:

      goto LABEL_71;
    case 0x23uLL:
      v10 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v11 = *(v10 + 48);

      sub_1D5CF6090(result, v46, v11);
      goto LABEL_70;
    case 0x24uLL:
      v12 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v13 = v12[4];

      sub_1D5CF5C18(result, v46, v13);
      if (v3)
      {

LABEL_7:

        return;
      }

      v40 = v12[5];
      if (!v40)
      {
        goto LABEL_7;
      }

      v41 = v12[6];
      v42 = v12[7];
      v43 = v12[8];
      v44 = v12[9];
      v47 = v12[10];
      sub_1D62A42E0();
      sub_1D5EB1D80(v40, v41, v42, v43, v44, v47);

      sub_1D5CBF568(v44);
LABEL_71:

      return;
    case 0x25uLL:

      sub_1D5CF4F50(result, v8);

      goto LABEL_60;
    case 0x26uLL:

      sub_1D62AEC78(result, v8);
      goto LABEL_60;
    case 0x27uLL:

      sub_1D62AEEDC(result, v8);
      goto LABEL_60;
    case 0x28uLL:

      sub_1D62A9004(result, v8);
      goto LABEL_60;
    default:

      sub_1D5CFE0E8(result, v8);
      goto LABEL_60;
  }
}

char **sub_1D5CF5C18(char **result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 48); ; i += 5)
    {
      v8 = *i;
      v9 = i[2];
      v23 = i[1];
      v24 = v9;
      v25 = i[3];
      v10 = *i;
      v21 = *(i - 1);
      v22 = v10;
      v18 = v8;
      v19 = v23;
      v20[0] = i[2];
      *(v20 + 15) = *(i + 47);
      v11 = a2[5];
      v17[4] = a2[4];
      v17[5] = v11;
      v17[6] = a2[6];
      v12 = a2[1];
      v17[0] = *a2;
      v17[1] = v12;
      v13 = a2[3];
      v17[2] = a2[2];
      v17[3] = v13;
      sub_1D5CF5D60(&v21, &v14);
      sub_1D5CF5DBC(&v22, &v14);
      sub_1D5CF5E6C(v6, v17);
      if (v3)
      {
        break;
      }

      sub_1D5CF5E18(&v21);
      v14 = v18;
      v15 = v19;
      v16[0] = v20[0];
      *(v16 + 15) = *(v20 + 15);
      result = sub_1D5CF603C(&v14);
      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5CF5E18(&v21);
    v14 = v18;
    v15 = v19;
    v16[0] = v20[0];
    *(v16 + 15) = *(v20 + 15);
    return sub_1D5CF603C(&v14);
  }

  return result;
}

void sub_1D5CF5E6C(char **result, __int128 *a2)
{
  v4 = a2[5];
  v24[4] = a2[4];
  v24[5] = v4;
  v24[6] = a2[6];
  v5 = a2[1];
  v24[0] = *a2;
  v24[1] = v5;
  v6 = a2[3];
  v24[2] = a2[2];
  v24[3] = v6;
  v7 = ((4 * *(v2 + 50)) | (*(v2 + 48) >> 11) & 3);
  if (v7 >= 6)
  {
    v8 = *v2;
    if (v7 == 6)
    {
      if (v8 >> 62 == 1)
      {
        v12 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        *v23 = v14;
        *&v23[8] = v13;
        sub_1D62A8874(result, a2);
      }
    }

    else if (v7 == 7)
    {
      if (v8 >> 62 == 3)
      {
        v9 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        *v23 = v11;
        *&v23[8] = v10;
        sub_1D62B3700(result, a2);
      }
    }

    else
    {
      v15 = *(v8 + 32);
      *v23 = *(v8 + 16);
      *&v23[16] = v15;
      *&v23[32] = *(v8 + 48);
      *&v23[43] = *(v8 + 59);
      v16 = *v23;
      sub_1D62B6438(v23, &v20, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
      sub_1D6E5F890(result, v24, v16);
      if (!v3)
      {
        v20 = *&v23[8];
        v21 = *&v23[24];
        v22[0] = *&v23[40];
        *(v22 + 15) = *&v23[55];
        sub_1D62B6438(&v23[8], v18, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
        sub_1D5CF5E6C(result, v24);
        v18[0] = v20;
        v18[1] = v21;
        v19[0] = v22[0];
        *(v19 + 15) = *(v22 + 15);
        sub_1D5CF603C(v18);
      }

      sub_1D62B6514(v23);
    }
  }
}

char **sub_1D5CF6090(char **result, __int128 *a2, uint64_t a3)
{
  v14 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = (a3 + 72);
    while (1)
    {
      v15 = v3;
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v16 = v5[3];
      v18 = v5[5];
      v19 = v5[4];
      v10 = v5[6];
      v9 = v5[7];
      v21 = *(v5 - 5);
      v11 = a2[5];
      v20[4] = a2[4];
      v20[5] = v11;
      v20[6] = a2[6];
      v12 = a2[1];
      v20[0] = *a2;
      v20[1] = v12;
      v13 = a2[3];
      v20[2] = a2[2];
      v20[3] = v13;

      sub_1D5CFDAE4(v6, v7, v8, v16, v19, v18, v10, v9);

      sub_1D5CF4F50(v14, v20);
      if (v17)
      {
        break;
      }

      v5 += 13;

      result = sub_1D5CFDD14(v6, v7, v8, v16, v19, v18, v10, v9);
      v3 = v15 - 1;
      if (v15 == 1)
      {
        return result;
      }
    }

    return sub_1D5CFDD14(v6, v7, v8, v16, v19, v18, v10, v9);
  }

  return result;
}

void sub_1D5CF6244(char **a1, __int128 *a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatOption(0) - 8;
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    do
    {
      sub_1D5D054F0(v13, v11, type metadata accessor for FormatOption);
      v19 = *(v11 + 2);
      v15 = a2[5];
      v18[4] = a2[4];
      v18[5] = v15;
      v18[6] = a2[6];
      v16 = a2[1];
      v18[0] = *a2;
      v18[1] = v16;
      v17 = a2[3];
      v18[2] = a2[2];
      v18[3] = v17;

      sub_1D5CF41D4(a1, v18);

      sub_1D5CF6420(v11, type metadata accessor for FormatOption);
      if (v3)
      {
        break;
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1D5CF63C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF6420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF6480(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);

  if (!v3)
  {

    a3(a1, a2);
  }

  return result;
}

void sub_1D5CF6528(char **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = *v8 >> 60;
  if (v10 <= 6)
  {
    if (v10 > 3)
    {
      if ((v10 - 5) >= 2)
      {
        sub_1D5D089A8(a1, a2, a3, a4);
      }
    }

    else if ((v10 - 2) >= 2 && v10 != 0)
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if ((v12 & 0x80000000) == 0 && (v12 & 1) == 0)
      {
        sub_1D5CF41D4(a1, a2);
      }
    }

    return;
  }

  if (v10 > 0xE)
  {
    goto LABEL_20;
  }

  if (((1 << v10) & 0x6C00) != 0)
  {
    return;
  }

  if (v10 == 9)
  {
LABEL_22:
    sub_1D5CF6480(a1, a2, sub_1D5CF6528);
    return;
  }

  if (v10 != 12)
  {
LABEL_20:
    if (v10 == 7)
    {

      sub_1D5CF6528(a1, a2, v22, v23, v24, v25, v26, v27);

      return;
    }

    goto LABEL_22;
  }

  v15 = v9 & 0xFFFFFFFFFFFFFFFLL;
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);
  v18 = *(v15 + 48);
  v19 = *(v15 + 56);
  sub_1D6057D14(v16, v17, v18, *(v15 + 56));
  if (v19 < 0)
  {
    sub_1D5CFCC3C(a1, a2);
  }

  sub_1D6057D74(v16, v17, v18, v19);
}

unint64_t sub_1D5CF66F0(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v39[4] = a2[4];
  v39[5] = v7;
  v39[6] = a2[6];
  v8 = a2[1];
  v39[0] = *a2;
  v39[1] = v8;
  v9 = a2[3];
  v39[2] = a2[2];
  v39[3] = v9;
  v33 = v2[6];
  sub_1D5C82CD8(v33);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    return sub_1D5C92A8C(v33);
  }

  sub_1D5C92A8C(v33);
  swift_beginAccess();
  v17 = v2[8];

  sub_1D5CF9258(a1, v39, v17, v18, v19, v20, v21, v22);

  swift_beginAccess();
  v23 = v4[9];

  sub_1D5CF4060(a1, v39, v23);

  swift_beginAccess();
  v24 = v4[11];

  sub_1D5CF6244(a1, v39, v24);

  swift_beginAccess();
  v25 = v4[12];
  if (v25 >> 62)
  {
LABEL_20:
    v26 = sub_1D7263BFC();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v27 = 0;
    v40 = v25 & 0xC000000000000001;
    do
    {
      if (v40)
      {
        v28 = MEMORY[0x1DA6FB460](v27, v25);
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v28 = *(v25 + 8 * v27 + 32);

        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_16;
        }
      }

      swift_beginAccess();
      v30 = *(v28 + 40);

      sub_1D5CF6244(a1, v39, v30);

      swift_beginAccess();
      v31 = *(v28 + 32);

      sub_1D5CF6090(a1, v39, v31);

      ++v27;
    }

    while (v29 != v26);
  }

  v32 = v4[15];
  if (v32)
  {
    v34 = v4[16];
    v35 = v4[17];
    v36 = v4[18];
    v37 = v4[19];
    v38 = v4[20];
    sub_1D62A42E0();
    sub_1D5EB1D80(v32, v34, v35, v36, v37, v38);

    sub_1D5CBF568(v37);
  }

  return result;
}

char **sub_1D5CF6AB8(char **result, __int128 *a2)
{
  v3 = a2[5];
  v24[4] = a2[4];
  v24[5] = v3;
  v24[6] = a2[6];
  v4 = a2[1];
  v24[0] = *a2;
  v24[1] = v4;
  v5 = a2[3];
  v24[2] = a2[2];
  v24[3] = v5;
  v6 = *v2;
  if (*(v2 + 8))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*v2 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (!v8)
    {
      if (v6 >> 62 != 1)
      {
        return result;
      }

      v10 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
      goto LABEL_21;
    }

LABEL_10:
    if (v6 >> 62 != 1)
    {
      return result;
    }

    v10 = (v6 & 0xFFFFFFFFFFFFFFFLL);
LABEL_21:
    v18 = v10[2];
    v19 = v10[3];
    v20 = v10[4];
    v21 = result;

    sub_1D5CF6C3C(v21, v24, v18, v19, v20, v22, v23);
    goto LABEL_22;
  }

  if (v8 <= 4)
  {
    if (v8 != 3)
    {
      if (v6 >> 62 != 1)
      {
        return result;
      }

      v9 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (v8 == 5 && v6 >> 62 == 1)
  {
    v9 = (v6 & 0xFFFFFFFFFFFFFFFLL);
LABEL_18:
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = result;

    sub_1D5CF6C3C(v15, v24, v12, v13, v14, v16, v17);
LABEL_22:
  }

  return result;
}

void sub_1D5CF6C3C(char **a1, __int128 *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D5CF6D20(a1, a2, a3, a4);
  if (!v7)
  {
    sub_1D5CF6E18(a1, a2, a4);
    if (a5 >> 62 == 1)
    {
      v12 = a5 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v15 = *(v12 + 32);

      sub_1D5CF6C3C(a1, a2, v13, v14, v15, v16, v17);
    }
  }
}

double sub_1D5CF6D20(char **result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 50))
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFF8 | (*(v4 + 48) >> 11) & 7;
  if (v6 > 9)
  {
    return sub_1D5D06CC8(result, a2, a3, a4);
  }

  if (((1 << v6) & 0x3B6) != 0)
  {
    return v10;
  }

  if (v6 != 3)
  {
    if (v6 == 6)
    {
      return sub_1D62A7F6C(result, a2);
    }

    return sub_1D5D06CC8(result, a2, a3, a4);
  }

  if (*(v4 + 16) == 1 && (*v4 & 0xF000000000000007) != 0xF000000000000007)
  {

    sub_1D5CFEE30(result, a2);
  }

  return v10;
}

char **sub_1D5CF6E18(char **result, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v71 = result;
  for (i = (a3 + 56); ; i += 4)
  {
    v7 = *i;
    if (*i >> 62 != 1)
    {
      goto LABEL_5;
    }

    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 8);
    v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v84 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 40);
    if (*(v11 + 66))
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 & 0xFFFFFFF8 | (*(v11 + 64) >> 11) & 7;
    v73 = v8;
    v74 = v9;
    if (v17 > 4)
    {
      if (v17 <= 6)
      {
        if (v17 == 5)
        {
          goto LABEL_39;
        }

        if (!(v15 >> 6) || v15 >> 6 == 1)
        {
          goto LABEL_28;
        }

        v21 = v15 & 0x3F;
        if (v21 <= 1)
        {
          goto LABEL_69;
        }

LABEL_24:
        v18 = v84;
LABEL_71:
        sub_1D5D03180(v8, v9, v10);
      }

      else
      {
        if (v17 != 7)
        {
          v18 = v84;
          v19 = v71;
          sub_1D5D03180(v8, v9, v10);

LABEL_32:

          goto LABEL_41;
        }

LABEL_39:
        sub_1D5D03180(v8, v9, v10);

        v18 = v84;
      }

      v19 = v71;
      goto LABEL_41;
    }

    if (v17 > 1)
    {
      if (v17 != 3)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v17)
    {
      goto LABEL_39;
    }

    v20 = (v15 >> 3) & 7;
    if (v20 > 1)
    {
      break;
    }

    if (v20 || *(v11 + 32) > 1u)
    {
      goto LABEL_39;
    }

    v19 = v71;
    if (!*(v11 + 32) || (~v13 & 0xF000000000000007) == 0)
    {
LABEL_31:
      sub_1D5D03180(v8, v9, v10);

      v18 = v84;
      goto LABEL_32;
    }

    *&v82 = *(v11 + 16);
    v22 = a2[5];
    v79 = a2[4];
    v80 = v22;
    v81 = a2[6];
    v23 = a2[1];
    v75 = *a2;
    v76 = v23;
    v24 = a2[3];
    v77 = a2[2];
    v78 = v24;
    sub_1D5D03180(v8, v9, v10);

    sub_1D5CFCFAC(v13);
    sub_1D5CFEE30(v71, &v75);
    if (v4)
    {
      goto LABEL_92;
    }

LABEL_77:

    v18 = v84;
LABEL_41:
    sub_1D5CF6E18(v19, a2, v18);
    if (v4)
    {

      goto LABEL_90;
    }

    if (v12 >> 62 == 1)
    {
      v70 = v10;
      v25 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v28 = *(v25 + 32);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v31 = *(v26 + 32);
      v32 = *(v26 + 40);
      v33 = *(v26 + 64);
      if (*(v26 + 66))
      {
        v34 = 8;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34 & 0xFFFFFFF8 | (v33 >> 11) & 7;
      if (v35 <= 3)
      {
        if ((v35 - 1) < 2)
        {
          goto LABEL_86;
        }

        if (v35)
        {
          goto LABEL_61;
        }

        v41 = (v32 >> 3) & 7;
        if (v41 > 1)
        {
          if (v41 != 2 && v41 != 3)
          {
            if (v32 >> 6 && v32 >> 6 != 1)
            {
              sub_1D62A5570(v19, a2, v29, v30, v31, v32 & 7);
            }

            else
            {
              *&v82 = v29;
              *(&v82 + 1) = v30;
              v83[0] = v31;
              v54 = a2[5];
              v79 = a2[4];
              v80 = v54;
              v81 = a2[6];
              v55 = a2[1];
              v75 = *a2;
              v76 = v55;
              v56 = a2[3];
              v77 = a2[2];
              v78 = v56;
              sub_1D62A7EF0(v19, &v75);
            }

            goto LABEL_86;
          }

          goto LABEL_61;
        }

        v37 = v41 == 0;
        v42 = v29 & 0xF000000000000007;
        v43 = v37 && v31 == 1;
      }

      else
      {
        v36 = *(v26 + 56);
        if (((1 << v35) & 0x330) != 0)
        {
          goto LABEL_86;
        }

        if (v35 != 6)
        {
          if ((v33 & 0x80000000) != 0 && ((v33 >> 7) & 0xE | (v33 >> 3) & 1) == 2)
          {
            *&v82 = v29;
            *(&v82 + 1) = v30;
            *&v83[8] = v32;
            *v83 = v31;
            *&v83[24] = v36;
            v83[32] = v33 & 0xF7;
            v48 = a2[5];
            v79 = a2[4];
            v80 = v48;
            v81 = a2[6];
            v49 = a2[1];
            v75 = *a2;
            v76 = v49;
            v50 = a2[3];
            v77 = a2[2];
            v78 = v50;
            nullsub_1();
          }

          goto LABEL_86;
        }

        if (v32 >> 6 && v32 >> 6 != 1)
        {
          v37 = (v32 & 0x3F) != 1 || (v30 & 0xF000000000000007) == 0xF000000000000007;
          if (!v37)
          {
            *&v82 = v30;
            v38 = a2[5];
            v79 = a2[4];
            v80 = v38;
            v81 = a2[6];
            v39 = a2[1];
            v75 = *a2;
            v76 = v39;
            v40 = a2[3];
            v77 = a2[2];
            v78 = v40;
            goto LABEL_67;
          }

          goto LABEL_86;
        }

LABEL_61:
        v42 = v29 & 0xF000000000000007;
        v43 = v31 == 1;
      }

      if (v43 && v42 != 0xF000000000000007)
      {
        *&v82 = v29;
        v45 = a2[5];
        v79 = a2[4];
        v80 = v45;
        v81 = a2[6];
        v46 = a2[1];
        v75 = *a2;
        v76 = v46;
        v47 = a2[3];
        v77 = a2[2];
        v78 = v47;
LABEL_67:

        sub_1D5CFEE30(v19, &v75);
      }

LABEL_86:
      sub_1D5CF6E18(v19, a2, v27);
      if (v28 >> 62 == 1)
      {
        v62 = v28 & 0x3FFFFFFFFFFFFFFFLL;
        v63 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v64 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v65 = *(v62 + 32);
        v66 = *(v63 + 32);
        v82 = *(v63 + 16);
        *v83 = v66;
        *&v83[16] = *(v63 + 48);
        *&v83[31] = *(v63 + 63);
        v67 = a2[5];
        v79 = a2[4];
        v80 = v67;
        v81 = a2[6];
        v68 = a2[1];
        v75 = *a2;
        v76 = v68;
        v69 = a2[3];
        v77 = a2[2];
        v78 = v69;
        sub_1D5CF6D20(v19, &v75, v60, v61);
        sub_1D5CF6E18(v19, a2, v64);
        sub_1D62A8028(v19, a2, v65);
        v10 = v70;

        v4 = 0;
      }

      else
      {

        v10 = v70;
      }

      goto LABEL_4;
    }

LABEL_4:
    sub_1D5D07BA8(v73, v74, v10);

LABEL_5:
    if (!--v5)
    {
      return result;
    }
  }

  if (v20 == 2 || v20 == 3 || !(v15 >> 6) || v15 >> 6 == 1)
  {
LABEL_28:
    if (*(v11 + 32) > 1u)
    {
      goto LABEL_39;
    }

    v19 = v71;
    if (!*(v11 + 32) || (~v13 & 0xF000000000000007) == 0)
    {
      goto LABEL_31;
    }

    *&v82 = *(v11 + 16);
    v51 = a2[5];
    v79 = a2[4];
    v80 = v51;
    v81 = a2[6];
    v52 = a2[1];
    v75 = *a2;
    v76 = v52;
    v53 = a2[3];
    v77 = a2[2];
    v78 = v53;
    sub_1D5D03180(v8, v9, v10);

    sub_1D5CFCFAC(v13);
    goto LABEL_76;
  }

  v21 = v15 & 7;
  if (v21 > 1)
  {
    goto LABEL_24;
  }

LABEL_69:
  v18 = v84;
  if (!v21 || (~v14 & 0xF000000000000007) == 0)
  {
    goto LABEL_71;
  }

  *&v82 = *(v11 + 24);
  v57 = a2[5];
  v79 = a2[4];
  v80 = v57;
  v81 = a2[6];
  v58 = a2[1];
  v75 = *a2;
  v76 = v58;
  v59 = a2[3];
  v77 = a2[2];
  v78 = v59;
  sub_1D5D03180(v8, v9, v10);

  sub_1D5CFCFAC(v14);
  v19 = v71;
LABEL_76:
  sub_1D5CFEE30(v19, &v75);
  if (!v4)
  {
    goto LABEL_77;
  }

LABEL_92:

LABEL_90:

  sub_1D5D07BA8(v73, v74, v10);
}

void sub_1D5CF7734(char **a1, __int128 *a2)
{
  swift_beginAccess();
  v10 = *(v2 + 32);
  v12 = *(v2 + 40);
  sub_1D5D07778(v10, v12);
  sub_1D5CF6AB8(a1, a2);
  if (v3)
  {
    sub_1D5D06D9C(v10, v12);
  }

  else
  {
    sub_1D5D06D9C(v10, v12);
    swift_beginAccess();
    if ((*(v2 + 98) >> 1) <= 0x7Eu)
    {
      v6 = *(v2 + 96) | (*(v2 + 98) << 16);
      v11 = *(v2 + 48);
      v13 = *(v2 + 56);
      v15 = *(v2 + 64);
      v17 = *(v2 + 72);
      v19 = *(v2 + 80);
      v21 = *(v2 + 88);
      sub_1D5D0A5BC(v11, v13, v15, v17, v19, v21, v6);
      sub_1D5D0A61C(a1, a2, v7, v8);
      sub_1D5D0A678(v11, v13, v15, v17, v19, v21, v6);
    }

    v9 = *(v2 + 104);
    if (v9)
    {
      v14 = *(v2 + 112);
      v16 = *(v2 + 120);
      v18 = *(v2 + 128);
      v20 = *(v2 + 136);
      v22 = *(v2 + 144);
      sub_1D62A42E0();
      sub_1D5EB1D80(v9, v14, v16, v18, v20, v22);

      sub_1D5CBF568(v20);
    }
  }
}

uint64_t FormatPackageInventory.resources(context:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5C2C40C(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[5];
  v45[4] = a1[4];
  v45[5] = v11;
  v45[6] = a1[6];
  v12 = a1[1];
  v45[0] = *a1;
  v45[1] = v12;
  v13 = a1[3];
  v45[2] = a1[2];
  v45[3] = v13;
  *&v43 = MEMORY[0x1E69E7CC0];
  *(&v43 + 1) = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CD0];
  v14 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  v15 = *(v2 + v14);

  sub_1D5CF7F4C(&v43, v45, v15);
  if (v3)
  {
  }

  else
  {
    v46 = a2;

    v16 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
    swift_beginAccess();
    v17 = *v16;

    sub_1D5CF3D6C(&v43, v45, v17);

    v18 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
    swift_beginAccess();
    v19 = *v18;

    sub_1D5CFBB04(&v43, v45, v19);

    v21 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
    swift_beginAccess();
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*v21 + 16);

    v41[1] = v22;

    v42 = v24;
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = v23;
        sub_1D5D054F0(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v10, sub_1D5C2C40C);
        v27 = *v10;
        swift_beginAccess();
        v28 = v27[9];

        sub_1D5CF6244(&v43, v45, v28);

        swift_beginAccess();
        v29 = v27[11];

        sub_1D5CFD3E0(&v43, v45, v29);

        swift_beginAccess();
        v30 = v27[8];

        sub_1D5CF6090(&v43, v45, v30);
        ++v25;

        result = sub_1D5CF6420(v10, sub_1D5C2C40C);
        v23 = v26;
        if (v42 == v25)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      v31 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
      swift_beginAccess();
      v32 = *v31;

      sub_1D5CFBE18(&v43, v45, v32);

      v33 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
      swift_beginAccess();
      v34 = *v33;

      sub_1D5CFC228(&v43, v45, v34);

      v35 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
      swift_beginAccess();
      v36 = *v35;

      sub_1D5D04DD4(&v43, v45, v36);

      v37 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
      swift_beginAccess();
      v38 = *(v2 + v37);

      sub_1D5CF6244(&v43, v45, v38);

      v39 = v44;
      v40 = v46;
      *v46 = v43;
      *(v40 + 2) = v39;
    }
  }

  return result;
}

void sub_1D5CF7F4C(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v27 - v10;
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v28 = *(v9 + 72);
    v29 = a1;
    while (1)
    {
      v41 = v12;
      v30 = v13;
      sub_1D5CF8338(v13, v11, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      v14 = *(v11 + 10);
      v15 = *(v11 + 12);
      v16 = v11[106];
      v17 = v11;
      v18 = *(v11 + 52);
      v31 = *(v11 + 6);
      v19 = a2[5];
      v38 = a2[4];
      v39 = v19;
      v40 = a2[6];
      v20 = a2[1];
      v34 = *a2;
      v35 = v20;
      v21 = a2[3];
      v36 = a2[2];
      v37 = v21;

      v22 = v29;
      sub_1D5CF8944(v29, &v34);

      if (v3)
      {
        break;
      }

      sub_1D5CF6244(v22, a2, v14);

      v23 = v18 | (v16 << 16);
      v11 = v17;
      if (BYTE2(v23) != 255)
      {
        v31 = v15;
        v32 = v18;
        v33 = (v18 | (v16 << 16)) >> 16;
        v24 = a2[5];
        v38 = a2[4];
        v39 = v24;
        v40 = a2[6];
        v25 = a2[1];
        v34 = *a2;
        v35 = v25;
        v26 = a2[3];
        v36 = a2[2];
        v37 = v26;
        sub_1D6E78C48(v15, v23, SBYTE2(v23), sub_1D610CA28, sub_1D610CA5C);
        sub_1D62A8A9C();
        sub_1D6E78C48(v31, v32, v33, sub_1D60CF6A8, sub_1D60CF6DC);
      }

      sub_1D5CF9D88(v17, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      v13 = v30 + v28;
      v12 = v41 - 1;
      if (v41 == 1)
      {
        return;
      }
    }

    sub_1D5CF9D88(v17, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  }
}

uint64_t sub_1D5CF82C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C4BC40(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D5CF8338(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2B0C4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D5CF83AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D7199850(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D5CF8420(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v27[4] = a2[4];
  v27[5] = v5;
  v27[6] = a2[6];
  v6 = a2[1];
  v27[0] = *a2;
  v27[1] = v6;
  v7 = a2[3];
  v27[2] = a2[2];
  v27[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D5CF8784(a1, v27, v8);
  if (v3)
  {

    return;
  }

  swift_beginAccess();
  v9 = *(v2 + 64);
  if (v9)
  {

    sub_1D6E66D84(a1, v27, v9);
  }

  if ((~*(v2 + 72) & 0xF000000000000007) != 0)
  {
    *&v25[0] = *(v2 + 72);

    sub_1D5D0491C(a1, v27, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(v2 + 80);
  if (v16)
  {
    sub_1D5D0AE64(a1, v27, v16);
  }

  v17 = *(v2 + 120);
  if (v17 >= 3)
  {
    if (v17 != 3)
    {
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v2 + 120);
      sub_1D5D0AF9C(v17);
      sub_1D5D0AFBC(v18);
      sub_1D5D0AFBC(v19);
      sub_1D5D0AFDC(a1, v27, v18, v19);
      sub_1D5D0AFCC(v18);
      sub_1D5D0AFCC(v19);
      sub_1D5D0AFAC(v20);
    }
  }

  else
  {
    sub_1D5D0AFAC(v17);
  }

  v26 = *(v2 + 224);
  v21 = *(v2 + 192);
  v25[2] = *(v2 + 176);
  v25[3] = v21;
  v25[4] = *(v2 + 208);
  v22 = *(v2 + 160);
  v25[0] = *(v2 + 144);
  v25[1] = v22;
  if (v26 != 254)
  {
    swift_retain_n();
    sub_1D5CF9A24(a1, v27);

    sub_1D5D0ABCC(v25, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~*(v2 + 232) & 0xF000000000000007) != 0)
  {

    sub_1D5CF9A24(a1, v27);
  }

  v24 = *(v2 + 248);
  v23 = *(v2 + 256);
  if (v24)
  {
    if (v24 == 1)
    {
      return;
    }

    sub_1D62B5D88(v24);

    sub_1D6E5FB2C(a1, v27, v24);
  }

  else
  {
  }

  if (v23)
  {

    sub_1D6E5FB2C(a1, v27, v23);
  }

  sub_1D62B5D44(v24);
}

unint64_t sub_1D5CF8784(unint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 32; ; i += 216)
    {
      v8 = *(i + 176);
      v9 = *(i + 144);
      v61 = *(i + 160);
      v62 = v8;
      v10 = *(i + 176);
      v63 = *(i + 192);
      v11 = *(i + 112);
      v12 = *(i + 80);
      v57 = *(i + 96);
      v58 = v11;
      v13 = *(i + 112);
      v14 = *(i + 144);
      v59 = *(i + 128);
      v60 = v14;
      v15 = *(i + 48);
      v16 = *(i + 16);
      v53 = *(i + 32);
      v54 = v15;
      v17 = *(i + 48);
      v18 = *(i + 80);
      v55 = *(i + 64);
      v56 = v18;
      v19 = *(i + 16);
      v52[0] = *i;
      v52[1] = v19;
      v48 = v61;
      v49 = v10;
      v50 = *(i + 192);
      v44 = v57;
      v45 = v13;
      v46 = v59;
      v47 = v9;
      v40 = v53;
      v41 = v17;
      v42 = v55;
      v43 = v12;
      v64 = *(i + 208);
      v51 = *(i + 208);
      v38 = v52[0];
      v39 = v16;
      v20 = a2[5];
      v37[4] = a2[4];
      v37[5] = v20;
      v37[6] = a2[6];
      v21 = a2[1];
      v37[0] = *a2;
      v37[1] = v21;
      v22 = a2[3];
      v37[2] = a2[2];
      v37[3] = v22;
      sub_1D5D0B0E4(v52, &v23);
      sub_1D5CF8D1C(v6, v37);
      if (v3)
      {
        break;
      }

      v33 = v48;
      v34 = v49;
      v35 = v50;
      v36 = v51;
      v29 = v44;
      v30 = v45;
      v31 = v46;
      v32 = v47;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
      v23 = v38;
      v24 = v39;
      result = sub_1D5D0B1AC(&v23);
      if (!--v4)
      {
        return result;
      }
    }

    v33 = v48;
    v34 = v49;
    v35 = v50;
    v36 = v51;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;
    v23 = v38;
    v24 = v39;
    return sub_1D5D0B1AC(&v23);
  }

  return result;
}

void sub_1D5CF8944(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v47[4] = a2[4];
  v47[5] = v4;
  v47[6] = a2[6];
  v5 = a2[1];
  v47[0] = *a2;
  v47[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 60;
  v47[2] = a2[2];
  v47[3] = v6;
  if (v8 <= 3)
  {
    if (v8 > 1)
    {
      v15 = v7 & 0xFFFFFFFFFFFFFFFLL;
      if (v8 == 2)
      {
        v16 = *(v15 + 96);
        v17 = *(v15 + 112);
        v18 = *(v15 + 128);
        v41 = *(v15 + 80);
        v42 = v16;
        v43 = v17;
        v44 = v18;
        v19 = *(v15 + 32);
        v37 = *(v15 + 16);
        v38 = v19;
        v20 = *(v15 + 64);
        v39 = *(v15 + 48);
        v40 = v20;
        v21 = v18;
        sub_1D60865E4(&v37, &v36);
        sub_1D5CF8C68(result, v47, v21);
        sub_1D6086640(&v37);
      }

      else
      {
        *&v37 = *(v15 + 24);

        sub_1D62AFC20(result, a2);
      }
    }

    else if (v8)
    {
      v31 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = a2[5];
      v41 = a2[4];
      v42 = v32;
      v43 = a2[6];
      v33 = a2[1];
      v37 = *a2;
      v38 = v33;
      v34 = a2[3];
      v39 = a2[2];
      v40 = v34;
      sub_1D5CF8C68(result, &v37, v31);
    }

    else
    {
      *&v37 = *(v7 + 16);
      sub_1D5CF9A24(result, a2);
    }
  }

  else if (v8 <= 5)
  {
    v22 = v7 & 0xFFFFFFFFFFFFFFFLL;
    if (v8 == 4)
    {
      v23 = *(v22 + 128);
      v43 = *(v22 + 112);
      v44 = v23;
      v45 = *(v22 + 144);
      v46 = *(v22 + 160);
      v24 = *(v22 + 64);
      v39 = *(v22 + 48);
      v40 = v24;
      v25 = *(v22 + 96);
      v41 = *(v22 + 80);
      v42 = v25;
      v26 = *(v22 + 32);
      v37 = *(v22 + 16);
      v38 = v26;
      sub_1D62A66D4(result, a2);
    }

    else
    {
      *&v37 = *(v22 + 16);
      sub_1D5D03C64(result, a2);
    }
  }

  else
  {
    if (v8 == 6)
    {
      v27 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v28 = *(v27 + 24);
      *&v37 = *(v27 + 16);
      swift_retain_n();

      sub_1D5CF8944(result, a2);
      if (v3)
      {
        goto LABEL_15;
      }

      sub_1D6E705A0(result, v47, v28);
    }

    else
    {
      if (v8 != 7)
      {
        return;
      }

      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL);
      v10 = v9[3];
      v11 = v9[4];
      *&v37 = v9[2];

      swift_retain_n();

      sub_1D5CF8944(result, a2);
      if (v3)
      {

LABEL_15:

        return;
      }

      sub_1D6E705A0(result, v47, v10);
      *&v37 = v11;

      sub_1D5CF8944(result, v47);
    }
  }
}

uint64_t sub_1D5CF8C68(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = (a3 + 32);
    v8 = v4 - 1;
    do
    {
      v9 = *v7++;
      v10 = v8;
      v15 = v9;
      v11 = a2[5];
      v14[4] = a2[4];
      v14[5] = v11;
      v14[6] = a2[6];
      v12 = a2[1];
      v14[0] = *a2;
      v14[1] = v12;
      v13 = a2[3];
      v14[2] = a2[2];
      v14[3] = v13;

      sub_1D5CF9A24(v6, v14);

      if (v3)
      {
        break;
      }

      v8 = v10 - 1;
    }

    while (v10);
  }

  return result;
}

void sub_1D5CF8D1C(unint64_t result, __int128 *a2)
{
  v5 = a2[5];
  v35[4] = a2[4];
  v35[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v35[0] = *a2;
  v35[1] = v7;
  v8 = a2[3];
  v35[2] = a2[2];
  v35[3] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 56);
  v12 = *(v2 + 72);
  v35[6] = v6;
  v36[0] = v11;
  v13 = *(v2 + 88);
  v14 = *(v2 + 104);
  v15 = *(v2 + 120);
  v37 = *(v2 + 136);
  v36[3] = v14;
  v36[4] = v15;
  v36[1] = v12;
  v36[2] = v13;
  v16 = *(v2 + 144);
  v17 = *(v2 + 176);
  v19 = *(v2 + 192);
  v18 = *(v2 + 200);
  v20 = *(v2 + 208);
  if ((~v9 & 0xF000000000000007) != 0)
  {
    v38 = *(v2 + 144);
    v21 = v17;
    v22 = v19;
    v23 = v18;
    v24 = v20;

    sub_1D5D0491C(result, a2, v26, v27, v28, v29, v30, v31);
    if (v3)
    {

      return;
    }

    v20 = v24;
    v18 = v23;
    v19 = v22;
    v17 = v21;
    v16 = v38;
  }

  if (!v10 || (sub_1D5D0AE64(result, v35, v10), !v3))
  {
    if (v37 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(result, v35);
      if (v3)
      {

        sub_1D5D0ABCC(v36, &qword_1EDF33718, &type metadata for FormatShadow);
        return;
      }

      sub_1D5D0ABCC(v36, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~v16 & 0xF000000000000007) == 0 || (, sub_1D5CF9A24(result, v35), , !v3))
    {
      if (v17 >= 3)
      {
        if (v17 != 3)
        {
          v32 = *(v17 + 16);
          v33 = *(v17 + 24);
          sub_1D5D0AF9C(v17);
          sub_1D5D0AFBC(v32);
          sub_1D5D0AFBC(v33);
          sub_1D5D0AFDC(result, v35, v32, v33);
          sub_1D5D0AFCC(v32);
          sub_1D5D0AFCC(v33);
          sub_1D5D0AFAC(v17);
          if (v3)
          {
            return;
          }
        }
      }

      else
      {
        sub_1D5D0AFAC(v17);
      }

      if (!v19 || (sub_1D6E66D84(result, v35, v19), !v3))
      {
        if (!v18)
        {

          goto LABEL_25;
        }

        if (v18 != 1)
        {
          sub_1D62B5D88(v18);

          sub_1D6E5FB2C(result, v35, v18);

          if (v3)
          {
            v34 = v18;
LABEL_29:
            sub_1D62B5D44(v34);
            return;
          }

LABEL_25:
          if (v20)
          {

            sub_1D6E5FB2C(result, v35, v20);
          }

          v34 = v18;
          goto LABEL_29;
        }
      }
    }
  }
}

char **sub_1D5CF9048(char **result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[5];
  v27[4] = a2[4];
  v27[5] = v10;
  v27[6] = a2[6];
  v11 = a2[1];
  v27[0] = *a2;
  v27[1] = v11;
  v12 = a2[3];
  v27[2] = a2[2];
  v27[3] = v12;
  v13 = *v8;
  v14 = (*v8 >> 59) & 0x1E | (*v8 >> 2) & 1;
  if (v14 <= 10)
  {
    if (v14 <= 2)
    {
      if (v14 >= 2)
      {
        return sub_1D5D09F0C(result, a2, *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      }
    }

    else if ((v14 - 3) >= 6 && v14 == 9)
    {
      if (*((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        v15 = result;

        sub_1D5CFCC3C(v15, a2);
      }

      else
      {
      }
    }
  }

  else if (v14 > 14 && (v14 - 17) >= 6)
  {
    v17 = v13 & 0xFFFFFFFFFFFFFFBLL;
    if (v14 == 15)
    {
      return sub_1D62B17B0(result, a2);
    }

    else
    {
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = result;

      sub_1D5C82CD8(v18);
      sub_1D5D07C10(v20, v27, v19);
      if (!v9)
      {
        sub_1D5C82CD8(v18);
        sub_1D5CF9048(v20, v27, v21, v22, v23, v24, v25, v26);
        sub_1D5C92A8C(v18);
      }

      return sub_1D5C92A8C(v18);
    }
  }

  return result;
}

unint64_t sub_1D5CF9258(unint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 16);
  if (v9)
  {
    v11 = result;
    v12 = (a3 + 32);
    v13 = v9 - 1;
    do
    {
      v14 = *v12++;
      v15 = v13;
      v20 = v14;
      v16 = a2[5];
      v19[4] = a2[4];
      v19[5] = v16;
      v19[6] = a2[6];
      v17 = a2[1];
      v19[0] = *a2;
      v19[1] = v17;
      v18 = a2[3];
      v19[2] = a2[2];
      v19[3] = v18;
      sub_1D5CFEC98(v14);
      sub_1D5CFEABC(v11, v19);
      result = sub_1D5CFED88(v20);
      if (v8)
      {
        break;
      }

      v13 = v15 - 1;
    }

    while (v15);
  }

  return result;
}

void sub_1D5CF9308(char **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char **, __int128 *, uint64_t, double), void (*a7)(uint64_t, uint64_t))
{
  v13 = sub_1D5CF6D20(a1, a2, a3, a4);
  if (!v7)
  {
    a6(a1, a2, a4, v13);

    a7(a1, a2);
  }
}

uint64_t sub_1D5CF93C8(uint64_t result, _OWORD *a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *))
{
  v14 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 56);
    while (1)
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v17 = *v7;
      v11 = a2[5];
      v16[4] = a2[4];
      v16[5] = v11;
      v16[6] = a2[6];
      v12 = a2[1];
      v16[0] = *a2;
      v16[1] = v12;
      v13 = a2[3];
      v16[2] = a2[2];
      v16[3] = v13;
      sub_1D5D03180(v8, v9, v10);
      swift_retain_n();
      a4(v14, v16);
      if (v4)
      {
        break;
      }

      v7 += 4;
      sub_1D5D07BA8(v8, v9, v10);

      if (!--v5)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v8, v9, v10);
  }

  return result;
}

__n128 sub_1D5CF94EC(char **result, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[5];
  v70[4] = a2[4];
  v70[5] = v7;
  v70[6] = a2[6];
  v8 = a2[1];
  v70[0] = *a2;
  v70[1] = v8;
  v9 = a2[3];
  v10 = *v4;
  v11 = *v4 >> 60;
  v70[2] = a2[2];
  v70[3] = v9;
  if (v11 > 4)
  {
    if (v11 <= 6)
    {
      v27 = v10 & 0xFFFFFFFFFFFFFFFLL;
      if (v11 != 5)
      {
        v50 = *(v27 + 16);
        v51 = *(v27 + 24);

        sub_1D5D0AD60(result, v70, v50, v51, sub_1D5CF94EC);

        goto LABEL_39;
      }

      v28 = *(v27 + 16);

      sub_1D6E73DA4(result, v70, v28);
      if (v5)
      {
      }

      else
      {

        sub_1D5CF94EC(result, v70);
      }
    }

    else
    {
      if (v11 != 7)
      {
        if (v11 != 8)
        {
          return v9;
        }

        v16 = v10 & 0xFFFFFFFFFFFFFFFLL;
        v17 = *(v16 + 24);
        v55.n128_u64[0] = *(v16 + 16);
        swift_retain_n();

        sub_1D5CF94EC(result, a2);
        if (v5)
        {

          return v9;
        }

        sub_1D6E73D78(result, v70, v17);

        goto LABEL_39;
      }

      v55.n128_u64[0] = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      sub_1D5CF94EC(result, a2);

      if (!v5)
      {
        sub_1D5CF8420(result, a2);
      }
    }
  }

  else if (v11 <= 1)
  {
    if (v11)
    {
      v47 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v48 = *(v47 + 80);
      v58 = *(v47 + 64);
      v59 = v48;
      v60 = *(v47 + 96);
      *v61 = *(v47 + 112);
      v49 = *(v47 + 32);
      v55 = *(v47 + 16);
      v56 = v49;
      v57 = *(v47 + 48);
      v9.n128_f64[0] = sub_1D5D07EBC(result, a2);
    }

    else
    {
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      v22 = *(v10 + 32);
      v21 = *(v10 + 40);
      v23 = *(v10 + 48);
      v24 = *(v10 + 56);
      v25 = (v24 >> 1) & 0xF;
      if (v25 <= 3)
      {
        if (v25 >= 2)
        {
          if (v25 == 2)
          {
            v55.n128_u64[0] = v20;
            v55.n128_u64[1] = v19;
            v56.n128_u64[0] = v22;
            v56.n128_u64[1] = v21;
            v57.n128_u64[0] = v23;
            v57.n128_u8[8] = v24 & 0xE1;
            v9.n128_f64[0] = sub_1D62A98C8(result, a2, a3, a4);
          }

          else
          {
            v62.n128_u64[0] = v20;
            v62.n128_u64[1] = v19;
            v63.n128_u64[0] = v22;
            v63.n128_u64[1] = v21;
            v52 = a2[5];
            v59 = a2[4];
            v60 = v52;
            *v61 = a2[6];
            v53 = a2[1];
            v55 = *a2;
            v56 = v53;
            v54 = a2[3];
            v57 = a2[2];
            v58 = v54;
            sub_1D6AC6E60(result, &v55, a3, a4);
          }
        }
      }

      else if (v25 - 4 >= 4 && v25 == 8)
      {
        v55.n128_u64[0] = v20;
        v55.n128_u64[1] = v19;
        v56.n128_u64[0] = v22;
        v56.n128_u64[1] = v21;
        v57.n128_u64[0] = v23;
        v57.n128_u8[8] = v24 & 1;
        v9.n128_f64[0] = sub_1D62A99A4(result, a2, a3, a4);
      }
    }
  }

  else if (v11 == 2)
  {
    v29 = v10 & 0xFFFFFFFFFFFFFFFLL;
    v30 = *(v29 + 64);
    if (v30 != 255)
    {
      v32 = *(v29 + 48);
      v31 = *(v29 + 56);
      sub_1D5E433CC(v32, v31, *(v29 + 64));
      sub_1D5E43440(v32, v31, v30);
    }
  }

  else
  {
    if (v11 == 3)
    {
      v12 = (v10 & 0xFFFFFFFFFFFFFFFLL);
      v13 = v12[2];
      v14 = v12[3];
      v15 = v12[4];

      sub_1D5CF9308(result, v70, v13, v14, v15, sub_1D5D0A6D8, sub_1D5CF94EC);

LABEL_39:

      return v9;
    }

    v34 = v10 & 0xFFFFFFFFFFFFFFFLL;
    v35 = *(v34 + 96);
    v66 = *(v34 + 80);
    v67 = v35;
    v68 = *(v34 + 112);
    v69 = *(v34 + 128);
    v36 = *(v34 + 32);
    v62 = *(v34 + 16);
    v63 = v36;
    v37 = *(v34 + 64);
    v64 = *(v34 + 48);
    v65 = v37;
    v38 = result[1];
    sub_1D5D093E8(&v62, &v55);
    sub_1D5D093E8(&v62, &v55);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1D5D095A0(0, *(v38 + 2) + 1, 1, v38);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1D5D095A0((v39 > 1), v40 + 1, 1, v38);
    }

    sub_1D5D09904(&v62);
    v59 = v66;
    v60 = v67;
    *v61 = v68;
    *&v61[16] = v69;
    v55 = v62;
    v56 = v63;
    v57 = v64;
    v58 = v65;
    sub_1D5D09958(&v55);
    *(v38 + 2) = v40 + 1;
    v41 = &v38[128 * v40];
    v42 = v55;
    v43 = v56;
    v44 = v58;
    *(v41 + 4) = v57;
    *(v41 + 5) = v44;
    *(v41 + 2) = v42;
    *(v41 + 3) = v43;
    v9 = v59;
    v45 = v60;
    v46 = *v61;
    *(v41 + 137) = *&v61[9];
    *(v41 + 7) = v45;
    *(v41 + 8) = v46;
    *(v41 + 6) = v9;
    result[1] = v38;
  }

  return v9;
}

uint64_t sub_1D5CF9A24(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v29[4] = a2[4];
  v29[5] = v5;
  v29[6] = a2[6];
  v6 = a2[1];
  v29[0] = *a2;
  v29[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 60;
  v29[2] = a2[2];
  v29[3] = v7;
  if (v9 <= 4)
  {
    if (v9 < 3)
    {
      return result;
    }

    v13 = v8 & 0xFFFFFFFFFFFFFFFLL;
    if (v9 != 3)
    {
      v27 = *(v13 + 24);
      v30 = *(v13 + 16);
      swift_retain_n();

      sub_1D5CF9A24(v4, a2);
      if (v3)
      {
        goto LABEL_17;
      }

      sub_1D6E6415C(v4, v29, v27);
LABEL_21:
    }

    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    sub_1D5D0AD60(v4, v29, v14, v15, sub_1D5CF9A24);
  }

  else
  {
    if (v9 < 8)
    {
      return result;
    }

    if (v9 > 9)
    {
      v16 = (v8 & 0xFFFFFFFFFFFFFFFLL);
      if (v9 != 10)
      {
        v24 = v16[3];
        v25 = v16[4];
        v30 = v16[2];

        swift_retain_n();

        sub_1D5CF9A24(v4, a2);
        if (v3)
        {

LABEL_17:
        }

        sub_1D6E73FCC(v4, v29, v24);
        v30 = v25;

        sub_1D5CF9A24(v4, v29);

        goto LABEL_21;
      }

      v17 = v16[2];
      v18 = v16[3];
      v19 = v16[4];

      sub_1D62A7114(v4, v29, v17, v18, v19);
    }

    else
    {
      v11 = v8 & 0xFFFFFFFFFFFFFFFLL;
      if (v9 == 8)
      {
        v12 = *(v11 + 24);
        v30 = *(v11 + 16);
        swift_retain_n();

        sub_1D5CF9A24(v4, a2);
        if (v3)
        {
          goto LABEL_17;
        }

        sub_1D6E73FCC(v4, v29, v12);
        goto LABEL_21;
      }

      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
      v22 = *(v11 + 32);
      v23 = *(v11 + 40);
      v30 = *(v11 + 48);
      sub_1D5F58038(v20, v21, v22, v23);
      swift_retain_n();
      sub_1D5CF9A24(v4, a2);

      sub_1D5F57FEC(v20, v21, v22, v23);
    }
  }
}

uint64_t sub_1D5CF9D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2B0C4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5CF9DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D7199850(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

char **sub_1D5CF9E40(char **result, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v7 = result;
  for (i = (a3 + 32); ; i += 4)
  {
    v9 = i[1];
    v249 = *i;
    v250 = v9;
    v10 = i[3];
    v251 = i[2];
    v252 = v10;
    v11 = v249;
    v12 = *(&v250 + 1);
    if ((BYTE8(v250) & 4) != 0)
    {
      *&v242 = v249;
      v18 = a2[5];
      v238 = a2[4];
      v239 = v18;
      v240[0] = a2[6];
      v19 = a2[1];
      v234 = *a2;
      v235 = v19;
      v20 = a2[3];
      v236 = a2[2];
      v237 = v20;
      sub_1D5CFBAA8(&v249, &v228);
      v15 = v4;
      sub_1D5CFEE30(v7, &v234);
      if (v4)
      {
        return sub_1D5D08954(&v249);
      }
    }

    else
    {
      v13 = *(&v249 + 1);
      v14 = v250;
      sub_1D5CFBAA8(&v249, &v234);
      v15 = v4;
      sub_1D5CFE5E0(v7, a2, v11);
      if (v4)
      {
        return sub_1D5D08954(&v249);
      }

      sub_1D5CFF624(v7, a2, v13, v14, v12);
    }

    v21 = v252;
    if ((v252 & 0x2000000000000000) == 0)
    {
      v22 = *(&v251 + 1);
      v23 = *(v251 + 32);
      v228 = *(v251 + 16);
      v229 = v23;
      *v230 = *(v251 + 48);
      *&v230[15] = *(v251 + 63);
      v24 = a2[5];
      v238 = a2[4];
      v239 = v24;
      v240[0] = a2[6];
      v25 = a2[1];
      v234 = *a2;
      v235 = v25;
      v26 = a2[3];
      v236 = a2[2];
      v237 = v26;
      sub_1D5CF6D20(v7, &v234, v16, v17);
      if (v15)
      {
        return sub_1D5D08954(&v249);
      }

      sub_1D5CFF904(v7, a2, v22);
      *&v228 = v21;
      v27 = a2[5];
      v238 = a2[4];
      v239 = v27;
      v240[0] = a2[6];
      v28 = a2[1];
      v234 = *a2;
      v235 = v28;
      v29 = a2[3];
      v236 = a2[2];
      v237 = v29;

      sub_1D5D07D58(v7, &v234);
      v4 = 0;
      goto LABEL_76;
    }

    if (v251 >> 62)
    {
      v4 = v15;
      if (v251 >> 62 == 1)
      {
        goto LABEL_122;
      }

      v31 = *((v251 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((v251 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v31 >> 62))
      {
        v50 = *(v31 + 80);
        *&v230[16] = *(v31 + 64);
        v231 = v50;
        v232 = *(v31 + 96);
        *&v233 = *(v31 + 112);
        v51 = *(v31 + 32);
        v228 = *(v31 + 16);
        v229 = v51;
        v52 = *(v31 + 64);
        *v230 = *(v31 + 48);
        v53 = *(v31 + 80);
        v54 = *(v31 + 96);
        v245 = v52;
        v246 = v53;
        v247 = v54;
        v248 = *(v31 + 112);
        v55 = *(v31 + 32);
        v242 = *(v31 + 16);
        v243 = v55;
        v244 = *(v31 + 48);
        v56 = a2[5];
        v238 = a2[4];
        v239 = v56;
        v240[0] = a2[6];
        v57 = a2[1];
        v234 = *a2;
        v235 = v57;
        v58 = a2[3];
        v236 = a2[2];
        v237 = v58;
        swift_retain_n();

        sub_1D5D0322C(&v228, v241);
        sub_1D5D07EBC(v7, &v234);
        if (v15)
        {

          sub_1D5D07BBC(&v228);
          goto LABEL_174;
        }

        sub_1D5D07BBC(&v228);
        goto LABEL_73;
      }

      if (v31 >> 62 == 1)
      {

LABEL_74:
        sub_1D6E6B7BC(v7, a2, v30);
        if (!v4)
        {

LABEL_76:

          goto LABEL_122;
        }

LABEL_174:

        return sub_1D5D08954(&v249);
      }

      v60 = *((v31 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v59 = *((v31 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v253 = v31 & 0x3FFFFFFFFFFFFFFFLL;
      if (!(v60 >> 62))
      {
        v85 = *(v60 + 80);
        *&v230[16] = *(v60 + 64);
        v231 = v85;
        v232 = *(v60 + 96);
        *&v233 = *(v60 + 112);
        v86 = *(v60 + 32);
        v228 = *(v60 + 16);
        v229 = v86;
        v87 = *(v60 + 64);
        *v230 = *(v60 + 48);
        v88 = *(v60 + 80);
        v89 = *(v60 + 96);
        v245 = v87;
        v246 = v88;
        v247 = v89;
        v248 = *(v60 + 112);
        v90 = *(v60 + 32);
        v242 = *(v60 + 16);
        v243 = v90;
        v244 = *(v60 + 48);
        v91 = a2[5];
        v238 = a2[4];
        v239 = v91;
        v240[0] = a2[6];
        v92 = a2[1];
        v234 = *a2;
        v235 = v92;
        v93 = a2[3];
        v236 = a2[2];
        v237 = v93;
        swift_retain_n();
        v226 = v59;

        swift_retain_n();

        sub_1D5D0322C(&v228, v241);
        sub_1D5D07EBC(v7, &v234);
        if (v4)
        {

          sub_1D5D07BBC(&v228);

          return sub_1D5D08954(&v249);
        }

        sub_1D5D07BBC(&v228);
LABEL_70:

        v61 = v226;
        goto LABEL_71;
      }

      if (v60 >> 62 == 1)
      {
        swift_retain_n();

        v61 = v59;
LABEL_71:
        sub_1D6E6B7BC(v7, a2, v61);
        if (v4)
        {

          return sub_1D5D08954(&v249);
        }

LABEL_73:

        goto LABEL_74;
      }

      v226 = v59;
      v94 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v214 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v95 = v4;
      if (v94 >> 62)
      {
        if (v94 >> 62 == 1)
        {
          swift_retain_n();

          swift_retain_n();

          v96 = v214;

LABEL_68:
          sub_1D6E6B7BC(v7, a2, v96);
          v4 = v95;
          if (v95)
          {

            goto LABEL_174;
          }

          goto LABEL_70;
        }

        v110 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v111 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v228 = v110;
        v112 = a2[5];
        v238 = a2[4];
        v239 = v112;
        v240[0] = a2[6];
        v113 = a2[1];
        v234 = *a2;
        v235 = v113;
        v114 = a2[3];
        v236 = a2[2];
        v237 = v114;
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D07D58(v7, &v234);
        if (v4)
        {

          return sub_1D5D08954(&v249);
        }

        sub_1D6E6B7BC(v7, a2, v111);
      }

      else
      {
        v101 = *(v94 + 80);
        *&v230[16] = *(v94 + 64);
        v231 = v101;
        v232 = *(v94 + 96);
        *&v233 = *(v94 + 112);
        v102 = *(v94 + 32);
        v228 = *(v94 + 16);
        v229 = v102;
        v103 = *(v94 + 64);
        *v230 = *(v94 + 48);
        v104 = *(v94 + 80);
        v105 = *(v94 + 96);
        v245 = v103;
        v246 = v104;
        v247 = v105;
        v248 = *(v94 + 112);
        v106 = *(v94 + 32);
        v242 = *(v94 + 16);
        v243 = v106;
        v244 = *(v94 + 48);
        v107 = a2[5];
        v238 = a2[4];
        v239 = v107;
        v240[0] = a2[6];
        v108 = a2[1];
        v234 = *a2;
        v235 = v108;
        v109 = a2[3];
        v236 = a2[2];
        v237 = v109;
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v228, v241);
        sub_1D5D07EBC(v7, &v234);
        if (v4)
        {

          sub_1D5D07BBC(&v228);

          return sub_1D5D08954(&v249);
        }

        sub_1D5D07BBC(&v228);
      }

      v95 = 0;
      v96 = v214;
      goto LABEL_68;
    }

    v33 = *(v251 + 16);
    v32 = *(v251 + 32);
    v34 = *(v251 + 64);
    v244 = *(v251 + 48);
    v245 = v34;
    v35 = *(v251 + 96);
    v246 = *(v251 + 80);
    v247 = v35;
    v248 = *(v251 + 112);
    v242 = v33;
    v243 = v32;
    v36 = v245;
    v37 = BYTE1(v245);
    if (v37 > 0xFE)
    {
      goto LABEL_18;
    }

    if (BYTE1(v245) > 1u)
    {
      if (v37 == 2)
      {
LABEL_18:
        v4 = v15;
      }

      else
      {
        v4 = v15;
      }

      sub_1D5D0322C(&v242, &v234);
      goto LABEL_23;
    }

    v66 = *(&v244 + 1);
    if (v37)
    {
      goto LABEL_18;
    }

    v67 = v244;
    v68 = v244 >> 61;
    if ((v244 >> 61) <= 1)
    {
      goto LABEL_18;
    }

    v225 = *(&v244 + 1);
    v253 = v244;
    v4 = v15;
    if (v68 == 2)
    {
      v118 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v222 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v119 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v205 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v210 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v201 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v197 = *v7;

      sub_1D5D0322C(&v242, &v234);
      v215 = v118;

      v120 = v119;

      v121 = v197;
      sub_1D5FB999C(v253, v66, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_1D5D095A0(0, *(v197 + 2) + 1, 1, v197);
      }

      v123 = *(v121 + 2);
      v122 = *(v121 + 3);
      v194 = v123 + 1;
      v198 = v123;
      if (v123 >= v122 >> 1)
      {
        v121 = sub_1D5D095A0((v122 > 1), v123 + 1, 1, v121);
      }

      *&v234 = v222;
      *(&v234 + 1) = v215;
      *&v235 = v120;
      *(&v235 + 1) = v210;
      *&v236 = v205;
      WORD4(v236) = v201;
      BYTE10(v236) = 0;
      sub_1D5FD8134(&v234);
      *(v121 + 2) = v194;
      v124 = &v121[128 * v198];
      v125 = v234;
      v126 = v235;
      v127 = v237;
      *(v124 + 4) = v236;
      *(v124 + 5) = v127;
      *(v124 + 2) = v125;
      *(v124 + 3) = v126;
      v128 = v238;
      v129 = v239;
      v130 = v240[0];
      *(v124 + 137) = *(v240 + 9);
      *(v124 + 7) = v129;
      *(v124 + 8) = v130;
      *(v124 + 6) = v128;
      sub_1D5FBACE0(v253, v225, v36);
      *v7 = v121;
    }

    else if (v68 == 3)
    {
      v69 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v209 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v213 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v204 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v219 = *v7;
      sub_1D5F58038(v69, v213, v209, v204);
      sub_1D5D0322C(&v242, &v234);
      sub_1D5FB999C(v67, v66, v36);
      v200 = v69;
      v70 = v69;
      v71 = v219;
      sub_1D5F58038(v70, v213, v209, v204);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_1D5D095A0(0, *(v219 + 2) + 1, 1, v219);
      }

      v73 = *(v71 + 2);
      v72 = *(v71 + 3);
      v193 = v73 + 1;
      v196 = v73;
      v220 = v73 >= v72 >> 1 ? sub_1D5D095A0((v72 > 1), v73 + 1, 1, v71) : v71;
      sub_1D5F57FEC(v200, v213, v209, v204);
      *&v234 = v200;
      *(&v234 + 1) = v213;
      *&v235 = v209;
      *(&v235 + 1) = v204;
      *&v236 = 0;
      WORD4(v236) = 0;
      BYTE10(v236) = 1;
      sub_1D5FD8134(&v234);
      *(v220 + 2) = v193;
      v74 = &v220[128 * v196];
      v75 = v234;
      v76 = v235;
      v77 = v237;
      *(v74 + 4) = v236;
      *(v74 + 5) = v77;
      *(v74 + 2) = v75;
      *(v74 + 3) = v76;
      v78 = v238;
      v79 = v239;
      v80 = v240[0];
      *(v74 + 137) = *(v240 + 9);
      *(v74 + 7) = v79;
      *(v74 + 8) = v80;
      *(v74 + 6) = v78;
      sub_1D5FBACE0(v253, v225, v36);
      *v7 = v220;
    }

    else
    {
      v131 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v206 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v211 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v199 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v202 = v131;
      v216 = *v7;
      v223 = *((v244 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FB999C(v244, *(&v244 + 1), v245);
      sub_1D5F58038(v223, v211, v131, v206);
      sub_1D5D0322C(&v242, &v234);
      sub_1D5FB999C(v67, v66, v36);
      v132 = v216;
      sub_1D5F58038(v223, v211, v202, v206);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_1D5D095A0(0, *(v216 + 2) + 1, 1, v216);
      }

      v134 = *(v132 + 2);
      v133 = *(v132 + 3);
      v192 = v134 + 1;
      v195 = v134;
      if (v134 >= v133 >> 1)
      {
        v217 = sub_1D5D095A0((v133 > 1), v134 + 1, 1, v132);
      }

      else
      {
        v217 = v132;
      }

      sub_1D5F57FEC(v223, v211, v202, v206);
      *&v234 = v223;
      *(&v234 + 1) = v211;
      *&v235 = v202;
      *(&v235 + 1) = v206;
      *&v236 = 0;
      WORD4(v236) = 0;
      BYTE10(v236) = 1;
      sub_1D5FD8134(&v234);
      *(v217 + 2) = v192;
      v135 = &v217[128 * v195];
      v136 = v234;
      v137 = v235;
      v138 = v237;
      *(v135 + 4) = v236;
      *(v135 + 5) = v138;
      *(v135 + 2) = v136;
      *(v135 + 3) = v137;
      v139 = v238;
      v140 = v239;
      v141 = v240[0];
      *(v135 + 137) = *(v240 + 9);
      *(v135 + 7) = v140;
      *(v135 + 8) = v141;
      *(v135 + 6) = v139;
      *v7 = v217;
      v241[0] = v199;
      v142 = a2[5];
      v231 = a2[4];
      v232 = v142;
      v233 = a2[6];
      v143 = a2[1];
      v228 = *a2;
      v229 = v143;
      v144 = a2[3];
      *v230 = a2[2];
      *&v230[16] = v144;

      sub_1D5D0350C(v7, &v228);
      if (v15)
      {
        v185 = v253;
        sub_1D5FBACE0(v253, v225, v36);

        sub_1D5FBACE0(v185, v225, v36);
        goto LABEL_197;
      }

      v145 = v253;
      sub_1D5FBACE0(v253, v225, v36);

      sub_1D5FBACE0(v145, v225, v36);
    }

LABEL_23:
    v38 = *(&v245 + 1);
    if ((~*(&v245 + 1) & 0xF000000000000007) != 0)
    {
      v39 = v246;
      *&v228 = *(&v245 + 1);
      v40 = a2[5];
      v238 = a2[4];
      v239 = v40;
      v240[0] = a2[6];
      v41 = a2[1];
      v234 = *a2;
      v235 = v41;
      v42 = a2[3];
      v236 = a2[2];
      v237 = v42;
      sub_1D5FB99B0(*(&v245 + 1), v246);

      sub_1D5CF9A24(v7, &v234);
      if (v4)
      {

        sub_1D5FBACF4(v38, v39);
        goto LABEL_197;
      }

      *&v228 = v39;
      v43 = a2[5];
      v238 = a2[4];
      v239 = v43;
      v240[0] = a2[6];
      v44 = a2[1];
      v234 = *a2;
      v235 = v44;
      v45 = a2[3];
      v236 = a2[2];
      v237 = v45;

      sub_1D5CF9A24(v7, &v234);

      sub_1D5FBACF4(v38, v39);
    }

    v46 = v248;
    if ((~v248 & 0xF000000000000007) == 0)
    {
      goto LABEL_121;
    }

    v47 = v248 >> 62;
    if ((v248 >> 62) <= 1)
    {
      if (v47)
      {
        *&v228 = *((v248 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v81 = a2[5];
        v238 = a2[4];
        v239 = v81;
        v240[0] = a2[6];
        v82 = a2[1];
        v234 = *a2;
        v235 = v82;
        v83 = a2[3];
        v236 = a2[2];
        v237 = v83;
        sub_1D5F33D5C(v248);
        v49 = v4;
        sub_1D5CF9A24(v7, &v234);
      }

      else
      {
        v48 = *(v248 + 16);
        sub_1D5F33D5C(v248);
        v49 = v4;
        sub_1D5CF8C68(v7, a2, v48);
      }

      goto LABEL_118;
    }

    if (v47 == 2)
    {
      break;
    }

    if (v248 == 0xC000000000000000)
    {
      v84 = 0xC000000000000000;
    }

    else
    {
      v84 = 0xC000000000000008;
    }

LABEL_120:
    sub_1D5FBA158(v84);
LABEL_121:
    sub_1D5D07BBC(&v242);
LABEL_122:
    v166 = *(&v252 + 1) >> 62;
    if ((*(&v252 + 1) >> 62) > 1)
    {
      if (v166 == 2)
      {
        v173 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v174 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5D07FF0(v7, a2, v173);
        if (v4)
        {

          return sub_1D5D08954(&v249);
        }

        sub_1D5D0868C(v7, a2, v174, v175);
      }

      goto LABEL_4;
    }

    if (!v166)
    {
      goto LABEL_4;
    }

    v167 = *((*(&v252 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v168 = *(v167 + 32);
    v228 = *(v167 + 16);
    v229 = v168;
    v169 = *(v167 + 48);
    *&v230[15] = *(v167 + 63);
    *v230 = v169;
    v170 = v228;
    if (v230[18])
    {
      v171 = 8;
    }

    else
    {
      v171 = 0;
    }

    v172 = v171 & 0xFFFFFFF8 | (*&v230[16] >> 11) & 7;
    if (v172 <= 4)
    {
      if (v172 > 1)
      {
        if (v172 != 3)
        {
          goto LABEL_4;
        }

        goto LABEL_158;
      }

      if (v172)
      {
        goto LABEL_4;
      }

      v176 = (DWORD2(v168) >> 3) & 7;
      if (v176 > 1)
      {
        if (v176 == 2 || v176 == 3 || !(BYTE8(v168) >> 6) || BYTE8(v168) >> 6 == 1)
        {
          goto LABEL_158;
        }

        v177 = BYTE8(v168) & 7;
        if (v177 > 1)
        {
          goto LABEL_144;
        }

        goto LABEL_150;
      }

      if (v176)
      {
        goto LABEL_3;
      }

LABEL_158:
      if (v168 > 1u)
      {
        if (v168 == 2)
        {
          goto LABEL_4;
        }

LABEL_3:
        sub_1D5D085FC(&v228);
        goto LABEL_4;
      }

      if (!v168)
      {
        goto LABEL_3;
      }

      if ((~v228 & 0xF000000000000007) == 0)
      {
        goto LABEL_4;
      }

      v241[0] = v228;
      v182 = a2[5];
      v238 = a2[4];
      v239 = v182;
      v240[0] = a2[6];
      v183 = a2[1];
      v234 = *a2;
      v235 = v183;
      v184 = a2[3];
      v236 = a2[2];
      v237 = v184;

      sub_1D62B5248(&v228, &v242);
      v181 = v170;
LABEL_162:
      sub_1D5CFCFAC(v181);
      sub_1D5CFEE30(v7, &v234);
      if (v4)
      {
        sub_1D5D085FC(&v228);

        return sub_1D5D08954(&v249);
      }

      sub_1D5D085FC(&v228);

      goto LABEL_4;
    }

    if (v172 > 6)
    {
      if (v172 == 7 && *&v230[16] >> 14 >= 2u)
      {
        switch((*&v230[16] >> 7) & 0xE | (*&v230[16] >> 3) & 1)
        {
          case 1:
          case 5:
          case 6:
          case 7:
          case 9:
          case 0xA:
          case 0xB:
          case 0xD:
            goto LABEL_3;
          case 2:
            switch(v230[16] >> 4)
            {
              case 1:
              case 2:
              case 4:
              case 5:
              case 6:
              case 7:
              case 10:
              case 11:
                goto LABEL_3;
              case 8:
                goto LABEL_156;
              default:
                goto LABEL_4;
            }

          case 0xC:
LABEL_156:

            sub_1D5D085FC(&v228);

            break;
          default:
            goto LABEL_4;
        }
      }

      goto LABEL_4;
    }

    if (v172 != 5)
    {
      if (!(BYTE8(v168) >> 6) || BYTE8(v168) >> 6 == 1)
      {
        goto LABEL_158;
      }

      v177 = BYTE8(v168) & 0x3F;
      if (v177 > 1)
      {
LABEL_144:
        if (v177 == 2)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

LABEL_150:
      if (!v177)
      {
        goto LABEL_3;
      }

      if ((~*(&v228 + 1) & 0xF000000000000007) == 0)
      {
        goto LABEL_4;
      }

      v241[0] = *(&v228 + 1);
      v178 = a2[5];
      v238 = a2[4];
      v239 = v178;
      v240[0] = a2[6];
      v179 = a2[1];
      v234 = *a2;
      v235 = v179;
      v180 = a2[3];
      v236 = a2[2];
      v237 = v180;

      sub_1D62B5248(&v228, &v242);
      v181 = *(&v170 + 1);
      goto LABEL_162;
    }

LABEL_4:
    result = sub_1D5D08954(&v249);
    if (!--v5)
    {
      return result;
    }
  }

  v62 = *((v248 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v63 = *((v248 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v64 = v62 >> 62;
  if ((v62 >> 62) <= 1)
  {
    if (!v64)
    {
      v65 = *(v62 + 16);
      sub_1D5FB99FC(v248);
      sub_1D5F33D5C(v62);

      sub_1D5CF8C68(v7, a2, v65);
      if (v4)
      {
        goto LABEL_183;
      }

      sub_1D5F33D8C(v62);
      goto LABEL_117;
    }

    v227 = *((v248 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    *&v228 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v115 = a2[5];
    v238 = a2[4];
    v239 = v115;
    v240[0] = a2[6];
    v116 = a2[1];
    v234 = *a2;
    v235 = v116;
    v117 = a2[3];
    v236 = a2[2];
    v237 = v117;
    sub_1D5FB99FC(v248);
    sub_1D5F33D5C(v62);

    sub_1D5CF9A24(v7, &v234);
    if (v4)
    {

      goto LABEL_194;
    }

LABEL_116:
    sub_1D5F33D8C(v62);
    v63 = v227;
LABEL_117:
    v49 = v4;
    sub_1D6E6EB3C(v7, a2, v63);
LABEL_118:
    v4 = v49;
    if (v49)
    {
      goto LABEL_196;
    }

    v84 = v46;
    goto LABEL_120;
  }

  if (v64 != 2)
  {
    sub_1D5F33D5C(v248);
    goto LABEL_117;
  }

  v227 = *((v248 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v97 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v253 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v98 = v253 >> 62;
  if ((v253 >> 62) > 1)
  {
    if (v98 != 2)
    {
      sub_1D5FB99FC(v248);
      sub_1D5F33D5C(v62);
      if (v253 == 0xC000000000000000)
      {
        v154 = 0xC000000000000000;
      }

      else
      {
        v154 = 0xC000000000000008;
      }

      sub_1D5F33D5C(v154);

      goto LABEL_114;
    }

    v146 = *((v253 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v147 = v146 >> 62;
    v212 = *((v253 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v218 = v146;
    if ((v146 >> 62) > 1)
    {
      if (v147 != 2)
      {
        sub_1D5FB99FC(v248);
        sub_1D5F33D5C(v62);
        v164 = v253;
        sub_1D5F33D5C(v253);

        sub_1D5F33D5C(v164);
        if (v218 == 0xC000000000000000)
        {
          v165 = 0xC000000000000000;
        }

        else
        {
          v165 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v165);
        v163 = v212;

        goto LABEL_112;
      }

      v208 = *((v146 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v228 = *((v146 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v203 = v228;
      v155 = a2[5];
      v238 = a2[4];
      v239 = v155;
      v240[0] = a2[6];
      v156 = a2[1];
      v234 = *a2;
      v235 = v156;
      v157 = a2[3];
      v236 = a2[2];
      v237 = v157;
      sub_1D5FB99FC(v248);
      sub_1D5F33D5C(v62);
      v158 = v253;
      sub_1D5F33D5C(v253);
      v224 = v97;

      sub_1D5F33D5C(v158);
      sub_1D5F33D5C(v218);

      sub_1D5F33D5C(v218);
      sub_1D5F33D5C(v203);

      sub_1D5F33D5C(v203);
      sub_1D62B2DE8(v7, &v234);
      if (!v4)
      {
        sub_1D5F33D8C(v228);
        sub_1D6E6EB3C(v7, a2, v208);
        sub_1D5F33D8C(v203);

        v149 = v218;
        goto LABEL_107;
      }

      sub_1D5F33D8C(v203);

      v148 = v218;
      sub_1D5F33D8C(v218);

      v190 = v253;
      sub_1D5F33D8C(v253);

      sub_1D5F33D8C(v228);
    }

    else
    {
      v224 = v97;
      if (v147)
      {
        *&v228 = *((v146 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v159 = a2[5];
        v238 = a2[4];
        v239 = v159;
        v240[0] = a2[6];
        v160 = a2[1];
        v234 = *a2;
        v235 = v160;
        v161 = a2[3];
        v236 = a2[2];
        v237 = v161;
        sub_1D5FB99FC(v248);
        sub_1D5F33D5C(v62);
        v162 = v253;
        sub_1D5F33D5C(v253);

        sub_1D5F33D5C(v162);
        sub_1D5F33D5C(v218);

        sub_1D5F33D5C(v218);

        sub_1D5CF9A24(v7, &v234);
        if (v4)
        {
          sub_1D5F33D8C(v218);

          v191 = v253;
          sub_1D5F33D8C(v253);

          sub_1D5F33D8C(v218);
          v189 = v191;
          goto LABEL_193;
        }

        v149 = v218;
        goto LABEL_107;
      }

      v207 = *(v146 + 16);
      v148 = *((v253 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FB99FC(v248);
      sub_1D5F33D5C(v62);
      sub_1D5F33D5C(v253);

      sub_1D5F33D5C(v253);
      sub_1D5F33D5C(v148);

      sub_1D5F33D5C(v148);

      sub_1D5CF8C68(v7, a2, v207);
      if (!v4)
      {

        v149 = v148;
LABEL_107:
        sub_1D5F33D8C(v149);
        v97 = v224;
        v163 = v212;
LABEL_112:
        sub_1D6E6EB3C(v7, a2, v163);
        if (!v4)
        {
          sub_1D5F33D8C(v218);

          sub_1D5F33D8C(v253);
          goto LABEL_114;
        }

        sub_1D5F33D8C(v218);

        v190 = v253;
        sub_1D5F33D8C(v253);

        goto LABEL_192;
      }

      sub_1D5F33D8C(v148);

      v190 = v253;
      sub_1D5F33D8C(v253);
    }

    sub_1D5F33D8C(v148);
LABEL_192:
    v189 = v190;
    goto LABEL_193;
  }

  v221 = v97;
  if (v98)
  {
    v150 = v253;
    *&v228 = *((v253 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v151 = a2[5];
    v238 = a2[4];
    v239 = v151;
    v240[0] = a2[6];
    v152 = a2[1];
    v234 = *a2;
    v235 = v152;
    v153 = a2[3];
    v236 = a2[2];
    v237 = v153;
    sub_1D5FB99FC(v248);
    sub_1D5F33D5C(v62);
    sub_1D5F33D5C(v150);

    sub_1D5F33D5C(v150);

    sub_1D5CF9A24(v7, &v234);
    if (!v4)
    {

      sub_1D5F33D8C(v253);
      goto LABEL_114;
    }

    v188 = v253;
    sub_1D5F33D8C(v253);

    v189 = v188;
LABEL_193:
    sub_1D5F33D8C(v189);
    goto LABEL_194;
  }

  v99 = v253;
  v100 = *(v253 + 16);
  sub_1D5FB99FC(v248);
  sub_1D5F33D5C(v62);
  sub_1D5F33D5C(v99);

  sub_1D5F33D5C(v99);

  sub_1D5CF8C68(v7, a2, v100);
  if (v4)
  {
    v186 = v253;
    sub_1D5F33D8C(v253);

    sub_1D5F33D8C(v186);
    v187 = v62;
    goto LABEL_195;
  }

  sub_1D5F33D8C(v253);
  v97 = v221;
LABEL_114:
  sub_1D6E6EB3C(v7, a2, v97);
  if (!v4)
  {
    sub_1D5F33D8C(v253);

    goto LABEL_116;
  }

  sub_1D5F33D8C(v253);
LABEL_183:

LABEL_194:
  v187 = v62;
LABEL_195:
  sub_1D5F33D8C(v187);
LABEL_196:
  sub_1D5FBA158(v46);
LABEL_197:
  sub_1D5D07BBC(&v242);
  return sub_1D5D08954(&v249);
}
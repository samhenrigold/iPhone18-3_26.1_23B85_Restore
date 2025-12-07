unint64_t sub_1D6954F3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void *FormatColorConditionalProcessor.init(expression:processors:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

void FormatColorConditionalProcessor.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6956790(0, &qword_1EDF03928, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69565E0();
  sub_1D7264B0C();
  if (!v2)
  {
    v38 = 2;
    sub_1D5EF5D0C();
    sub_1D726427C();
    v11 = v39;
    sub_1D69566A8(0, &unk_1EDF1B120, MEMORY[0x1E69E62F8]);
    v38 = 1;
    sub_1D6956880(&qword_1EDF1B118, sub_1D5EF5D0C, MEMORY[0x1E69E6330]);
    sub_1D726427C();
    v34 = a2;
    v35 = v7;
    v37 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v12 = v39;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6956634(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v11;
    v36 = v11;
    sub_1D69566FC(v11);
    v14 = sub_1D5F642B0(v12);

    v39 = inited;
    sub_1D6987F1C(v14);
    v15 = 0;
    v16 = v39;
    v17 = *(v39 + 16);
    while (v17 != v15)
    {
      if (v15 >= *(v16 + 16))
      {
        __break(1u);
        return;
      }

      v18 = v16 + 8 * v15;
      v19 = *(v18 + 32);
      ++v15;
      if ((~v19 & 0xF000000000000007) != 0)
      {
        sub_1D5ECF0E0(*(v18 + 32));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1D6994220(0, *(v37 + 2) + 1, 1, v37);
        }

        v20 = v37;
        v22 = *(v37 + 2);
        v21 = *(v37 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v33 = v22 + 1;
          v37 = v22;
          v24 = sub_1D6994220((v21 > 1), (v22 + 1), 1, v20);
          v23 = v33;
          v22 = v37;
          v20 = v24;
        }

        *(v20 + 2) = v23;
        v37 = v20;
        *&v20[8 * v22 + 32] = v19;
      }
    }

    if (*(v37 + 2))
    {
      v38 = 0;
      sub_1D667E484();
      sub_1D726431C();
      v25 = v36;
      (*(v35 + 8))(v10, v6);
      sub_1D5EF5F6C(v25);
      v30 = v34;
      v31 = v37;
      *v34 = v39;
      v30[1] = v31;
    }

    else
    {

      v26 = sub_1D7263E3C();
      swift_allocError();
      v28 = v27;
      sub_1D5EEA608(0);
      *v28 = &type metadata for FormatColorProcessor;
      sub_1D72641FC();
      sub_1D7263DFC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6B08], v26);
      swift_willThrow();
      v29 = sub_1D5EF5F6C(v36);
      (*(v35 + 8))(v10, v6, v29);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

double FormatColorConditionalProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v99 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v98 - v11;
  sub_1D6956710(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v105 = v1[1];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D69565E0();
  sub_1D71B5B30(&type metadata for FormatColorConditionalProcessor.CodingKeys, v21, v19, &type metadata for FormatVersions.JazzkonC, v20, &off_1F51F6C78, v17);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v98 = v23;
  v103 = v25;
  v104 = v22;
  v102 = v24 + 16;
  (v25)(v12);
  v101 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v114 = v18;
  v113 = 0;
  v26 = &v17[*(v14 + 44)];
  v109 = v12;
  v27 = *v26;
  v28 = v26[1];
  v29 = swift_allocObject();
  v110 = &v98;
  *(v29 + 16) = 0;
  *(v29 + 24) = v27;
  *(v29 + 32) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v98 - 4) = sub_1D5B4AA6C;
  *(&v98 - 3) = 0;
  *(&v98 - 2) = sub_1D6956B0C;
  *(&v98 - 1) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v106 = v27;
  *(v32 + 24) = v27;
  *(v32 + 32) = v28;
  sub_1D6956790(0, &qword_1EDF02538, MEMORY[0x1E69E6F58]);
  v34 = v33;
  v35 = sub_1D69567F4();
  swift_retain_n();
  v107 = v35;
  v108 = v34;
  v36 = sub_1D72647CC();
  v37 = swift_allocObject();
  v38 = v17;
  v39 = v37;
  *(v37 + 16) = v36;
  *(v37 + 24) = 0;
  v40 = *(v14 + 36);
  v112 = v38;
  v41 = &v38[v40];
  v42 = *&v38[v40 + 24];
  v43 = *&v38[v40 + 32];
  v44 = __swift_project_boxed_opaque_existential_1(&v38[v40], v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v98 - 2) = sub_1D6956874;
  *(&v98 - 1) = v39;
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v98 - 4) = sub_1D60565EC;
  *(&v98 - 3) = (&v98 - 6);
  *(&v98 - 2) = sub_1D6956868;
  *(&v98 - 1) = v32;
  v48 = v109;
  v49 = v111;
  sub_1D5D2BC70(v109, sub_1D60566B0, v50, sub_1D60565EC, (&v98 - 6), v42, v43);
  if (v49)
  {
    sub_1D5D2D048(v48, type metadata accessor for FormatVersionRequirement);

    v53 = v112;
LABEL_6:
    sub_1D5D2D048(v53, sub_1D6956710);
    return result;
  }

  v111 = v41;
  v51 = v106;

  sub_1D667E664();
  v52 = v112;
  sub_1D72647EC();
  sub_1D5D2D048(v48, type metadata accessor for FormatVersionRequirement);

  v55 = v105;
  v56 = v105[2];
  v110 = 0;
  if (v56 != 1)
  {
    v77 = v28;
    v78 = v104;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v79 = __swift_project_value_buffer(v78, qword_1EDFFCD50);
    v80 = v100;
    v103(v100, v79, v78);
    swift_storeEnumTagMultiPayload();
    v114 = v55;
    v113 = 1;
    v81 = swift_allocObject();
    v109 = &v98;
    *(v81 + 16) = 1;
    *(v81 + 24) = v51;
    *(v81 + 32) = v28;
    MEMORY[0x1EEE9AC00](v81, v82);
    *(&v98 - 4) = sub_1D5B4AA6C;
    *(&v98 - 3) = 0;
    *(&v98 - 2) = sub_1D6956B0C;
    *(&v98 - 1) = v83;
    v84 = swift_allocObject();
    *(v84 + 16) = 1;
    *(v84 + 24) = v51;
    *(v84 + 32) = v77;
    swift_retain_n();
    v85 = sub_1D72647CC();
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = 1;
    v87 = *(v111 + 3);
    v88 = *(v111 + 4);
    v89 = v80;
    v90 = __swift_project_boxed_opaque_existential_1(v111, v87);
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v98 - 2) = sub_1D6956B08;
    *(&v98 - 1) = v86;
    MEMORY[0x1EEE9AC00](v92, v93);
    *(&v98 - 4) = sub_1D615B4A4;
    *(&v98 - 3) = (&v98 - 6);
    *(&v98 - 2) = sub_1D6956B0C;
    *(&v98 - 1) = v84;
    v94 = v110;
    sub_1D5D2BC70(v80, sub_1D615B49C, v95, sub_1D615B4A4, (&v98 - 6), v87, v88);
    if (v94)
    {
      sub_1D5D2D048(v80, type metadata accessor for FormatVersionRequirement);

      v96 = v112;
    }

    else
    {

      sub_1D69566A8(0, &unk_1EDF1B120, MEMORY[0x1E69E62F8]);
      sub_1D6956880(&qword_1EDF04EB0, sub_1D5EF5D60, MEMORY[0x1E69E6300]);
      v97 = v112;
      sub_1D72647EC();
      v96 = v97;
      sub_1D5D2D048(v89, type metadata accessor for FormatVersionRequirement);
    }

    v53 = v96;
    goto LABEL_6;
  }

  v57 = v105[4];
  v58 = v99;
  v103(v99, v98, v104);
  swift_storeEnumTagMultiPayload();
  v114 = v57;
  v113 = 2;
  v59 = swift_allocObject();
  v105 = &v98;
  *(v59 + 16) = 2;
  v60 = v51;
  v61 = v57;
  *(v59 + 24) = v60;
  *(v59 + 32) = v28;
  v62 = v28;
  MEMORY[0x1EEE9AC00](v59, v63);
  *(&v98 - 4) = sub_1D5B4AA6C;
  *(&v98 - 3) = 0;
  *(&v98 - 2) = sub_1D6956B0C;
  *(&v98 - 1) = v64;
  v109 = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  swift_retain_n();
  v106 = v61;
  sub_1D5ECF0E0(v61);
  v66 = sub_1D72647CC();
  v67 = v52;
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  *(v68 + 24) = 2;
  v69 = *(v111 + 3);
  v70 = *(v111 + 4);
  v71 = __swift_project_boxed_opaque_existential_1(v111, v69);
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v98 - 2) = sub_1D6956B08;
  *(&v98 - 1) = v68;
  MEMORY[0x1EEE9AC00](v73, v74);
  *(&v98 - 4) = sub_1D615B4A4;
  *(&v98 - 3) = (&v98 - 6);
  *(&v98 - 2) = sub_1D6956B0C;
  *(&v98 - 1) = v65;
  v75 = v110;
  sub_1D5D2BC70(v58, sub_1D615B49C, v76, sub_1D615B4A4, (&v98 - 6), v69, v70);
  if (v75)
  {
    sub_1D5D2D048(v58, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5EF5D60();
    sub_1D72647EC();
    sub_1D5D2D048(v58, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2D048(v67, sub_1D6956710);
  return sub_1D5ECF11C(v106);
}

uint64_t sub_1D6956028(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEA00000000007372;
  v4 = 0xE900000000000072;
  if (v2 == 1)
  {
    v4 = 0xEA00000000007372;
  }

  if (*a1)
  {
    v5 = 0x6F737365636F7270;
  }

  else
  {
    v5 = 0x6973736572707865;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
  }

  if (*a2 != 1)
  {
    v3 = 0xE900000000000072;
  }

  if (*a2)
  {
    v7 = 0x6F737365636F7270;
  }

  else
  {
    v7 = 0x6973736572707865;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xEA00000000006E6FLL;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D69560F8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D69561A4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D695623C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D69562E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6956ABC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6956314(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = *v1;
  v4 = 0xEA00000000007372;
  if (v3 != 1)
  {
    v4 = 0xE900000000000072;
  }

  v5 = v3 == 0;
  if (*v1)
  {
    v6 = 0x6F737365636F7270;
  }

  else
  {
    v6 = 0x6973736572707865;
  }

  if (!v5)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D695637C()
{
  if (*v0)
  {
    return 0x6F737365636F7270;
  }

  else
  {
    return 0x6973736572707865;
  }
}

unint64_t sub_1D69563E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6956ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6956408(uint64_t a1)
{
  v2 = sub_1D69565E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6956444(uint64_t a1)
{
  v2 = sub_1D69565E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D69564B4(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5D290FC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatColorConditionalProcessor.CodingKeys;
  *(inited + 64) = sub_1D69565E0();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t _s8NewsFeed31FormatColorConditionalProcessorV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v6 = *a2;
  v7 = v3;

  LOBYTE(v3) = static FormatColorExpression.== infix(_:_:)(&v7, &v6);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_1D6344A00(v2, v4);
}

unint64_t sub_1D69565E0()
{
  result = qword_1EDF094B0;
  if (!qword_1EDF094B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF094B0);
  }

  return result;
}

void sub_1D6956634(uint64_t a1)
{
  if (!qword_1EDF02060)
  {
    sub_1D69566A8(255, &qword_1EDF0F198, MEMORY[0x1E69E6720]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02060);
    }
  }
}

void sub_1D69566A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for FormatColorProcessor);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1D69566FC(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_1D5ECF0E0(a1);
  }

  return result;
}

void sub_1D6956710(uint64_t a1)
{
  if (!qword_1EDF08798)
  {
    sub_1D6956790(255, &qword_1EDF02538, MEMORY[0x1E69E6F58]);
    v3 = v2;
    v4 = sub_1D69567F4();
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08798);
    }
  }
}

void sub_1D6956790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69565E0();
    v7 = a3(a1, &type metadata for FormatColorConditionalProcessor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69567F4()
{
  result = qword_1EDF02540;
  if (!qword_1EDF02540)
  {
    sub_1D6956790(255, &qword_1EDF02538, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02540);
  }

  return result;
}

uint64_t sub_1D6956880(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D69566A8(255, &unk_1EDF1B120, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6956908(void *a1)
{
  a1[1] = sub_1D665B25C();
  a1[2] = sub_1D670615C();
  result = sub_1D6956940();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6956940()
{
  result = qword_1EC88E8C8;
  if (!qword_1EC88E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E8C8);
  }

  return result;
}

unint64_t sub_1D69569B8()
{
  result = qword_1EC88E8D0;
  if (!qword_1EC88E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E8D0);
  }

  return result;
}

unint64_t sub_1D6956A10()
{
  result = qword_1EDF094A0;
  if (!qword_1EDF094A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF094A0);
  }

  return result;
}

unint64_t sub_1D6956A68()
{
  result = qword_1EDF094A8;
  if (!qword_1EDF094A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF094A8);
  }

  return result;
}

unint64_t sub_1D6956ABC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_1D6956B10(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame];
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v3;
  v2[48] = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);

  return [v1 setNeedsLayout];
}

char *sub_1D6956B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = &v4[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 4) = 0;
  *(v7 + 5) = v8;
  v7[48] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v10 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_zIndexLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_borderLayers] = v8;
  v12 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_hiddenButton;
  sub_1D725DB3C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v12] = [ObjCClassFromMetadata buttonWithType_];
  v14 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_leftBorderButton;
  *&v4[v14] = [ObjCClassFromMetadata buttonWithType_];
  v15 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_rightBorderButton;
  *&v4[v15] = [ObjCClassFromMetadata buttonWithType_];
  v16 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_topBorderButton;
  *&v4[v16] = [ObjCClassFromMetadata buttonWithType_];
  v17 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_bottomBorderButton;
  *&v4[v17] = [ObjCClassFromMetadata buttonWithType_];
  if (a3)
  {
    v18 = sub_1D726203C();
  }

  else
  {
    v18 = 0;
  }

  v75.receiver = v4;
  v75.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v75, sel_initWithStyle_reuseIdentifier_, a1, v18);

  v20 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLayer;
  v21 = *&v19[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLayer];
  v22 = v19;
  [v21 setLineWidth_];
  v23 = *&v19[v20];
  sub_1D5E42B34();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D72816C0;
  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  v25 = v23;
  *(v24 + 32) = sub_1D72636EC();
  v26 = sub_1D726265C();

  [v25 setLineDashPattern_];

  v27 = *&v19[v20];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 lightGrayColor];
  v31 = [v30 CGColor];

  [v29 setStrokeColor_];
  v32 = *&v19[v20];
  v33 = [v28 clearColor];
  v34 = [v33 CGColor];

  [v32 setFillColor_];
  v35 = [v22 contentView];
  v36 = [v35 layer];

  [v36 addSublayer_];
  v37 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLabel;
  v38 = *&v22[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemFontOfSize_];
  [v40 setFont_];

  v42 = [v22 contentView];
  [v42 addSubview_];

  v43 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_zIndexLabel;
  v44 = *&v22[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_zIndexLabel];
  v45 = [v39 systemFontOfSize_];
  [v44 setFont_];

  v46 = [v22 contentView];
  [v46 addSubview_];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7298B00;
  v48 = *&v22[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_leftBorderButton];
  *(inited + 32) = v48;
  v73 = inited + 32;
  v49 = *&v22[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_rightBorderButton];
  *(inited + 40) = v49;
  v50 = *&v22[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_topBorderButton];
  *(inited + 48) = v50;
  v51 = *&v22[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_bottomBorderButton];
  *(inited + 56) = v51;
  v52 = objc_opt_self();
  v53 = v48;
  v54 = v49;
  v55 = v50;
  v56 = v51;
  v57 = 0;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1DA6FB460](v57, inited);
    }

    else
    {
      v61 = *(inited + 8 * v57 + 32);
    }

    v62 = v61;
    v63 = [v28 labelColor];
    [v62 setTintColor_];

    v64 = sub_1D726203C();
    v65 = [v52 systemImageNamed_];

    if (v65)
    {
      v58 = [objc_opt_self() configurationWithPointSize_];
      v59 = [v65 imageWithConfiguration_];
    }

    else
    {
      v59 = 0;
    }

    ++v57;
    [v62 setImage:v59 forState:{0, v73}];

    [v62 setFrame_];
    [v62 addTarget:v22 action:sel_didTapBorderButtonWithSender_ forControlEvents:64];
    v60 = [v22 contentView];
    [v60 addSubview_];
  }

  while (v57 != 4);
  swift_setDeallocating();
  swift_arrayDestroy();
  v66 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_hiddenButton;
  v67 = *&v22[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_hiddenButton];
  v68 = [v28 labelColor];
  [v67 setTintColor_];

  [*&v22[v66] setFrame_];
  v69 = *&v22[v66];
  v70 = v22;
  [v69 addTarget:v70 action:sel_didTapHiddenButtonWithSender_ forControlEvents:64];
  v71 = [v70 contentView];
  [v71 addSubview_];

  if (qword_1EC87D5F8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D6959DCC(&qword_1EC88E930, &unk_1D730A020);
  sub_1D725965C();

  sub_1D69574BC();
  return v70;
}

void sub_1D6957460(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D69574BC();
  }
}

void sub_1D69574BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_hiddenButton);
  v2 = sub_1D726203C();

  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [objc_opt_self() configurationWithPointSize_];
    v5 = [v3 imageWithConfiguration_];
  }

  else
  {
    v5 = 0;
  }

  [v1 setImage:v5 forState:0];
}

void sub_1D6957660()
{
  v1 = v0;
  v139.receiver = v0;
  v139.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v139, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_hiddenButton];
  [v1 bounds];
  Width = CGRectGetWidth(v154);
  [v2 bounds];
  v4 = Width - CGRectGetWidth(v155);
  [v1 layoutMargins];
  v6 = v4 - v5;
  [v2 bounds];
  v7 = CGRectGetWidth(v156);
  [v2 bounds];
  [v2 setFrame_];
  v8 = &v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame];
  [v2 setHidden_];
  v9 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLabel];
  v140 = 0;
  v141 = 0xE000000000000000;
  v10 = *(v8 + 16);
  v146 = *v8;
  v147 = v10;
  type metadata accessor for CGRect(0);
  sub_1D7263F9C();
  v11 = sub_1D726203C();

  [v9 setText_];

  [v9 sizeToFit];
  v12 = [v1 contentView];
  [v12 center];
  v14 = v13;
  v16 = v15;

  [v9 setCenter_];
  v17 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_zIndexLabel];
  [v17 setHidden_];
  *&v146 = 0x207865646E692D7ALL;
  *(&v146 + 1) = 0xEA0000000000203DLL;
  v140 = *(v8 + 32);
  v18 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v18);

  v19 = sub_1D726203C();

  [v17 setText_];

  [v17 sizeToFit];
  [v1 bounds];
  v20 = CGRectGetWidth(v158);
  [v17 frame];
  v21 = v20 - CGRectGetWidth(v159);
  [v1 layoutMargins];
  v23 = v21 - v22;
  [v1 bounds];
  Height = CGRectGetHeight(v160);
  [v17 frame];
  v25 = Height - CGRectGetHeight(v161) + -4.0;
  [v17 frame];
  v26 = CGRectGetWidth(v162);
  [v17 frame];
  [v17 setFrame_];
  [v1 bounds];
  v27 = CGRectGetWidth(v164) * 0.5;
  v28 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLayer];
  [v1 bounds];
  v29 = CGRectGetWidth(v165) * 0.5 - v27 * 0.5;
  [v1 bounds];
  [v28 setFrame_];
  [v28 bounds];
  v34 = [objc_opt_self() bezierPathWithRect_];
  v35 = [v34 CGPath];

  [v28 setPath_];
  v36 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_leftBorderButton];
  [v28 frame];
  MinX = CGRectGetMinX(v167);
  [v36 frame];
  v38 = MinX - CGRectGetWidth(v168) + -8.0;
  [v1 bounds];
  v39 = CGRectGetHeight(v169) * 0.5;
  [v36 frame];
  v40 = v39 - CGRectGetHeight(v170) * 0.5;
  [v36 frame];
  v41 = CGRectGetWidth(v171);
  [v36 frame];
  [v36 setFrame_];
  v42 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_rightBorderButton];
  [v28 frame];
  v43 = CGRectGetMaxX(v173) + 8.0;
  [v1 bounds];
  v44 = CGRectGetHeight(v174) * 0.5;
  [v42 frame];
  v45 = v44 - CGRectGetHeight(v175) * 0.5;
  [v42 frame];
  v46 = CGRectGetWidth(v176);
  [v42 frame];
  [v42 setFrame_];
  v47 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_topBorderButton];
  [v1 bounds];
  v48 = CGRectGetWidth(v178) * 0.5;
  [v47 frame];
  v49 = v48 - CGRectGetWidth(v179) * 0.5;
  [v28 frame];
  MinY = CGRectGetMinY(v180);
  [v47 frame];
  v51 = MinY - CGRectGetHeight(v181) + -8.0;
  [v47 frame];
  v52 = CGRectGetWidth(v182);
  [v47 frame];
  v124 = v47;
  [v47 setFrame_];
  v53 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_bottomBorderButton];
  [v1 bounds];
  v54 = CGRectGetWidth(v184) * 0.5;
  [v53 frame];
  v55 = v54 - CGRectGetWidth(v185) * 0.5;
  v121 = v28;
  [v28 frame];
  v56 = CGRectGetMaxY(v186) + 8.0;
  [v53 frame];
  v57 = CGRectGetWidth(v187);
  [v53 frame];
  v123 = v53;
  [v53 setFrame_];
  v58 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_borderLayers;
  swift_beginAccess();
  v125 = v1;
  v126 = v58;
  v59 = *&v1[v58];
  if (v59 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v122 = v42;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i < 1)
    {
      break;
    }

    for (j = 0; j != i; ++j)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1DA6FB460](j, v59);
      }

      else
      {
        v62 = *(v59 + 8 * j + 32);
      }

      v63 = v62;
      [v62 removeFromSuperlayer];
    }

    v42 = v122;
LABEL_11:
    sub_1D5E42B34();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7298B00;
    *(inited + 32) = v36;
    *(inited + 40) = v42;
    *(inited + 48) = v124;
    *(inited + 56) = v123;
    v65 = inited & 0xC000000000000001;
    sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v66 = v36;
    v120 = v66;
    if ((inited & 0xC000000000000001) != 0)
    {
      v113 = v42;
      v114 = v124;
      v115 = v123;
      v69 = MEMORY[0x1DA6FB460](0, inited);
    }

    else
    {
      v67 = v66;
      v68 = v42;
      v69 = v67;
      v70 = v68;
      v71 = v124;
      v72 = v123;
    }

    [v69 setEnabled_];
    v73 = v69;
    v74 = sub_1D72635DC();
    [v73 setTintColor_];

    [v73 setHidden_];
    if (v65)
    {
      v75 = MEMORY[0x1DA6FB460](1, inited);
    }

    else
    {
      v75 = *(inited + 40);
    }

    v76 = v75;
    [v75 setEnabled_];
    v77 = v76;
    v78 = sub_1D72635DC();
    [v77 setTintColor_];

    [v77 setHidden_];
    if (v65)
    {
      v79 = MEMORY[0x1DA6FB460](2, inited);
    }

    else
    {
      v79 = *(inited + 48);
    }

    v80 = v79;
    [v79 setEnabled_];
    v81 = v80;
    v36 = sub_1D72635DC();
    [v81 setTintColor_];

    [v81 setHidden_];
    if (v65)
    {
      v82 = MEMORY[0x1DA6FB460](3, inited);
    }

    else
    {
      v82 = *(inited + 56);
    }

    v83 = v82;
    [v82 setEnabled_];
    v84 = v83;
    v59 = sub_1D72635DC();
    [v84 setTintColor_];

    [v84 setHidden_];
    swift_setDeallocating();
    swift_arrayDestroy();
    *&v125[v126] = MEMORY[0x1E69E7CC0];

    v42 = *(v8 + 40);
    if (!v42)
    {
      return;
    }

    v119 = *(v42 + 16);
    if (!v119)
    {
      return;
    }

    v117 = v42 + 32;
    v118 = objc_opt_self();

    v85 = 0;
    v8 = 1;
    v116 = v42;
    while (v85 < *(v42 + 16))
    {
      v86 = v117 + 40 * v85;
      v87 = *(v86 + 32);
      v88 = *(v86 + 16);
      v150 = *v86;
      v151 = v88;
      v152 = v87;
      v153[0] = v150;
      v127 = v85 + 1;
      v89 = objc_allocWithZone(MEMORY[0x1E69794A0]);
      sub_1D6959EBC(&v150, v137);
      v90 = [v89 init];
      [v90 setLineWidth_];
      v91 = [v118 labelColor];
      v92 = [v91 CGColor];

      [v90 setStrokeColor_];
      v93 = [v118 clearColor];
      v94 = [v93 CGColor];

      [v90 setFillColor_];
      v95 = v90;
      [v121 frame];
      v132 = v95;
      [v95 setFrame_];
      Mutable = CGPathCreateMutable();
      v59 = v153[0] + 56;
      v131 = v153[0];
      v42 = 1 << *(v153[0] + 32);
      if (v42 < 64)
      {
        v97 = ~(-1 << v42);
      }

      else
      {
        v97 = -1;
      }

      v36 = (v97 & *(v153[0] + 56));
      v129 = BYTE8(v151);
      sub_1D6959F18(v153, v137);
      v8 = 0;
      v98 = (v42 + 63) >> 6;
      v135 = Mutable;
      v130 = v59;
      v128 = v98;
      while (v36)
      {
LABEL_36:
        v133 = v36;
        v136[1] = *(*(v131 + 48) + (__clz(__rbit64(v36)) | (v8 << 6)));
        [v132 bounds];
        v137[0] = 0;
        v137[1] = 0;
        v138 = 0;
        v136[0] = v129;
        v134 = sub_1D7015C14(v137, v136, v100, v101, v102, v103, 0.0);
        v104 = *(v134 + 2);
        if (v104)
        {
          v105 = (v134 + 64);
          do
          {
            v108 = *(v105 - 4);
            v107 = *(v105 - 3);
            v110 = *(v105 - 2);
            v109 = *(v105 - 1);
            v42 = *v105;
            if (*v105)
            {
              sub_1D6959FD8(*(v105 - 4), *(v105 - 3), *(v105 - 2), *(v105 - 1), *v105);
              v106 = [v108 CGPath];
              v146 = 0x3FF0000000000000uLL;
              *&v147 = 0;
              *(&v147 + 1) = 0x3FF0000000000000;
              v148 = 0;
              v149 = 0;
              sub_1D7262EFC();
              sub_1D6959FF0(v108, v107, v110, v109, v42);
            }

            else
            {
              sub_1D620967C(0);
              v42 = swift_allocObject();
              *(v42 + 16) = xmmword_1D7270C10;
              *(v42 + 32) = v108;
              *(v42 + 40) = v107;
              *(v42 + 48) = v110;
              *(v42 + 56) = v109;
              v140 = 0x3FF0000000000000;
              v141 = 0;
              v142 = 0;
              v143 = 0x3FF0000000000000;
              v144 = 0;
              v145 = 0;
              sub_1D7262F3C();
            }

            v105 += 40;
            --v104;
          }

          while (v104);
        }

        v36 = ((v133 - 1) & v133);

        Mutable = v135;
        v59 = v130;
        v98 = v128;
      }

      while (1)
      {
        v99 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v99 >= v98)
        {
          break;
        }

        v36 = *(v59 + 8 * v99);
        ++v8;
        if (v36)
        {
          v8 = v99;
          goto LABEL_36;
        }
      }

      [v132 setPath_];
      v111 = [v125 layer];
      [v111 addSublayer_];

      v112 = v126;
      swift_beginAccess();
      v36 = v132;
      MEMORY[0x1DA6F9CE0]();
      if (*((*&v125[v112] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v125[v112] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
        v112 = v126;
      }

      v59 = &v125[v112];
      sub_1D726278C();
      swift_endAccess();
      v8 = 1;
      LOBYTE(v137[0]) = 1;
      sub_1D6958588(v120, v137, &v150);
      LOBYTE(v137[0]) = 2;
      sub_1D6958588(v122, v137, &v150);
      LOBYTE(v137[0]) = 0;
      sub_1D6958588(v124, v137, &v150);
      LOBYTE(v137[0]) = 3;
      sub_1D6958588(v123, v137, &v150);

      sub_1D695A008(&v150);
      v85 = v127;
      v42 = v116;
      if (v127 == v119)
      {

        return;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  __break(1u);
}

void sub_1D6958588(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v11 = *a2;
  v3 = *a3;
  if (*(*a3 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v4 = sub_1D7264A5C(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 >= 4)
      {
        break;
      }

      v9 = sub_1D72646CC();

      if (v9)
      {
        goto LABEL_8;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if ((sub_1D61836F0(v11, v3) & 1) == 0)
    {
      return;
    }
  }

LABEL_8:
  [a1 setEnabled_];
  v12 = [objc_opt_self() labelColor];
  [a1 setTintColor_];
}

uint64_t sub_1D69587DC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame + 16);
    v10[0] = *(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame);
    v10[1] = v7;
    v10[2] = *(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame + 32);
    v11 = *(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame + 48);
    sub_1D6959E0C(v10, v9);
    sub_1D69588C0(a1);
    (*(v5 + 8))(v1, v10, a1, v8, ObjectType, v5);

    swift_unknownObjectRelease();
    return sub_1D6959E68(v10);
  }

  return result;
}

void sub_1D69588C0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame + 40);
  if (!v2)
  {
    return;
  }

  v116 = *(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame + 40);
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_leftBorderButton) != a1)
  {
    if (*(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_rightBorderButton) != a1)
    {
      if (*(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_topBorderButton) != a1)
      {
        if (*(v1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_bottomBorderButton) != a1)
        {
          return;
        }

        v73 = *(v2 + 16);

        v103 = v73;
        if (v73)
        {
          v74 = 0;
          v99 = v2 + 32;
          v111 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v74 >= *(v2 + 16))
            {
              goto LABEL_142;
            }

            v75 = (v99 + 40 * v74);
            v76 = *v75;
            v77 = v75[1];
            v78 = v75[2];
            v115 = *(v75 + 24);
            v107 = *(v75 + 25);
            v79 = v75[4];
            ++v74;
            if (!*(*v75 + 16))
            {
              break;
            }

            sub_1D7264A0C();

            swift_bridgeObjectRetain_n();

            sub_1D72621EC();
            v80 = sub_1D7264A5C();
            v81 = -1 << *(v76 + 32);
            v82 = v80 & ~v81;
            if ((*(v76 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
            {
              v83 = ~v81;
              while (1)
              {
                v84 = *(*(v76 + 48) + v82);
                if (v84 >= 4)
                {
                  goto LABEL_132;
                }

                v85 = sub_1D72646CC();

                if (v85)
                {
                  goto LABEL_133;
                }

                v82 = (v82 + 1) & v83;
                if (((*(v76 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
                {

                  v2 = v116;
                  if (*(v76 + 16))
                  {
                    goto LABEL_123;
                  }

                  goto LABEL_108;
                }
              }
            }

            if (*(v76 + 16))
            {
              goto LABEL_123;
            }

LABEL_108:

LABEL_109:

LABEL_110:
            if (v74 == v103)
            {
              goto LABEL_138;
            }
          }

          if (!*(v76 + 16))
          {
            goto LABEL_108;
          }

LABEL_123:
          sub_1D7264A0C();

          sub_1D72621EC();
          v86 = sub_1D7264A5C();
          v87 = -1 << *(v76 + 32);
          v88 = v86 & ~v87;
          if ((*(v76 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88))
          {
            v89 = ~v87;
            while (1)
            {
              v90 = *(*(v76 + 48) + v88);
              if (v90 > 2 && v90 != 4)
              {
                break;
              }

              v91 = sub_1D72646CC();

              if (v91)
              {
                goto LABEL_133;
              }

              v88 = (v88 + 1) & v89;
              if (((*(v76 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
              {

                v2 = v116;
                goto LABEL_109;
              }
            }

LABEL_132:

LABEL_133:
            v2 = v116;

            v92 = v111;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D69978B0(0, *(v111 + 16) + 1, 1);
              v92 = v111;
            }

            v94 = *(v92 + 16);
            v93 = *(v92 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_1D69978B0((v93 > 1), v94 + 1, 1);
              v92 = v111;
            }

            *(v92 + 16) = v94 + 1;
            v111 = v92;
            v95 = v92 + 40 * v94;
            *(v95 + 32) = v76;
            *(v95 + 40) = v77;
            *(v95 + 48) = v78;
            *(v95 + 56) = v115;
            *(v95 + 57) = v107;
            *(v95 + 64) = v79;
            goto LABEL_110;
          }

          goto LABEL_108;
        }

LABEL_138:

        return;
      }

      v50 = *(v2 + 16);

      v102 = v50;
      if (!v50)
      {
        goto LABEL_138;
      }

      v51 = 0;
      v98 = v2 + 32;
      v110 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v51 >= *(v2 + 16))
        {
          goto LABEL_141;
        }

        v52 = (v98 + 40 * v51);
        v53 = *v52;
        v54 = v52[1];
        v55 = v52[2];
        v114 = *(v52 + 24);
        v106 = *(v52 + 25);
        v56 = v52[4];
        ++v51;
        if (!*(*v52 + 16))
        {
          break;
        }

        sub_1D7264A0C();

        swift_bridgeObjectRetain_n();

        sub_1D72621EC();
        v57 = sub_1D7264A5C();
        v58 = -1 << *(v53 + 32);
        v59 = v57 & ~v58;
        if ((*(v53 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
        {
          v60 = ~v58;
          while (1)
          {
            v61 = *(*(v53 + 48) + v59);
            if (v61 >= 4)
            {
              goto LABEL_99;
            }

            v62 = sub_1D72646CC();

            if (v62)
            {
              goto LABEL_100;
            }

            v59 = (v59 + 1) & v60;
            if (((*(v53 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
            {

              if (*(v53 + 16))
              {
                goto LABEL_89;
              }

              goto LABEL_74;
            }
          }
        }

        if (*(v53 + 16))
        {
          goto LABEL_89;
        }

LABEL_74:

LABEL_75:

LABEL_76:
        v2 = v116;
        if (v51 == v102)
        {
          goto LABEL_138;
        }
      }

      if (!*(v53 + 16))
      {
        goto LABEL_74;
      }

LABEL_89:
      sub_1D7264A0C();

      sub_1D72621EC();
      v63 = sub_1D7264A5C();
      v64 = -1 << *(v53 + 32);
      v65 = v63 & ~v64;
      if ((*(v53 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
      {
        v66 = ~v64;
        while (1)
        {
          v67 = *(*(v53 + 48) + v65);
          if (v67 <= 2 && v67 != 1 && v67 != 2)
          {
            break;
          }

          v68 = sub_1D72646CC();

          if (v68)
          {
            goto LABEL_100;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v53 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {

            goto LABEL_75;
          }
        }

LABEL_99:

LABEL_100:

        v69 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D69978B0(0, *(v110 + 16) + 1, 1);
          v69 = v110;
        }

        v71 = *(v69 + 16);
        v70 = *(v69 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1D69978B0((v70 > 1), v71 + 1, 1);
          v69 = v110;
        }

        *(v69 + 16) = v71 + 1;
        v110 = v69;
        v72 = v69 + 40 * v71;
        *(v72 + 32) = v53;
        *(v72 + 40) = v54;
        *(v72 + 48) = v55;
        *(v72 + 56) = v114;
        *(v72 + 57) = v106;
        *(v72 + 64) = v56;
        goto LABEL_76;
      }

      goto LABEL_74;
    }

    v27 = *(v2 + 16);

    v101 = v27;
    if (!v27)
    {
      goto LABEL_138;
    }

    v28 = 0;
    v97 = v2 + 32;
    v109 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v28 >= *(v2 + 16))
      {
        goto LABEL_140;
      }

      v29 = (v97 + 40 * v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v113 = *(v29 + 24);
      v105 = *(v29 + 25);
      v33 = v29[4];
      ++v28;
      if (!*(*v29 + 16))
      {
        break;
      }

      sub_1D7264A0C();

      swift_bridgeObjectRetain_n();

      sub_1D72621EC();
      v34 = sub_1D7264A5C();
      v35 = -1 << *(v30 + 32);
      v36 = v34 & ~v35;
      if ((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (1)
        {
          v38 = *(*(v30 + 48) + v36);
          if (v38 >= 4)
          {
            goto LABEL_66;
          }

          v39 = sub_1D72646CC();

          if (v39)
          {
            goto LABEL_67;
          }

          v36 = (v36 + 1) & v37;
          if (((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {

            v2 = v116;
            if (*(v30 + 16))
            {
              goto LABEL_56;
            }

            goto LABEL_41;
          }
        }
      }

      if (*(v30 + 16))
      {
        goto LABEL_56;
      }

LABEL_41:

LABEL_42:

LABEL_43:
      if (v28 == v101)
      {
        goto LABEL_138;
      }
    }

    if (!*(v30 + 16))
    {
      goto LABEL_41;
    }

LABEL_56:
    sub_1D7264A0C();

    sub_1D72621EC();
    v40 = sub_1D7264A5C();
    v41 = -1 << *(v30 + 32);
    v42 = v40 & ~v41;
    if ((*(v30 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v43 = ~v41;
      while (1)
      {
        v44 = *(*(v30 + 48) + v42);
        if (v44 > 1 && v44 != 3 && v44 != 4)
        {
          break;
        }

        v45 = sub_1D72646CC();

        if (v45)
        {
          goto LABEL_67;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v30 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {

          v2 = v116;
          goto LABEL_42;
        }
      }

LABEL_66:

LABEL_67:
      v2 = v116;

      v46 = v109;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D69978B0(0, *(v109 + 16) + 1, 1);
        v46 = v109;
      }

      v48 = *(v46 + 16);
      v47 = *(v46 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1D69978B0((v47 > 1), v48 + 1, 1);
        v46 = v109;
      }

      *(v46 + 16) = v48 + 1;
      v109 = v46;
      v49 = v46 + 40 * v48;
      *(v49 + 32) = v30;
      *(v49 + 40) = v31;
      *(v49 + 48) = v32;
      *(v49 + 56) = v113;
      *(v49 + 57) = v105;
      *(v49 + 64) = v33;
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v3 = *(v2 + 16);

  v96 = v3;
  if (!v3)
  {
    goto LABEL_138;
  }

  v4 = 0;
  v108 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v116 + 16))
  {
    v5 = v2 + 32 + 40 * v4;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    v104 = *(v5 + 24);
    v100 = *(v5 + 25);
    ++v4;
    v112 = *(v5 + 32);
    if (*(*v5 + 16))
    {
      sub_1D7264A0C();
      v9 = v8;

      swift_bridgeObjectRetain_n();
      v10 = v7;

      sub_1D72621EC();
      v11 = sub_1D7264A5C();
      v12 = -1 << *(v6 + 32);
      v13 = v11 & ~v12;
      if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v14 = ~v12;
        do
        {
          v15 = *(*(v6 + 48) + v13);
          if (v15 >= 4)
          {
            goto LABEL_33;
          }

          v16 = sub_1D72646CC();

          if (v16)
          {
            goto LABEL_34;
          }

          v13 = (v13 + 1) & v14;
        }

        while (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
      }

      v7 = v10;
      if (!*(v6 + 16))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {

      if (!*(v6 + 16))
      {
        goto LABEL_9;
      }
    }

    v10 = v7;
    v9 = v8;
    sub_1D7264A0C();

    sub_1D72621EC();
    v17 = sub_1D7264A5C();
    v18 = -1 << *(v6 + 32);
    v19 = v17 & ~v18;
    if ((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (*(*(v6 + 48) + v19) > 2u || !*(*(v6 + 48) + v19) || *(*(v6 + 48) + v19) == 2)
      {
        v21 = sub_1D72646CC();

        if (v21)
        {
          goto LABEL_34;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_33:

LABEL_34:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v108;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D69978B0(0, *(v108 + 16) + 1, 1);
        v23 = v108;
      }

      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D69978B0((v24 > 1), v25 + 1, 1);
        v23 = v108;
      }

      *(v23 + 16) = v25 + 1;
      v108 = v23;
      v26 = v23 + 40 * v25;
      *(v26 + 32) = v6;
      *(v26 + 40) = v10;
      *(v26 + 48) = v9;
      *(v26 + 56) = v104;
      *(v26 + 57) = v100;
      *(v26 + 64) = v112;
      goto LABEL_11;
    }

LABEL_30:

LABEL_10:

LABEL_11:
    if (v4 == v96)
    {
      goto LABEL_138;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_1D6959CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();

  return sub_1D725989C();
}

uint64_t sub_1D6959D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE45768](a1, ObjectType, a5);
}

uint64_t sub_1D6959D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE45760](a1, ObjectType, a3);
}

uint64_t sub_1D6959DCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugFormatInspectorFrameCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6959F18(uint64_t a1, uint64_t a2)
{
  sub_1D6959F7C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6959F7C(uint64_t a1)
{
  if (!qword_1EDF2CA68)
  {
    v2 = sub_1D67282D8();
    v4 = type metadata accessor for FormatCodingDefault(a1, &type metadata for FormatCodingAllBorderEdgeStrategy, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF2CA68);
    }
  }
}

id sub_1D6959FD8(id result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 <= 1)
  {
    return result;
  }

  return result;
}

void sub_1D6959FF0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 <= 1)
  {
  }
}

void sub_1D695A05C()
{
  v1 = v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_displayFrame;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v4 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_frameLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_zIndexLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_borderLayers) = v2;
  v6 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_hiddenButton;
  sub_1D725DB3C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v6) = [ObjCClassFromMetadata buttonWithType_];
  v8 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_leftBorderButton;
  *(v0 + v8) = [ObjCClassFromMetadata buttonWithType_];
  v9 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_rightBorderButton;
  *(v0 + v9) = [ObjCClassFromMetadata buttonWithType_];
  v10 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_topBorderButton;
  *(v0 + v10) = [ObjCClassFromMetadata buttonWithType_];
  v11 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_bottomBorderButton;
  *(v0 + v11) = [ObjCClassFromMetadata buttonWithType_];
  sub_1D726402C();
  __break(1u);
}

uint64_t FormatSnippetCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    sub_1D5C2C40C(0);
    v11 = v10;
    v18 = *(v10 - 8);
    sub_1D5CA443C(v9 + *(v18 + 72) * v8, a3);
    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    sub_1D5C2C40C(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t FormatSnippetCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5C5E698(0);
  sub_1D5C5E6F0(&qword_1EDF050C0, &qword_1EDF123F0, &protocol conformance descriptor for FormatObject<A>, MEMORY[0x1E69E6300]);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

NewsFeed::FormatSnippetCollection __swiftcall FormatSnippetCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C2C1E4(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.snippetsByIdentifier._rawValue = v4;
  result.snippets._rawValue = v3;
  return result;
}

unint64_t sub_1D695A4C4@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C2C1E4(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D695A4F8(char **a1, __int128 *a2)
{
  sub_1D5C2C40C(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 64);
  v11 = a2[5];
  v22[4] = a2[4];
  v22[5] = v11;
  v22[6] = a2[6];
  v12 = a2[1];
  v22[0] = *a2;
  v22[1] = v12;
  v13 = a2[3];
  v22[2] = a2[2];
  v22[3] = v13;
  v14 = *v2;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_1D5CA443C(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v10);
      v17 = *v10;
      swift_beginAccess();
      v18 = v17[9];

      sub_1D5CF6244(a1, v22, v18);
      if (v3)
      {

        sub_1D5CA44A0(v10);
        return;
      }

      swift_beginAccess();
      v19 = v17[11];

      sub_1D5CFD3E0(a1, v22, v19);

      swift_beginAccess();
      v20 = v17[8];

      sub_1D5CF6090(a1, v22, v20);
      ++v16;

      sub_1D5CA44A0(v10);
      if (v15 == v16)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D695A740(uint64_t a1, uint64_t a2)
{
  sub_1D5C2C40C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D695A7A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D6999818(0, v1, 0);
  v2 = v24;
  v4 = a1 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v22 = *(*(a1 + 48) + v6);
    v10 = *(*(a1 + 56) + 8 * v6);
    v11 = *(v24 + 16);
    v12 = *(v24 + 24);

    if (v11 >= v12 >> 1)
    {
      result = sub_1D6999818((v12 > 1), v11 + 1, 1);
    }

    *(v24 + 16) = v11 + 1;
    v13 = v24 + 16 * v11;
    *(v13 + 32) = v22;
    *(v13 + 40) = v10;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v9);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v18 = (a1 + 72 + 8 * v9);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1D5C25E1C(v6, v23, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v21)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t FormatPropertyDefinition.identifier.getter()
{
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v64 = &v60 - v2;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = &v60 - v5;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v62 = &v60 - v8;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v61 = &v60 - v11;
  sub_1D5B5796C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v60 - v18;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v60 - v22;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v60 - v26;
  v28 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v60 - v38;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v60 - v42;
  v44 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v60 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D695B264(v65, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v54 = &qword_1EDF43F60;
        v49 = &type metadata for FormatVideoNodeContent;
        v56 = sub_1D5B57AA8;
        v55 = sub_1D5B57AA8;
        v57 = v47;
        v58 = v62;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v54 = &qword_1EDF43F48;
        v49 = &type metadata for FormatFont;
        v56 = sub_1D5B55668;
        v55 = sub_1D5B55668;
        v57 = v47;
        v58 = v63;
      }

      else
      {
        v54 = &qword_1EDF43F50;
        v49 = &type metadata for FormatVideoPlayerContent;
        v56 = sub_1D5B55F44;
        v55 = sub_1D5B55F44;
        v57 = v47;
        v58 = v64;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D5CAD9A4(v47, v19);
        v50 = *(v19 + 2);

        sub_1D62B6AE8(v19);
        return v50;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_1D5CADA34(v47, v15, sub_1D5B5796C);
        v50 = *(v15 + 2);

        sub_1D6983E84(v15, sub_1D5B5796C);
        return v50;
      }

      v54 = &qword_1EDF43F58;
      v49 = &type metadata for FormatAsyncImageContent;
      v56 = sub_1D5B57A00;
      v55 = sub_1D5B57A00;
      v57 = v47;
      v58 = v61;
    }

    sub_1D695B2C8(v57, v58, v54, v56, v49);
    v50 = *(v58 + 16);

    v51 = v58;
LABEL_25:
    v52 = v54;
    v53 = v55;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5CADA34(v47, v31, type metadata accessor for FormatEnumPropertyDefinition);
      v50 = *(v31 + 2);

      sub_1D6983E84(v31, type metadata accessor for FormatEnumPropertyDefinition);
      return v50;
    }

    if (EnumCaseMultiPayload != 4)
    {
      sub_1D62B6B70(v47, v23);
      v50 = *(v23 + 2);

      sub_1D62B6C00(v23);
      return v50;
    }

    v54 = &qword_1EDF43F68;
    v49 = MEMORY[0x1E69E7DE0];
    v55 = sub_1D5B577E4;
    sub_1D695B2C8(v47, v27, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    v50 = *(v27 + 2);

    v51 = v27;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = &type metadata for FormatColor;
      sub_1D695B2C8(v47, v39, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
      v50 = *(v39 + 2);

      v51 = v39;
      v52 = &qword_1EDF43F40;
      v53 = sub_1D5B5706C;
LABEL_26:
      sub_1D695B34C(v51, v52, v53, v49);
      return v50;
    }

    sub_1D5CADA34(v47, v35, sub_1D5B5714C);
    v50 = *(v35 + 2);

    sub_1D6983E84(v35, sub_1D5B5714C);
  }

  else
  {
    sub_1D5CAE630(v47, v43);
    v50 = *(v43 + 2);

    sub_1D62B6EE8(v43);
  }

  return v50;
}

uint64_t sub_1D695B264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D695B2C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D5B57004(0, a3, a4, a5, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D695B34C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1D5B57004(0, a2, a3, a4, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D695B3BC()
{
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v69 = &v63 - v2;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v68 = &v63 - v5;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v67 = &v63 - v8;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v66 = &v63 - v11;
  sub_1D5B5796C(0);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v63 - v17;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v63 - v21;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v63 - v25;
  v27 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C(0);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v63 - v38;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v63 - v42;
  v44 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v63 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D695B264(v70, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v49 = &qword_1EDF43F60;
        v50 = &type metadata for FormatVideoNodeContent;
        v59 = sub_1D5B57AA8;
        v51 = sub_1D5B57AA8;
        v60 = v47;
        v61 = v67;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v49 = &qword_1EDF43F48;
        v50 = &type metadata for FormatFont;
        v59 = sub_1D5B55668;
        v51 = sub_1D5B55668;
        v60 = v47;
        v61 = v68;
      }

      else
      {
        v49 = &qword_1EDF43F50;
        v50 = &type metadata for FormatVideoPlayerContent;
        v59 = sub_1D5B55F44;
        v51 = sub_1D5B55F44;
        v60 = v47;
        v61 = v69;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D5CAD9A4(v47, v18);
        v52 = v18[88];
        sub_1D62B6AE8(v18);
        return v52;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v54 = v64;
        sub_1D5CADA34(v47, v64, sub_1D5B5796C);
        v52 = *(v54 + *(v65 + 56));
        sub_1D6983E84(v54, sub_1D5B5796C);
        return v52;
      }

      v49 = &qword_1EDF43F58;
      v50 = &type metadata for FormatAsyncImageContent;
      v59 = sub_1D5B57A00;
      v51 = sub_1D5B57A00;
      v60 = v47;
      v61 = v66;
    }

    sub_1D695B2C8(v60, v61, v49, v59, v50);
    v52 = *(v61 + 80);
    v53 = v61;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5CADA34(v47, v30, type metadata accessor for FormatEnumPropertyDefinition);
      v52 = v30[112];
      sub_1D6983E84(v30, type metadata accessor for FormatEnumPropertyDefinition);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v55 = MEMORY[0x1E69E7DE0];
        sub_1D695B2C8(v47, v26, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
        v52 = v26[81];
        v53 = v26;
        v56 = &qword_1EDF43F68;
        v57 = sub_1D5B577E4;
        v58 = v55;
LABEL_26:
        sub_1D695B34C(v53, v56, v57, v58);
        return v52;
      }

      sub_1D62B6B70(v47, v22);
      v52 = v22[81];
      sub_1D62B6C00(v22);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = &qword_1EDF43F40;
      v50 = &type metadata for FormatColor;
      v51 = sub_1D5B5706C;
      sub_1D695B2C8(v47, v39, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
      v52 = v39[80];
      v53 = v39;
LABEL_25:
      v56 = v49;
      v57 = v51;
      v58 = v50;
      goto LABEL_26;
    }

    sub_1D5CADA34(v47, v35, sub_1D5B5714C);
    v52 = v35[*(v32 + 56)];
    sub_1D6983E84(v35, sub_1D5B5714C);
  }

  else
  {
    sub_1D5CAE630(v47, v43);
    v52 = v43[66];
    sub_1D62B6EE8(v43);
  }

  return v52;
}

uint64_t sub_1D695BC10()
{
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v69 = &v63 - v2;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v68 = &v63 - v5;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v67 = &v63 - v8;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v66 = &v63 - v11;
  sub_1D5B5796C(0);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v63 - v17;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v63 - v21;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v63 - v25;
  v27 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C(0);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v63 - v38;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v63 - v42;
  v44 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v63 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D695B264(v70, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v49 = &qword_1EDF43F60;
        v50 = &type metadata for FormatVideoNodeContent;
        v59 = sub_1D5B57AA8;
        v51 = sub_1D5B57AA8;
        v60 = v47;
        v61 = v67;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v49 = &qword_1EDF43F48;
        v50 = &type metadata for FormatFont;
        v59 = sub_1D5B55668;
        v51 = sub_1D5B55668;
        v60 = v47;
        v61 = v68;
      }

      else
      {
        v49 = &qword_1EDF43F50;
        v50 = &type metadata for FormatVideoPlayerContent;
        v59 = sub_1D5B55F44;
        v51 = sub_1D5B55F44;
        v60 = v47;
        v61 = v69;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D5CAD9A4(v47, v18);
        v52 = *(v18 + 12);

        sub_1D62B6AE8(v18);
        return v52;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v54 = v64;
        sub_1D5CADA34(v47, v64, sub_1D5B5796C);
        v52 = *(v54 + *(v65 + 60));

        sub_1D6983E84(v54, sub_1D5B5796C);
        return v52;
      }

      v49 = &qword_1EDF43F58;
      v50 = &type metadata for FormatAsyncImageContent;
      v59 = sub_1D5B57A00;
      v51 = sub_1D5B57A00;
      v60 = v47;
      v61 = v66;
    }

    sub_1D695B2C8(v60, v61, v49, v59, v50);
    v52 = *(v61 + 88);

    v53 = v61;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5CADA34(v47, v30, type metadata accessor for FormatEnumPropertyDefinition);
      v52 = *(v30 + 15);

      sub_1D6983E84(v30, type metadata accessor for FormatEnumPropertyDefinition);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v55 = MEMORY[0x1E69E7DE0];
        sub_1D695B2C8(v47, v26, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
        v52 = *(v26 + 11);

        v53 = v26;
        v56 = &qword_1EDF43F68;
        v57 = sub_1D5B577E4;
        v58 = v55;
LABEL_26:
        sub_1D695B34C(v53, v56, v57, v58);
        return v52;
      }

      sub_1D62B6B70(v47, v22);
      v52 = *(v22 + 11);

      sub_1D62B6C00(v22);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = &qword_1EDF43F40;
      v50 = &type metadata for FormatColor;
      v51 = sub_1D5B5706C;
      sub_1D695B2C8(v47, v39, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
      v52 = *(v39 + 11);

      v53 = v39;
LABEL_25:
      v56 = v49;
      v57 = v51;
      v58 = v50;
      goto LABEL_26;
    }

    sub_1D5CADA34(v47, v35, sub_1D5B5714C);
    v52 = *&v35[*(v32 + 60)];

    sub_1D6983E84(v35, sub_1D5B5714C);
  }

  else
  {
    sub_1D5CAE630(v47, v43);
    v52 = *(v43 + 9);

    sub_1D62B6EE8(v43);
  }

  return v52;
}

uint64_t sub_1D695C4AC()
{
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v62 = &v58 - v2;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v58 - v5;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v60 = &v58 - v8;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v59 = &v58 - v11;
  sub_1D5B5796C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v58 - v18;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v58 - v22;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v58 - v26;
  v28 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v58 - v38;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v58 - v42;
  v44 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v58 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D695B264(v63, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v49 = &qword_1EDF43F60;
        v50 = &type metadata for FormatVideoNodeContent;
        v54 = sub_1D5B57AA8;
        v51 = sub_1D5B57AA8;
        v55 = v47;
        v56 = v60;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v49 = &qword_1EDF43F48;
        v50 = &type metadata for FormatFont;
        v54 = sub_1D5B55668;
        v51 = sub_1D5B55668;
        v55 = v47;
        v56 = v61;
      }

      else
      {
        v49 = &qword_1EDF43F50;
        v50 = &type metadata for FormatVideoPlayerContent;
        v54 = sub_1D5B55F44;
        v51 = sub_1D5B55F44;
        v55 = v47;
        v56 = v62;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D5CAD9A4(v47, v19);
        v52 = v19[64];
        sub_1D62B6AE8(v19);
        return v52;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_1D5CADA34(v47, v15, sub_1D5B5796C);
        v52 = v15[64];
        sub_1D6983E84(v15, sub_1D5B5796C);
        return v52;
      }

      v49 = &qword_1EDF43F58;
      v50 = &type metadata for FormatAsyncImageContent;
      v54 = sub_1D5B57A00;
      v51 = sub_1D5B57A00;
      v55 = v47;
      v56 = v59;
    }

    sub_1D695B2C8(v55, v56, v49, v54, v50);
    v52 = *(v56 + 64);
    v53 = v56;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5CADA34(v47, v31, type metadata accessor for FormatEnumPropertyDefinition);
      v52 = v31[80];
      sub_1D6983E84(v31, type metadata accessor for FormatEnumPropertyDefinition);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v49 = &qword_1EDF43F68;
        v50 = MEMORY[0x1E69E7DE0];
        v51 = sub_1D5B577E4;
        sub_1D695B2C8(v47, v27, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
        v52 = v27[64];
        v53 = v27;
        goto LABEL_25;
      }

      sub_1D62B6B70(v47, v23);
      v52 = v23[64];
      sub_1D62B6C00(v23);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = &qword_1EDF43F40;
      v50 = &type metadata for FormatColor;
      v51 = sub_1D5B5706C;
      sub_1D695B2C8(v47, v39, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
      v52 = v39[64];
      v53 = v39;
LABEL_25:
      sub_1D695B34C(v53, v49, v51, v50);
      return v52;
    }

    sub_1D5CADA34(v47, v35, sub_1D5B5714C);
    v52 = v35[64];
    sub_1D6983E84(v35, sub_1D5B5714C);
  }

  else
  {
    sub_1D5CAE630(v47, v43);
    v52 = v43[64];
    sub_1D62B6EE8(v43);
  }

  return v52;
}

uint64_t sub_1D695CCE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v45 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6983FB4(0);
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6981E20(0);
  sub_1D5B4CDEC(&qword_1EDF24DE8, sub_1D6981E20, &unk_1D7321584);
  v16 = v61;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v10;
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v58;
  v21 = v59;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D6629BFC();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v65 = 0uLL;
  v66 = 0;
  v25 = sub_1D72642BC();
  v55 = v26;
  v65 = xmmword_1D728CF30;
  v66 = 0;
  v53 = sub_1D72642BC();
  v54 = v32;
  v65 = xmmword_1D7297410;
  v66 = 0;
  v52 = sub_1D72642BC();
  v34 = v33;
  v65 = xmmword_1D72BAA60;
  v66 = 0;
  v50 = sub_1D72642BC();
  v51 = v35;
  v65 = xmmword_1D72BAA70;
  v66 = 0;
  LODWORD(v36) = 0;
  v49 = sub_1D72642CC();
  v65 = xmmword_1D72BAA80;
  v66 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v46 = v25;
  v48 = v34;
  v47 = xmmword_1D72BAA90;
  v65 = xmmword_1D72BAA90;
  v66 = 0;
  if (sub_1D726434C())
  {
    v63 = v47;
    v64 = 0;
    sub_1D726431C();
    v38 = v61;
    LODWORD(v36) = v62;
  }

  else
  {
    v38 = v61;
  }

  v61 = xmmword_1D72BAAA0;
  v65 = xmmword_1D72BAAA0;
  v66 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v47) = v36;
    v63 = v61;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v36 = v56;
    sub_1D726431C();
    *&v61 = sub_1D725A74C();
    (*(v57 + 8))(v36, v38);
    LOBYTE(v36) = v47;
  }

  else
  {
    *&v61 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v65 = xmmword_1D72BAAB0;
  v66 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v60 + 8))(v15, v12);
  v39 = v67;
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v40 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v39;
  v41 = v55;
  *v21 = v46;
  *(v21 + 8) = v41;
  v42 = v54;
  *(v21 + 16) = v53;
  *(v21 + 24) = v42;
  v43 = v48;
  *(v21 + 32) = v52;
  *(v21 + 40) = v43;
  v44 = v51;
  *(v21 + 48) = v50;
  *(v21 + 56) = v44;
  *(v21 + 64) = v49 & 1;
  *(v21 + 80) = v36;
  *(v21 + 88) = v61;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D695D5F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v63 = &v50[-v6];
  sub_1D5C4F6F8(0);
  v65 = v7;
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4BE9C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v50[-v13];
  sub_1D6984048(0);
  v16 = v15;
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D698221C(0);
  sub_1D5B4CDEC(&qword_1EC88E9A8, sub_1D698221C, &unk_1D7321584);
  v20 = v67;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v10;
  v23 = v64;
  v22 = v65;
  v67 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_1D7264AFC();
  v25 = Dictionary<>.errorOnUnknownKeys.getter(v24);

  v26 = v66;
  if (v25)
  {
    v27 = sub_1D726433C();
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 48);
      while ((*v29 & 1) == 0)
      {
        v29 += 24;
        if (!--v28)
        {
          goto LABEL_7;
        }
      }

      v33 = *(v29 - 2);
      v32 = *(v29 - 1);

      v34 = sub_1D662997C();
      sub_1D5E2D970();
      v21 = swift_allocError();
      *v35 = v33;
      *(v35 + 8) = v32;
      *(v35 + 16) = v34;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v23 + 8))(v19, v16);
      goto LABEL_10;
    }

LABEL_7:
  }

  v70 = 0uLL;
  v71 = 0;
  v30 = sub_1D72642BC();
  v60 = v31;
  v70 = xmmword_1D728CF30;
  v71 = 0;
  v58 = sub_1D72642BC();
  v59 = v30;
  v37 = v36;
  v70 = xmmword_1D7297410;
  v71 = 0;
  v56 = sub_1D72642BC();
  v57 = v38;
  v70 = xmmword_1D72BAA60;
  v71 = 0;
  v54 = sub_1D72642BC();
  v55 = v39;
  v70 = xmmword_1D72BAA70;
  v71 = 0;
  v72 = sub_1D72642CC();
  sub_1D725891C();
  v70 = xmmword_1D72BAA80;
  v71 = 0;
  sub_1D5B4CDEC(&qword_1EDF45B08, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D726427C();
  v53 = xmmword_1D72BAA90;
  v70 = xmmword_1D72BAA90;
  v71 = 0;
  if (sub_1D726434C())
  {
    v68 = v53;
    v69 = 0;
    sub_1D726431C();
    *&v53 = v37;
    v51 = v73;
  }

  else
  {
    v51 = 0;
    *&v53 = v37;
  }

  v52 = xmmword_1D72BAAA0;
  v70 = xmmword_1D72BAAA0;
  v71 = 0;
  v41 = sub_1D726434C();
  v42 = v61;
  if (v41)
  {
    v68 = v52;
    v69 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    sub_1D726431C();
    *&v52 = sub_1D725A74C();
    (*(v62 + 8))(v42, v22);
  }

  else
  {
    *&v52 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v70 = xmmword_1D72BAAB0;
  v71 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  v43 = v63;
  sub_1D726427C();
  v44 = v53;
  (*(v23 + 8))(v19, v16);
  sub_1D5B5714C(0);
  v46 = v45;
  sub_1D5CAD854(v67, v26 + v45[13], &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5CAD854(v43, v26 + v46[16], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v47 = v60;
  *v26 = v59;
  *(v26 + 8) = v47;
  *(v26 + 16) = v58;
  *(v26 + 24) = v44;
  v48 = v57;
  *(v26 + 32) = v56;
  *(v26 + 40) = v48;
  v49 = v55;
  *(v26 + 48) = v54;
  *(v26 + 56) = v49;
  *(v26 + 64) = v72 & 1;
  *(v26 + v46[14]) = v51;
  *(v26 + v46[15]) = v52;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D695DF40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v46 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69840DC(0);
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6982540(0);
  sub_1D5B4CDEC(&qword_1EDF24E08, sub_1D6982540, &unk_1D7321584);
  v16 = v61;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v10;
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v58;
  v21 = v59;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D66296FC();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v66 = 0uLL;
  v67 = 0;
  v25 = sub_1D72642BC();
  v55 = v26;
  v66 = xmmword_1D728CF30;
  v67 = 0;
  v53 = sub_1D72642BC();
  v54 = v32;
  v66 = xmmword_1D7297410;
  v67 = 0;
  v52 = sub_1D72642BC();
  v34 = v33;
  v66 = xmmword_1D72BAA60;
  v67 = 0;
  v50 = sub_1D72642BC();
  v51 = v35;
  v66 = xmmword_1D72BAA70;
  v67 = 0;
  LODWORD(v36) = 0;
  v68 = sub_1D72642CC();
  v66 = xmmword_1D72BAA80;
  v67 = 0;
  sub_1D5B57870();
  sub_1D726427C();
  v47 = v25;
  v49 = v34;
  v48 = xmmword_1D72BAA90;
  v66 = xmmword_1D72BAA90;
  v67 = 0;
  if (sub_1D726434C())
  {
    v62 = v48;
    v63 = 0;
    sub_1D726431C();
    v38 = v61;
    LODWORD(v36) = v69;
  }

  else
  {
    v38 = v61;
  }

  v61 = xmmword_1D72BAAA0;
  v66 = xmmword_1D72BAAA0;
  v67 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v48) = v36;
    v62 = v61;
    v63 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v36 = v56;
    sub_1D726431C();
    *&v61 = sub_1D725A74C();
    (*(v57 + 8))(v36, v38);
    LOBYTE(v36) = v48;
  }

  else
  {
    *&v61 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v66 = xmmword_1D72BAAB0;
  v67 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v60 + 8))(v15, v12);
  v39 = v64;
  v40 = v65;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v41 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v39;
  *(v21 + 80) = v40;
  v42 = v55;
  *v21 = v47;
  *(v21 + 8) = v42;
  v43 = v54;
  *(v21 + 16) = v53;
  *(v21 + 24) = v43;
  v44 = v49;
  *(v21 + 32) = v52;
  *(v21 + 40) = v44;
  v45 = v51;
  *(v21 + 48) = v50;
  *(v21 + 56) = v45;
  *(v21 + 64) = v68 & 1;
  *(v21 + 81) = v36;
  *(v21 + 88) = v61;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D695E838@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v47 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6984170(0);
  v12 = v11;
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D698293C(0);
  sub_1D5B4CDEC(&qword_1EDF0C3F0, sub_1D698293C, &unk_1D7321584);
  v16 = v62;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v10;
  *&v62 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v59;
  v21 = v60;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D662947C();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v61 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v67 = 0uLL;
  v68 = 0;
  v25 = sub_1D72642BC();
  v56 = v26;
  v67 = xmmword_1D728CF30;
  v68 = 0;
  v54 = sub_1D72642BC();
  v55 = v32;
  v67 = xmmword_1D7297410;
  v68 = 0;
  v53 = sub_1D72642BC();
  v34 = v33;
  v67 = xmmword_1D72BAA60;
  v68 = 0;
  v51 = sub_1D72642BC();
  v52 = v35;
  v67 = xmmword_1D72BAA70;
  v68 = 0;
  v69 = sub_1D72642CC();
  v67 = xmmword_1D72BAA80;
  v68 = 0;
  sub_1D726427C();
  LODWORD(v36) = 0;
  v48 = v25;
  v50 = v34;
  v49 = xmmword_1D72BAA90;
  v67 = xmmword_1D72BAA90;
  v68 = 0;
  v38 = sub_1D726434C();
  if (v38)
  {
    v63 = v49;
    v64 = 0;
    sub_1D726431C();
    v39 = v62;
    LODWORD(v36) = v70;
  }

  else
  {
    v39 = v62;
  }

  v62 = xmmword_1D72BAAA0;
  v67 = xmmword_1D72BAAA0;
  v68 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v49) = v36;
    v63 = v62;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v36 = v57;
    sub_1D726431C();
    *&v62 = sub_1D725A74C();
    (*(v58 + 8))(v36, v39);
    LOBYTE(v36) = v49;
  }

  else
  {
    *&v62 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v67 = xmmword_1D72BAAB0;
  v68 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v61 + 8))(v15, v12);
  v40 = v65;
  v41 = v66;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v42 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v40;
  *(v21 + 80) = v41;
  v43 = v56;
  *v21 = v48;
  *(v21 + 8) = v43;
  v44 = v55;
  *(v21 + 16) = v54;
  *(v21 + 24) = v44;
  v45 = v50;
  *(v21 + 32) = v53;
  *(v21 + 40) = v45;
  v46 = v52;
  *(v21 + 48) = v51;
  *(v21 + 56) = v46;
  *(v21 + 64) = v69 & 1;
  *(v21 + 81) = v36;
  *(v21 + 88) = v62;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D695F124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v45 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6984204(0);
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6983020(0);
  sub_1D5B4CDEC(&qword_1EDF24DF8, sub_1D6983020, &unk_1D7321584);
  v16 = v61;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v10;
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v58;
  v21 = v59;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D6628CFC();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v65 = 0uLL;
  v66 = 0;
  v25 = sub_1D72642BC();
  v55 = v26;
  v65 = xmmword_1D728CF30;
  v66 = 0;
  v53 = sub_1D72642BC();
  v54 = v32;
  v65 = xmmword_1D7297410;
  v66 = 0;
  v52 = sub_1D72642BC();
  v34 = v33;
  v65 = xmmword_1D72BAA60;
  v66 = 0;
  v50 = sub_1D72642BC();
  v51 = v35;
  v65 = xmmword_1D72BAA70;
  v66 = 0;
  LODWORD(v36) = 0;
  v49 = sub_1D72642CC();
  v65 = xmmword_1D72BAA80;
  v66 = 0;
  sub_1D5B57A54();
  sub_1D726427C();
  v46 = v25;
  v48 = v34;
  v47 = xmmword_1D72BAA90;
  v65 = xmmword_1D72BAA90;
  v66 = 0;
  if (sub_1D726434C())
  {
    v63 = v47;
    v64 = 0;
    sub_1D726431C();
    v38 = v61;
    LODWORD(v36) = v62;
  }

  else
  {
    v38 = v61;
  }

  v61 = xmmword_1D72BAAA0;
  v65 = xmmword_1D72BAAA0;
  v66 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v47) = v36;
    v63 = v61;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v36 = v56;
    sub_1D726431C();
    *&v61 = sub_1D725A74C();
    (*(v57 + 8))(v36, v38);
    LOBYTE(v36) = v47;
  }

  else
  {
    *&v61 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v65 = xmmword_1D72BAAB0;
  v66 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v60 + 8))(v15, v12);
  v39 = v67;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v40 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v39;
  v41 = v55;
  *v21 = v46;
  *(v21 + 8) = v41;
  v42 = v54;
  *(v21 + 16) = v53;
  *(v21 + 24) = v42;
  v43 = v48;
  *(v21 + 32) = v52;
  *(v21 + 40) = v43;
  v44 = v51;
  *(v21 + 48) = v50;
  *(v21 + 56) = v44;
  *(v21 + 64) = v49 & 1;
  *(v21 + 80) = v36;
  *(v21 + 88) = v61;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D695FA34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v45 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6984298(0);
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D698341C(0);
  sub_1D5B4CDEC(&qword_1EC88E9F0, sub_1D698341C, &unk_1D7321584);
  v16 = v61;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v10;
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v58;
  v21 = v59;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D6628A7C();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v65 = 0uLL;
  v66 = 0;
  v25 = sub_1D72642BC();
  v55 = v26;
  v65 = xmmword_1D728CF30;
  v66 = 0;
  v53 = sub_1D72642BC();
  v54 = v32;
  v65 = xmmword_1D7297410;
  v66 = 0;
  v52 = sub_1D72642BC();
  v34 = v33;
  v65 = xmmword_1D72BAA60;
  v66 = 0;
  v50 = sub_1D72642BC();
  v51 = v35;
  v65 = xmmword_1D72BAA70;
  v66 = 0;
  LODWORD(v36) = 0;
  v49 = sub_1D72642CC();
  v65 = xmmword_1D72BAA80;
  v66 = 0;
  sub_1D5B57AFC();
  sub_1D726427C();
  v46 = v25;
  v48 = v34;
  v47 = xmmword_1D72BAA90;
  v65 = xmmword_1D72BAA90;
  v66 = 0;
  if (sub_1D726434C())
  {
    v63 = v47;
    v64 = 0;
    sub_1D726431C();
    v38 = v61;
    LODWORD(v36) = v62;
  }

  else
  {
    v38 = v61;
  }

  v61 = xmmword_1D72BAAA0;
  v65 = xmmword_1D72BAAA0;
  v66 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v47) = v36;
    v63 = v61;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v36 = v56;
    sub_1D726431C();
    *&v61 = sub_1D725A74C();
    (*(v57 + 8))(v36, v38);
    LOBYTE(v36) = v47;
  }

  else
  {
    *&v61 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v65 = xmmword_1D72BAAB0;
  v66 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v60 + 8))(v15, v12);
  v39 = v67;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v40 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v39;
  v41 = v55;
  *v21 = v46;
  *(v21 + 8) = v41;
  v42 = v54;
  *(v21 + 16) = v53;
  *(v21 + 24) = v42;
  v43 = v48;
  *(v21 + 32) = v52;
  *(v21 + 40) = v43;
  v44 = v51;
  *(v21 + 48) = v50;
  *(v21 + 56) = v44;
  *(v21 + 64) = v49 & 1;
  *(v21 + 80) = v36;
  *(v21 + 88) = v61;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6960344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v45 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D698432C(0);
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6983818(0);
  sub_1D5B4CDEC(&qword_1EC88EA38, sub_1D6983818, &unk_1D7321584);
  v16 = v61;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v10;
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v58;
  v21 = v59;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D66287FC();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v65 = 0uLL;
  v66 = 0;
  v25 = sub_1D72642BC();
  v55 = v26;
  v65 = xmmword_1D728CF30;
  v66 = 0;
  v53 = sub_1D72642BC();
  v54 = v32;
  v65 = xmmword_1D7297410;
  v66 = 0;
  v52 = sub_1D72642BC();
  v34 = v33;
  v65 = xmmword_1D72BAA60;
  v66 = 0;
  v50 = sub_1D72642BC();
  v51 = v35;
  v65 = xmmword_1D72BAA70;
  v66 = 0;
  LODWORD(v36) = 0;
  v49 = sub_1D72642CC();
  v65 = xmmword_1D72BAA80;
  v66 = 0;
  sub_1D5B556F4();
  sub_1D726427C();
  v46 = v25;
  v48 = v34;
  v47 = xmmword_1D72BAA90;
  v65 = xmmword_1D72BAA90;
  v66 = 0;
  if (sub_1D726434C())
  {
    v63 = v47;
    v64 = 0;
    sub_1D726431C();
    v38 = v61;
    LODWORD(v36) = v62;
  }

  else
  {
    v38 = v61;
  }

  v61 = xmmword_1D72BAAA0;
  v65 = xmmword_1D72BAAA0;
  v66 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v47) = v36;
    v63 = v61;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v36 = v56;
    sub_1D726431C();
    *&v61 = sub_1D725A74C();
    (*(v57 + 8))(v36, v38);
    LOBYTE(v36) = v47;
  }

  else
  {
    *&v61 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v65 = xmmword_1D72BAAB0;
  v66 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v60 + 8))(v15, v12);
  v39 = v67;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v40 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v39;
  v41 = v55;
  *v21 = v46;
  *(v21 + 8) = v41;
  v42 = v54;
  *(v21 + 16) = v53;
  *(v21 + 24) = v42;
  v43 = v48;
  *(v21 + 32) = v52;
  *(v21 + 40) = v43;
  v44 = v51;
  *(v21 + 48) = v50;
  *(v21 + 56) = v44;
  *(v21 + 64) = v49 & 1;
  *(v21 + 80) = v36;
  *(v21 + 88) = v61;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6960C54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v45 - v5;
  sub_1D5C4F6F8(0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69843C0(0);
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6983C14(0);
  sub_1D5B4CDEC(&qword_1EC88EA80, sub_1D6983C14, &unk_1D7321584);
  v16 = v61;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v10;
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v58;
  v21 = v59;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D662857C();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v65 = 0uLL;
  v66 = 0;
  v25 = sub_1D72642BC();
  v55 = v26;
  v65 = xmmword_1D728CF30;
  v66 = 0;
  v53 = sub_1D72642BC();
  v54 = v32;
  v65 = xmmword_1D7297410;
  v66 = 0;
  v52 = sub_1D72642BC();
  v34 = v33;
  v65 = xmmword_1D72BAA60;
  v66 = 0;
  v50 = sub_1D72642BC();
  v51 = v35;
  v65 = xmmword_1D72BAA70;
  v66 = 0;
  LODWORD(v36) = 0;
  v49 = sub_1D72642CC();
  v65 = xmmword_1D72BAA80;
  v66 = 0;
  sub_1D5B55FD0();
  sub_1D726427C();
  v46 = v25;
  v48 = v34;
  v47 = xmmword_1D72BAA90;
  v65 = xmmword_1D72BAA90;
  v66 = 0;
  if (sub_1D726434C())
  {
    v63 = v47;
    v64 = 0;
    sub_1D726431C();
    v38 = v61;
    LODWORD(v36) = v62;
  }

  else
  {
    v38 = v61;
  }

  v61 = xmmword_1D72BAAA0;
  v65 = xmmword_1D72BAAA0;
  v66 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v47) = v36;
    v63 = v61;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v36 = v56;
    sub_1D726431C();
    *&v61 = sub_1D725A74C();
    (*(v57 + 8))(v36, v38);
    LOBYTE(v36) = v47;
  }

  else
  {
    *&v61 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v65 = xmmword_1D72BAAB0;
  v66 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v60 + 8))(v15, v12);
  v39 = v67;
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v40 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v39;
  v41 = v55;
  *v21 = v46;
  *(v21 + 8) = v41;
  v42 = v54;
  *(v21 + 16) = v53;
  *(v21 + 24) = v42;
  v43 = v48;
  *(v21 + 32) = v52;
  *(v21 + 40) = v43;
  v44 = v51;
  *(v21 + 48) = v50;
  *(v21 + 56) = v44;
  *(v21 + 64) = v49 & 1;
  *(v21 + 80) = v36;
  *(v21 + 88) = v61;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6961564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v17 = type metadata accessor for FormatPrimitivePropertyDefinition(0, a15, a16, a4);
  v18 = v17[13];
  v19 = sub_1D726393C();
  (*(*(v19 - 8) + 32))(a9 + v18, a11, v19);
  *(a9 + v17[14]) = a12;
  *(a9 + v17[15]) = a13;
  return sub_1D5CAD854(a14, a9 + v17[16], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D6961658(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v209 = &v204 - v6;
  v211 = sub_1D725B76C();
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v7);
  v208 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v212 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v207 = &v204 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v213 = &v204 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v214 = &v204 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v215 = &v204 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v216 = &v204 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v217 = &v204 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v225 = &v204 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v204 - v35;
  sub_1D6981B54(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v204 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D5CAE35C(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EDF24DC8, sub_1D5CAE35C, &unk_1D7321584);
  v206 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v223 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v218 = v53;
  v221 = v55;
  v222 = v52;
  v220 = v54 + 16;
  (v55)(v36);
  v219 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v234 = v50;
  v235 = v51;
  v232 = 0uLL;
  v233 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v236 = 0;
  v59 = swift_allocObject();
  v229 = &v204;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v236;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v228 = &v204 - 6;
  *(&v204 - 4) = sub_1D5B4AA6C;
  *(&v204 - 3) = 0;
  v202 = sub_1D6984578;
  v203 = v61;
  v236 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v236;
  v224 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D6981BE8(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EDF02CD8, sub_1D6981BE8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v226 = v65;
  v227 = v64;
  v66 = sub_1D72647CC();
  v236 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v236;
  v68 = *(v38 + 36);
  v69 = v36;
  v231 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v228;
  *(&v204 - 4) = sub_1D60565EC;
  *(&v204 - 3) = v77;
  v202 = sub_1D6984578;
  v203 = v62;
  v78 = v230;
  sub_1D5D2BC70(v69, sub_1D60566B0, v79, sub_1D60565EC, (&v204 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v231;
    return sub_1D6983E84(v98, sub_1D6981B54);
  }

  v205 = v70;
  v228 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v223[2];
  v81 = v223[3];
  v221(v225, v218, v222);
  swift_storeEnumTagMultiPayload();
  v234 = v80;
  v235 = v81;
  v230 = xmmword_1D728CF30;
  v232 = xmmword_1D728CF30;
  v233 = 0;
  v236 = 0;
  v82 = swift_allocObject();
  v229 = &v204;
  *(v82 + 16) = v230;
  *(v82 + 32) = v236;
  v83 = v224;
  v84 = v228;
  *(v82 + 40) = v224;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v204 - 4) = sub_1D5B4AA6C;
  *(&v204 - 3) = 0;
  v202 = sub_1D6984578;
  v203 = v86;
  v236 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v230;
  *(v87 + 32) = v236;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v236 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v230;
  *(v89 + 40) = v236;
  v90 = *(v205 + 3);
  v91 = *(v205 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v205, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v204 - 4) = sub_1D615B4A4;
  *(&v204 - 3) = (&v204 - 6);
  v96 = v225;
  v202 = sub_1D6984578;
  v203 = v87;
  sub_1D5D2BC70(v225, sub_1D615B49C, v97, sub_1D615B4A4, (&v204 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v223[4];
  v101 = v223[5];
  v221(v217, v218, v222);
  swift_storeEnumTagMultiPayload();
  v234 = v100;
  v235 = v101;
  v230 = xmmword_1D7297410;
  v232 = xmmword_1D7297410;
  v233 = 0;
  v236 = 0;
  v102 = swift_allocObject();
  v229 = &v204;
  *(v102 + 16) = v230;
  *(v102 + 32) = v236;
  v103 = v224;
  v104 = v228;
  *(v102 + 40) = v224;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v204 - 4) = sub_1D5B4AA6C;
  *(&v204 - 3) = 0;
  v202 = sub_1D6984578;
  v203 = v106;
  v236 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v230;
  *(v107 + 32) = v236;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v236 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v230;
  *(v109 + 40) = v236;
  v110 = *(v205 + 3);
  v111 = *(v205 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v205, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v204 - 4) = sub_1D615B4A4;
  *(&v204 - 3) = (&v204 - 6);
  v116 = v217;
  v202 = sub_1D6984578;
  v203 = v107;
  sub_1D5D2BC70(v217, sub_1D615B49C, v117, sub_1D615B4A4, (&v204 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v223[6];
  v119 = v223[7];
  v221(v216, v218, v222);
  swift_storeEnumTagMultiPayload();
  v234 = v118;
  v235 = v119;
  v230 = xmmword_1D72BAA60;
  v232 = xmmword_1D72BAA60;
  v233 = 0;
  v236 = 0;
  v120 = swift_allocObject();
  v229 = &v204;
  *(v120 + 16) = v230;
  *(v120 + 32) = v236;
  v121 = v224;
  v122 = v228;
  *(v120 + 40) = v224;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v204 - 4) = sub_1D5B4AA6C;
  *(&v204 - 3) = 0;
  v202 = sub_1D6984578;
  v203 = v124;
  v236 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v230;
  *(v125 + 32) = v236;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v236 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v230;
  *(v127 + 40) = v236;
  v128 = *(v205 + 3);
  v129 = *(v205 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v205, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v204 - 4) = sub_1D615B4A4;
  *(&v204 - 3) = (&v204 - 6);
  v134 = v216;
  v202 = sub_1D6984578;
  v203 = v125;
  sub_1D5D2BC70(v216, sub_1D615B49C, v135, sub_1D615B4A4, (&v204 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v223 + 64);
  v136 = v215;
  v221(v215, v218, v222);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v234) = v118;
  v230 = xmmword_1D72BAA70;
  v232 = xmmword_1D72BAA70;
  v233 = 0;
  v236 = 0;
  v137 = swift_allocObject();
  v229 = &v204;
  *(v137 + 16) = v230;
  *(v137 + 32) = v236;
  v138 = v224;
  v139 = v228;
  *(v137 + 40) = v224;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v204 - 4) = sub_1D5B4AA6C;
  *(&v204 - 3) = 0;
  v202 = sub_1D6984578;
  v203 = v141;
  v236 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v230;
  *(v142 + 32) = v236;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v236 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v230;
  *(v144 + 40) = v236;
  v145 = *(v205 + 3);
  v146 = *(v205 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v205, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v204 - 4) = sub_1D615B4A4;
  *(&v204 - 3) = (&v204 - 6);
  v202 = sub_1D6984578;
  v203 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v204 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v215, type metadata accessor for FormatVersionRequirement);

  v221(v214, v218, v222);
  swift_storeEnumTagMultiPayload();
  v152 = *(v223 + 65);
  v230 = xmmword_1D72BAA80;
  v232 = xmmword_1D72BAA80;
  v233 = 0;
  LOBYTE(v234) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v230;
  *(v153 + 32) = v234;
  v156 = v228;
  *(v153 + 40) = v224;
  *(v153 + 48) = v156;
  if (v152 == 2)
  {
  }

  else
  {
    LOBYTE(v234) = v152 & 1;
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v204 - 4) = sub_1D5B4AA6C;
    *(&v204 - 3) = 0;
    v202 = sub_1D6984578;
    v203 = v155;
    v236 = 0;
    v170 = swift_allocObject();
    *(v170 + 16) = v230;
    *(v170 + 32) = v236;
    *(v170 + 40) = v224;
    *(v170 + 48) = v228;
    swift_retain_n();
    v171 = sub_1D72647CC();
    v236 = 0;
    v172 = swift_allocObject();
    *(v172 + 16) = v171;
    *(v172 + 24) = v230;
    *(v172 + 40) = v236;
    v173 = *(v205 + 3);
    v174 = *(v205 + 4);
    v175 = __swift_project_boxed_opaque_existential_1(v205, v173);
    MEMORY[0x1EEE9AC00](v175, v176);
    MEMORY[0x1EEE9AC00](v177, v178);
    *(&v204 - 4) = sub_1D615B4A4;
    *(&v204 - 3) = (&v204 - 6);
    v202 = sub_1D6984578;
    v203 = v170;
    LOBYTE(v173) = sub_1D5D2F7A4(v214, sub_1D615B49C, v179, sub_1D615B4A4, (&v204 - 6), v173, v174);

    if (v173)
    {
      sub_1D72647EC();
    }
  }

  sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);

  v157 = *(v223 + 66);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v158 = v222;
  v159 = __swift_project_value_buffer(v222, qword_1EDFFCD50);
  v221(v213, v159, v158);
  swift_storeEnumTagMultiPayload();
  if (v157 & 1) != 0 && (LOBYTE(v232) = 0, v160 = swift_allocObject(), v230 = xmmword_1D72BAA90, *(v160 + 16) = xmmword_1D72BAA90, *(v160 + 32) = v232, *(v160 + 40) = v224, *(v160 + 48) = v228, , v161 = sub_1D72647CC(), LOBYTE(v232) = 0, v162 = swift_allocObject(), *(v162 + 16) = v161, *(v162 + 24) = v230, *(v162 + 40) = v232, v163 = *(v205 + 3), v164 = *(v205 + 4), v165 = __swift_project_boxed_opaque_existential_1(v205, v163), MEMORY[0x1EEE9AC00](v165, v166), MEMORY[0x1EEE9AC00](v167, v168), *(&v204 - 4) = sub_1D5B4AA6C, *(&v204 - 3) = 0, v202 = sub_1D6984578, v203 = v160, v180 = sub_1D5D2F7A4(v213, sub_1D615B49C, v169, sub_1D615B4A4, (&v204 - 6), v163, v164), , , (v180))
  {
    v232 = v230;
    v233 = 0;
    LOBYTE(v234) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v181 = v222;
  v182 = __swift_project_value_buffer(v222, qword_1EDFFCD80);
  v183 = v207;
  v184 = v221;
  v221(v207, v182, v181);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v183, type metadata accessor for FormatVersionRequirement);
  v185 = *(v206 + 64);
  v184(v212, v182, v181);
  swift_storeEnumTagMultiPayload();
  v230 = xmmword_1D72BAAB0;
  v232 = xmmword_1D72BAAB0;
  v233 = 0;
  LOBYTE(v234) = 0;
  v186 = swift_allocObject();
  *(v186 + 16) = v230;
  *(v186 + 32) = v234;
  v187 = v228;
  *(v186 + 40) = v224;
  *(v186 + 48) = v187;
  v188 = v223 + v185;
  v189 = v209;
  sub_1D5CDE36C(v188, v209, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v210 + 48))(v189, 1, v211) != 1)
  {
    v190 = (*(v210 + 32))(v208, v209, v211);
    MEMORY[0x1EEE9AC00](v190, v191);
    *(&v204 - 4) = sub_1D5B4AA6C;
    *(&v204 - 3) = 0;
    v202 = sub_1D6984578;
    v203 = v186;
    LOBYTE(v234) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v230;
    *(v192 + 32) = v234;
    *(v192 + 40) = v224;
    *(v192 + 48) = v228;
    swift_retain_n();
    v193 = sub_1D72647CC();
    LOBYTE(v234) = 0;
    v194 = swift_allocObject();
    *(v194 + 16) = v193;
    *(v194 + 24) = v230;
    *(v194 + 40) = v234;
    v195 = *(v205 + 3);
    v196 = *(v205 + 4);
    v197 = __swift_project_boxed_opaque_existential_1(v205, v195);
    MEMORY[0x1EEE9AC00](v197, v198);
    MEMORY[0x1EEE9AC00](v199, v200);
    *(&v204 - 4) = sub_1D60565EC;
    *(&v204 - 3) = (&v204 - 6);
    v202 = sub_1D6981C7C;
    v203 = v192;
    LOBYTE(v195) = sub_1D5D2F7A4(v212, sub_1D60566B0, v201, sub_1D60565EC, (&v204 - 6), v195, v196);

    if (v195)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v210 + 8))(v208, v211);
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
    v98 = v231;
    return sub_1D6983E84(v98, sub_1D6981B54);
  }

  sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v231, sub_1D6981B54);
  return sub_1D6981AE4(v209, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D6963514(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v208 = &v203 - v6;
  v210 = sub_1D725B76C();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v7);
  v207 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v211 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v206 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v212 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v213 = &v203 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v214 = &v203 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v215 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v216 = &v203 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v224 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v203 - v35;
  sub_1D6981CF8(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D6981E20(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EDF24DE8, sub_1D6981E20, &unk_1D7321584);
  v205 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v222 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v217 = v53;
  v220 = v55;
  v221 = v52;
  v219 = v54 + 16;
  (v55)(v36);
  v218 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v233 = v50;
  v234 = v51;
  v231 = 0uLL;
  v232 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v235 = 0;
  v59 = swift_allocObject();
  v228 = &v203;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v235;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v227 = &v203 - 6;
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v61;
  v235 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v235;
  v223 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D6981D8C(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EDF02CF8, sub_1D6981D8C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v225 = v65;
  v226 = v64;
  v66 = sub_1D72647CC();
  v235 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v235;
  v68 = *(v38 + 36);
  v69 = v36;
  v230 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v227;
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = v77;
  v201 = sub_1D6984578;
  v202 = v62;
  v78 = v229;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v203 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v230;
    return sub_1D6983E84(v98, sub_1D6981CF8);
  }

  v204 = v70;
  v227 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v222[2];
  v81 = v222[3];
  v220(v224, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v80;
  v234 = v81;
  v229 = xmmword_1D728CF30;
  v231 = xmmword_1D728CF30;
  v232 = 0;
  v235 = 0;
  v82 = swift_allocObject();
  v228 = &v203;
  *(v82 + 16) = v229;
  *(v82 + 32) = v235;
  v83 = v223;
  v84 = v227;
  *(v82 + 40) = v223;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v86;
  v235 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v229;
  *(v87 + 32) = v235;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v235 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v229;
  *(v89 + 40) = v235;
  v90 = *(v204 + 3);
  v91 = *(v204 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v204, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v96 = v224;
  v201 = sub_1D6984578;
  v202 = v87;
  sub_1D5D2BC70(v224, sub_1D615B49C, v97, sub_1D615B4A4, (&v203 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v222[4];
  v101 = v222[5];
  v220(v216, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v100;
  v234 = v101;
  v229 = xmmword_1D7297410;
  v231 = xmmword_1D7297410;
  v232 = 0;
  v235 = 0;
  v102 = swift_allocObject();
  v228 = &v203;
  *(v102 + 16) = v229;
  *(v102 + 32) = v235;
  v103 = v223;
  v104 = v227;
  *(v102 + 40) = v223;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v106;
  v235 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v229;
  *(v107 + 32) = v235;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v235 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v229;
  *(v109 + 40) = v235;
  v110 = *(v204 + 3);
  v111 = *(v204 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v204, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v116 = v216;
  v201 = sub_1D6984578;
  v202 = v107;
  sub_1D5D2BC70(v216, sub_1D615B49C, v117, sub_1D615B4A4, (&v203 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v222[6];
  v119 = v222[7];
  v220(v215, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v118;
  v234 = v119;
  v229 = xmmword_1D72BAA60;
  v231 = xmmword_1D72BAA60;
  v232 = 0;
  v235 = 0;
  v120 = swift_allocObject();
  v228 = &v203;
  *(v120 + 16) = v229;
  *(v120 + 32) = v235;
  v121 = v223;
  v122 = v227;
  *(v120 + 40) = v223;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v124;
  v235 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v229;
  *(v125 + 32) = v235;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v235 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v229;
  *(v127 + 40) = v235;
  v128 = *(v204 + 3);
  v129 = *(v204 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v204, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v134 = v215;
  v201 = sub_1D6984578;
  v202 = v125;
  sub_1D5D2BC70(v215, sub_1D615B49C, v135, sub_1D615B4A4, (&v203 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v222 + 64);
  v136 = v214;
  v220(v214, v217, v221);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v233) = v118;
  v229 = xmmword_1D72BAA70;
  v231 = xmmword_1D72BAA70;
  v232 = 0;
  v235 = 0;
  v137 = swift_allocObject();
  v228 = &v203;
  *(v137 + 16) = v229;
  *(v137 + 32) = v235;
  v138 = v223;
  v139 = v227;
  *(v137 + 40) = v223;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v141;
  v235 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v229;
  *(v142 + 32) = v235;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v235 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v229;
  *(v144 + 40) = v235;
  v145 = *(v204 + 3);
  v146 = *(v204 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v204, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v201 = sub_1D6984578;
  v202 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v203 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);

  v220(v213, v217, v221);
  swift_storeEnumTagMultiPayload();
  v152 = v222[9];
  v229 = xmmword_1D72BAA80;
  v231 = xmmword_1D72BAA80;
  v232 = 0;
  LOBYTE(v233) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v229;
  *(v153 + 32) = v233;
  v156 = v227;
  *(v153 + 40) = v223;
  *(v153 + 48) = v156;
  if ((~v152 & 0xF000000000000007) != 0)
  {
    v233 = v152;
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v155;
    v235 = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v229;
    *(v157 + 32) = v235;
    *(v157 + 40) = v223;
    *(v157 + 48) = v227;
    swift_retain_n();
    sub_1D5CFCFAC(v152);
    v158 = sub_1D72647CC();
    v235 = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v229;
    *(v159 + 40) = v235;
    v160 = *(v204 + 3);
    v161 = *(v204 + 4);
    v162 = __swift_project_boxed_opaque_existential_1(v204, v160);
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6984578;
    v202 = v157;
    LOBYTE(v160) = sub_1D5D2F7A4(v213, sub_1D615B49C, v166, sub_1D615B4A4, (&v203 - 6), v160, v161);

    if (v160)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
  v167 = *(v222 + 80);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v168 = v221;
  v169 = __swift_project_value_buffer(v221, qword_1EDFFCD50);
  v220(v212, v169, v168);
  swift_storeEnumTagMultiPayload();
  if (v167 & 1) != 0 && (LOBYTE(v231) = 0, v170 = swift_allocObject(), v229 = xmmword_1D72BAA90, *(v170 + 16) = xmmword_1D72BAA90, *(v170 + 32) = v231, *(v170 + 40) = v223, *(v170 + 48) = v227, , v171 = sub_1D72647CC(), LOBYTE(v231) = 0, v172 = swift_allocObject(), *(v172 + 16) = v171, *(v172 + 24) = v229, *(v172 + 40) = v231, v173 = *(v204 + 3), v174 = *(v204 + 4), v175 = __swift_project_boxed_opaque_existential_1(v204, v173), MEMORY[0x1EEE9AC00](v175, v176), MEMORY[0x1EEE9AC00](v177, v178), *(&v203 - 4) = sub_1D5B4AA6C, *(&v203 - 3) = 0, v201 = sub_1D6984578, v202 = v170, LOBYTE(v173) = sub_1D5D2F7A4(v212, sub_1D615B49C, v179, sub_1D615B4A4, (&v203 - 6), v173, v174), , , (v173))
  {
    v231 = v229;
    v232 = 0;
    LOBYTE(v233) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v180 = v221;
  v181 = __swift_project_value_buffer(v221, qword_1EDFFCD80);
  v182 = v206;
  v183 = v220;
  v220(v206, v181, v180);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v182, type metadata accessor for FormatVersionRequirement);
  v184 = *(v205 + 64);
  v183(v211, v181, v180);
  swift_storeEnumTagMultiPayload();
  v229 = xmmword_1D72BAAB0;
  v231 = xmmword_1D72BAAB0;
  v232 = 0;
  LOBYTE(v233) = 0;
  v185 = swift_allocObject();
  *(v185 + 16) = v229;
  *(v185 + 32) = v233;
  v186 = v227;
  *(v185 + 40) = v223;
  *(v185 + 48) = v186;
  v187 = v222 + v184;
  v188 = v208;
  sub_1D5CDE36C(v187, v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v209 + 48))(v188, 1, v210) != 1)
  {
    v189 = (*(v209 + 32))(v207, v208, v210);
    MEMORY[0x1EEE9AC00](v189, v190);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v185;
    LOBYTE(v233) = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = v229;
    *(v191 + 32) = v233;
    *(v191 + 40) = v223;
    *(v191 + 48) = v227;
    swift_retain_n();
    v192 = sub_1D72647CC();
    LOBYTE(v233) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v229;
    *(v193 + 40) = v233;
    v194 = *(v204 + 3);
    v195 = *(v204 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v204, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6981C7C;
    v202 = v191;
    LOBYTE(v194) = sub_1D5D2F7A4(v211, sub_1D615B49C, v200, sub_1D615B4A4, (&v203 - 6), v194, v195);

    if (v194)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v209 + 8))(v207, v210);
    sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);
    v98 = v230;
    return sub_1D6983E84(v98, sub_1D6981CF8);
  }

  sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v230, sub_1D6981CF8);
  return sub_1D6981AE4(v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D69653EC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v217 = &v213 - v7;
  v219 = sub_1D725B76C();
  v218 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v8);
  v216 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BE9C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v224 = &v213 - v12;
  v226 = sub_1D725891C();
  v223 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v13);
  v221 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v220 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v215 = &v213 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v222 = &v213 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v227 = &v213 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v228 = &v213 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v229 = &v213 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v230 = &v213 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v231 = &v213 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v213 - v41;
  sub_1D69820F4(0);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1D5B5714C(0);
  v51 = v50;
  sub_1D698221C(0);
  v53 = v52;
  v54 = sub_1D5B4CDEC(&qword_1EC88E9A8, sub_1D698221C, &unk_1D7321584);
  v225 = v51;
  sub_1D5D2EE70(v51, v53, v55, v48, v51, v53, &type metadata for FormatVersions.JazzkonC, v49, v47, v54, &off_1F51F6C78);
  v56 = *v2;
  v57 = v2[1];
  v237 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v58 = sub_1D725BD1C();
  v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
  v60 = *(v58 - 8);
  v61 = *(v60 + 16);
  v232 = v59;
  v235 = v61;
  v236 = v58;
  v234 = v60 + 16;
  (v61)(v42);
  v233 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v247 = v56;
  v248 = v57;
  v245 = 0uLL;
  v246 = 0;
  v62 = &v47[*(v44 + 44)];
  v241 = v42;
  v63 = *v62;
  v64 = *(v62 + 1);
  v249 = 0;
  v65 = swift_allocObject();
  v242 = &v213;
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  *(v65 + 32) = v249;
  *(v65 + 40) = v63;
  *(v65 + 48) = v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v213 - 4) = sub_1D5B4AA6C;
  *(&v213 - 3) = 0;
  v211 = sub_1D6984578;
  v212 = v67;
  v249 = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = v249;
  v238 = v63;
  *(v68 + 40) = v63;
  *(v68 + 48) = v64;
  sub_1D6982188(0);
  v70 = v69;
  v71 = sub_1D5B4CDEC(&qword_1EC88E9B0, sub_1D6982188, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v239 = v70;
  v240 = v71;
  v72 = sub_1D72647CC();
  v249 = 0;
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 32) = 0;
  *(v73 + 16) = v72;
  *(v73 + 40) = v249;
  v74 = *(v44 + 36);
  v244 = v47;
  v75 = &v47[v74];
  v77 = *(v75 + 3);
  v76 = *(v75 + 4);
  v78 = __swift_project_boxed_opaque_existential_1(v75, v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v213 - 4) = sub_1D615B4A4;
  *(&v213 - 3) = (&v213 - 6);
  v211 = sub_1D6984578;
  v212 = v68;
  v82 = v241;
  v83 = v243;
  sub_1D5D2BC70(v241, sub_1D615B49C, v84, sub_1D615B4A4, (&v213 - 6), v77, v76);
  if (v83)
  {
    v85 = v244;
    sub_1D6983E84(v82, type metadata accessor for FormatVersionRequirement);

    v86 = v85;
    return sub_1D6983E84(v86, sub_1D69820F4);
  }

  v213 = v75;
  v214 = v64;

  sub_1D72647EC();
  sub_1D6983E84(v82, type metadata accessor for FormatVersionRequirement);

  v88 = v237[2];
  v89 = v237[3];
  v241 = 0;
  v90 = v231;
  v235(v231, v232, v236);
  swift_storeEnumTagMultiPayload();
  v247 = v88;
  v248 = v89;
  v243 = xmmword_1D728CF30;
  v245 = xmmword_1D728CF30;
  v246 = 0;
  v249 = 0;
  v91 = swift_allocObject();
  v242 = &v213;
  *(v91 + 16) = v243;
  *(v91 + 32) = v249;
  v92 = v238;
  v93 = v214;
  *(v91 + 40) = v238;
  *(v91 + 48) = v93;
  MEMORY[0x1EEE9AC00](v91, v94);
  *(&v213 - 4) = sub_1D5B4AA6C;
  *(&v213 - 3) = 0;
  v211 = sub_1D6984578;
  v212 = v95;
  v249 = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v243;
  *(v96 + 32) = v249;
  *(v96 + 40) = v92;
  *(v96 + 48) = v93;
  swift_retain_n();
  v97 = sub_1D72647CC();
  v249 = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v243;
  *(v98 + 40) = v249;
  v99 = *(v213 + 3);
  v100 = *(v213 + 4);
  v101 = __swift_project_boxed_opaque_existential_1(v213, v99);
  MEMORY[0x1EEE9AC00](v101, v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  *(&v213 - 4) = sub_1D615B4A4;
  *(&v213 - 3) = (&v213 - 6);
  v211 = sub_1D6984578;
  v212 = v96;
  v105 = v241;
  sub_1D5D2BC70(v90, sub_1D615B49C, v106, sub_1D615B4A4, (&v213 - 6), v99, v100);
  if (v105)
  {
    v107 = v244;
    sub_1D6983E84(v90, type metadata accessor for FormatVersionRequirement);

    return sub_1D6983E84(v107, sub_1D69820F4);
  }

  else
  {

    sub_1D72647EC();
    sub_1D6983E84(v90, type metadata accessor for FormatVersionRequirement);

    v108 = v237[4];
    v109 = v237[5];
    v110 = v230;
    v235(v230, v232, v236);
    swift_storeEnumTagMultiPayload();
    v247 = v108;
    v248 = v109;
    v243 = xmmword_1D7297410;
    v245 = xmmword_1D7297410;
    v246 = 0;
    v249 = 0;
    v111 = swift_allocObject();
    v242 = &v213;
    *(v111 + 16) = v243;
    *(v111 + 32) = v249;
    v112 = v238;
    v113 = v214;
    *(v111 + 40) = v238;
    *(v111 + 48) = v113;
    MEMORY[0x1EEE9AC00](v111, v114);
    *(&v213 - 4) = sub_1D5B4AA6C;
    *(&v213 - 3) = 0;
    v211 = sub_1D6984578;
    v212 = v115;
    v249 = 0;
    v116 = swift_allocObject();
    *(v116 + 16) = v243;
    *(v116 + 32) = v249;
    *(v116 + 40) = v112;
    *(v116 + 48) = v113;
    swift_retain_n();
    v117 = sub_1D72647CC();
    v249 = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v117;
    *(v118 + 24) = v243;
    *(v118 + 40) = v249;
    v119 = *(v213 + 3);
    v120 = *(v213 + 4);
    v121 = __swift_project_boxed_opaque_existential_1(v213, v119);
    MEMORY[0x1EEE9AC00](v121, v122);
    MEMORY[0x1EEE9AC00](v123, v124);
    *(&v213 - 4) = sub_1D615B4A4;
    *(&v213 - 3) = (&v213 - 6);
    v211 = sub_1D6984578;
    v212 = v116;
    sub_1D5D2BC70(v110, sub_1D615B49C, v125, sub_1D615B4A4, (&v213 - 6), v119, v120);

    sub_1D72647EC();
    sub_1D6983E84(v110, type metadata accessor for FormatVersionRequirement);

    v126 = v237[6];
    v127 = v237[7];
    v235(v229, v232, v236);
    swift_storeEnumTagMultiPayload();
    v247 = v126;
    v248 = v127;
    v243 = xmmword_1D72BAA60;
    v245 = xmmword_1D72BAA60;
    v246 = 0;
    v249 = 0;
    v128 = swift_allocObject();
    *(v128 + 16) = v243;
    *(v128 + 32) = v249;
    v129 = v238;
    v130 = v214;
    *(v128 + 40) = v238;
    *(v128 + 48) = v130;
    MEMORY[0x1EEE9AC00](v128, v131);
    *(&v213 - 4) = sub_1D5B4AA6C;
    *(&v213 - 3) = 0;
    v211 = sub_1D6984578;
    v212 = v132;
    v249 = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = v243;
    *(v133 + 32) = v249;
    *(v133 + 40) = v129;
    *(v133 + 48) = v130;
    swift_retain_n();
    v134 = sub_1D72647CC();
    v249 = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    *(v135 + 24) = v243;
    *(v135 + 40) = v249;
    v136 = *(v213 + 3);
    v137 = *(v213 + 4);
    v138 = __swift_project_boxed_opaque_existential_1(v213, v136);
    MEMORY[0x1EEE9AC00](v138, v139);
    MEMORY[0x1EEE9AC00](v140, v141);
    *(&v213 - 4) = sub_1D615B4A4;
    *(&v213 - 3) = (&v213 - 6);
    v142 = v229;
    v211 = sub_1D6984578;
    v212 = v133;
    sub_1D5D2BC70(v229, sub_1D615B49C, v143, sub_1D615B4A4, (&v213 - 6), v136, v137);

    sub_1D72647EC();
    sub_1D6983E84(v142, type metadata accessor for FormatVersionRequirement);

    LOBYTE(v126) = *(v237 + 64);
    v235(v228, v232, v236);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v247) = v126;
    v243 = xmmword_1D72BAA70;
    v245 = xmmword_1D72BAA70;
    v246 = 0;
    v249 = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v243;
    *(v144 + 32) = v249;
    v145 = v238;
    v146 = v214;
    *(v144 + 40) = v238;
    *(v144 + 48) = v146;
    MEMORY[0x1EEE9AC00](v144, v147);
    *(&v213 - 4) = sub_1D5B4AA6C;
    *(&v213 - 3) = 0;
    v211 = sub_1D6984578;
    v212 = v148;
    v249 = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v243;
    *(v149 + 32) = v249;
    *(v149 + 40) = v145;
    *(v149 + 48) = v146;
    swift_retain_n();
    v150 = sub_1D72647CC();
    v249 = 0;
    v151 = swift_allocObject();
    *(v151 + 16) = v150;
    *(v151 + 24) = v243;
    *(v151 + 40) = v249;
    v152 = *(v213 + 3);
    v153 = *(v213 + 4);
    v154 = __swift_project_boxed_opaque_existential_1(v213, v152);
    MEMORY[0x1EEE9AC00](v154, v155);
    MEMORY[0x1EEE9AC00](v156, v157);
    *(&v213 - 4) = sub_1D615B4A4;
    *(&v213 - 3) = (&v213 - 6);
    v158 = v228;
    v211 = sub_1D6984578;
    v212 = v149;
    sub_1D5D2BC70(v228, sub_1D615B49C, v159, sub_1D615B4A4, (&v213 - 6), v152, v153);

    sub_1D72647EC();
    sub_1D6983E84(v158, type metadata accessor for FormatVersionRequirement);

    v160 = v225[13];
    v235(v227, v232, v236);
    swift_storeEnumTagMultiPayload();
    v243 = xmmword_1D72BAA80;
    v245 = xmmword_1D72BAA80;
    v246 = 0;
    LOBYTE(v247) = 0;
    v161 = swift_allocObject();
    *(v161 + 16) = v243;
    *(v161 + 32) = v247;
    v162 = v214;
    *(v161 + 40) = v238;
    *(v161 + 48) = v162;
    v163 = v237 + v160;
    v164 = v224;
    sub_1D5CDE36C(v163, v224, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    if ((*(v223 + 48))(v164, 1, v226) == 1)
    {

      sub_1D6983E84(v227, type metadata accessor for FormatVersionRequirement);

      sub_1D6981AE4(v224, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }

    else
    {
      v165 = (*(v223 + 32))(v221, v224, v226);
      MEMORY[0x1EEE9AC00](v165, v166);
      *(&v213 - 4) = sub_1D5B4AA6C;
      *(&v213 - 3) = 0;
      v211 = sub_1D6984578;
      v212 = v161;
      LOBYTE(v247) = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v243;
      *(v167 + 32) = v247;
      *(v167 + 40) = v238;
      *(v167 + 48) = v214;
      swift_retain_n();
      v168 = sub_1D72647CC();
      LOBYTE(v247) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v168;
      *(v169 + 24) = v243;
      *(v169 + 40) = v247;
      v170 = *(v213 + 3);
      v171 = *(v213 + 4);
      v172 = __swift_project_boxed_opaque_existential_1(v213, v170);
      MEMORY[0x1EEE9AC00](v172, v173);
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v213 - 4) = sub_1D615B4A4;
      *(&v213 - 3) = (&v213 - 6);
      v211 = sub_1D6984578;
      v212 = v167;
      LOBYTE(v170) = sub_1D5D2F7A4(v227, sub_1D615B49C, v176, sub_1D615B4A4, (&v213 - 6), v170, v171);

      if (v170)
      {
        sub_1D5B4CDEC(&qword_1EDF45B18, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
        sub_1D72647EC();
      }

      (*(v223 + 8))(v221, v226);
      sub_1D6983E84(v227, type metadata accessor for FormatVersionRequirement);
    }

    v177 = *(v237 + v225[14]);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v178 = v236;
    v179 = __swift_project_value_buffer(v236, qword_1EDFFCD50);
    v235(v222, v179, v178);
    swift_storeEnumTagMultiPayload();
    if (v177 & 1) != 0 && (LOBYTE(v245) = 0, v180 = swift_allocObject(), v243 = xmmword_1D72BAA90, *(v180 + 16) = xmmword_1D72BAA90, *(v180 + 32) = v245, *(v180 + 40) = v238, *(v180 + 48) = v214, , v181 = sub_1D72647CC(), LOBYTE(v245) = 0, v182 = swift_allocObject(), *(v182 + 16) = v181, *(v182 + 24) = v243, *(v182 + 40) = v245, v183 = *(v213 + 3), v184 = *(v213 + 4), v185 = __swift_project_boxed_opaque_existential_1(v213, v183), MEMORY[0x1EEE9AC00](v185, v186), MEMORY[0x1EEE9AC00](v187, v188), *(&v213 - 4) = sub_1D5B4AA6C, *(&v213 - 3) = 0, v211 = sub_1D6984578, v212 = v180, LOBYTE(v183) = sub_1D5D2F7A4(v222, sub_1D615B49C, v189, sub_1D615B4A4, (&v213 - 6), v183, v184), , , (v183))
    {
      v245 = v243;
      v246 = 0;
      LOBYTE(v247) = 1;
      sub_1D72647EC();
      sub_1D6983E84(v222, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D6983E84(v222, type metadata accessor for FormatVersionRequirement);
    }

    if (qword_1EDF31EE0 != -1)
    {
      swift_once();
    }

    v190 = v236;
    v191 = __swift_project_value_buffer(v236, qword_1EDFFCD80);
    v192 = v215;
    v193 = v235;
    v235(v215, v191, v190);
    swift_storeEnumTagMultiPayload();
    sub_1D6983E84(v192, type metadata accessor for FormatVersionRequirement);
    v194 = v225[16];
    v193(v220, v191, v190);
    swift_storeEnumTagMultiPayload();
    v243 = xmmword_1D72BAAB0;
    v245 = xmmword_1D72BAAB0;
    v246 = 0;
    LOBYTE(v247) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = v243;
    *(v195 + 32) = v247;
    v196 = v214;
    *(v195 + 40) = v238;
    *(v195 + 48) = v196;
    v197 = v237 + v194;
    v198 = v217;
    sub_1D5CDE36C(v197, v217, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if ((*(v218 + 48))(v198, 1, v219) != 1)
    {
      v199 = (*(v218 + 32))(v216, v217, v219);
      MEMORY[0x1EEE9AC00](v199, v200);
      *(&v213 - 4) = sub_1D5B4AA6C;
      *(&v213 - 3) = 0;
      v211 = sub_1D6984578;
      v212 = v195;
      LOBYTE(v247) = 0;
      v201 = swift_allocObject();
      *(v201 + 16) = v243;
      *(v201 + 32) = v247;
      *(v201 + 40) = v238;
      *(v201 + 48) = v214;
      swift_retain_n();
      v202 = sub_1D72647CC();
      LOBYTE(v247) = 0;
      v203 = swift_allocObject();
      *(v203 + 16) = v202;
      *(v203 + 24) = v243;
      *(v203 + 40) = v247;
      v204 = *(v213 + 3);
      v205 = *(v213 + 4);
      v206 = __swift_project_boxed_opaque_existential_1(v213, v204);
      MEMORY[0x1EEE9AC00](v206, v207);
      MEMORY[0x1EEE9AC00](v208, v209);
      *(&v213 - 4) = sub_1D615B4A4;
      *(&v213 - 3) = (&v213 - 6);
      v211 = sub_1D6981C7C;
      v212 = v201;
      LOBYTE(v204) = sub_1D5D2F7A4(v220, sub_1D615B49C, v210, sub_1D615B4A4, (&v213 - 6), v204, v205);

      if (v204)
      {
        sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
        sub_1D72647EC();
      }

      (*(v218 + 8))(v216, v219);
      sub_1D6983E84(v220, type metadata accessor for FormatVersionRequirement);
      v86 = v244;
      return sub_1D6983E84(v86, sub_1D69820F4);
    }

    sub_1D6983E84(v220, type metadata accessor for FormatVersionRequirement);

    sub_1D6983E84(v244, sub_1D69820F4);
    return sub_1D6981AE4(v217, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  }
}

uint64_t sub_1D6967550(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v210 = &v205 - v6;
  v212 = sub_1D725B76C();
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212, v7);
  v209 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v213 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v208 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v214 = &v205 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v215 = &v205 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v216 = &v205 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v217 = &v205 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v218 = &v205 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v226 = &v205 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v205 - v35;
  sub_1D6982418(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v205 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D6982540(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EDF24E08, sub_1D6982540, &unk_1D7321584);
  v207 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v224 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v219 = v53;
  v222 = v55;
  v223 = v52;
  v221 = v54 + 16;
  (v55)(v36);
  v220 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v236 = v50;
  v237 = v51;
  v234 = 0uLL;
  v235 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v233 = 0;
  v59 = swift_allocObject();
  v230 = &v205;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v233;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v229 = &v205 - 6;
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v61;
  v233 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v233;
  v225 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D69824AC(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EDF02D18, sub_1D69824AC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v227 = v65;
  v228 = v64;
  v66 = sub_1D72647CC();
  v233 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v233;
  v68 = *(v38 + 36);
  v69 = v36;
  v232 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v229;
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = v77;
  v203 = sub_1D6984578;
  v204 = v62;
  v78 = v231;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v205 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v232;
    return sub_1D6983E84(v98, sub_1D6982418);
  }

  v206 = v70;
  v229 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v224[2];
  v81 = v224[3];
  v222(v226, v219, v223);
  swift_storeEnumTagMultiPayload();
  v236 = v80;
  v237 = v81;
  v231 = xmmword_1D728CF30;
  v234 = xmmword_1D728CF30;
  v235 = 0;
  v233 = 0;
  v82 = swift_allocObject();
  v230 = &v205;
  *(v82 + 16) = v231;
  *(v82 + 32) = v233;
  v83 = v225;
  v84 = v229;
  *(v82 + 40) = v225;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v86;
  v233 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v231;
  *(v87 + 32) = v233;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v233 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v231;
  *(v89 + 40) = v233;
  v90 = *(v206 + 3);
  v91 = *(v206 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v206, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v96 = v226;
  v203 = sub_1D6984578;
  v204 = v87;
  sub_1D5D2BC70(v226, sub_1D615B49C, v97, sub_1D615B4A4, (&v205 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v224[4];
  v101 = v224[5];
  v222(v218, v219, v223);
  swift_storeEnumTagMultiPayload();
  v236 = v100;
  v237 = v101;
  v231 = xmmword_1D7297410;
  v234 = xmmword_1D7297410;
  v235 = 0;
  v233 = 0;
  v102 = swift_allocObject();
  v230 = &v205;
  *(v102 + 16) = v231;
  *(v102 + 32) = v233;
  v103 = v225;
  v104 = v229;
  *(v102 + 40) = v225;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v106;
  v233 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v231;
  *(v107 + 32) = v233;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v233 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v231;
  *(v109 + 40) = v233;
  v110 = *(v206 + 3);
  v111 = *(v206 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v206, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v116 = v218;
  v203 = sub_1D6984578;
  v204 = v107;
  sub_1D5D2BC70(v218, sub_1D615B49C, v117, sub_1D615B4A4, (&v205 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v224[6];
  v119 = v224[7];
  v222(v217, v219, v223);
  swift_storeEnumTagMultiPayload();
  v236 = v118;
  v237 = v119;
  v231 = xmmword_1D72BAA60;
  v234 = xmmword_1D72BAA60;
  v235 = 0;
  v233 = 0;
  v120 = swift_allocObject();
  v230 = &v205;
  *(v120 + 16) = v231;
  *(v120 + 32) = v233;
  v121 = v225;
  v122 = v229;
  *(v120 + 40) = v225;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v124;
  v233 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v231;
  *(v125 + 32) = v233;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v233 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v231;
  *(v127 + 40) = v233;
  v128 = *(v206 + 3);
  v129 = *(v206 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v206, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v134 = v217;
  v203 = sub_1D6984578;
  v204 = v125;
  sub_1D5D2BC70(v217, sub_1D615B49C, v135, sub_1D615B4A4, (&v205 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v224 + 64);
  v136 = v216;
  v222(v216, v219, v223);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v236) = v118;
  v231 = xmmword_1D72BAA70;
  v234 = xmmword_1D72BAA70;
  v235 = 0;
  v233 = 0;
  v137 = swift_allocObject();
  v230 = &v205;
  *(v137 + 16) = v231;
  *(v137 + 32) = v233;
  v138 = v225;
  v139 = v229;
  *(v137 + 40) = v225;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v141;
  v233 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v231;
  *(v142 + 32) = v233;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v233 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v231;
  *(v144 + 40) = v233;
  v145 = *(v206 + 3);
  v146 = *(v206 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v206, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v203 = sub_1D6984578;
  v204 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v205 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v216, type metadata accessor for FormatVersionRequirement);

  v222(v215, v219, v223);
  swift_storeEnumTagMultiPayload();
  v152 = v224[9];
  v153 = *(v224 + 80);
  v231 = xmmword_1D72BAA80;
  v234 = xmmword_1D72BAA80;
  v235 = 0;
  LOBYTE(v236) = 0;
  v154 = swift_allocObject();
  v156 = v154;
  *(v154 + 16) = v231;
  *(v154 + 32) = v236;
  v157 = v229;
  *(v154 + 40) = v225;
  *(v154 + 48) = v157;
  if (v153)
  {
  }

  else
  {
    v236 = v152;
    MEMORY[0x1EEE9AC00](v154, v155);
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6984578;
    v204 = v156;
    v233 = 0;
    v171 = swift_allocObject();
    *(v171 + 16) = v231;
    *(v171 + 32) = v233;
    *(v171 + 40) = v225;
    *(v171 + 48) = v229;
    swift_retain_n();
    v172 = sub_1D72647CC();
    v233 = 0;
    v173 = swift_allocObject();
    *(v173 + 16) = v172;
    *(v173 + 24) = v231;
    *(v173 + 40) = v233;
    v174 = *(v206 + 3);
    v175 = *(v206 + 4);
    v176 = __swift_project_boxed_opaque_existential_1(v206, v174);
    MEMORY[0x1EEE9AC00](v176, v177);
    MEMORY[0x1EEE9AC00](v178, v179);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6984578;
    v204 = v171;
    LOBYTE(v174) = sub_1D5D2F7A4(v215, sub_1D615B49C, v180, sub_1D615B4A4, (&v205 - 6), v174, v175);

    if (v174)
    {
      sub_1D5B578C4();
      sub_1D72647EC();
    }
  }

  sub_1D6983E84(v215, type metadata accessor for FormatVersionRequirement);

  v158 = *(v224 + 81);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v159 = v223;
  v160 = __swift_project_value_buffer(v223, qword_1EDFFCD50);
  v222(v214, v160, v159);
  swift_storeEnumTagMultiPayload();
  if (v158 & 1) != 0 && (LOBYTE(v234) = 0, v161 = swift_allocObject(), v231 = xmmword_1D72BAA90, *(v161 + 16) = xmmword_1D72BAA90, *(v161 + 32) = v234, *(v161 + 40) = v225, *(v161 + 48) = v229, , v162 = sub_1D72647CC(), LOBYTE(v234) = 0, v163 = swift_allocObject(), *(v163 + 16) = v162, *(v163 + 24) = v231, *(v163 + 40) = v234, v164 = *(v206 + 3), v165 = *(v206 + 4), v166 = __swift_project_boxed_opaque_existential_1(v206, v164), MEMORY[0x1EEE9AC00](v166, v167), MEMORY[0x1EEE9AC00](v168, v169), *(&v205 - 4) = sub_1D5B4AA6C, *(&v205 - 3) = 0, v203 = sub_1D6984578, v204 = v161, v181 = sub_1D5D2F7A4(v214, sub_1D615B49C, v170, sub_1D615B4A4, (&v205 - 6), v164, v165), , , (v181))
  {
    v234 = v231;
    v235 = 0;
    LOBYTE(v236) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v182 = v223;
  v183 = __swift_project_value_buffer(v223, qword_1EDFFCD80);
  v184 = v208;
  v185 = v222;
  v222(v208, v183, v182);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v184, type metadata accessor for FormatVersionRequirement);
  v186 = *(v207 + 64);
  v185(v213, v183, v182);
  swift_storeEnumTagMultiPayload();
  v231 = xmmword_1D72BAAB0;
  v234 = xmmword_1D72BAAB0;
  v235 = 0;
  LOBYTE(v236) = 0;
  v187 = swift_allocObject();
  *(v187 + 16) = v231;
  *(v187 + 32) = v236;
  v188 = v229;
  *(v187 + 40) = v225;
  *(v187 + 48) = v188;
  v189 = v224 + v186;
  v190 = v210;
  sub_1D5CDE36C(v189, v210, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v211 + 48))(v190, 1, v212) != 1)
  {
    v191 = (*(v211 + 32))(v209, v210, v212);
    MEMORY[0x1EEE9AC00](v191, v192);
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6984578;
    v204 = v187;
    LOBYTE(v236) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v231;
    *(v193 + 32) = v236;
    *(v193 + 40) = v225;
    *(v193 + 48) = v229;
    swift_retain_n();
    v194 = sub_1D72647CC();
    LOBYTE(v236) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = v194;
    *(v195 + 24) = v231;
    *(v195 + 40) = v236;
    v196 = *(v206 + 3);
    v197 = *(v206 + 4);
    v198 = __swift_project_boxed_opaque_existential_1(v206, v196);
    MEMORY[0x1EEE9AC00](v198, v199);
    MEMORY[0x1EEE9AC00](v200, v201);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6981C7C;
    v204 = v193;
    LOBYTE(v196) = sub_1D5D2F7A4(v213, sub_1D615B49C, v202, sub_1D615B4A4, (&v205 - 6), v196, v197);

    if (v196)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v211 + 8))(v209, v212);
    sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
    v98 = v232;
    return sub_1D6983E84(v98, sub_1D6982418);
  }

  sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v232, sub_1D6982418);
  return sub_1D6981AE4(v210, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D696941C(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v210 = &v205 - v6;
  v212 = sub_1D725B76C();
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212, v7);
  v209 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v213 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v208 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v214 = &v205 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v215 = &v205 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v216 = &v205 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v217 = &v205 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v218 = &v205 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v226 = &v205 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v205 - v35;
  sub_1D6982814(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v205 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D698293C(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EDF0C3F0, sub_1D698293C, &unk_1D7321584);
  v207 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v224 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v219 = v53;
  v222 = v55;
  v223 = v52;
  v221 = v54 + 16;
  (v55)(v36);
  v220 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v235 = v50;
  v236 = v51;
  v233 = 0uLL;
  v234 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v237 = 0;
  v59 = swift_allocObject();
  v230 = &v205;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v237;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v229 = &v205 - 6;
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v61;
  v237 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v237;
  v225 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D69828A8(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EDF02CC8, sub_1D69828A8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v227 = v65;
  v228 = v64;
  v66 = sub_1D72647CC();
  v237 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v237;
  v68 = *(v38 + 36);
  v69 = v36;
  v232 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v229;
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = v77;
  v203 = sub_1D6984578;
  v204 = v62;
  v78 = v231;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v205 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v232;
    return sub_1D6983E84(v98, sub_1D6982814);
  }

  v206 = v70;
  v229 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v224[2];
  v81 = v224[3];
  v222(v226, v219, v223);
  swift_storeEnumTagMultiPayload();
  v235 = v80;
  v236 = v81;
  v231 = xmmword_1D728CF30;
  v233 = xmmword_1D728CF30;
  v234 = 0;
  v237 = 0;
  v82 = swift_allocObject();
  v230 = &v205;
  *(v82 + 16) = v231;
  *(v82 + 32) = v237;
  v83 = v225;
  v84 = v229;
  *(v82 + 40) = v225;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v86;
  v237 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v231;
  *(v87 + 32) = v237;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v237 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v231;
  *(v89 + 40) = v237;
  v90 = *(v206 + 3);
  v91 = *(v206 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v206, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v96 = v226;
  v203 = sub_1D6984578;
  v204 = v87;
  sub_1D5D2BC70(v226, sub_1D615B49C, v97, sub_1D615B4A4, (&v205 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v224[4];
  v101 = v224[5];
  v222(v218, v219, v223);
  swift_storeEnumTagMultiPayload();
  v235 = v100;
  v236 = v101;
  v231 = xmmword_1D7297410;
  v233 = xmmword_1D7297410;
  v234 = 0;
  v237 = 0;
  v102 = swift_allocObject();
  v230 = &v205;
  *(v102 + 16) = v231;
  *(v102 + 32) = v237;
  v103 = v225;
  v104 = v229;
  *(v102 + 40) = v225;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v106;
  v237 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v231;
  *(v107 + 32) = v237;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v237 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v231;
  *(v109 + 40) = v237;
  v110 = *(v206 + 3);
  v111 = *(v206 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v206, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v116 = v218;
  v203 = sub_1D6984578;
  v204 = v107;
  sub_1D5D2BC70(v218, sub_1D615B49C, v117, sub_1D615B4A4, (&v205 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v224[6];
  v119 = v224[7];
  v222(v217, v219, v223);
  swift_storeEnumTagMultiPayload();
  v235 = v118;
  v236 = v119;
  v231 = xmmword_1D72BAA60;
  v233 = xmmword_1D72BAA60;
  v234 = 0;
  v237 = 0;
  v120 = swift_allocObject();
  v230 = &v205;
  *(v120 + 16) = v231;
  *(v120 + 32) = v237;
  v121 = v225;
  v122 = v229;
  *(v120 + 40) = v225;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v124;
  v237 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v231;
  *(v125 + 32) = v237;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v237 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v231;
  *(v127 + 40) = v237;
  v128 = *(v206 + 3);
  v129 = *(v206 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v206, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v134 = v217;
  v203 = sub_1D6984578;
  v204 = v125;
  sub_1D5D2BC70(v217, sub_1D615B49C, v135, sub_1D615B4A4, (&v205 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v224 + 64);
  v136 = v216;
  v222(v216, v219, v223);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v235) = v118;
  v231 = xmmword_1D72BAA70;
  v233 = xmmword_1D72BAA70;
  v234 = 0;
  v237 = 0;
  v137 = swift_allocObject();
  v230 = &v205;
  *(v137 + 16) = v231;
  *(v137 + 32) = v237;
  v138 = v225;
  v139 = v229;
  *(v137 + 40) = v225;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6984578;
  v204 = v141;
  v237 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v231;
  *(v142 + 32) = v237;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v237 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v231;
  *(v144 + 40) = v237;
  v145 = *(v206 + 3);
  v146 = *(v206 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v206, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = (&v205 - 6);
  v203 = sub_1D6984578;
  v204 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v205 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v216, type metadata accessor for FormatVersionRequirement);

  v222(v215, v219, v223);
  swift_storeEnumTagMultiPayload();
  v152 = v224[9];
  v153 = *(v224 + 80);
  v231 = xmmword_1D72BAA80;
  v233 = xmmword_1D72BAA80;
  v234 = 0;
  LOBYTE(v235) = 0;
  v154 = swift_allocObject();
  v156 = v154;
  *(v154 + 16) = v231;
  *(v154 + 32) = v235;
  v157 = v229;
  *(v154 + 40) = v225;
  *(v154 + 48) = v157;
  if (v153)
  {
  }

  else
  {
    v235 = v152;
    MEMORY[0x1EEE9AC00](v154, v155);
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6984578;
    v204 = v156;
    v237 = 0;
    v171 = swift_allocObject();
    *(v171 + 16) = v231;
    *(v171 + 32) = v237;
    *(v171 + 40) = v225;
    *(v171 + 48) = v229;
    swift_retain_n();
    v172 = sub_1D72647CC();
    v237 = 0;
    v173 = swift_allocObject();
    *(v173 + 16) = v172;
    *(v173 + 24) = v231;
    *(v173 + 40) = v237;
    v174 = *(v206 + 3);
    v175 = *(v206 + 4);
    v176 = __swift_project_boxed_opaque_existential_1(v206, v174);
    MEMORY[0x1EEE9AC00](v176, v177);
    MEMORY[0x1EEE9AC00](v178, v179);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6984578;
    v204 = v171;
    LOBYTE(v174) = sub_1D5D2F7A4(v215, sub_1D615B49C, v180, sub_1D615B4A4, (&v205 - 6), v174, v175);

    if (v174)
    {
      sub_1D72647EC();
    }
  }

  sub_1D6983E84(v215, type metadata accessor for FormatVersionRequirement);

  v158 = *(v224 + 81);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v159 = v223;
  v160 = __swift_project_value_buffer(v223, qword_1EDFFCD50);
  v222(v214, v160, v159);
  swift_storeEnumTagMultiPayload();
  if (v158 & 1) != 0 && (LOBYTE(v233) = 0, v161 = swift_allocObject(), v231 = xmmword_1D72BAA90, *(v161 + 16) = xmmword_1D72BAA90, *(v161 + 32) = v233, *(v161 + 40) = v225, *(v161 + 48) = v229, , v162 = sub_1D72647CC(), LOBYTE(v233) = 0, v163 = swift_allocObject(), *(v163 + 16) = v162, *(v163 + 24) = v231, *(v163 + 40) = v233, v164 = *(v206 + 3), v165 = *(v206 + 4), v166 = __swift_project_boxed_opaque_existential_1(v206, v164), MEMORY[0x1EEE9AC00](v166, v167), MEMORY[0x1EEE9AC00](v168, v169), *(&v205 - 4) = sub_1D5B4AA6C, *(&v205 - 3) = 0, v203 = sub_1D6984578, v204 = v161, v181 = sub_1D5D2F7A4(v214, sub_1D615B49C, v170, sub_1D615B4A4, (&v205 - 6), v164, v165), , , (v181))
  {
    v233 = v231;
    v234 = 0;
    LOBYTE(v235) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v182 = v223;
  v183 = __swift_project_value_buffer(v223, qword_1EDFFCD80);
  v184 = v208;
  v185 = v222;
  v222(v208, v183, v182);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v184, type metadata accessor for FormatVersionRequirement);
  v186 = *(v207 + 64);
  v185(v213, v183, v182);
  swift_storeEnumTagMultiPayload();
  v231 = xmmword_1D72BAAB0;
  v233 = xmmword_1D72BAAB0;
  v234 = 0;
  LOBYTE(v235) = 0;
  v187 = swift_allocObject();
  *(v187 + 16) = v231;
  *(v187 + 32) = v235;
  v188 = v229;
  *(v187 + 40) = v225;
  *(v187 + 48) = v188;
  v189 = v224 + v186;
  v190 = v210;
  sub_1D5CDE36C(v189, v210, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v211 + 48))(v190, 1, v212) != 1)
  {
    v191 = (*(v211 + 32))(v209, v210, v212);
    MEMORY[0x1EEE9AC00](v191, v192);
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6984578;
    v204 = v187;
    LOBYTE(v235) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v231;
    *(v193 + 32) = v235;
    *(v193 + 40) = v225;
    *(v193 + 48) = v229;
    swift_retain_n();
    v194 = sub_1D72647CC();
    LOBYTE(v235) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = v194;
    *(v195 + 24) = v231;
    *(v195 + 40) = v235;
    v196 = *(v206 + 3);
    v197 = *(v206 + 4);
    v198 = __swift_project_boxed_opaque_existential_1(v206, v196);
    MEMORY[0x1EEE9AC00](v198, v199);
    MEMORY[0x1EEE9AC00](v200, v201);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6981C7C;
    v204 = v193;
    LOBYTE(v196) = sub_1D5D2F7A4(v213, sub_1D615B49C, v202, sub_1D615B4A4, (&v205 - 6), v196, v197);

    if (v196)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v211 + 8))(v209, v212);
    sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
    v98 = v232;
    return sub_1D6983E84(v98, sub_1D6982814);
  }

  sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v232, sub_1D6982814);
  return sub_1D6981AE4(v210, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D696B2D4(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v218 = &v214 - v6;
  v220 = sub_1D725B76C();
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220, v7);
  v217 = &v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v221 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v216 = &v214 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v222 = &v214 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v223 = &v214 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v224 = &v214 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v225 = &v214 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v226 = &v214 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v234 = &v214 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v214 - v35;
  sub_1D6982BE0(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v214 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D5CAD30C(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EDF24DD8, sub_1D5CAD30C, &unk_1D7321584);
  v215 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v232 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v227 = v53;
  v230 = v55;
  v231 = v52;
  v229 = v54 + 16;
  (v55)(v36);
  v228 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v243 = v50;
  v244 = v51;
  v241 = 0uLL;
  v242 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v245 = 0;
  v59 = swift_allocObject();
  *&v238 = &v214;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v245;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v237 = &v214 - 6;
  *(&v214 - 4) = sub_1D5B4AA6C;
  *(&v214 - 3) = 0;
  v212 = sub_1D6984578;
  v213 = v61;
  v245 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v245;
  v233 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D6982C74(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EDF02CE8, sub_1D6982C74, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v235 = v65;
  v236 = v64;
  v66 = sub_1D72647CC();
  v245 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v245;
  v68 = *(v38 + 36);
  v69 = v36;
  v240 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v237;
  *(&v214 - 4) = sub_1D615B4A4;
  *(&v214 - 3) = v77;
  v212 = sub_1D6984578;
  v213 = v62;
  v78 = v239;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v214 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v240;
    return sub_1D6983E84(v98, sub_1D6982BE0);
  }

  v214 = v70;
  v237 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v232[2];
  v81 = v232[3];
  v230(v234, v227, v231);
  swift_storeEnumTagMultiPayload();
  v243 = v80;
  v244 = v81;
  v239 = xmmword_1D728CF30;
  v241 = xmmword_1D728CF30;
  v242 = 0;
  v245 = 0;
  v82 = swift_allocObject();
  *&v238 = &v214;
  *(v82 + 16) = v239;
  *(v82 + 32) = v245;
  v83 = v233;
  v84 = v237;
  *(v82 + 40) = v233;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v214 - 4) = sub_1D5B4AA6C;
  *(&v214 - 3) = 0;
  v212 = sub_1D6984578;
  v213 = v86;
  v245 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v239;
  *(v87 + 32) = v245;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v245 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v239;
  *(v89 + 40) = v245;
  v90 = *(v214 + 3);
  v91 = *(v214 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v214, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v214 - 4) = sub_1D615B4A4;
  *(&v214 - 3) = (&v214 - 6);
  v96 = v234;
  v212 = sub_1D6984578;
  v213 = v87;
  sub_1D5D2BC70(v234, sub_1D615B49C, v97, sub_1D615B4A4, (&v214 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v232[4];
  v101 = v232[5];
  v230(v226, v227, v231);
  swift_storeEnumTagMultiPayload();
  v243 = v100;
  v244 = v101;
  v239 = xmmword_1D7297410;
  v241 = xmmword_1D7297410;
  v242 = 0;
  v245 = 0;
  v102 = swift_allocObject();
  *&v238 = &v214;
  *(v102 + 16) = v239;
  *(v102 + 32) = v245;
  v103 = v233;
  v104 = v237;
  *(v102 + 40) = v233;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v214 - 4) = sub_1D5B4AA6C;
  *(&v214 - 3) = 0;
  v212 = sub_1D6984578;
  v213 = v106;
  v245 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v239;
  *(v107 + 32) = v245;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v245 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v239;
  *(v109 + 40) = v245;
  v110 = *(v214 + 3);
  v111 = *(v214 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v214, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v214 - 4) = sub_1D615B4A4;
  *(&v214 - 3) = (&v214 - 6);
  v116 = v226;
  v212 = sub_1D6984578;
  v213 = v107;
  sub_1D5D2BC70(v226, sub_1D615B49C, v117, sub_1D615B4A4, (&v214 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v232[6];
  v119 = v232[7];
  v230(v225, v227, v231);
  swift_storeEnumTagMultiPayload();
  v243 = v118;
  v244 = v119;
  v239 = xmmword_1D72BAA60;
  v241 = xmmword_1D72BAA60;
  v242 = 0;
  v245 = 0;
  v120 = swift_allocObject();
  *&v238 = &v214;
  *(v120 + 16) = v239;
  *(v120 + 32) = v245;
  v121 = v233;
  v122 = v237;
  *(v120 + 40) = v233;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v214 - 4) = sub_1D5B4AA6C;
  *(&v214 - 3) = 0;
  v212 = sub_1D6984578;
  v213 = v124;
  v245 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v239;
  *(v125 + 32) = v245;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v245 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v239;
  *(v127 + 40) = v245;
  v128 = *(v214 + 3);
  v129 = *(v214 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v214, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v214 - 4) = sub_1D615B4A4;
  *(&v214 - 3) = (&v214 - 6);
  v134 = v225;
  v212 = sub_1D6984578;
  v213 = v125;
  sub_1D5D2BC70(v225, sub_1D615B49C, v135, sub_1D615B4A4, (&v214 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v122) = *(v232 + 64);
  v230(v224, v227, v231);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v243) = v122;
  v239 = xmmword_1D72BAA70;
  v241 = xmmword_1D72BAA70;
  v242 = 0;
  v245 = 0;
  v136 = swift_allocObject();
  *&v238 = &v214;
  *(v136 + 16) = v239;
  *(v136 + 32) = v245;
  v137 = v233;
  v138 = v237;
  *(v136 + 40) = v233;
  *(v136 + 48) = v138;
  MEMORY[0x1EEE9AC00](v136, v139);
  *(&v214 - 4) = sub_1D5B4AA6C;
  *(&v214 - 3) = 0;
  v212 = sub_1D6984578;
  v213 = v140;
  v245 = 0;
  v141 = swift_allocObject();
  *(v141 + 16) = v239;
  *(v141 + 32) = v245;
  *(v141 + 40) = v137;
  *(v141 + 48) = v138;
  swift_retain_n();
  v142 = sub_1D72647CC();
  v245 = 0;
  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  *(v143 + 24) = v239;
  *(v143 + 40) = v245;
  v144 = *(v214 + 3);
  v145 = *(v214 + 4);
  v146 = __swift_project_boxed_opaque_existential_1(v214, v144);
  MEMORY[0x1EEE9AC00](v146, v147);
  MEMORY[0x1EEE9AC00](v148, v149);
  *(&v214 - 4) = sub_1D615B4A4;
  *(&v214 - 3) = (&v214 - 6);
  v212 = sub_1D6984578;
  v213 = v141;
  sub_1D5D2BC70(v224, sub_1D615B49C, v150, sub_1D615B4A4, (&v214 - 6), v144, v145);

  sub_1D72647EC();
  *&v239 = 0;
  sub_1D6983E84(v224, type metadata accessor for FormatVersionRequirement);

  v230(v223, v227, v231);
  swift_storeEnumTagMultiPayload();
  v151 = v232[9];
  v152 = v232[10];
  v238 = xmmword_1D72BAA80;
  v241 = xmmword_1D72BAA80;
  v242 = 0;
  LOBYTE(v243) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v238;
  *(v153 + 32) = v243;
  v156 = v237;
  *(v153 + 40) = v233;
  *(v153 + 48) = v156;
  if (v152)
  {
    v243 = v151;
    v244 = v152;
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v214 - 4) = sub_1D5B4AA6C;
    *(&v214 - 3) = 0;
    v212 = sub_1D6984578;
    v213 = v155;
    v245 = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v238;
    *(v157 + 32) = v245;
    *(v157 + 40) = v233;
    *(v157 + 48) = v237;
    swift_retain_n();

    v158 = sub_1D72647CC();
    v245 = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v238;
    *(v159 + 40) = v245;
    v160 = *(v214 + 3);
    v161 = *(v214 + 4);
    v162 = __swift_project_boxed_opaque_existential_1(v214, v160);
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v214 - 4) = sub_1D615B4A4;
    *(&v214 - 3) = (&v214 - 6);
    v212 = sub_1D6984578;
    v213 = v157;
    v166 = v239;
    v168 = sub_1D5D2F7A4(v223, sub_1D615B49C, v167, sub_1D615B4A4, (&v214 - 6), v160, v161);
    *&v239 = v166;
    if (v166)
    {

LABEL_10:
      sub_1D6983E84(v223, type metadata accessor for FormatVersionRequirement);
      return sub_1D6983E84(v240, sub_1D6982BE0);
    }

    v169 = v168;

    if (v169)
    {
      v170 = v239;
      sub_1D72647EC();
      *&v239 = v170;
      if (v170)
      {

        goto LABEL_10;
      }
    }

    sub_1D6983E84(v223, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D6983E84(v223, type metadata accessor for FormatVersionRequirement);
  }

  v171 = *(v232 + 88);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v172 = v231;
  v173 = __swift_project_value_buffer(v231, qword_1EDFFCD50);
  v230(v222, v173, v172);
  swift_storeEnumTagMultiPayload();
  if ((v171 & 1) == 0)
  {
    goto LABEL_25;
  }

  LOBYTE(v241) = 0;
  v174 = swift_allocObject();
  v238 = xmmword_1D72BAA90;
  *(v174 + 16) = xmmword_1D72BAA90;
  *(v174 + 32) = v241;
  *(v174 + 40) = v233;
  *(v174 + 48) = v237;

  v175 = sub_1D72647CC();
  LOBYTE(v241) = 0;
  v176 = swift_allocObject();
  *(v176 + 16) = v175;
  *(v176 + 24) = v238;
  *(v176 + 40) = v241;
  v177 = *(v214 + 3);
  v178 = *(v214 + 4);
  v179 = __swift_project_boxed_opaque_existential_1(v214, v177);
  MEMORY[0x1EEE9AC00](v179, v180);
  MEMORY[0x1EEE9AC00](v181, v182);
  *(&v214 - 4) = sub_1D5B4AA6C;
  *(&v214 - 3) = 0;
  v212 = sub_1D6984578;
  v213 = v174;
  v183 = v239;
  v185 = sub_1D5D2F7A4(v222, sub_1D615B49C, v184, sub_1D615B4A4, (&v214 - 6), v177, v178);
  *&v239 = v183;
  if (v183)
  {
    sub_1D6983E84(v222, type metadata accessor for FormatVersionRequirement);

    return sub_1D6983E84(v240, sub_1D6982BE0);
  }

  v186 = v185;

  if (v186)
  {
    v241 = v238;
    v242 = 0;
    LOBYTE(v243) = 1;
    v187 = v239;
    sub_1D72647EC();
    sub_1D6983E84(v222, type metadata accessor for FormatVersionRequirement);
    *&v239 = v187;
    if (v187)
    {
      return sub_1D6983E84(v240, sub_1D6982BE0);
    }
  }

  else
  {
LABEL_25:
    sub_1D6983E84(v222, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v188 = v231;
  v189 = __swift_project_value_buffer(v231, qword_1EDFFCD80);
  v190 = v216;
  v191 = v230;
  v230(v216, v189, v188);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v190, type metadata accessor for FormatVersionRequirement);
  v192 = *(v215 + 64);
  v191(v221, v189, v188);
  swift_storeEnumTagMultiPayload();
  v238 = xmmword_1D72BAAB0;
  v241 = xmmword_1D72BAAB0;
  v242 = 0;
  LOBYTE(v243) = 0;
  v193 = swift_allocObject();
  *(v193 + 16) = v238;
  *(v193 + 32) = v243;
  v194 = v237;
  *(v193 + 40) = v233;
  *(v193 + 48) = v194;
  v195 = v232 + v192;
  v196 = v218;
  sub_1D5CDE36C(v195, v218, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v219 + 48))(v196, 1, v220) != 1)
  {
    v197 = (*(v219 + 32))(v217, v218, v220);
    MEMORY[0x1EEE9AC00](v197, v198);
    *(&v214 - 4) = sub_1D5B4AA6C;
    *(&v214 - 3) = 0;
    v212 = sub_1D6984578;
    v213 = v193;
    LOBYTE(v243) = 0;
    v199 = swift_allocObject();
    *(v199 + 16) = v238;
    *(v199 + 32) = v243;
    *(v199 + 40) = v233;
    *(v199 + 48) = v237;
    swift_retain_n();
    v200 = sub_1D72647CC();
    LOBYTE(v243) = 0;
    v201 = swift_allocObject();
    *(v201 + 16) = v200;
    *(v201 + 24) = v238;
    *(v201 + 40) = v243;
    v202 = *(v214 + 3);
    v203 = *(v214 + 4);
    v204 = __swift_project_boxed_opaque_existential_1(v214, v202);
    MEMORY[0x1EEE9AC00](v204, v205);
    MEMORY[0x1EEE9AC00](v206, v207);
    *(&v214 - 4) = sub_1D615B4A4;
    *(&v214 - 3) = (&v214 - 6);
    v212 = sub_1D6981C7C;
    v213 = v199;
    v208 = v239;
    v210 = sub_1D5D2F7A4(v221, sub_1D615B49C, v209, sub_1D615B4A4, (&v214 - 6), v202, v203);
    if (v208)
    {
    }

    else
    {
      v211 = v210;

      if (v211)
      {
        sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
        sub_1D72647EC();
      }
    }

    (*(v219 + 8))(v217, v220);
    sub_1D6983E84(v221, type metadata accessor for FormatVersionRequirement);
    v98 = v240;
    return sub_1D6983E84(v98, sub_1D6982BE0);
  }

  sub_1D6983E84(v221, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v240, sub_1D6982BE0);
  return sub_1D6981AE4(v218, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D696D1F0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v217 = &v213 - v7;
  v219 = sub_1D725B76C();
  v218 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v8);
  v216 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BE9C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v4);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v224 = &v213 - v12;
  v226 = sub_1D72585BC();
  v223 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v13);
  v221 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v220 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v215 = &v213 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v222 = &v213 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v227 = &v213 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v228 = &v213 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v229 = &v213 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v230 = &v213 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v231 = &v213 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v213 - v41;
  sub_1D6982D6C(0);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1D5B5796C(0);
  v51 = v50;
  sub_1D5CAF010(0);
  v53 = v52;
  v54 = sub_1D5B4CDEC(&qword_1EDF24E18, sub_1D5CAF010, &unk_1D7321584);
  v225 = v51;
  sub_1D5D2EE70(v51, v53, v55, v48, v51, v53, &type metadata for FormatVersions.JazzkonC, v49, v47, v54, &off_1F51F6C78);
  v56 = *v2;
  v57 = v2[1];
  v237 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v58 = sub_1D725BD1C();
  v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
  v60 = *(v58 - 8);
  v61 = *(v60 + 16);
  v232 = v59;
  v235 = v61;
  v236 = v58;
  v234 = v60 + 16;
  (v61)(v42);
  v233 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v247 = v56;
  v248 = v57;
  v245 = 0uLL;
  v246 = 0;
  v62 = &v47[*(v44 + 44)];
  v241 = v42;
  v63 = *v62;
  v64 = *(v62 + 1);
  v249 = 0;
  v65 = swift_allocObject();
  v242 = &v213;
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  *(v65 + 32) = v249;
  *(v65 + 40) = v63;
  *(v65 + 48) = v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v213 - 4) = sub_1D5B4AA6C;
  *(&v213 - 3) = 0;
  v211 = sub_1D6984578;
  v212 = v67;
  v249 = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = v249;
  v238 = v63;
  *(v68 + 40) = v63;
  *(v68 + 48) = v64;
  sub_1D6982E00(0);
  v70 = v69;
  v71 = sub_1D5B4CDEC(&qword_1EDF02D28, sub_1D6982E00, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v239 = v70;
  v240 = v71;
  v72 = sub_1D72647CC();
  v249 = 0;
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 32) = 0;
  *(v73 + 16) = v72;
  *(v73 + 40) = v249;
  v74 = *(v44 + 36);
  v244 = v47;
  v75 = &v47[v74];
  v77 = *(v75 + 3);
  v76 = *(v75 + 4);
  v78 = __swift_project_boxed_opaque_existential_1(v75, v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v213 - 4) = sub_1D615B4A4;
  *(&v213 - 3) = (&v213 - 6);
  v211 = sub_1D6984578;
  v212 = v68;
  v82 = v241;
  v83 = v243;
  sub_1D5D2BC70(v241, sub_1D615B49C, v84, sub_1D615B4A4, (&v213 - 6), v77, v76);
  if (v83)
  {
    v85 = v244;
    sub_1D6983E84(v82, type metadata accessor for FormatVersionRequirement);

    v86 = v85;
    return sub_1D6983E84(v86, sub_1D6982D6C);
  }

  v213 = v75;
  v214 = v64;

  sub_1D72647EC();
  sub_1D6983E84(v82, type metadata accessor for FormatVersionRequirement);

  v88 = v237[2];
  v89 = v237[3];
  v241 = 0;
  v90 = v231;
  v235(v231, v232, v236);
  swift_storeEnumTagMultiPayload();
  v247 = v88;
  v248 = v89;
  v243 = xmmword_1D728CF30;
  v245 = xmmword_1D728CF30;
  v246 = 0;
  v249 = 0;
  v91 = swift_allocObject();
  v242 = &v213;
  *(v91 + 16) = v243;
  *(v91 + 32) = v249;
  v92 = v238;
  v93 = v214;
  *(v91 + 40) = v238;
  *(v91 + 48) = v93;
  MEMORY[0x1EEE9AC00](v91, v94);
  *(&v213 - 4) = sub_1D5B4AA6C;
  *(&v213 - 3) = 0;
  v211 = sub_1D6984578;
  v212 = v95;
  v249 = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v243;
  *(v96 + 32) = v249;
  *(v96 + 40) = v92;
  *(v96 + 48) = v93;
  swift_retain_n();
  v97 = sub_1D72647CC();
  v249 = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v243;
  *(v98 + 40) = v249;
  v99 = *(v213 + 3);
  v100 = *(v213 + 4);
  v101 = __swift_project_boxed_opaque_existential_1(v213, v99);
  MEMORY[0x1EEE9AC00](v101, v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  *(&v213 - 4) = sub_1D615B4A4;
  *(&v213 - 3) = (&v213 - 6);
  v211 = sub_1D6984578;
  v212 = v96;
  v105 = v241;
  sub_1D5D2BC70(v90, sub_1D615B49C, v106, sub_1D615B4A4, (&v213 - 6), v99, v100);
  if (v105)
  {
    v107 = v244;
    sub_1D6983E84(v90, type metadata accessor for FormatVersionRequirement);

    return sub_1D6983E84(v107, sub_1D6982D6C);
  }

  else
  {

    sub_1D72647EC();
    sub_1D6983E84(v90, type metadata accessor for FormatVersionRequirement);

    v108 = v237[4];
    v109 = v237[5];
    v110 = v230;
    v235(v230, v232, v236);
    swift_storeEnumTagMultiPayload();
    v247 = v108;
    v248 = v109;
    v243 = xmmword_1D7297410;
    v245 = xmmword_1D7297410;
    v246 = 0;
    v249 = 0;
    v111 = swift_allocObject();
    v242 = &v213;
    *(v111 + 16) = v243;
    *(v111 + 32) = v249;
    v112 = v238;
    v113 = v214;
    *(v111 + 40) = v238;
    *(v111 + 48) = v113;
    MEMORY[0x1EEE9AC00](v111, v114);
    *(&v213 - 4) = sub_1D5B4AA6C;
    *(&v213 - 3) = 0;
    v211 = sub_1D6984578;
    v212 = v115;
    v249 = 0;
    v116 = swift_allocObject();
    *(v116 + 16) = v243;
    *(v116 + 32) = v249;
    *(v116 + 40) = v112;
    *(v116 + 48) = v113;
    swift_retain_n();
    v117 = sub_1D72647CC();
    v249 = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v117;
    *(v118 + 24) = v243;
    *(v118 + 40) = v249;
    v119 = *(v213 + 3);
    v120 = *(v213 + 4);
    v121 = __swift_project_boxed_opaque_existential_1(v213, v119);
    MEMORY[0x1EEE9AC00](v121, v122);
    MEMORY[0x1EEE9AC00](v123, v124);
    *(&v213 - 4) = sub_1D615B4A4;
    *(&v213 - 3) = (&v213 - 6);
    v211 = sub_1D6984578;
    v212 = v116;
    sub_1D5D2BC70(v110, sub_1D615B49C, v125, sub_1D615B4A4, (&v213 - 6), v119, v120);

    sub_1D72647EC();
    sub_1D6983E84(v110, type metadata accessor for FormatVersionRequirement);

    v126 = v237[6];
    v127 = v237[7];
    v235(v229, v232, v236);
    swift_storeEnumTagMultiPayload();
    v247 = v126;
    v248 = v127;
    v243 = xmmword_1D72BAA60;
    v245 = xmmword_1D72BAA60;
    v246 = 0;
    v249 = 0;
    v128 = swift_allocObject();
    *(v128 + 16) = v243;
    *(v128 + 32) = v249;
    v129 = v238;
    v130 = v214;
    *(v128 + 40) = v238;
    *(v128 + 48) = v130;
    MEMORY[0x1EEE9AC00](v128, v131);
    *(&v213 - 4) = sub_1D5B4AA6C;
    *(&v213 - 3) = 0;
    v211 = sub_1D6984578;
    v212 = v132;
    v249 = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = v243;
    *(v133 + 32) = v249;
    *(v133 + 40) = v129;
    *(v133 + 48) = v130;
    swift_retain_n();
    v134 = sub_1D72647CC();
    v249 = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    *(v135 + 24) = v243;
    *(v135 + 40) = v249;
    v136 = *(v213 + 3);
    v137 = *(v213 + 4);
    v138 = __swift_project_boxed_opaque_existential_1(v213, v136);
    MEMORY[0x1EEE9AC00](v138, v139);
    MEMORY[0x1EEE9AC00](v140, v141);
    *(&v213 - 4) = sub_1D615B4A4;
    *(&v213 - 3) = (&v213 - 6);
    v142 = v229;
    v211 = sub_1D6984578;
    v212 = v133;
    sub_1D5D2BC70(v229, sub_1D615B49C, v143, sub_1D615B4A4, (&v213 - 6), v136, v137);

    sub_1D72647EC();
    sub_1D6983E84(v142, type metadata accessor for FormatVersionRequirement);

    LOBYTE(v126) = *(v237 + 64);
    v235(v228, v232, v236);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v247) = v126;
    v243 = xmmword_1D72BAA70;
    v245 = xmmword_1D72BAA70;
    v246 = 0;
    v249 = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v243;
    *(v144 + 32) = v249;
    v145 = v238;
    v146 = v214;
    *(v144 + 40) = v238;
    *(v144 + 48) = v146;
    MEMORY[0x1EEE9AC00](v144, v147);
    *(&v213 - 4) = sub_1D5B4AA6C;
    *(&v213 - 3) = 0;
    v211 = sub_1D6984578;
    v212 = v148;
    v249 = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v243;
    *(v149 + 32) = v249;
    *(v149 + 40) = v145;
    *(v149 + 48) = v146;
    swift_retain_n();
    v150 = sub_1D72647CC();
    v249 = 0;
    v151 = swift_allocObject();
    *(v151 + 16) = v150;
    *(v151 + 24) = v243;
    *(v151 + 40) = v249;
    v152 = *(v213 + 3);
    v153 = *(v213 + 4);
    v154 = __swift_project_boxed_opaque_existential_1(v213, v152);
    MEMORY[0x1EEE9AC00](v154, v155);
    MEMORY[0x1EEE9AC00](v156, v157);
    *(&v213 - 4) = sub_1D615B4A4;
    *(&v213 - 3) = (&v213 - 6);
    v158 = v228;
    v211 = sub_1D6984578;
    v212 = v149;
    sub_1D5D2BC70(v228, sub_1D615B49C, v159, sub_1D615B4A4, (&v213 - 6), v152, v153);

    sub_1D72647EC();
    sub_1D6983E84(v158, type metadata accessor for FormatVersionRequirement);

    v160 = v225[13];
    v235(v227, v232, v236);
    swift_storeEnumTagMultiPayload();
    v243 = xmmword_1D72BAA80;
    v245 = xmmword_1D72BAA80;
    v246 = 0;
    LOBYTE(v247) = 0;
    v161 = swift_allocObject();
    *(v161 + 16) = v243;
    *(v161 + 32) = v247;
    v162 = v214;
    *(v161 + 40) = v238;
    *(v161 + 48) = v162;
    v163 = v237 + v160;
    v164 = v224;
    sub_1D5CDE36C(v163, v224, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if ((*(v223 + 48))(v164, 1, v226) == 1)
    {

      sub_1D6983E84(v227, type metadata accessor for FormatVersionRequirement);

      sub_1D6981AE4(v224, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    }

    else
    {
      v165 = (*(v223 + 32))(v221, v224, v226);
      MEMORY[0x1EEE9AC00](v165, v166);
      *(&v213 - 4) = sub_1D5B4AA6C;
      *(&v213 - 3) = 0;
      v211 = sub_1D6984578;
      v212 = v161;
      LOBYTE(v247) = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v243;
      *(v167 + 32) = v247;
      *(v167 + 40) = v238;
      *(v167 + 48) = v214;
      swift_retain_n();
      v168 = sub_1D72647CC();
      LOBYTE(v247) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v168;
      *(v169 + 24) = v243;
      *(v169 + 40) = v247;
      v170 = *(v213 + 3);
      v171 = *(v213 + 4);
      v172 = __swift_project_boxed_opaque_existential_1(v213, v170);
      MEMORY[0x1EEE9AC00](v172, v173);
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v213 - 4) = sub_1D615B4A4;
      *(&v213 - 3) = (&v213 - 6);
      v211 = sub_1D6984578;
      v212 = v167;
      LOBYTE(v170) = sub_1D5D2F7A4(v227, sub_1D615B49C, v176, sub_1D615B4A4, (&v213 - 6), v170, v171);

      if (v170)
      {
        sub_1D5B4CDEC(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
        sub_1D72647EC();
      }

      (*(v223 + 8))(v221, v226);
      sub_1D6983E84(v227, type metadata accessor for FormatVersionRequirement);
    }

    v177 = *(v237 + v225[14]);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v178 = v236;
    v179 = __swift_project_value_buffer(v236, qword_1EDFFCD50);
    v235(v222, v179, v178);
    swift_storeEnumTagMultiPayload();
    if (v177 & 1) != 0 && (LOBYTE(v245) = 0, v180 = swift_allocObject(), v243 = xmmword_1D72BAA90, *(v180 + 16) = xmmword_1D72BAA90, *(v180 + 32) = v245, *(v180 + 40) = v238, *(v180 + 48) = v214, , v181 = sub_1D72647CC(), LOBYTE(v245) = 0, v182 = swift_allocObject(), *(v182 + 16) = v181, *(v182 + 24) = v243, *(v182 + 40) = v245, v183 = *(v213 + 3), v184 = *(v213 + 4), v185 = __swift_project_boxed_opaque_existential_1(v213, v183), MEMORY[0x1EEE9AC00](v185, v186), MEMORY[0x1EEE9AC00](v187, v188), *(&v213 - 4) = sub_1D5B4AA6C, *(&v213 - 3) = 0, v211 = sub_1D6984578, v212 = v180, LOBYTE(v183) = sub_1D5D2F7A4(v222, sub_1D615B49C, v189, sub_1D615B4A4, (&v213 - 6), v183, v184), , , (v183))
    {
      v245 = v243;
      v246 = 0;
      LOBYTE(v247) = 1;
      sub_1D72647EC();
      sub_1D6983E84(v222, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D6983E84(v222, type metadata accessor for FormatVersionRequirement);
    }

    if (qword_1EDF31EE0 != -1)
    {
      swift_once();
    }

    v190 = v236;
    v191 = __swift_project_value_buffer(v236, qword_1EDFFCD80);
    v192 = v215;
    v193 = v235;
    v235(v215, v191, v190);
    swift_storeEnumTagMultiPayload();
    sub_1D6983E84(v192, type metadata accessor for FormatVersionRequirement);
    v194 = v225[16];
    v193(v220, v191, v190);
    swift_storeEnumTagMultiPayload();
    v243 = xmmword_1D72BAAB0;
    v245 = xmmword_1D72BAAB0;
    v246 = 0;
    LOBYTE(v247) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = v243;
    *(v195 + 32) = v247;
    v196 = v214;
    *(v195 + 40) = v238;
    *(v195 + 48) = v196;
    v197 = v237 + v194;
    v198 = v217;
    sub_1D5CDE36C(v197, v217, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if ((*(v218 + 48))(v198, 1, v219) != 1)
    {
      v199 = (*(v218 + 32))(v216, v217, v219);
      MEMORY[0x1EEE9AC00](v199, v200);
      *(&v213 - 4) = sub_1D5B4AA6C;
      *(&v213 - 3) = 0;
      v211 = sub_1D6984578;
      v212 = v195;
      LOBYTE(v247) = 0;
      v201 = swift_allocObject();
      *(v201 + 16) = v243;
      *(v201 + 32) = v247;
      *(v201 + 40) = v238;
      *(v201 + 48) = v214;
      swift_retain_n();
      v202 = sub_1D72647CC();
      LOBYTE(v247) = 0;
      v203 = swift_allocObject();
      *(v203 + 16) = v202;
      *(v203 + 24) = v243;
      *(v203 + 40) = v247;
      v204 = *(v213 + 3);
      v205 = *(v213 + 4);
      v206 = __swift_project_boxed_opaque_existential_1(v213, v204);
      MEMORY[0x1EEE9AC00](v206, v207);
      MEMORY[0x1EEE9AC00](v208, v209);
      *(&v213 - 4) = sub_1D615B4A4;
      *(&v213 - 3) = (&v213 - 6);
      v211 = sub_1D6981C7C;
      v212 = v201;
      LOBYTE(v204) = sub_1D5D2F7A4(v220, sub_1D615B49C, v210, sub_1D615B4A4, (&v213 - 6), v204, v205);

      if (v204)
      {
        sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
        sub_1D72647EC();
      }

      (*(v218 + 8))(v216, v219);
      sub_1D6983E84(v220, type metadata accessor for FormatVersionRequirement);
      v86 = v244;
      return sub_1D6983E84(v86, sub_1D6982D6C);
    }

    sub_1D6983E84(v220, type metadata accessor for FormatVersionRequirement);

    sub_1D6983E84(v244, sub_1D6982D6C);
    return sub_1D6981AE4(v217, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  }
}

uint64_t sub_1D696F354(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v208 = &v203 - v6;
  v210 = sub_1D725B76C();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v7);
  v207 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v211 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v206 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v212 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v213 = &v203 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v214 = &v203 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v215 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v216 = &v203 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v224 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v203 - v35;
  sub_1D6982EF8(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D6983020(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EDF24DF8, sub_1D6983020, &unk_1D7321584);
  v205 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v222 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v217 = v53;
  v220 = v55;
  v221 = v52;
  v219 = v54 + 16;
  (v55)(v36);
  v218 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v233 = v50;
  v234 = v51;
  v231 = 0uLL;
  v232 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v235 = 0;
  v59 = swift_allocObject();
  v228 = &v203;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v235;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v227 = &v203 - 6;
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v61;
  v235 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v235;
  v223 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D6982F8C(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EDF02D08, sub_1D6982F8C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v225 = v65;
  v226 = v64;
  v66 = sub_1D72647CC();
  v235 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v235;
  v68 = *(v38 + 36);
  v69 = v36;
  v230 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v227;
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = v77;
  v201 = sub_1D6984578;
  v202 = v62;
  v78 = v229;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v203 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v230;
    return sub_1D6983E84(v98, sub_1D6982EF8);
  }

  v204 = v70;
  v227 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v222[2];
  v81 = v222[3];
  v220(v224, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v80;
  v234 = v81;
  v229 = xmmword_1D728CF30;
  v231 = xmmword_1D728CF30;
  v232 = 0;
  v235 = 0;
  v82 = swift_allocObject();
  v228 = &v203;
  *(v82 + 16) = v229;
  *(v82 + 32) = v235;
  v83 = v223;
  v84 = v227;
  *(v82 + 40) = v223;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v86;
  v235 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v229;
  *(v87 + 32) = v235;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v235 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v229;
  *(v89 + 40) = v235;
  v90 = *(v204 + 3);
  v91 = *(v204 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v204, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v96 = v224;
  v201 = sub_1D6984578;
  v202 = v87;
  sub_1D5D2BC70(v224, sub_1D615B49C, v97, sub_1D615B4A4, (&v203 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v222[4];
  v101 = v222[5];
  v220(v216, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v100;
  v234 = v101;
  v229 = xmmword_1D7297410;
  v231 = xmmword_1D7297410;
  v232 = 0;
  v235 = 0;
  v102 = swift_allocObject();
  v228 = &v203;
  *(v102 + 16) = v229;
  *(v102 + 32) = v235;
  v103 = v223;
  v104 = v227;
  *(v102 + 40) = v223;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v106;
  v235 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v229;
  *(v107 + 32) = v235;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v235 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v229;
  *(v109 + 40) = v235;
  v110 = *(v204 + 3);
  v111 = *(v204 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v204, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v116 = v216;
  v201 = sub_1D6984578;
  v202 = v107;
  sub_1D5D2BC70(v216, sub_1D615B49C, v117, sub_1D615B4A4, (&v203 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v222[6];
  v119 = v222[7];
  v220(v215, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v118;
  v234 = v119;
  v229 = xmmword_1D72BAA60;
  v231 = xmmword_1D72BAA60;
  v232 = 0;
  v235 = 0;
  v120 = swift_allocObject();
  v228 = &v203;
  *(v120 + 16) = v229;
  *(v120 + 32) = v235;
  v121 = v223;
  v122 = v227;
  *(v120 + 40) = v223;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v124;
  v235 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v229;
  *(v125 + 32) = v235;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v235 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v229;
  *(v127 + 40) = v235;
  v128 = *(v204 + 3);
  v129 = *(v204 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v204, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v134 = v215;
  v201 = sub_1D6984578;
  v202 = v125;
  sub_1D5D2BC70(v215, sub_1D615B49C, v135, sub_1D615B4A4, (&v203 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v222 + 64);
  v136 = v214;
  v220(v214, v217, v221);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v233) = v118;
  v229 = xmmword_1D72BAA70;
  v231 = xmmword_1D72BAA70;
  v232 = 0;
  v235 = 0;
  v137 = swift_allocObject();
  v228 = &v203;
  *(v137 + 16) = v229;
  *(v137 + 32) = v235;
  v138 = v223;
  v139 = v227;
  *(v137 + 40) = v223;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v141;
  v235 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v229;
  *(v142 + 32) = v235;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v235 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v229;
  *(v144 + 40) = v235;
  v145 = *(v204 + 3);
  v146 = *(v204 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v204, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v201 = sub_1D6984578;
  v202 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v203 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);

  v220(v213, v217, v221);
  swift_storeEnumTagMultiPayload();
  v152 = v222[9];
  v229 = xmmword_1D72BAA80;
  v231 = xmmword_1D72BAA80;
  v232 = 0;
  LOBYTE(v233) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v229;
  *(v153 + 32) = v233;
  v156 = v227;
  *(v153 + 40) = v223;
  *(v153 + 48) = v156;
  if ((~v152 & 0xF000000000000007) != 0)
  {
    v233 = v152;
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v155;
    v235 = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v229;
    *(v157 + 32) = v235;
    *(v157 + 40) = v223;
    *(v157 + 48) = v227;
    swift_retain_n();
    sub_1D5CFCFAC(v152);
    v158 = sub_1D72647CC();
    v235 = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v229;
    *(v159 + 40) = v235;
    v160 = *(v204 + 3);
    v161 = *(v204 + 4);
    v162 = __swift_project_boxed_opaque_existential_1(v204, v160);
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6984578;
    v202 = v157;
    LOBYTE(v160) = sub_1D5D2F7A4(v213, sub_1D615B49C, v166, sub_1D615B4A4, (&v203 - 6), v160, v161);

    if (v160)
    {
      sub_1D5B55E48();
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
  v167 = *(v222 + 80);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v168 = v221;
  v169 = __swift_project_value_buffer(v221, qword_1EDFFCD50);
  v220(v212, v169, v168);
  swift_storeEnumTagMultiPayload();
  if (v167 & 1) != 0 && (LOBYTE(v231) = 0, v170 = swift_allocObject(), v229 = xmmword_1D72BAA90, *(v170 + 16) = xmmword_1D72BAA90, *(v170 + 32) = v231, *(v170 + 40) = v223, *(v170 + 48) = v227, , v171 = sub_1D72647CC(), LOBYTE(v231) = 0, v172 = swift_allocObject(), *(v172 + 16) = v171, *(v172 + 24) = v229, *(v172 + 40) = v231, v173 = *(v204 + 3), v174 = *(v204 + 4), v175 = __swift_project_boxed_opaque_existential_1(v204, v173), MEMORY[0x1EEE9AC00](v175, v176), MEMORY[0x1EEE9AC00](v177, v178), *(&v203 - 4) = sub_1D5B4AA6C, *(&v203 - 3) = 0, v201 = sub_1D6984578, v202 = v170, LOBYTE(v173) = sub_1D5D2F7A4(v212, sub_1D615B49C, v179, sub_1D615B4A4, (&v203 - 6), v173, v174), , , (v173))
  {
    v231 = v229;
    v232 = 0;
    LOBYTE(v233) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v180 = v221;
  v181 = __swift_project_value_buffer(v221, qword_1EDFFCD80);
  v182 = v206;
  v183 = v220;
  v220(v206, v181, v180);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v182, type metadata accessor for FormatVersionRequirement);
  v184 = *(v205 + 64);
  v183(v211, v181, v180);
  swift_storeEnumTagMultiPayload();
  v229 = xmmword_1D72BAAB0;
  v231 = xmmword_1D72BAAB0;
  v232 = 0;
  LOBYTE(v233) = 0;
  v185 = swift_allocObject();
  *(v185 + 16) = v229;
  *(v185 + 32) = v233;
  v186 = v227;
  *(v185 + 40) = v223;
  *(v185 + 48) = v186;
  v187 = v222 + v184;
  v188 = v208;
  sub_1D5CDE36C(v187, v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v209 + 48))(v188, 1, v210) != 1)
  {
    v189 = (*(v209 + 32))(v207, v208, v210);
    MEMORY[0x1EEE9AC00](v189, v190);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v185;
    LOBYTE(v233) = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = v229;
    *(v191 + 32) = v233;
    *(v191 + 40) = v223;
    *(v191 + 48) = v227;
    swift_retain_n();
    v192 = sub_1D72647CC();
    LOBYTE(v233) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v229;
    *(v193 + 40) = v233;
    v194 = *(v204 + 3);
    v195 = *(v204 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v204, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6981C7C;
    v202 = v191;
    LOBYTE(v194) = sub_1D5D2F7A4(v211, sub_1D615B49C, v200, sub_1D615B4A4, (&v203 - 6), v194, v195);

    if (v194)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v209 + 8))(v207, v210);
    sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);
    v98 = v230;
    return sub_1D6983E84(v98, sub_1D6982EF8);
  }

  sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v230, sub_1D6982EF8);
  return sub_1D6981AE4(v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D697122C(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v208 = &v203 - v6;
  v210 = sub_1D725B76C();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v7);
  v207 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v211 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v206 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v212 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v213 = &v203 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v214 = &v203 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v215 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v216 = &v203 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v224 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v203 - v35;
  sub_1D69832F4(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D698341C(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EC88E9F0, sub_1D698341C, &unk_1D7321584);
  v205 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v222 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v217 = v53;
  v220 = v55;
  v221 = v52;
  v219 = v54 + 16;
  (v55)(v36);
  v218 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v233 = v50;
  v234 = v51;
  v231 = 0uLL;
  v232 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v235 = 0;
  v59 = swift_allocObject();
  v228 = &v203;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v235;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v227 = &v203 - 6;
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v61;
  v235 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v235;
  v223 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D6983388(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EC88E9F8, sub_1D6983388, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v225 = v65;
  v226 = v64;
  v66 = sub_1D72647CC();
  v235 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v235;
  v68 = *(v38 + 36);
  v69 = v36;
  v230 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v227;
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = v77;
  v201 = sub_1D6984578;
  v202 = v62;
  v78 = v229;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v203 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v230;
    return sub_1D6983E84(v98, sub_1D69832F4);
  }

  v204 = v70;
  v227 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v222[2];
  v81 = v222[3];
  v220(v224, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v80;
  v234 = v81;
  v229 = xmmword_1D728CF30;
  v231 = xmmword_1D728CF30;
  v232 = 0;
  v235 = 0;
  v82 = swift_allocObject();
  v228 = &v203;
  *(v82 + 16) = v229;
  *(v82 + 32) = v235;
  v83 = v223;
  v84 = v227;
  *(v82 + 40) = v223;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v86;
  v235 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v229;
  *(v87 + 32) = v235;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v235 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v229;
  *(v89 + 40) = v235;
  v90 = *(v204 + 3);
  v91 = *(v204 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v204, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v96 = v224;
  v201 = sub_1D6984578;
  v202 = v87;
  sub_1D5D2BC70(v224, sub_1D615B49C, v97, sub_1D615B4A4, (&v203 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v222[4];
  v101 = v222[5];
  v220(v216, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v100;
  v234 = v101;
  v229 = xmmword_1D7297410;
  v231 = xmmword_1D7297410;
  v232 = 0;
  v235 = 0;
  v102 = swift_allocObject();
  v228 = &v203;
  *(v102 + 16) = v229;
  *(v102 + 32) = v235;
  v103 = v223;
  v104 = v227;
  *(v102 + 40) = v223;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v106;
  v235 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v229;
  *(v107 + 32) = v235;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v235 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v229;
  *(v109 + 40) = v235;
  v110 = *(v204 + 3);
  v111 = *(v204 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v204, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v116 = v216;
  v201 = sub_1D6984578;
  v202 = v107;
  sub_1D5D2BC70(v216, sub_1D615B49C, v117, sub_1D615B4A4, (&v203 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v222[6];
  v119 = v222[7];
  v220(v215, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v118;
  v234 = v119;
  v229 = xmmword_1D72BAA60;
  v231 = xmmword_1D72BAA60;
  v232 = 0;
  v235 = 0;
  v120 = swift_allocObject();
  v228 = &v203;
  *(v120 + 16) = v229;
  *(v120 + 32) = v235;
  v121 = v223;
  v122 = v227;
  *(v120 + 40) = v223;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v124;
  v235 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v229;
  *(v125 + 32) = v235;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v235 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v229;
  *(v127 + 40) = v235;
  v128 = *(v204 + 3);
  v129 = *(v204 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v204, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v134 = v215;
  v201 = sub_1D6984578;
  v202 = v125;
  sub_1D5D2BC70(v215, sub_1D615B49C, v135, sub_1D615B4A4, (&v203 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v222 + 64);
  v136 = v214;
  v220(v214, v217, v221);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v233) = v118;
  v229 = xmmword_1D72BAA70;
  v231 = xmmword_1D72BAA70;
  v232 = 0;
  v235 = 0;
  v137 = swift_allocObject();
  v228 = &v203;
  *(v137 + 16) = v229;
  *(v137 + 32) = v235;
  v138 = v223;
  v139 = v227;
  *(v137 + 40) = v223;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v141;
  v235 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v229;
  *(v142 + 32) = v235;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v235 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v229;
  *(v144 + 40) = v235;
  v145 = *(v204 + 3);
  v146 = *(v204 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v204, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v201 = sub_1D6984578;
  v202 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v203 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);

  v220(v213, v217, v221);
  swift_storeEnumTagMultiPayload();
  v152 = v222[9];
  v229 = xmmword_1D72BAA80;
  v231 = xmmword_1D72BAA80;
  v232 = 0;
  LOBYTE(v233) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v229;
  *(v153 + 32) = v233;
  v156 = v227;
  *(v153 + 40) = v223;
  *(v153 + 48) = v156;
  if ((~v152 & 0xF000000000000007) != 0)
  {
    v233 = v152;
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v155;
    v235 = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v229;
    *(v157 + 32) = v235;
    *(v157 + 40) = v223;
    *(v157 + 48) = v227;
    swift_retain_n();
    sub_1D5D04BD4(v152);
    v158 = sub_1D72647CC();
    v235 = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v229;
    *(v159 + 40) = v235;
    v160 = *(v204 + 3);
    v161 = *(v204 + 4);
    v162 = __swift_project_boxed_opaque_existential_1(v204, v160);
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6984578;
    v202 = v157;
    LOBYTE(v160) = sub_1D5D2F7A4(v213, sub_1D615B49C, v166, sub_1D615B4A4, (&v203 - 6), v160, v161);

    if (v160)
    {
      sub_1D5B57B50();
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
  v167 = *(v222 + 80);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v168 = v221;
  v169 = __swift_project_value_buffer(v221, qword_1EDFFCD50);
  v220(v212, v169, v168);
  swift_storeEnumTagMultiPayload();
  if (v167 & 1) != 0 && (LOBYTE(v231) = 0, v170 = swift_allocObject(), v229 = xmmword_1D72BAA90, *(v170 + 16) = xmmword_1D72BAA90, *(v170 + 32) = v231, *(v170 + 40) = v223, *(v170 + 48) = v227, , v171 = sub_1D72647CC(), LOBYTE(v231) = 0, v172 = swift_allocObject(), *(v172 + 16) = v171, *(v172 + 24) = v229, *(v172 + 40) = v231, v173 = *(v204 + 3), v174 = *(v204 + 4), v175 = __swift_project_boxed_opaque_existential_1(v204, v173), MEMORY[0x1EEE9AC00](v175, v176), MEMORY[0x1EEE9AC00](v177, v178), *(&v203 - 4) = sub_1D5B4AA6C, *(&v203 - 3) = 0, v201 = sub_1D6984578, v202 = v170, LOBYTE(v173) = sub_1D5D2F7A4(v212, sub_1D615B49C, v179, sub_1D615B4A4, (&v203 - 6), v173, v174), , , (v173))
  {
    v231 = v229;
    v232 = 0;
    LOBYTE(v233) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v180 = v221;
  v181 = __swift_project_value_buffer(v221, qword_1EDFFCD80);
  v182 = v206;
  v183 = v220;
  v220(v206, v181, v180);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v182, type metadata accessor for FormatVersionRequirement);
  v184 = *(v205 + 64);
  v183(v211, v181, v180);
  swift_storeEnumTagMultiPayload();
  v229 = xmmword_1D72BAAB0;
  v231 = xmmword_1D72BAAB0;
  v232 = 0;
  LOBYTE(v233) = 0;
  v185 = swift_allocObject();
  *(v185 + 16) = v229;
  *(v185 + 32) = v233;
  v186 = v227;
  *(v185 + 40) = v223;
  *(v185 + 48) = v186;
  v187 = v222 + v184;
  v188 = v208;
  sub_1D5CDE36C(v187, v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v209 + 48))(v188, 1, v210) != 1)
  {
    v189 = (*(v209 + 32))(v207, v208, v210);
    MEMORY[0x1EEE9AC00](v189, v190);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v185;
    LOBYTE(v233) = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = v229;
    *(v191 + 32) = v233;
    *(v191 + 40) = v223;
    *(v191 + 48) = v227;
    swift_retain_n();
    v192 = sub_1D72647CC();
    LOBYTE(v233) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v229;
    *(v193 + 40) = v233;
    v194 = *(v204 + 3);
    v195 = *(v204 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v204, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6981C7C;
    v202 = v191;
    LOBYTE(v194) = sub_1D5D2F7A4(v211, sub_1D615B49C, v200, sub_1D615B4A4, (&v203 - 6), v194, v195);

    if (v194)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v209 + 8))(v207, v210);
    sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);
    v98 = v230;
    return sub_1D6983E84(v98, sub_1D69832F4);
  }

  sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v230, sub_1D69832F4);
  return sub_1D6981AE4(v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D6973104(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v208 = &v203 - v6;
  v210 = sub_1D725B76C();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v7);
  v207 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v211 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v206 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v212 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v213 = &v203 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v214 = &v203 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v215 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v216 = &v203 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v224 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v203 - v35;
  sub_1D69836F0(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D6983818(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EC88EA38, sub_1D6983818, &unk_1D7321584);
  v205 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v222 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v217 = v53;
  v220 = v55;
  v221 = v52;
  v219 = v54 + 16;
  (v55)(v36);
  v218 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v233 = v50;
  v234 = v51;
  v231 = 0uLL;
  v232 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v235 = 0;
  v59 = swift_allocObject();
  v228 = &v203;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v235;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v227 = &v203 - 6;
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v61;
  v235 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v235;
  v223 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D6983784(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EC88EA40, sub_1D6983784, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v225 = v65;
  v226 = v64;
  v66 = sub_1D72647CC();
  v235 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v235;
  v68 = *(v38 + 36);
  v69 = v36;
  v230 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v227;
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = v77;
  v201 = sub_1D6984578;
  v202 = v62;
  v78 = v229;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v203 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v230;
    return sub_1D6983E84(v98, sub_1D69836F0);
  }

  v204 = v70;
  v227 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v222[2];
  v81 = v222[3];
  v220(v224, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v80;
  v234 = v81;
  v229 = xmmword_1D728CF30;
  v231 = xmmword_1D728CF30;
  v232 = 0;
  v235 = 0;
  v82 = swift_allocObject();
  v228 = &v203;
  *(v82 + 16) = v229;
  *(v82 + 32) = v235;
  v83 = v223;
  v84 = v227;
  *(v82 + 40) = v223;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v86;
  v235 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v229;
  *(v87 + 32) = v235;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v235 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v229;
  *(v89 + 40) = v235;
  v90 = *(v204 + 3);
  v91 = *(v204 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v204, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v96 = v224;
  v201 = sub_1D6984578;
  v202 = v87;
  sub_1D5D2BC70(v224, sub_1D615B49C, v97, sub_1D615B4A4, (&v203 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v222[4];
  v101 = v222[5];
  v220(v216, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v100;
  v234 = v101;
  v229 = xmmword_1D7297410;
  v231 = xmmword_1D7297410;
  v232 = 0;
  v235 = 0;
  v102 = swift_allocObject();
  v228 = &v203;
  *(v102 + 16) = v229;
  *(v102 + 32) = v235;
  v103 = v223;
  v104 = v227;
  *(v102 + 40) = v223;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v106;
  v235 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v229;
  *(v107 + 32) = v235;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v235 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v229;
  *(v109 + 40) = v235;
  v110 = *(v204 + 3);
  v111 = *(v204 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v204, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v116 = v216;
  v201 = sub_1D6984578;
  v202 = v107;
  sub_1D5D2BC70(v216, sub_1D615B49C, v117, sub_1D615B4A4, (&v203 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v222[6];
  v119 = v222[7];
  v220(v215, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v118;
  v234 = v119;
  v229 = xmmword_1D72BAA60;
  v231 = xmmword_1D72BAA60;
  v232 = 0;
  v235 = 0;
  v120 = swift_allocObject();
  v228 = &v203;
  *(v120 + 16) = v229;
  *(v120 + 32) = v235;
  v121 = v223;
  v122 = v227;
  *(v120 + 40) = v223;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v124;
  v235 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v229;
  *(v125 + 32) = v235;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v235 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v229;
  *(v127 + 40) = v235;
  v128 = *(v204 + 3);
  v129 = *(v204 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v204, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v134 = v215;
  v201 = sub_1D6984578;
  v202 = v125;
  sub_1D5D2BC70(v215, sub_1D615B49C, v135, sub_1D615B4A4, (&v203 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v222 + 64);
  v136 = v214;
  v220(v214, v217, v221);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v233) = v118;
  v229 = xmmword_1D72BAA70;
  v231 = xmmword_1D72BAA70;
  v232 = 0;
  v235 = 0;
  v137 = swift_allocObject();
  v228 = &v203;
  *(v137 + 16) = v229;
  *(v137 + 32) = v235;
  v138 = v223;
  v139 = v227;
  *(v137 + 40) = v223;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v141;
  v235 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v229;
  *(v142 + 32) = v235;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v235 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v229;
  *(v144 + 40) = v235;
  v145 = *(v204 + 3);
  v146 = *(v204 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v204, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v201 = sub_1D6984578;
  v202 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v203 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);

  v220(v213, v217, v221);
  swift_storeEnumTagMultiPayload();
  v152 = v222[9];
  v229 = xmmword_1D72BAA80;
  v231 = xmmword_1D72BAA80;
  v232 = 0;
  LOBYTE(v233) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v229;
  *(v153 + 32) = v233;
  v156 = v227;
  *(v153 + 40) = v223;
  *(v153 + 48) = v156;
  if ((~v152 & 0xF000000000000007) != 0)
  {
    v233 = v152;
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v155;
    v235 = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v229;
    *(v157 + 32) = v235;
    *(v157 + 40) = v223;
    *(v157 + 48) = v227;
    swift_retain_n();
    sub_1D5D04BD4(v152);
    v158 = sub_1D72647CC();
    v235 = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v229;
    *(v159 + 40) = v235;
    v160 = *(v204 + 3);
    v161 = *(v204 + 4);
    v162 = __swift_project_boxed_opaque_existential_1(v204, v160);
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6984578;
    v202 = v157;
    LOBYTE(v160) = sub_1D5D2F7A4(v213, sub_1D615B49C, v166, sub_1D615B4A4, (&v203 - 6), v160, v161);

    if (v160)
    {
      sub_1D5B57BA4();
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
  v167 = *(v222 + 80);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v168 = v221;
  v169 = __swift_project_value_buffer(v221, qword_1EDFFCD50);
  v220(v212, v169, v168);
  swift_storeEnumTagMultiPayload();
  if (v167 & 1) != 0 && (LOBYTE(v231) = 0, v170 = swift_allocObject(), v229 = xmmword_1D72BAA90, *(v170 + 16) = xmmword_1D72BAA90, *(v170 + 32) = v231, *(v170 + 40) = v223, *(v170 + 48) = v227, , v171 = sub_1D72647CC(), LOBYTE(v231) = 0, v172 = swift_allocObject(), *(v172 + 16) = v171, *(v172 + 24) = v229, *(v172 + 40) = v231, v173 = *(v204 + 3), v174 = *(v204 + 4), v175 = __swift_project_boxed_opaque_existential_1(v204, v173), MEMORY[0x1EEE9AC00](v175, v176), MEMORY[0x1EEE9AC00](v177, v178), *(&v203 - 4) = sub_1D5B4AA6C, *(&v203 - 3) = 0, v201 = sub_1D6984578, v202 = v170, LOBYTE(v173) = sub_1D5D2F7A4(v212, sub_1D615B49C, v179, sub_1D615B4A4, (&v203 - 6), v173, v174), , , (v173))
  {
    v231 = v229;
    v232 = 0;
    LOBYTE(v233) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v180 = v221;
  v181 = __swift_project_value_buffer(v221, qword_1EDFFCD80);
  v182 = v206;
  v183 = v220;
  v220(v206, v181, v180);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v182, type metadata accessor for FormatVersionRequirement);
  v184 = *(v205 + 64);
  v183(v211, v181, v180);
  swift_storeEnumTagMultiPayload();
  v229 = xmmword_1D72BAAB0;
  v231 = xmmword_1D72BAAB0;
  v232 = 0;
  LOBYTE(v233) = 0;
  v185 = swift_allocObject();
  *(v185 + 16) = v229;
  *(v185 + 32) = v233;
  v186 = v227;
  *(v185 + 40) = v223;
  *(v185 + 48) = v186;
  v187 = v222 + v184;
  v188 = v208;
  sub_1D5CDE36C(v187, v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v209 + 48))(v188, 1, v210) != 1)
  {
    v189 = (*(v209 + 32))(v207, v208, v210);
    MEMORY[0x1EEE9AC00](v189, v190);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v185;
    LOBYTE(v233) = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = v229;
    *(v191 + 32) = v233;
    *(v191 + 40) = v223;
    *(v191 + 48) = v227;
    swift_retain_n();
    v192 = sub_1D72647CC();
    LOBYTE(v233) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v229;
    *(v193 + 40) = v233;
    v194 = *(v204 + 3);
    v195 = *(v204 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v204, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6981C7C;
    v202 = v191;
    LOBYTE(v194) = sub_1D5D2F7A4(v211, sub_1D615B49C, v200, sub_1D615B4A4, (&v203 - 6), v194, v195);

    if (v194)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v209 + 8))(v207, v210);
    sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);
    v98 = v230;
    return sub_1D6983E84(v98, sub_1D69836F0);
  }

  sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v230, sub_1D69836F0);
  return sub_1D6981AE4(v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}

uint64_t sub_1D6974FDC(void *a1)
{
  v2 = v1;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v208 = &v203 - v6;
  v210 = sub_1D725B76C();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v7);
  v207 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v211 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v206 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v212 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v213 = &v203 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v214 = &v203 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v215 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v216 = &v203 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v224 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v203 - v35;
  sub_1D6983AEC(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  v45 = v44;
  sub_1D6983C14(0);
  v47 = v46;
  v48 = sub_1D5B4CDEC(&qword_1EC88EA80, sub_1D6983C14, &unk_1D7321584);
  v205 = v45;
  sub_1D5D2EE70(v45, v47, v49, v42, v45, v47, &type metadata for FormatVersions.JazzkonC, v43, v41, v48, &off_1F51F6C78);
  v50 = *v2;
  v51 = v2[1];
  v222 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v217 = v53;
  v220 = v55;
  v221 = v52;
  v219 = v54 + 16;
  (v55)(v36);
  v218 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v233 = v50;
  v234 = v51;
  v231 = 0uLL;
  v232 = 0;
  v56 = &v41[*(v38 + 44)];
  v58 = *v56;
  v57 = *(v56 + 1);
  v235 = 0;
  v59 = swift_allocObject();
  v228 = &v203;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v235;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v227 = &v203 - 6;
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v61;
  v235 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = v235;
  v223 = v58;
  *(v62 + 40) = v58;
  *(v62 + 48) = v57;
  sub_1D6983B80(0);
  v64 = v63;
  v65 = sub_1D5B4CDEC(&qword_1EC88EA88, sub_1D6983B80, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v225 = v65;
  v226 = v64;
  v66 = sub_1D72647CC();
  v235 = 0;
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = v66;
  *(v67 + 40) = v235;
  v68 = *(v38 + 36);
  v69 = v36;
  v230 = v41;
  v70 = &v41[v68];
  v71 = *&v41[v68 + 24];
  v72 = *&v41[v68 + 32];
  v73 = __swift_project_boxed_opaque_existential_1(&v41[v68], v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v227;
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = v77;
  v201 = sub_1D6984578;
  v202 = v62;
  v78 = v229;
  sub_1D5D2BC70(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v203 - 6), v71, v72);
  if (v78)
  {
    sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

    v98 = v230;
    return sub_1D6983E84(v98, sub_1D6983AEC);
  }

  v204 = v70;
  v227 = v57;

  sub_1D72647EC();
  sub_1D6983E84(v69, type metadata accessor for FormatVersionRequirement);

  v80 = v222[2];
  v81 = v222[3];
  v220(v224, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v80;
  v234 = v81;
  v229 = xmmword_1D728CF30;
  v231 = xmmword_1D728CF30;
  v232 = 0;
  v235 = 0;
  v82 = swift_allocObject();
  v228 = &v203;
  *(v82 + 16) = v229;
  *(v82 + 32) = v235;
  v83 = v223;
  v84 = v227;
  *(v82 + 40) = v223;
  *(v82 + 48) = v84;
  MEMORY[0x1EEE9AC00](v82, v85);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v86;
  v235 = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v229;
  *(v87 + 32) = v235;
  *(v87 + 40) = v83;
  *(v87 + 48) = v84;
  swift_retain_n();
  v88 = sub_1D72647CC();
  v235 = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v229;
  *(v89 + 40) = v235;
  v90 = *(v204 + 3);
  v91 = *(v204 + 4);
  v92 = __swift_project_boxed_opaque_existential_1(v204, v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v96 = v224;
  v201 = sub_1D6984578;
  v202 = v87;
  sub_1D5D2BC70(v224, sub_1D615B49C, v97, sub_1D615B4A4, (&v203 - 6), v90, v91);

  sub_1D72647EC();
  sub_1D6983E84(v96, type metadata accessor for FormatVersionRequirement);

  v100 = v222[4];
  v101 = v222[5];
  v220(v216, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v100;
  v234 = v101;
  v229 = xmmword_1D7297410;
  v231 = xmmword_1D7297410;
  v232 = 0;
  v235 = 0;
  v102 = swift_allocObject();
  v228 = &v203;
  *(v102 + 16) = v229;
  *(v102 + 32) = v235;
  v103 = v223;
  v104 = v227;
  *(v102 + 40) = v223;
  *(v102 + 48) = v104;
  MEMORY[0x1EEE9AC00](v102, v105);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v106;
  v235 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v229;
  *(v107 + 32) = v235;
  *(v107 + 40) = v103;
  *(v107 + 48) = v104;
  swift_retain_n();
  v108 = sub_1D72647CC();
  v235 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v229;
  *(v109 + 40) = v235;
  v110 = *(v204 + 3);
  v111 = *(v204 + 4);
  v112 = __swift_project_boxed_opaque_existential_1(v204, v110);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v116 = v216;
  v201 = sub_1D6984578;
  v202 = v107;
  sub_1D5D2BC70(v216, sub_1D615B49C, v117, sub_1D615B4A4, (&v203 - 6), v110, v111);

  sub_1D72647EC();
  sub_1D6983E84(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v222[6];
  v119 = v222[7];
  v220(v215, v217, v221);
  swift_storeEnumTagMultiPayload();
  v233 = v118;
  v234 = v119;
  v229 = xmmword_1D72BAA60;
  v231 = xmmword_1D72BAA60;
  v232 = 0;
  v235 = 0;
  v120 = swift_allocObject();
  v228 = &v203;
  *(v120 + 16) = v229;
  *(v120 + 32) = v235;
  v121 = v223;
  v122 = v227;
  *(v120 + 40) = v223;
  *(v120 + 48) = v122;
  MEMORY[0x1EEE9AC00](v120, v123);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v124;
  v235 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v229;
  *(v125 + 32) = v235;
  *(v125 + 40) = v121;
  *(v125 + 48) = v122;
  swift_retain_n();
  v126 = sub_1D72647CC();
  v235 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v229;
  *(v127 + 40) = v235;
  v128 = *(v204 + 3);
  v129 = *(v204 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v204, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v134 = v215;
  v201 = sub_1D6984578;
  v202 = v125;
  sub_1D5D2BC70(v215, sub_1D615B49C, v135, sub_1D615B4A4, (&v203 - 6), v128, v129);

  sub_1D72647EC();
  sub_1D6983E84(v134, type metadata accessor for FormatVersionRequirement);

  LOBYTE(v118) = *(v222 + 64);
  v136 = v214;
  v220(v214, v217, v221);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v233) = v118;
  v229 = xmmword_1D72BAA70;
  v231 = xmmword_1D72BAA70;
  v232 = 0;
  v235 = 0;
  v137 = swift_allocObject();
  v228 = &v203;
  *(v137 + 16) = v229;
  *(v137 + 32) = v235;
  v138 = v223;
  v139 = v227;
  *(v137 + 40) = v223;
  *(v137 + 48) = v139;
  MEMORY[0x1EEE9AC00](v137, v140);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6984578;
  v202 = v141;
  v235 = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v229;
  *(v142 + 32) = v235;
  *(v142 + 40) = v138;
  *(v142 + 48) = v139;
  swift_retain_n();
  v143 = sub_1D72647CC();
  v235 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v229;
  *(v144 + 40) = v235;
  v145 = *(v204 + 3);
  v146 = *(v204 + 4);
  v147 = __swift_project_boxed_opaque_existential_1(v204, v145);
  MEMORY[0x1EEE9AC00](v147, v148);
  MEMORY[0x1EEE9AC00](v149, v150);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v201 = sub_1D6984578;
  v202 = v142;
  sub_1D5D2BC70(v136, sub_1D615B49C, v151, sub_1D615B4A4, (&v203 - 6), v145, v146);

  sub_1D72647EC();
  sub_1D6983E84(v214, type metadata accessor for FormatVersionRequirement);

  v220(v213, v217, v221);
  swift_storeEnumTagMultiPayload();
  v152 = v222[9];
  v229 = xmmword_1D72BAA80;
  v231 = xmmword_1D72BAA80;
  v232 = 0;
  LOBYTE(v233) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v229;
  *(v153 + 32) = v233;
  v156 = v227;
  *(v153 + 40) = v223;
  *(v153 + 48) = v156;
  if ((~v152 & 0xF000000000000007) != 0)
  {
    v233 = v152;
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v155;
    v235 = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v229;
    *(v157 + 32) = v235;
    *(v157 + 40) = v223;
    *(v157 + 48) = v227;
    swift_retain_n();
    sub_1D612612C(v152);
    v158 = sub_1D72647CC();
    v235 = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v229;
    *(v159 + 40) = v235;
    v160 = *(v204 + 3);
    v161 = *(v204 + 4);
    v162 = __swift_project_boxed_opaque_existential_1(v204, v160);
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6984578;
    v202 = v157;
    LOBYTE(v160) = sub_1D5D2F7A4(v213, sub_1D615B49C, v166, sub_1D615B4A4, (&v203 - 6), v160, v161);

    if (v160)
    {
      sub_1D5B57BF8();
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D6983E84(v213, type metadata accessor for FormatVersionRequirement);
  v167 = *(v222 + 80);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v168 = v221;
  v169 = __swift_project_value_buffer(v221, qword_1EDFFCD50);
  v220(v212, v169, v168);
  swift_storeEnumTagMultiPayload();
  if (v167 & 1) != 0 && (LOBYTE(v231) = 0, v170 = swift_allocObject(), v229 = xmmword_1D72BAA90, *(v170 + 16) = xmmword_1D72BAA90, *(v170 + 32) = v231, *(v170 + 40) = v223, *(v170 + 48) = v227, , v171 = sub_1D72647CC(), LOBYTE(v231) = 0, v172 = swift_allocObject(), *(v172 + 16) = v171, *(v172 + 24) = v229, *(v172 + 40) = v231, v173 = *(v204 + 3), v174 = *(v204 + 4), v175 = __swift_project_boxed_opaque_existential_1(v204, v173), MEMORY[0x1EEE9AC00](v175, v176), MEMORY[0x1EEE9AC00](v177, v178), *(&v203 - 4) = sub_1D5B4AA6C, *(&v203 - 3) = 0, v201 = sub_1D6984578, v202 = v170, LOBYTE(v173) = sub_1D5D2F7A4(v212, sub_1D615B49C, v179, sub_1D615B4A4, (&v203 - 6), v173, v174), , , (v173))
  {
    v231 = v229;
    v232 = 0;
    LOBYTE(v233) = 1;
    sub_1D72647EC();
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D6983E84(v212, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v180 = v221;
  v181 = __swift_project_value_buffer(v221, qword_1EDFFCD80);
  v182 = v206;
  v183 = v220;
  v220(v206, v181, v180);
  swift_storeEnumTagMultiPayload();
  sub_1D6983E84(v182, type metadata accessor for FormatVersionRequirement);
  v184 = *(v205 + 64);
  v183(v211, v181, v180);
  swift_storeEnumTagMultiPayload();
  v229 = xmmword_1D72BAAB0;
  v231 = xmmword_1D72BAAB0;
  v232 = 0;
  LOBYTE(v233) = 0;
  v185 = swift_allocObject();
  *(v185 + 16) = v229;
  *(v185 + 32) = v233;
  v186 = v227;
  *(v185 + 40) = v223;
  *(v185 + 48) = v186;
  v187 = v222 + v184;
  v188 = v208;
  sub_1D5CDE36C(v187, v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v209 + 48))(v188, 1, v210) != 1)
  {
    v189 = (*(v209 + 32))(v207, v208, v210);
    MEMORY[0x1EEE9AC00](v189, v190);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6984578;
    v202 = v185;
    LOBYTE(v233) = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = v229;
    *(v191 + 32) = v233;
    *(v191 + 40) = v223;
    *(v191 + 48) = v227;
    swift_retain_n();
    v192 = sub_1D72647CC();
    LOBYTE(v233) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v229;
    *(v193 + 40) = v233;
    v194 = *(v204 + 3);
    v195 = *(v204 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v204, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = (&v203 - 6);
    v201 = sub_1D6981C7C;
    v202 = v191;
    LOBYTE(v194) = sub_1D5D2F7A4(v211, sub_1D615B49C, v200, sub_1D615B4A4, (&v203 - 6), v194, v195);

    if (v194)
    {
      sub_1D5B4CDEC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v209 + 8))(v207, v210);
    sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);
    v98 = v230;
    return sub_1D6983E84(v98, sub_1D6983AEC);
  }

  sub_1D6983E84(v211, type metadata accessor for FormatVersionRequirement);

  sub_1D6983E84(v230, sub_1D6983AEC);
  return sub_1D6981AE4(v208, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
}
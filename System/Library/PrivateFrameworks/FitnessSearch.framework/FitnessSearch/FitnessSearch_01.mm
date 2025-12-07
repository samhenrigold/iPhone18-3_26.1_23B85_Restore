uint64_t SearchState.description.getter()
{
  SearchState.pageState.getter(v7);
  v9 = v7[0];
  v12 = v7[3];
  v13 = v7[4];
  v14 = v7[5];
  v15 = v8;
  v10 = v7[1];
  v11 = v7[2];
  v0 = *&v7[0];
  if (v8 <= 1u)
  {
    if (v8)
    {
      v4 = *(&v9 + 1);
      v6 = 0;
      sub_1E5C9CE60();
      MEMORY[0x1E6939590](0x676E696863746546, 0xE900000000000028);
      MEMORY[0x1E6939590](v0, v4);
      sub_1E5C3A9CC(v7);
      MEMORY[0x1E6939590](8236, 0xE200000000000000);
      sub_1E5C9CEB0();
    }

    else
    {
      v6 = 0x2873746E6948;
      MEMORY[0x1E6939590](v9, *(&v9 + 1));
      sub_1E5C3A9CC(v7);
    }

LABEL_8:
    MEMORY[0x1E6939590](41, 0xE100000000000000);
    return v6;
  }

  if (v8 == 2)
  {
    v1 = *(&v9 + 1);

    v2 = *(&v12 + 1);
    if (!*(&v12 + 1))
    {

      return 0xD000000000000010;
    }

    v3 = v12;
    v6 = 0x2D746C75736552;

    MEMORY[0x1E6939590](v3, v2);
    sub_1E5C3A36C(&v11);

    MEMORY[0x1E6939590](40, 0xE100000000000000);
    MEMORY[0x1E6939590](v0, v1);

    goto LABEL_8;
  }

  if (!(*(&v14 + 1) | v9 | v14 | *(&v13 + 1) | v13 | *(&v12 + 1) | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1)))
  {
    return 1701602377;
  }

  if (v9 == 1 && (v14 | *(&v14 + 1) | *(&v13 + 1) | v13 | *(&v12 + 1) | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1)) == 0)
  {
    return 0x676E69646E614CLL;
  }

  return 0x7375636F46;
}

uint64_t sub_1E5C3AA24()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AA58()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AA8C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AAC0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AAF4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AB28()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5C3AB5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E5C3AB88(char a1)
{
  result = 0x6F69746174636964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      v3 = 0x437375636F66;
      goto LABEL_10;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6552746E65746E69;
      break;
    case 8:
    case 15:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x6275537972657571;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      v3 = 0x4365706F6373;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6168000000000000;
      break;
    case 13:
      result = 0x6C655365706F6373;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x6E61684374786574;
      break;
    case 17:
      result = 0x4164694477656976;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1E5C3ADDC(uint64_t a1)
{
  v2 = sub_1E5C3E044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AE18(uint64_t a1)
{
  v2 = sub_1E5C3E044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3AE54(uint64_t a1)
{
  v2 = sub_1E5C3DFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AE90(uint64_t a1)
{
  v2 = sub_1E5C3DFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3AED4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C44084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C3AF08(uint64_t a1)
{
  v2 = sub_1E5C3D90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AF44(uint64_t a1)
{
  v2 = sub_1E5C3D90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3AF80(uint64_t a1)
{
  v2 = sub_1E5C3DF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AFBC(uint64_t a1)
{
  v2 = sub_1E5C3DF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B00C(uint64_t a1)
{
  v2 = sub_1E5C3DF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B048(uint64_t a1)
{
  v2 = sub_1E5C3DF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B084(uint64_t a1)
{
  v2 = sub_1E5C3DEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B0C0(uint64_t a1)
{
  v2 = sub_1E5C3DEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B0FC(uint64_t a1)
{
  v2 = sub_1E5C3DEA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B138(uint64_t a1)
{
  v2 = sub_1E5C3DEA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B174(uint64_t a1)
{
  v2 = sub_1E5C3DE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B1B0(uint64_t a1)
{
  v2 = sub_1E5C3DE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C446C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C3B228(uint64_t a1)
{
  v2 = sub_1E5C3DDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B264(uint64_t a1)
{
  v2 = sub_1E5C3DDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B2A0(uint64_t a1)
{
  v2 = sub_1E5C3DDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B2DC(uint64_t a1)
{
  v2 = sub_1E5C3DDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B318(uint64_t a1)
{
  v2 = sub_1E5C3DD50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B354(uint64_t a1)
{
  v2 = sub_1E5C3DD50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B390(uint64_t a1)
{
  v2 = sub_1E5C3DCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B3CC(uint64_t a1)
{
  v2 = sub_1E5C3DCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B408(uint64_t a1)
{
  v2 = sub_1E5C3DC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B444(uint64_t a1)
{
  v2 = sub_1E5C3DC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B480(uint64_t a1)
{
  v2 = sub_1E5C3DC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B4BC(uint64_t a1)
{
  v2 = sub_1E5C3DC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B4F8(uint64_t a1)
{
  v2 = sub_1E5C3DBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B534(uint64_t a1)
{
  v2 = sub_1E5C3DBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B570(uint64_t a1)
{
  v2 = sub_1E5C3DB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B5AC(uint64_t a1)
{
  v2 = sub_1E5C3DB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C3B6B4(uint64_t a1)
{
  v2 = sub_1E5C3DA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B6F0(uint64_t a1)
{
  v2 = sub_1E5C3DA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B72C()
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](0);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C3B770(uint64_t a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](0);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C3B7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5C9D060();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5C3B830(uint64_t a1)
{
  v2 = sub_1E5C3DA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B86C(uint64_t a1)
{
  v2 = sub_1E5C3DA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B8A8(uint64_t a1)
{
  v2 = sub_1E5C3D9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B8E4(uint64_t a1)
{
  v2 = sub_1E5C3D9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B920(uint64_t a1)
{
  v2 = sub_1E5C3D960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B95C(uint64_t a1)
{
  v2 = sub_1E5C3D960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchAction.encode(to:)(void *a1)
{
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543B0, &qword_1E5C9F8B0);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v123 - v2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543B8, &qword_1E5C9F8B8);
  v171 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v169 = &v123 - v3;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543C0, &qword_1E5C9F8C0);
  v172 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v170 = &v123 - v4;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543C8, &qword_1E5C9F8C8);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v123 - v5;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543D0, &qword_1E5C9F8D0);
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v123 - v6;
  v161 = type metadata accessor for SearchHint(0);
  MEMORY[0x1EEE9AC00](v161);
  v165 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543D8, &qword_1E5C9F8D8);
  v159 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v156 = &v123 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543E0, &qword_1E5C9F8E0);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v150 = &v123 - v9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543E8, &qword_1E5C9F8E8);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v160 = &v123 - v10;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543F0, &qword_1E5C9F8F0);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v149 = &v123 - v11;
  v144 = type metadata accessor for SearchHistoryItem(0);
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543F8, &qword_1E5C9F8F8);
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v123 - v13;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054400, &qword_1E5C9F900);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v123 - v14;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054408, &qword_1E5C9F908);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v139 = &v123 - v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054410, &qword_1E5C9F910);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v123 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054418, &qword_1E5C9F918);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v123 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054420, &qword_1E5C9F920);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v131 = &v123 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054428, &qword_1E5C9F928);
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v129 = &v123 - v19;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054430, &qword_1E5C9F930);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v123 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054438, &qword_1E5C9F938);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v22 = &v123 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054440, &qword_1E5C9F940);
  v123 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v123 - v24;
  v26 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054448, &qword_1E5C9F948);
  v182 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v30 = &v123 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C3D90C();
  v184 = v30;
  sub_1E5C9D130();
  sub_1E5C426C4(v181, v28, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = *v28;
      LOBYTE(v189) = 6;
      sub_1E5C3DE4C();
      v89 = v138;
      v90 = v193;
      v91 = v184;
      sub_1E5C9CFC0();
      *&v189 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
      sub_1E5C40888(&qword_1ED0540A8, &qword_1ED0540B0, &protocol conformance descriptor for SearchHistoryItem, MEMORY[0x1E69E6300]);
      v92 = v141;
      sub_1E5C9D030();
      (*(v140 + 8))(v89, v92);
      (*(v182 + 8))(v91, v90);

    case 2u:
      LOBYTE(v189) = 7;
      sub_1E5C3DDF8();
      v61 = v139;
      v62 = v193;
      v63 = v184;
      sub_1E5C9CFC0();
      v64 = v143;
      sub_1E5C9D000();

      (*(v142 + 8))(v61, v64);
      return (*(v182 + 8))(v63, v62);
    case 3u:
      v66 = *(v28 + 1);
      v178 = *v28;
      v67 = *(v28 + 2);
      v68 = *(v28 + 3);
      v69 = *(v28 + 4);
      v70 = *(v28 + 5);
      v71 = *(v28 + 6);
      v174 = *(v28 + 7);
      v72 = *(v28 + 9);
      v180 = *(v28 + 8);
      v179 = v72;
      v73 = *(v28 + 11);
      v173 = *(v28 + 10);
      v181 = v73;
      LODWORD(v172) = v28[96];
      v74 = *(v28 + 14);
      v171 = *(v28 + 13);
      v176 = v74;
      v75 = *(v28 + 16);
      v170 = *(v28 + 15);
      v175 = v75;
      v76 = *(v28 + 18);
      v169 = *(v28 + 17);
      v177 = v76;
      LOBYTE(v189) = 8;
      sub_1E5C3DDA4();
      v77 = v155;
      v78 = v184;
      sub_1E5C9CFC0();
      *&v189 = v178;
      *(&v189 + 1) = v66;
      v178 = v66;
      *&v190 = v67;
      *(&v190 + 1) = v68;
      *&v191 = v69;
      *(&v191 + 1) = v70;
      v79 = v77;
      *&v192 = v71;
      LOBYTE(v185) = 0;
      sub_1E5C3DCA8();
      v80 = v158;
      v81 = v183;
      sub_1E5C9D030();
      if (!v81)
      {
        v119 = v175;
        v120 = v176;
        v121 = v177;

        *&v189 = v174;
        *(&v189 + 1) = v180;
        *&v190 = v179;
        *(&v190 + 1) = v173;
        *&v191 = v181;
        LOBYTE(v185) = 1;
        sub_1E5C3DAB0();
        sub_1E5C9D030();

        LOBYTE(v189) = v172;
        *(&v189 + 1) = v171;
        *&v190 = v120;
        *(&v190 + 1) = v170;
        *&v191 = v119;
        *(&v191 + 1) = v169;
        *&v192 = v121;
        LOBYTE(v185) = 2;
        sub_1E5C3DB04();
        sub_1E5C9D030();
        v122 = v184;
        (*(v157 + 8))(v79, v80);
        (*(v182 + 8))(v122, v193);

        goto LABEL_34;
      }

      (*(v157 + 8))(v77, v80);
      (*(v182 + 8))(v78, v193);

    case 4u:
      v42 = v28[16];
      LOBYTE(v189) = 9;
      sub_1E5C3DD50();
      v43 = v145;
      v44 = v193;
      v45 = v184;
      sub_1E5C9CFC0();
      LOBYTE(v189) = 0;
      v46 = v148;
      v47 = v183;
      sub_1E5C9D000();

      if (!v47)
      {
        LOBYTE(v189) = v42;
        LOBYTE(v185) = 1;
        sub_1E5C36AF8();
        sub_1E5C9D030();
      }

      (*(v146 + 8))(v43, v46);
      return (*(v182 + 8))(v45, v44);
    case 5u:
      v94 = v147;
      sub_1E5C40724(v28, v147, type metadata accessor for SearchHistoryItem);
      LOBYTE(v189) = 10;
      sub_1E5C3DCFC();
      v95 = v149;
      v32 = v193;
      v33 = v184;
      sub_1E5C9CFC0();
      sub_1E5C42774(&qword_1ED0540B0, type metadata accessor for SearchHistoryItem, &protocol conformance descriptor for SearchHistoryItem);
      v96 = v152;
      sub_1E5C9D030();
      (*(v151 + 8))(v95, v96);
      v97 = type metadata accessor for SearchHistoryItem;
      goto LABEL_28;
    case 6u:
      v99 = *(v28 + 1);
      v178 = *v28;
      v101 = *(v28 + 2);
      v100 = *(v28 + 3);
      v103 = *(v28 + 4);
      v102 = *(v28 + 5);
      v104 = *(v28 + 6);
      LODWORD(v177) = v28[56];
      v105 = *(v28 + 9);
      v176 = *(v28 + 8);
      v180 = v105;
      v106 = *(v28 + 11);
      v175 = *(v28 + 10);
      v179 = v106;
      v107 = *(v28 + 13);
      v174 = *(v28 + 12);
      v181 = v107;
      LOBYTE(v189) = 11;
      sub_1E5C3DC54();
      v108 = v160;
      v109 = v184;
      sub_1E5C9CFC0();
      *&v189 = v178;
      *(&v189 + 1) = v99;
      v178 = v99;
      *&v190 = v101;
      *(&v190 + 1) = v100;
      *&v191 = v103;
      *(&v191 + 1) = v102;
      *&v192 = v104;
      LOBYTE(v185) = 0;
      sub_1E5C3DCA8();
      v110 = v164;
      v111 = v183;
      sub_1E5C9D030();
      if (v111)
      {

        (*(v163 + 8))(v108, v110);
        (*(v182 + 8))(v109, v193);
      }

      else
      {

        LOBYTE(v189) = v177;
        *(&v189 + 1) = v176;
        *&v190 = v180;
        *(&v190 + 1) = v175;
        *&v191 = v179;
        *(&v191 + 1) = v174;
        *&v192 = v181;
        LOBYTE(v185) = 1;
        sub_1E5C3DB04();
        sub_1E5C9D030();
        (*(v163 + 8))(v108, v110);
        (*(v182 + 8))(v184, v193);

LABEL_34:

LABEL_35:
      }

      break;
    case 7u:
      v82 = *(v28 + 1);
      v189 = *v28;
      v190 = v82;
      v83 = *(v28 + 3);
      v191 = *(v28 + 2);
      v192 = v83;
      LOBYTE(v185) = 13;
      sub_1E5C3DBAC();
      v84 = v156;
      v85 = v193;
      v86 = v184;
      sub_1E5C9CFC0();
      v185 = v189;
      v186 = v190;
      v187 = v191;
      v188 = v192;
      sub_1E5C32CD8();
      v87 = v162;
      sub_1E5C9D030();
      (*(v159 + 8))(v84, v87);
      (*(v182 + 8))(v86, v85);
      return sub_1E5C2A1F0(&v189);
    case 8u:
      v94 = v165;
      sub_1E5C40724(v28, v165, type metadata accessor for SearchHint);
      LOBYTE(v189) = 14;
      sub_1E5C3DB58();
      v117 = v166;
      v32 = v193;
      v33 = v184;
      sub_1E5C9CFC0();
      sub_1E5C42774(&qword_1ED054490, type metadata accessor for SearchHint, &protocol conformance descriptor for SearchHint);
      v118 = v168;
      sub_1E5C9D030();
      (*(v167 + 8))(v117, v118);
      v97 = type metadata accessor for SearchHint;
LABEL_28:
      sub_1E5C4482C(v94, v97);
      goto LABEL_29;
    case 9u:
      v48 = *v28;
      v49 = *(v28 + 1);
      v51 = *(v28 + 2);
      v50 = *(v28 + 3);
      v52 = *(v28 + 4);
      LODWORD(v175) = v28[40];
      v53 = *(v28 + 7);
      v174 = *(v28 + 6);
      v177 = v53;
      v54 = *(v28 + 9);
      v173 = *(v28 + 8);
      v176 = v54;
      v55 = *(v28 + 11);
      v172 = *(v28 + 10);
      v181 = v55;
      LOBYTE(v189) = 15;
      sub_1E5C3DA5C();
      v56 = v178;
      v57 = v193;
      v58 = v184;
      sub_1E5C9CFC0();
      *&v189 = v48;
      *(&v189 + 1) = v49;
      *&v190 = v51;
      *(&v190 + 1) = v50;
      *&v191 = v52;
      LOBYTE(v185) = 0;
      sub_1E5C3DAB0();
      v59 = v180;
      v60 = v183;
      sub_1E5C9D030();

      if (v60)
      {
        (*(v179 + 8))(v56, v59);
        (*(v182 + 8))(v58, v57);
      }

      else
      {
        LOBYTE(v189) = v175;
        *(&v189 + 1) = v174;
        *&v190 = v177;
        *(&v190 + 1) = v173;
        *&v191 = v176;
        *(&v191 + 1) = v172;
        *&v192 = v181;
        LOBYTE(v185) = 1;
        sub_1E5C3DB04();
        sub_1E5C9D030();
        (*(v179 + 8))(v56, v59);
        (*(v182 + 8))(v184, v193);
      }

      goto LABEL_35;
    case 0xAu:
      LOBYTE(v189) = 16;
      sub_1E5C3DA08();
      v113 = v170;
      v114 = v193;
      v115 = v184;
      sub_1E5C9CFC0();
      v116 = v174;
      sub_1E5C9D000();

      (*(v172 + 8))(v113, v116);
      return (*(v182 + 8))(v115, v114);
    case 0xBu:
      LOBYTE(v189) = 0;
      sub_1E5C3E044();
      v39 = v193;
      v40 = v184;
      sub_1E5C9CFC0();
      (*(v123 + 8))(v25, v23);
      return (*(v182 + 8))(v40, v39);
    case 0xCu:
      LOBYTE(v189) = 1;
      sub_1E5C3DFF0();
      v36 = v193;
      v37 = v184;
      sub_1E5C9CFC0();
      (*(v124 + 8))(v22, v125);
      goto LABEL_24;
    case 0xDu:
      LOBYTE(v189) = 2;
      sub_1E5C3DF9C();
      v98 = v126;
      v36 = v193;
      v37 = v184;
      sub_1E5C9CFC0();
      (*(v127 + 8))(v98, v128);
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v189) = 4;
      sub_1E5C3DEF4();
      v38 = v131;
      v36 = v193;
      v37 = v184;
      sub_1E5C9CFC0();
      (*(v133 + 8))(v38, v134);
      goto LABEL_24;
    case 0xFu:
      LOBYTE(v189) = 5;
      sub_1E5C3DEA0();
      v65 = v135;
      v36 = v193;
      v37 = v184;
      sub_1E5C9CFC0();
      (*(v136 + 8))(v65, v137);
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v189) = 12;
      sub_1E5C3DC00();
      v35 = v150;
      v36 = v193;
      v37 = v184;
      sub_1E5C9CFC0();
      (*(v153 + 8))(v35, v154);
      goto LABEL_24;
    case 0x11u:
      LOBYTE(v189) = 17;
      sub_1E5C3D9B4();
      v93 = v169;
      v36 = v193;
      v37 = v184;
      sub_1E5C9CFC0();
      (*(v171 + 8))(v93, v173);
      goto LABEL_24;
    case 0x12u:
      LOBYTE(v189) = 18;
      sub_1E5C3D960();
      v112 = v175;
      v36 = v193;
      v37 = v184;
      sub_1E5C9CFC0();
      (*(v176 + 8))(v112, v177);
LABEL_24:
      result = (*(v182 + 8))(v37, v36);
      break;
    default:
      LOBYTE(v189) = 3;
      sub_1E5C3DF48();
      v31 = v129;
      v32 = v193;
      v33 = v184;
      sub_1E5C9CFC0();
      v34 = v132;
      sub_1E5C9D010();
      (*(v130 + 8))(v31, v34);
LABEL_29:
      result = (*(v182 + 8))(v33, v32);
      break;
  }

  return result;
}

uint64_t type metadata accessor for SearchAction(uint64_t a1)
{
  result = qword_1EE2C43F0;
  if (!qword_1EE2C43F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5C3D90C()
{
  result = qword_1ED054450;
  if (!qword_1ED054450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054450);
  }

  return result;
}

unint64_t sub_1E5C3D960()
{
  result = qword_1ED054458;
  if (!qword_1ED054458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054458);
  }

  return result;
}

unint64_t sub_1E5C3D9B4()
{
  result = qword_1ED054460;
  if (!qword_1ED054460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054460);
  }

  return result;
}

unint64_t sub_1E5C3DA08()
{
  result = qword_1ED054468;
  if (!qword_1ED054468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054468);
  }

  return result;
}

unint64_t sub_1E5C3DA5C()
{
  result = qword_1ED054470;
  if (!qword_1ED054470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054470);
  }

  return result;
}

unint64_t sub_1E5C3DAB0()
{
  result = qword_1ED054478;
  if (!qword_1ED054478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054478);
  }

  return result;
}

unint64_t sub_1E5C3DB04()
{
  result = qword_1ED054480;
  if (!qword_1ED054480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054480);
  }

  return result;
}

unint64_t sub_1E5C3DB58()
{
  result = qword_1ED054488;
  if (!qword_1ED054488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054488);
  }

  return result;
}

unint64_t sub_1E5C3DBAC()
{
  result = qword_1ED054498;
  if (!qword_1ED054498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054498);
  }

  return result;
}

unint64_t sub_1E5C3DC00()
{
  result = qword_1ED0544A0;
  if (!qword_1ED0544A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544A0);
  }

  return result;
}

unint64_t sub_1E5C3DC54()
{
  result = qword_1ED0544A8;
  if (!qword_1ED0544A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544A8);
  }

  return result;
}

unint64_t sub_1E5C3DCA8()
{
  result = qword_1ED0544B0;
  if (!qword_1ED0544B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544B0);
  }

  return result;
}

unint64_t sub_1E5C3DCFC()
{
  result = qword_1ED0544B8;
  if (!qword_1ED0544B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544B8);
  }

  return result;
}

unint64_t sub_1E5C3DD50()
{
  result = qword_1ED0544C0;
  if (!qword_1ED0544C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544C0);
  }

  return result;
}

unint64_t sub_1E5C3DDA4()
{
  result = qword_1ED0544C8;
  if (!qword_1ED0544C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544C8);
  }

  return result;
}

unint64_t sub_1E5C3DDF8()
{
  result = qword_1ED0544D0;
  if (!qword_1ED0544D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544D0);
  }

  return result;
}

unint64_t sub_1E5C3DE4C()
{
  result = qword_1ED0544D8;
  if (!qword_1ED0544D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544D8);
  }

  return result;
}

unint64_t sub_1E5C3DEA0()
{
  result = qword_1ED0544E0;
  if (!qword_1ED0544E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544E0);
  }

  return result;
}

unint64_t sub_1E5C3DEF4()
{
  result = qword_1ED0544E8;
  if (!qword_1ED0544E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544E8);
  }

  return result;
}

unint64_t sub_1E5C3DF48()
{
  result = qword_1ED0544F0;
  if (!qword_1ED0544F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544F0);
  }

  return result;
}

unint64_t sub_1E5C3DF9C()
{
  result = qword_1ED0544F8;
  if (!qword_1ED0544F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544F8);
  }

  return result;
}

unint64_t sub_1E5C3DFF0()
{
  result = qword_1ED054500;
  if (!qword_1ED054500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054500);
  }

  return result;
}

unint64_t sub_1E5C3E044()
{
  result = qword_1ED054508;
  if (!qword_1ED054508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054508);
  }

  return result;
}

uint64_t SearchAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v256 = a2;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054510, &qword_1E5C9F958);
  v236 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v190 - v3;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054518, &qword_1E5C9F960);
  v233 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v254 = &v190 - v4;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054520, &qword_1E5C9F968);
  v232 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v253 = &v190 - v5;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054528, &qword_1E5C9F970);
  v238 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v255 = &v190 - v6;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054530, &qword_1E5C9F978);
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v252 = &v190 - v7;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054538, &qword_1E5C9F980);
  v226 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v250 = &v190 - v8;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054540, &qword_1E5C9F988);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v248 = &v190 - v9;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054548, &qword_1E5C9F990);
  v203 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v251 = &v190 - v10;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054550, &qword_1E5C9F998);
  v222 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v247 = &v190 - v11;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054558, &qword_1E5C9F9A0);
  v201 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v246 = &v190 - v12;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054560, &qword_1E5C9F9A8);
  v202 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v249 = &v190 - v13;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054568, &qword_1E5C9F9B0);
  v218 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v245 = &v190 - v14;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054570, &qword_1E5C9F9B8);
  v217 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v244 = &v190 - v15;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054578, &qword_1E5C9F9C0);
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v243 = &v190 - v16;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054580, &qword_1E5C9F9C8);
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v242 = &v190 - v17;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054588, &qword_1E5C9F9D0);
  v212 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v258 = &v190 - v18;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054590, &qword_1E5C9F9D8);
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v241 = &v190 - v19;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054598, &qword_1E5C9F9E0);
  v208 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v240 = &v190 - v20;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0545A0, &qword_1E5C9F9E8);
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v239 = &v190 - v21;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0545A8, &unk_1E5C9F9F0);
  v262 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v23 = &v190 - v22;
  v261 = type metadata accessor for SearchAction(0);
  v24 = MEMORY[0x1EEE9AC00](v261);
  v200 = (&v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v198 = (&v190 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v205 = &v190 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v199 = (&v190 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v197 = (&v190 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v204 = &v190 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v196 = (&v190 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v190 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = (&v190 - v42);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v190 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v190 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v190 - v50;
  v52 = a1[3];
  v265 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v52);
  sub_1E5C3D90C();
  v263 = v23;
  v53 = v279;
  sub_1E5C9D120();
  if (v53)
  {
LABEL_46:
    v134 = v265;
    return __swift_destroy_boxed_opaque_existential_1(v134);
  }

  v192 = v49;
  v193 = v43;
  v194 = v46;
  v54 = v257;
  v191 = v40;
  v55 = v258;
  v56 = v259;
  v279 = 0;
  v57 = v260;
  v195 = v51;
  v58 = v264;
  v59 = v263;
  v60 = sub_1E5C9CFB0();
  if (*(v60 + 16) != 1 || (v61 = *(v60 + 32), v61 == 19))
  {
    v65 = sub_1E5C9CE90();
    swift_allocError();
    v66 = v59;
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
    *v68 = v261;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v65 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
    (*(v262 + 8))(v66, v58);
LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v190 = v60;
  switch(v61)
  {
    case 1:
      v277[0] = 1;
      sub_1E5C3DFF0();
      v111 = v240;
      v112 = v279;
      sub_1E5C9CF20();
      if (v112)
      {
        goto LABEL_44;
      }

      (*(v208 + 8))(v111, v54);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
      goto LABEL_40;
    case 2:
      v277[0] = 2;
      sub_1E5C3DF9C();
      v95 = v241;
      v96 = v279;
      sub_1E5C9CF20();
      if (v96)
      {
        goto LABEL_44;
      }

      (*(v210 + 8))(v95, v211);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
      goto LABEL_40;
    case 3:
      v277[0] = 3;
      sub_1E5C3DF48();
      v101 = v279;
      sub_1E5C9CF20();
      if (v101)
      {
        goto LABEL_44;
      }

      v102 = v209;
      v103 = sub_1E5C9CF80();
      v104 = v262;
      (*(v212 + 8))(v55, v102);
      (*(v104 + 8))(v59, v264);
      swift_unknownObjectRelease();
      v155 = v192;
      *v192 = v103 & 1;
      goto LABEL_50;
    case 4:
      v277[0] = 4;
      sub_1E5C3DEF4();
      v86 = v242;
      v87 = v279;
      sub_1E5C9CF20();
      if (v87)
      {
        goto LABEL_44;
      }

      (*(v213 + 8))(v86, v214);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
      goto LABEL_40;
    case 5:
      v277[0] = 5;
      sub_1E5C3DEA0();
      v115 = v243;
      v116 = v279;
      sub_1E5C9CF20();
      if (v116)
      {
        goto LABEL_44;
      }

      (*(v215 + 8))(v115, v216);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
      goto LABEL_40;
    case 6:
      v277[0] = 6;
      sub_1E5C3DE4C();
      v121 = v244;
      v122 = v279;
      sub_1E5C9CF20();
      if (v122)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
      sub_1E5C40888(&qword_1ED0540F8, &qword_1ED054100, &protocol conformance descriptor for SearchHistoryItem, MEMORY[0x1E69E6330]);
      v123 = v219;
      sub_1E5C9CFA0();
      (*(v217 + 8))(v121, v123);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v155 = v194;
      *v194 = *v277;
      goto LABEL_50;
    case 7:
      v277[0] = 7;
      sub_1E5C3DDF8();
      v105 = v245;
      v106 = v279;
      sub_1E5C9CF20();
      if (v106)
      {
        goto LABEL_44;
      }

      v107 = v220;
      v108 = sub_1E5C9CF70();
      v109 = v105;
      v110 = v262;
      v157 = v156;
      (*(v218 + 8))(v109, v107);
      (*(v110 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v139 = v193;
      *v193 = v108;
      v139[1] = v157;
      goto LABEL_49;
    case 8:
      v277[0] = 8;
      sub_1E5C3DDA4();
      v132 = v249;
      v133 = v279;
      sub_1E5C9CF20();
      if (v133)
      {
        goto LABEL_44;
      }

      LOBYTE(v272) = 0;
      sub_1E5C40834();
      v136 = v227;
      sub_1E5C9CFA0();
      v161 = *&v277[8];
      v279 = *v277;
      v162 = v132;
      v163 = *&v277[16];
      v165 = *v278;
      v164 = *&v278[8];
      v166 = *&v278[16];
      LOBYTE(v272) = 1;
      sub_1E5C4078C();
      sub_1E5C9CFA0();
      v254 = v164;
      v257 = v165;
      v258 = v163;
      v259 = v161;
      v260 = v166;
      v255 = *(&v163 + 1);
      v180 = v267;
      v181 = v268;
      v182 = v269;
      v183 = v270;
      v184 = v271;
      v266 = 2;
      sub_1E5C407E0();
      sub_1E5C9CFA0();
      (*(v202 + 8))(v162, v136);
      (*(v262 + 8))(v263, v264);
      swift_unknownObjectRelease();
      v185 = v272;
      v186 = v273;
      v187 = v274;
      v188 = v275;
      v171 = v191;
      *v191 = v279;
      v171[1] = v259;
      v171[2] = v258;
      v171[3] = v255;
      v171[4] = v257;
      v171[5] = v254;
      v171[6] = v260;
      v171[7] = v180;
      v171[8] = v181;
      v171[9] = v182;
      v171[10] = v183;
      v171[11] = v184;
      *(v171 + 96) = v185;
      *(v171 + 13) = v186;
      v171[15] = v187;
      v171[16] = v188;
      *(v171 + 17) = v276;
      goto LABEL_52;
    case 9:
      v277[0] = 9;
      sub_1E5C3DD50();
      v90 = v246;
      v91 = v279;
      sub_1E5C9CF20();
      if (v91)
      {
        goto LABEL_44;
      }

      v277[0] = 0;
      v92 = v221;
      v93 = sub_1E5C9CF70();
      v94 = v262;
      v145 = v90;
      v146 = v59;
      v147 = v58;
      v148 = v92;
      v149 = v93;
      v151 = v150;
      LOBYTE(v272) = 1;
      sub_1E5C36DE4();
      sub_1E5C9CFA0();
      (*(v201 + 8))(v145, v148);
      (*(v94 + 8))(v146, v147);
      swift_unknownObjectRelease();
      v174 = v277[0];
      v171 = v196;
      *v196 = v149;
      v171[1] = v151;
      *(v171 + 16) = v174;
      goto LABEL_52;
    case 10:
      v277[0] = 10;
      sub_1E5C3DCFC();
      v125 = v247;
      v126 = v279;
      sub_1E5C9CF20();
      if (v126)
      {
        goto LABEL_44;
      }

      v127 = v59;
      v128 = v58;
      type metadata accessor for SearchHistoryItem(0);
      sub_1E5C42774(&qword_1ED054100, type metadata accessor for SearchHistoryItem, &protocol conformance descriptor for SearchHistoryItem);
      v79 = v204;
      v129 = v223;
      sub_1E5C9CFA0();
      v130 = v125;
      v131 = v262;
      (*(v222 + 8))(v130, v129);
      (*(v131 + 8))(v127, v128);
      swift_unknownObjectRelease();
      goto LABEL_51;
    case 11:
      v277[0] = 11;
      sub_1E5C3DC54();
      v83 = v251;
      v84 = v279;
      sub_1E5C9CF20();
      if (v84)
      {
        goto LABEL_44;
      }

      LOBYTE(v272) = 0;
      sub_1E5C40834();
      v85 = v229;
      sub_1E5C9CFA0();
      v140 = *v277;
      v141 = v83;
      v279 = *&v277[24];
      v142 = *&v277[16];
      v143 = *v278;
      v260 = *&v278[8];
      v144 = *&v278[16];
      LOBYTE(v267) = 1;
      sub_1E5C407E0();
      sub_1E5C9CFA0();
      (*(v203 + 8))(v141, v85);
      (*(v262 + 8))(v263, v58);
      swift_unknownObjectRelease();
      v167 = v272;
      v168 = v273;
      v169 = v274;
      v170 = v275;
      v171 = v197;
      *v197 = v140;
      v172 = v279;
      v171[2] = v142;
      v171[3] = v172;
      v173 = v260;
      v171[4] = v143;
      v171[5] = v173;
      v171[6] = v144;
      *(v171 + 56) = v167;
      *(v171 + 4) = v168;
      v171[10] = v169;
      v171[11] = v170;
      *(v171 + 6) = v276;
      goto LABEL_52;
    case 12:
      v277[0] = 12;
      sub_1E5C3DC00();
      v88 = v248;
      v89 = v279;
      sub_1E5C9CF20();
      if (v89)
      {
        goto LABEL_44;
      }

      (*(v224 + 8))(v88, v225);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
      goto LABEL_40;
    case 13:
      v277[0] = 13;
      sub_1E5C3DBAC();
      v117 = v250;
      v118 = v279;
      sub_1E5C9CF20();
      if (v118)
      {
        goto LABEL_44;
      }

      sub_1E5C3376C();
      v119 = v228;
      sub_1E5C9CFA0();
      v120 = (v262 + 8);
      (*(v226 + 8))(v117, v119);
      (*v120)(v59, v58);
      swift_unknownObjectRelease();
      v159 = *&v277[16];
      v155 = v199;
      *v199 = *v277;
      v155[1] = v159;
      v160 = *&v278[16];
      v155[2] = *v278;
      v155[3] = v160;
LABEL_50:
      swift_storeEnumTagMultiPayload();
      v158 = v155;
      goto LABEL_53;
    case 14:
      v277[0] = 14;
      sub_1E5C3DB58();
      v75 = v252;
      v76 = v279;
      sub_1E5C9CF20();
      if (v76)
      {
        goto LABEL_44;
      }

      v77 = v59;
      v78 = v58;
      type metadata accessor for SearchHint(0);
      sub_1E5C42774(&qword_1ED0545C0, type metadata accessor for SearchHint, &protocol conformance descriptor for SearchHint);
      v79 = v205;
      v80 = v231;
      sub_1E5C9CFA0();
      v81 = v75;
      v82 = v262;
      (*(v230 + 8))(v81, v80);
      (*(v82 + 8))(v77, v78);
      swift_unknownObjectRelease();
LABEL_51:
      swift_storeEnumTagMultiPayload();
      v158 = v79;
      goto LABEL_53;
    case 15:
      v277[0] = 15;
      sub_1E5C3DA5C();
      v97 = v255;
      v98 = v279;
      sub_1E5C9CF20();
      if (v98)
      {
        goto LABEL_44;
      }

      v277[0] = 0;
      sub_1E5C4078C();
      v99 = v237;
      sub_1E5C9CFA0();
      v100 = v262;
      v152 = v272;
      v153 = v273;
      v279 = v274;
      v154 = v275;
      LOBYTE(v267) = 1;
      sub_1E5C407E0();
      sub_1E5C9CFA0();
      (*(v238 + 8))(v97, v99);
      (*(v100 + 8))(v263, v264);
      swift_unknownObjectRelease();
      v175 = v277[0];
      v176 = *&v277[8];
      v177 = *&v277[24];
      v178 = *v278;
      v171 = v198;
      *v198 = v152;
      v171[1] = v153;
      v179 = v279;
      v171[2] = *(&v153 + 1);
      v171[3] = v179;
      v171[4] = v154;
      *(v171 + 40) = v175;
      *(v171 + 3) = v176;
      v171[8] = v177;
      v171[9] = v178;
      *(v171 + 5) = *&v278[8];
LABEL_52:
      swift_storeEnumTagMultiPayload();
      v158 = v171;
      goto LABEL_53;
    case 16:
      v277[0] = 16;
      sub_1E5C3DA08();
      v69 = v253;
      v70 = v279;
      sub_1E5C9CF20();
      if (v70)
      {
        goto LABEL_44;
      }

      v71 = v234;
      v72 = sub_1E5C9CF70();
      v73 = v69;
      v74 = v262;
      v138 = v137;
      (*(v232 + 8))(v73, v71);
      (*(v74 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v139 = v200;
      *v200 = v72;
      v139[1] = v138;
LABEL_49:
      swift_storeEnumTagMultiPayload();
      v158 = v139;
LABEL_53:
      v64 = v195;
      sub_1E5C40724(v158, v195, type metadata accessor for SearchAction);
      goto LABEL_54;
    case 17:
      v277[0] = 17;
      sub_1E5C3D9B4();
      v113 = v254;
      v114 = v279;
      sub_1E5C9CF20();
      if (v114)
      {
        goto LABEL_44;
      }

      (*(v233 + 8))(v113, v235);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
      goto LABEL_40;
    case 18:
      v277[0] = 18;
      sub_1E5C3D960();
      v124 = v279;
      sub_1E5C9CF20();
      if (v124)
      {
        goto LABEL_44;
      }

      (*(v236 + 8))(v56, v57);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
      goto LABEL_40;
    default:
      v277[0] = 0;
      sub_1E5C3E044();
      v62 = v239;
      v63 = v279;
      sub_1E5C9CF20();
      if (v63)
      {
LABEL_44:
        (*(v262 + 8))(v59, v58);
        goto LABEL_45;
      }

      (*(v206 + 8))(v62, v207);
      (*(v262 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v64 = v195;
LABEL_40:
      swift_storeEnumTagMultiPayload();
LABEL_54:
      v189 = v265;
      sub_1E5C40724(v64, v256, type metadata accessor for SearchAction);
      v134 = v189;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v134);
}

uint64_t sub_1E5C40724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5C4078C()
{
  result = qword_1ED0545B0;
  if (!qword_1ED0545B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545B0);
  }

  return result;
}

unint64_t sub_1E5C407E0()
{
  result = qword_1ED0545B8;
  if (!qword_1ED0545B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545B8);
  }

  return result;
}

unint64_t sub_1E5C40834()
{
  result = qword_1ED0545C8;
  if (!qword_1ED0545C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545C8);
  }

  return result;
}

uint64_t sub_1E5C40888(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0540A0, &qword_1E5C9F950);
    sub_1E5C42774(a2, type metadata accessor for SearchHistoryItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchAction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchHint(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchHistoryItem(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v50 - v12;
  v14 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5C426C4(v2, v16, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = *v16;
      MEMORY[0x1E69399F0](6);
      MEMORY[0x1E69399F0](*(v38 + 16));
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v41 = *(v8 + 72);
        do
        {
          sub_1E5C426C4(v40, v13, type metadata accessor for SearchHistoryItem);
          sub_1E5C9CC60();
          sub_1E5C9BB60();
          sub_1E5C42774(&qword_1ED054130, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
          sub_1E5C9CBB0();
          sub_1E5C4482C(v13, type metadata accessor for SearchHistoryItem);
          v40 += v41;
          --v39;
        }

        while (v39);
      }

    case 2u:
      v24 = 7;
      goto LABEL_28;
    case 3u:
      v25 = v16[1];
      v26 = v16[2];
      v28 = v16[6];
      v27 = v16[7];
      v50[1] = v16[5];
      v50[2] = v27;
      v30 = v16[8];
      v29 = v16[9];
      v31 = v16[10];
      v50[5] = v16[11];
      v51 = v29;
      v32 = v16[14];
      v33 = v16[15];
      v52 = v16[13];
      v53 = v33;
      v34 = v16[17];
      v55 = v16[16];
      v56 = v32;
      v50[3] = v34;
      v50[4] = v31;
      v54 = v16[18];
      MEMORY[0x1E69399F0](8);
      sub_1E5C9D0F0();
      if (v25)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v26);
      sub_1E5C9CC60();
      sub_1E5C9D0F0();
      if (v28)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9D0F0();
      if (v30)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2AB00(a1, v51);
      sub_1E5C9CC60();

      sub_1E5C9CC60();

      sub_1E5C9CC60();
      sub_1E5C9CC60();
      if (v54)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    case 4u:
      MEMORY[0x1E69399F0](9);
      sub_1E5C9CC60();

      sub_1E5C9CC60();

    case 5u:
      sub_1E5C40724(v16, v11, type metadata accessor for SearchHistoryItem);
      MEMORY[0x1E69399F0](10);
      sub_1E5C9CC60();
      sub_1E5C9BB60();
      sub_1E5C42774(&qword_1ED054130, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1E5C9CBB0();
      return sub_1E5C4482C(v11, type metadata accessor for SearchHistoryItem);
    case 6u:
      v42 = v16[1];
      v43 = v16[2];
      v44 = v16[5];
      v45 = v16[6];
      v46 = v16[9];
      v47 = v16[10];
      v53 = v16[8];
      v54 = v47;
      v49 = v16[12];
      v48 = v16[13];
      v51 = v44;
      v52 = v49;
      v55 = v48;
      v56 = v46;
      MEMORY[0x1E69399F0](11);
      sub_1E5C9D0F0();
      if (v42)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v43);
      sub_1E5C9CC60();
      sub_1E5C9D0F0();
      if (v45)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9CC60();

      sub_1E5C9CC60();
      sub_1E5C9CC60();
      if (v55)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    case 7u:
      v35 = v16[1];
      v36 = v16[4];
      v37 = v16[7];
      MEMORY[0x1E69399F0](13);
      sub_1E5C9D0F0();
      if (v35)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v36);
      sub_1E5C9CC60();
      sub_1E5C2A6D0(a1, v37);

    case 8u:
      sub_1E5C40724(v16, v6, type metadata accessor for SearchHint);
      MEMORY[0x1E69399F0](14);
      sub_1E5C9BBA0();
      sub_1E5C42774(&qword_1ED053F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1E5C9CBB0();
      if (*&v6[*(v4 + 20) + 8])
      {
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
      }

      else
      {
        sub_1E5C9D0F0();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](*&v6[*(v4 + 28)]);
      sub_1E5C9CC60();
      return sub_1E5C4482C(v6, type metadata accessor for SearchHint);
    case 9u:
      v19 = v16[1];
      v20 = v16[2];
      v21 = v16[6];
      v56 = v16[7];
      v22 = v16[8];
      v54 = v21;
      v55 = v22;
      v23 = v16[11];
      v53 = v16[10];
      MEMORY[0x1E69399F0](15);
      sub_1E5C9D0F0();
      if (v19)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2AB00(a1, v20);
      sub_1E5C9CC60();

      sub_1E5C9CC60();

      sub_1E5C9CC60();
      sub_1E5C9CC60();
      if (v23)
      {
LABEL_43:
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
      }

      else
      {
LABEL_44:
        sub_1E5C9D0F0();
      }

    case 0xAu:
      v24 = 16;
LABEL_28:
      MEMORY[0x1E69399F0](v24);
      sub_1E5C9CC60();

    case 0xBu:
      v18 = 0;
      goto LABEL_26;
    case 0xCu:
      v18 = 1;
      goto LABEL_26;
    case 0xDu:
      v18 = 2;
      goto LABEL_26;
    case 0xEu:
      v18 = 4;
      goto LABEL_26;
    case 0xFu:
      v18 = 5;
      goto LABEL_26;
    case 0x10u:
      v18 = 12;
      goto LABEL_26;
    case 0x11u:
      v18 = 17;
      goto LABEL_26;
    case 0x12u:
      v18 = 18;
LABEL_26:
      result = MEMORY[0x1E69399F0](v18);
      break;
    default:
      MEMORY[0x1E69399F0](3);
      result = sub_1E5C9D0F0();
      break;
  }

  return result;
}

uint64_t SearchAction.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchAction.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C41540()
{
  sub_1E5C9D0D0();
  SearchAction.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C41584(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchAction.hash(into:)(v2);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B6ActionO2eeoiySbAC_ACtFZ_0(char *a1, uint64_t *a2)
{
  v183 = a1;
  v184 = a2;
  v2 = type metadata accessor for SearchHint(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v175 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for SearchHistoryItem(0);
  MEMORY[0x1EEE9AC00](v174);
  v176 = (&v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SearchAction(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v178 = (&v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v179 = &v155 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v180 = &v155 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v181 = (&v155 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v177 = &v155 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v182 = (&v155 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v155 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v155 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v155 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v155 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v155 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054778, &unk_1E5CA0EF0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v155 - v34;
  v36 = (&v155 + *(v33 + 56) - v34);
  sub_1E5C426C4(v183, &v155 - v34, type metadata accessor for SearchAction);
  v37 = v184;
  v184 = v36;
  sub_1E5C426C4(v37, v36, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1E5C426C4(v35, v29, type metadata accessor for SearchAction);
      v115 = *v29;
      v116 = v184;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_60;
      }

      v40 = sub_1E5C76580(v115, *v116);

      goto LABEL_78;
    case 2u:
      sub_1E5C426C4(v35, v26, type metadata accessor for SearchAction);
      v72 = *v26;
      v71 = v26[1];
      v73 = v184;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    case 3u:
      v183 = v35;
      sub_1E5C426C4(v35, v23, type metadata accessor for SearchAction);
      v74 = *(v23 + 1);
      v180 = *(v23 + 2);
      v181 = v74;
      v75 = *(v23 + 4);
      v76 = *(v23 + 7);
      v182 = *(v23 + 6);
      v178 = v76;
      v179 = v75;
      v78 = *(v23 + 8);
      v77 = *(v23 + 9);
      v79 = *(v23 + 11);
      v177 = *(v23 + 10);
      LODWORD(v176) = v23[96];
      v80 = *(v23 + 13);
      v81 = *(v23 + 14);
      v82 = *(v23 + 16);
      v174 = *(v23 + 15);
      v175 = v80;
      v83 = *(v23 + 18);
      v173 = *(v23 + 17);
      v84 = v184;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_68;
      }

      v168 = v77;
      v169 = v82;
      v170 = v81;
      v171 = v78;
      v172 = v83;
      v85 = *(v23 + 5);
      v86 = *(v23 + 3);
      v87 = *v23;
      v88 = *v84;
      v89 = v84[1];
      v91 = v84[2];
      v90 = v84[3];
      v93 = v84[4];
      v92 = v84[5];
      v95 = v84[6];
      v94 = v84[7];
      v96 = v84[8];
      v166 = v79;
      v167 = v96;
      v163 = v84[9];
      v160 = v84[10];
      v161 = v94;
      v97 = v84[11];
      v159 = *(v84 + 96);
      v158 = v84[13];
      v164 = v84[14];
      v165 = v97;
      v98 = v84[15];
      v162 = v84[16];
      v156 = v84[17];
      v157 = v98;
      v184 = v84[18];
      *&v197 = v87;
      *(&v197 + 1) = v181;
      *&v198 = v180;
      *(&v198 + 1) = v86;
      *&v199 = v179;
      *(&v199 + 1) = v85;
      *&v200 = v182;
      *&v193 = v88;
      *(&v193 + 1) = v89;
      *&v194 = v91;
      *(&v194 + 1) = v90;
      *&v195 = v93;
      *(&v195 + 1) = v92;
      *&v196 = v95;
      v99 = static SearchResult.== infix(_:_:)(&v197, &v193);

      if ((v99 & 1) == 0)
      {

        goto LABEL_82;
      }

      v100 = v164;
      *&v197 = v178;
      *(&v197 + 1) = v171;
      *&v198 = v168;
      *(&v198 + 1) = v177;
      *&v199 = v166;
      v101 = v162;
      *&v193 = v161;
      *(&v193 + 1) = v167;
      *&v194 = v163;
      *(&v194 + 1) = v160;
      *&v195 = v165;
      v102 = _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(&v197, &v193);

      v103 = v183;
      if (v102)
      {
        LOBYTE(v197) = v176;
        *(&v197 + 1) = v175;
        *&v198 = v170;
        *(&v198 + 1) = v174;
        *&v199 = v169;
        *(&v199 + 1) = v173;
        *&v200 = v172;
        LOBYTE(v193) = v159;
        *(&v193 + 1) = v158;
        *&v194 = v100;
        *(&v194 + 1) = v157;
        *&v195 = v101;
        *(&v195 + 1) = v156;
        *&v196 = v184;
        v40 = _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(&v197, &v193);

        sub_1E5C4482C(v103, type metadata accessor for SearchAction);
        return v40 & 1;
      }

      sub_1E5C4482C(v103, type metadata accessor for SearchAction);
      goto LABEL_72;
    case 4u:
      sub_1E5C426C4(v35, v20, type metadata accessor for SearchAction);
      v42 = *v20;
      v41 = *(v20 + 1);
      v43 = v20[16];
      v44 = v184;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_60;
      }

      v45 = *v44;
      v46 = v44[1];
      v47 = *(v44 + 16);
      if (v42 == v45 && v41 == v46)
      {
      }

      else
      {
        v49 = sub_1E5C9D060();

        if ((v49 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      v40 = sub_1E5C76194(v43, v47);
      goto LABEL_78;
    case 5u:
      v117 = v182;
      sub_1E5C426C4(v35, v182, type metadata accessor for SearchAction);
      v118 = v184;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v152 = type metadata accessor for SearchHistoryItem;
        v153 = v117;
        goto LABEL_70;
      }

      v119 = v176;
      sub_1E5C40724(v118, v176, type metadata accessor for SearchHistoryItem);
      if (*v117 == *v119 && v117[1] == v119[1] || (sub_1E5C9D060()) && (sub_1E5C9BB50())
      {
        sub_1E5C4482C(v119, type metadata accessor for SearchHistoryItem);
        sub_1E5C4482C(v117, type metadata accessor for SearchHistoryItem);
        goto LABEL_65;
      }

      sub_1E5C4482C(v119, type metadata accessor for SearchHistoryItem);
      sub_1E5C4482C(v117, type metadata accessor for SearchHistoryItem);
      goto LABEL_75;
    case 6u:
      v183 = v35;
      v120 = v177;
      sub_1E5C426C4(v35, v177, type metadata accessor for SearchAction);
      v122 = *(v120 + 8);
      v121 = *(v120 + 16);
      v123 = *(v120 + 32);
      v124 = *(v120 + 48);
      LODWORD(v182) = *(v120 + 56);
      v125 = *(v120 + 64);
      v126 = *(v120 + 72);
      v127 = *(v120 + 88);
      v180 = *(v120 + 80);
      v181 = v125;
      v128 = *(v120 + 104);
      v179 = *(v120 + 96);
      v129 = v184;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_68;
      }

      v175 = v127;
      v176 = v126;
      v178 = v128;
      v130 = *(v120 + 40);
      v131 = *(v120 + 24);
      v132 = *v120;
      v133 = *v129;
      v134 = v129[1];
      v135 = v129;
      v137 = v129[2];
      v136 = v129[3];
      v138 = v129[4];
      v139 = v135[5];
      v140 = v135[6];
      LODWORD(v173) = *(v135 + 56);
      v172 = v135[8];
      v177 = v135[9];
      v171 = v135[10];
      v174 = v135[11];
      v142 = v135[12];
      v141 = v135[13];
      v170 = v142;
      v184 = v141;
      *&v197 = v132;
      *(&v197 + 1) = v122;
      *&v198 = v121;
      *(&v198 + 1) = v131;
      *&v199 = v123;
      *(&v199 + 1) = v130;
      *&v200 = v124;
      *&v193 = v133;
      *(&v193 + 1) = v134;
      *&v194 = v137;
      *(&v194 + 1) = v136;
      *&v195 = v138;
      *(&v195 + 1) = v139;
      *&v196 = v140;
      v143 = static SearchResult.== infix(_:_:)(&v197, &v193);

      if ((v143 & 1) == 0)
      {
        goto LABEL_81;
      }

      LOBYTE(v197) = v182;
      *(&v197 + 1) = v181;
      *&v198 = v176;
      *(&v198 + 1) = v180;
      *&v199 = v175;
      *(&v199 + 1) = v179;
      *&v200 = v178;
      LOBYTE(v193) = v173;
      *(&v193 + 1) = v172;
      *&v194 = v177;
      *(&v194 + 1) = v171;
      *&v195 = v174;
      *(&v195 + 1) = v170;
      *&v196 = v184;
      v40 = _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(&v197, &v193);

      goto LABEL_47;
    case 7u:
      v104 = v181;
      sub_1E5C426C4(v35, v181, type metadata accessor for SearchAction);
      v105 = v104[1];
      v197 = *v104;
      v198 = v105;
      v106 = v104[3];
      v199 = v104[2];
      v200 = v106;
      v107 = v184;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v108 = *(v107 + 1);
        v193 = *v107;
        v194 = v108;
        v109 = *(v107 + 3);
        v111 = *v107;
        v110 = *(v107 + 1);
        v195 = *(v107 + 2);
        v196 = v109;
        v112 = v104[1];
        v189 = *v104;
        v190 = v112;
        v113 = v104[3];
        v191 = v104[2];
        v192 = v113;
        v185 = v111;
        v186 = v110;
        v114 = *(v107 + 3);
        v187 = *(v107 + 2);
        v188 = v114;
        v40 = static SearchResultScope.== infix(_:_:)();
        sub_1E5C2A1F0(&v193);
        sub_1E5C2A1F0(&v197);
        goto LABEL_78;
      }

      sub_1E5C2A1F0(&v197);
      goto LABEL_71;
    case 8u:
      v149 = v180;
      sub_1E5C426C4(v35, v180, type metadata accessor for SearchAction);
      v150 = v184;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v152 = type metadata accessor for SearchHint;
        v153 = v149;
LABEL_70:
        sub_1E5C4482C(v153, v152);
        goto LABEL_71;
      }

      v151 = v175;
      sub_1E5C40724(v150, v175, type metadata accessor for SearchHint);
      v40 = _s13FitnessSearch0B4HintV2eeoiySbAC_ACtFZ_0(v149, v151);
      sub_1E5C4482C(v151, type metadata accessor for SearchHint);
      sub_1E5C4482C(v149, type metadata accessor for SearchHint);
LABEL_78:
      sub_1E5C4482C(v35, type metadata accessor for SearchAction);
      return v40 & 1;
    case 9u:
      v183 = v35;
      v50 = v179;
      sub_1E5C426C4(v35, v179, type metadata accessor for SearchAction);
      v52 = *(v50 + 8);
      v51 = *(v50 + 16);
      v53 = *(v50 + 32);
      v54 = *(v50 + 40);
      v55 = *(v50 + 48);
      v56 = *(v50 + 56);
      v181 = *(v50 + 64);
      v182 = v55;
      v57 = *(v50 + 72);
      v180 = *(v50 + 80);
      v58 = *(v50 + 88);
      v59 = v184;
      if (swift_getEnumCaseMultiPayload() != 9)
      {

LABEL_68:

        v35 = v183;
        goto LABEL_71;
      }

      LODWORD(v176) = v54;
      v178 = v58;
      v60 = *(v50 + 24);
      v61 = *v50;
      v62 = *v59;
      v63 = v59[1];
      v65 = v59[2];
      v64 = v59[3];
      v66 = v59[4];
      LODWORD(v175) = *(v59 + 40);
      v67 = v59[6];
      v179 = v59[7];
      v68 = v59[9];
      v173 = v59[8];
      v174 = v67;
      v177 = v68;
      v69 = v59[11];
      v172 = v59[10];
      v184 = v69;
      *&v197 = v61;
      *(&v197 + 1) = v52;
      *&v198 = v51;
      *(&v198 + 1) = v60;
      *&v199 = v53;
      *&v193 = v62;
      *(&v193 + 1) = v63;
      *&v194 = v65;
      *(&v194 + 1) = v64;
      *&v195 = v66;
      v70 = _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(&v197, &v193);

      if ((v70 & 1) == 0)
      {
LABEL_81:

LABEL_82:

        sub_1E5C4482C(v183, type metadata accessor for SearchAction);
        goto LABEL_72;
      }

      LOBYTE(v197) = v176;
      *(&v197 + 1) = v182;
      *&v198 = v56;
      *(&v198 + 1) = v181;
      *&v199 = v57;
      *(&v199 + 1) = v180;
      *&v200 = v178;
      LOBYTE(v193) = v175;
      *(&v193 + 1) = v174;
      *&v194 = v179;
      *(&v194 + 1) = v173;
      *&v195 = v177;
      *(&v195 + 1) = v172;
      *&v196 = v184;
      v40 = _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(&v197, &v193);

LABEL_47:

      sub_1E5C4482C(v183, type metadata accessor for SearchAction);
      return v40 & 1;
    case 0xAu:
      v144 = v178;
      sub_1E5C426C4(v35, v178, type metadata accessor for SearchAction);
      v72 = *v144;
      v71 = v144[1];
      v73 = v184;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
LABEL_60:

LABEL_71:
        sub_1E5C447C4(v35);
        goto LABEL_72;
      }

LABEL_51:
      v145 = *v73;
      v146 = v73[1];
      if (v72 == v145 && v71 == v146)
      {

        goto LABEL_65;
      }

      v148 = sub_1E5C9D060();

      if (v148)
      {
LABEL_65:
        sub_1E5C4482C(v35, type metadata accessor for SearchAction);
        v40 = 1;
        return v40 & 1;
      }

LABEL_75:
      sub_1E5C4482C(v35, type metadata accessor for SearchAction);
LABEL_72:
      v40 = 0;
      return v40 & 1;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    default:
      sub_1E5C426C4(v35, v31, type metadata accessor for SearchAction);
      v38 = v184;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_71;
      }

      v39 = *v31 ^ *v38;
      sub_1E5C4482C(v35, type metadata accessor for SearchAction);
      v40 = v39 ^ 1;
      return v40 & 1;
  }
}

uint64_t sub_1E5C426C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C42774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5C4280C(uint64_t a1)
{
  sub_1E5C223F8(319);
  if (v1 <= 0x3F)
  {
    sub_1E5C4294C();
    if (v2 <= 0x3F)
    {
      sub_1E5C429B4(319, &qword_1EE2C4080, MEMORY[0x1E69E6158], &type metadata for SearchQueryMethod);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SearchHistoryItem(319);
        if (v4 <= 0x3F)
        {
          sub_1E5C429B4(319, qword_1EE2C4350, &type metadata for SearchResult, &type metadata for SearchSession);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SearchHint(319);
            if (v6 <= 0x3F)
            {
              sub_1E5C429B4(319, &qword_1EE2C48F8, &type metadata for SearchHintsResult, &type metadata for SearchSession);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E5C4294C()
{
  if (!qword_1EE2C4348)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C4348);
    }
  }
}

void sub_1E5C429B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9QueryModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9QueryModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SearchConstants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E5C42EA8()
{
  result = qword_1ED0545D8;
  if (!qword_1ED0545D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545D8);
  }

  return result;
}

unint64_t sub_1E5C42F00()
{
  result = qword_1ED0545E0;
  if (!qword_1ED0545E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545E0);
  }

  return result;
}

unint64_t sub_1E5C42F58()
{
  result = qword_1ED0545E8;
  if (!qword_1ED0545E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545E8);
  }

  return result;
}

unint64_t sub_1E5C42FB0()
{
  result = qword_1ED0545F0;
  if (!qword_1ED0545F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545F0);
  }

  return result;
}

unint64_t sub_1E5C43008()
{
  result = qword_1ED0545F8;
  if (!qword_1ED0545F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545F8);
  }

  return result;
}

unint64_t sub_1E5C43060()
{
  result = qword_1ED054600;
  if (!qword_1ED054600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054600);
  }

  return result;
}

unint64_t sub_1E5C430B8()
{
  result = qword_1ED054608;
  if (!qword_1ED054608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054608);
  }

  return result;
}

unint64_t sub_1E5C43110()
{
  result = qword_1ED054610;
  if (!qword_1ED054610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054610);
  }

  return result;
}

unint64_t sub_1E5C43168()
{
  result = qword_1ED054618;
  if (!qword_1ED054618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054618);
  }

  return result;
}

unint64_t sub_1E5C431C0()
{
  result = qword_1ED054620;
  if (!qword_1ED054620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054620);
  }

  return result;
}

unint64_t sub_1E5C43218()
{
  result = qword_1ED054628;
  if (!qword_1ED054628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054628);
  }

  return result;
}

unint64_t sub_1E5C43270()
{
  result = qword_1ED054630;
  if (!qword_1ED054630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054630);
  }

  return result;
}

unint64_t sub_1E5C432C8()
{
  result = qword_1ED054638;
  if (!qword_1ED054638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054638);
  }

  return result;
}

unint64_t sub_1E5C43320()
{
  result = qword_1ED054640;
  if (!qword_1ED054640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054640);
  }

  return result;
}

unint64_t sub_1E5C43378()
{
  result = qword_1ED054648;
  if (!qword_1ED054648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054648);
  }

  return result;
}

unint64_t sub_1E5C433D0()
{
  result = qword_1ED054650;
  if (!qword_1ED054650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054650);
  }

  return result;
}

unint64_t sub_1E5C43428()
{
  result = qword_1ED054658;
  if (!qword_1ED054658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054658);
  }

  return result;
}

unint64_t sub_1E5C43480()
{
  result = qword_1ED054660;
  if (!qword_1ED054660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054660);
  }

  return result;
}

unint64_t sub_1E5C434D8()
{
  result = qword_1ED054668;
  if (!qword_1ED054668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054668);
  }

  return result;
}

unint64_t sub_1E5C43530()
{
  result = qword_1ED054670;
  if (!qword_1ED054670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054670);
  }

  return result;
}

unint64_t sub_1E5C43588()
{
  result = qword_1ED054678;
  if (!qword_1ED054678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054678);
  }

  return result;
}

unint64_t sub_1E5C435E0()
{
  result = qword_1ED054680;
  if (!qword_1ED054680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054680);
  }

  return result;
}

unint64_t sub_1E5C43638()
{
  result = qword_1ED054688;
  if (!qword_1ED054688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054688);
  }

  return result;
}

unint64_t sub_1E5C43690()
{
  result = qword_1ED054690;
  if (!qword_1ED054690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054690);
  }

  return result;
}

unint64_t sub_1E5C436E8()
{
  result = qword_1ED054698;
  if (!qword_1ED054698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054698);
  }

  return result;
}

unint64_t sub_1E5C43740()
{
  result = qword_1ED0546A0;
  if (!qword_1ED0546A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546A0);
  }

  return result;
}

unint64_t sub_1E5C43798()
{
  result = qword_1ED0546A8;
  if (!qword_1ED0546A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546A8);
  }

  return result;
}

unint64_t sub_1E5C437F0()
{
  result = qword_1ED0546B0;
  if (!qword_1ED0546B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546B0);
  }

  return result;
}

unint64_t sub_1E5C43848()
{
  result = qword_1ED0546B8;
  if (!qword_1ED0546B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546B8);
  }

  return result;
}

unint64_t sub_1E5C438A0()
{
  result = qword_1ED0546C0;
  if (!qword_1ED0546C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546C0);
  }

  return result;
}

unint64_t sub_1E5C438F8()
{
  result = qword_1ED0546C8;
  if (!qword_1ED0546C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546C8);
  }

  return result;
}

unint64_t sub_1E5C43950()
{
  result = qword_1ED0546D0;
  if (!qword_1ED0546D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546D0);
  }

  return result;
}

unint64_t sub_1E5C439A8()
{
  result = qword_1ED0546D8;
  if (!qword_1ED0546D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546D8);
  }

  return result;
}

unint64_t sub_1E5C43A00()
{
  result = qword_1ED0546E0;
  if (!qword_1ED0546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546E0);
  }

  return result;
}

unint64_t sub_1E5C43A58()
{
  result = qword_1ED0546E8;
  if (!qword_1ED0546E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546E8);
  }

  return result;
}

unint64_t sub_1E5C43AB0()
{
  result = qword_1ED0546F0;
  if (!qword_1ED0546F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546F0);
  }

  return result;
}

unint64_t sub_1E5C43B08()
{
  result = qword_1ED0546F8;
  if (!qword_1ED0546F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546F8);
  }

  return result;
}

unint64_t sub_1E5C43B60()
{
  result = qword_1ED054700;
  if (!qword_1ED054700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054700);
  }

  return result;
}

unint64_t sub_1E5C43BB8()
{
  result = qword_1ED054708;
  if (!qword_1ED054708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054708);
  }

  return result;
}

unint64_t sub_1E5C43C10()
{
  result = qword_1ED054710;
  if (!qword_1ED054710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054710);
  }

  return result;
}

unint64_t sub_1E5C43C68()
{
  result = qword_1ED054718;
  if (!qword_1ED054718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054718);
  }

  return result;
}

unint64_t sub_1E5C43CC0()
{
  result = qword_1ED054720;
  if (!qword_1ED054720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054720);
  }

  return result;
}

unint64_t sub_1E5C43D18()
{
  result = qword_1ED054728;
  if (!qword_1ED054728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054728);
  }

  return result;
}

unint64_t sub_1E5C43D70()
{
  result = qword_1ED054730;
  if (!qword_1ED054730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054730);
  }

  return result;
}

unint64_t sub_1E5C43DC8()
{
  result = qword_1ED054738;
  if (!qword_1ED054738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054738);
  }

  return result;
}

unint64_t sub_1E5C43E20()
{
  result = qword_1ED054740;
  if (!qword_1ED054740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054740);
  }

  return result;
}

unint64_t sub_1E5C43E78()
{
  result = qword_1ED054748;
  if (!qword_1ED054748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054748);
  }

  return result;
}

unint64_t sub_1E5C43ED0()
{
  result = qword_1ED054750;
  if (!qword_1ED054750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054750);
  }

  return result;
}

unint64_t sub_1E5C43F28()
{
  result = qword_1ED054758;
  if (!qword_1ED054758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054758);
  }

  return result;
}

unint64_t sub_1E5C43F80()
{
  result = qword_1ED054760;
  if (!qword_1ED054760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054760);
  }

  return result;
}

unint64_t sub_1E5C43FD8()
{
  result = qword_1ED054768;
  if (!qword_1ED054768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054768);
  }

  return result;
}

unint64_t sub_1E5C44030()
{
  result = qword_1ED054770;
  if (!qword_1ED054770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054770);
  }

  return result;
}

uint64_t sub_1E5C44084(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5CA7D30 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA7D50 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746174636964 && a2 == 0xEE006465646E456ELL || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168437375636F66 && a2 == 0xEC0000006465676ELL || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E5CA7D70 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5CA7D90 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5CA7DB0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6552746E65746E69 && a2 == 0xEF64657473657571 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5CA7DD0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6275537972657571 && a2 == 0xEE0064657474696DLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7DF0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5CA7E10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x61684365706F6373 && a2 == 0xEC0000006465676ELL || (sub_1E5C9D060() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C655365706F6373 && a2 == 0xED00006465746365 || (sub_1E5C9D060() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5CA7E30 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5CA7E50 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E61684374786574 && a2 == 0xEB00000000646567 || (sub_1E5C9D060() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070 || (sub_1E5C9D060() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA7E70 == a2)
  {

    return 18;
  }

  else
  {
    v5 = sub_1E5C9D060();

    if (v5)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1E5C446C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C447C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054778, &unk_1E5CA0EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C4482C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SearchArtworkFlavorDescriptor.family.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchArtworkFlavorDescriptor.flavor.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchArtworkFlavorDescriptor.variant.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall SearchArtworkFlavorDescriptor.init(family:flavor:variant:)(FitnessSearch::SearchArtworkFlavorDescriptor *__return_ptr retstr, Swift::String family, Swift::String flavor, Swift::String variant)
{
  retstr->family = family;
  retstr->flavor = flavor;
  retstr->variant = variant;
}

uint64_t sub_1E5C44968()
{
  v1 = 0x726F76616C66;
  if (*v0 != 1)
  {
    v1 = 0x746E6169726176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C696D6166;
  }
}

uint64_t sub_1E5C449BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C45594(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C449E4(uint64_t a1)
{
  v2 = sub_1E5C44C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C44A20(uint64_t a1)
{
  v2 = sub_1E5C44C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchArtworkFlavorDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054780, &qword_1E5CA0F00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C44C20();
  sub_1E5C9D130();
  v14 = 0;
  v9 = v11[5];
  sub_1E5C9D000();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E5C9D000();
  v12 = 2;
  sub_1E5C9D000();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5C44C20()
{
  result = qword_1ED054788;
  if (!qword_1ED054788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054788);
  }

  return result;
}

uint64_t SearchArtworkFlavorDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054790, &qword_1E5CA0F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C44C20();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1E5C9CF70();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1E5C9CF70();
  v21 = v12;
  v23 = 2;
  v13 = sub_1E5C9CF70();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SearchArtworkFlavorDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5C9D060() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t SearchArtworkFlavorDescriptor.hash(into:)(uint64_t a1)
{
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  return sub_1E5C9CC60();
}

uint64_t SearchArtworkFlavorDescriptor.hashValue.getter()
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C45104()
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C45188(uint64_t a1)
{
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C451F4(uint64_t a1)
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

unint64_t sub_1E5C45278()
{
  result = qword_1ED054798;
  if (!qword_1ED054798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054798);
  }

  return result;
}

uint64_t sub_1E5C452CC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5C9D060() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E5C453D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5C45420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5C45490()
{
  result = qword_1ED0547A0;
  if (!qword_1ED0547A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0547A0);
  }

  return result;
}

unint64_t sub_1E5C454E8()
{
  result = qword_1ED0547A8;
  if (!qword_1ED0547A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0547A8);
  }

  return result;
}

unint64_t sub_1E5C45540()
{
  result = qword_1ED0547B0[0];
  if (!qword_1ED0547B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0547B0);
  }

  return result;
}

uint64_t sub_1E5C45594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C696D6166 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F76616C66 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

void sub_1E5C456AC(uint64_t a1)
{
  sub_1E5C45CB4();
  if (v1 <= 0x3F)
  {
    sub_1E5C45D04(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5C45768(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 32) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (v23 + v9 + 32) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v25);
        }

        else
        {
          return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v24 = *(v23 + 24);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5C45990(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 32) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v15) = v20;
              }

              else
              {
                *(a1 + v15) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v15) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v15) = 0;
  }

  else if (v18)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v24 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (v24 + v10 + 32) & ~v10;
    if (v8 == v14)
    {
      v26 = *(v6 + 56);

      v26(v25);
    }

    else
    {
      v27 = *(v9 + 56);
      v28 = (v25 + v11 + v12) & ~v12;

      v27(v28);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v24 + 16) = a2 & 0x7FFFFFFF;
    *(v24 + 24) = 0;
  }

  else
  {
    *(v24 + 24) = a2 - 1;
  }
}

void sub_1E5C45CB4()
{
  if (!qword_1ED054838)
  {
    v0 = sub_1E5C9BDD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED054838);
    }
  }
}

void sub_1E5C45D04(uint64_t a1)
{
  if (!qword_1ED054840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054848, qword_1E5CA1168);
    sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168, MEMORY[0x1E6999B78]);
    v1 = sub_1E5C9BF20();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED054840);
    }
  }
}

uint64_t sub_1E5C45DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5C9C270();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5C9C280();
}

uint64_t sub_1E5C45EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5C9C270();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5C9C280();
}

uint64_t sub_1E5C45FDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = *(a1 - 1);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C9C390();
  *&v44 = a1[2];
  sub_1E5C9BFB0();
  sub_1E5C9C290();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  *&v43 = a1[3];
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C9C290();
  v4 = sub_1E5C9C800();
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v37 - v5;
  v6 = a1[4];
  v41 = a1;
  v7 = sub_1E5C48438();
  v67 = v6;
  v68 = v7;
  WitnessTable = swift_getWitnessTable();
  v65 = WitnessTable;
  v66 = MEMORY[0x1E6981E60];
  v9 = swift_getWitnessTable();
  v10 = sub_1E5C2CDCC();
  v11 = a1[5];
  v63 = v10;
  v64 = v11;
  v12 = swift_getWitnessTable();
  v61 = v9;
  v62 = v12;
  v59 = swift_getWitnessTable();
  v60 = WitnessTable;
  v58 = swift_getWitnessTable();
  v39 = v4;
  v38 = swift_getWitnessTable();
  v54 = v4;
  v55 = MEMORY[0x1E69E6370];
  v56 = v38;
  v57 = MEMORY[0x1E69E6388];
  v40 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  *&v20 = v44;
  *(&v20 + 1) = v43;
  v44 = v20;
  *&v21 = v6;
  *(&v21 + 1) = v11;
  v43 = v21;
  v51 = v20;
  v52 = v21;
  v22 = v45;
  v53 = v45;
  v23 = v42;
  sub_1E5C9C7F0();
  v24 = v22;
  LOBYTE(v54) = sub_1E5C484A0(*v22, *(v22 + 8)) & 1;
  v25 = v48;
  v26 = v47;
  v27 = v41;
  (*(v48 + 16))(v47, v24, v41);
  v28 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 16) = v44;
  *(v29 + 32) = v30;
  (*(v25 + 32))(v29 + v28, v26, v27);
  v31 = v39;
  v32 = MEMORY[0x1E69E6370];
  v33 = v38;
  v34 = MEMORY[0x1E69E6388];
  sub_1E5C9C740();

  (*(v46 + 8))(v23, v31);
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v57 = v34;
  swift_getOpaqueTypeConformance2();
  sub_1E5C28390();
  v35 = *(v14 + 8);
  v35(v17, OpaqueTypeMetadata2);
  sub_1E5C28390();
  return (v35)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1E5C465A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v174 = a4;
  *(&v174 + 1) = a5;
  v170 = a6;
  v149 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v148 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v147 = v140 - v11;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FE8, &unk_1E5CA11E0);
  v146 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v145 = v140 - v12;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FF8, &qword_1E5C9E5E8);
  MEMORY[0x1EEE9AC00](v152);
  v154 = v140 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F68, &unk_1E5CA11D0);
  MEMORY[0x1EEE9AC00](v14);
  v155 = v140 - v15;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FD8, &qword_1E5C9E540);
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v150 = v140 - v16;
  v159 = v14;
  v171 = a3;
  v17 = sub_1E5C9C290();
  v158 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v157 = v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v162 = v140 - v20;
  sub_1E5C9C390();
  v166 = a2;
  v21 = sub_1E5C9BFB0();
  v22 = sub_1E5C9C290();
  v161 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v160 = v140 - v24;
  v164 = *(v21 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v140 - v28;
  v172 = v30;
  v169 = v17;
  v31 = sub_1E5C9C290();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v163 = v140 - v36;
  v37 = sub_1E5C9C290();
  v167 = *(v37 - 8);
  v168 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v140 - v38;
  v40 = sub_1E5C484A0(*a1, *(a1 + 8));
  v173 = v39;
  v165 = v29;
  if (v40)
  {
    v142 = v32;
    v143 = v31;
    v144 = v21;
    v41 = v166;
    *&v205 = v166;
    v42 = v171;
    *(&v205 + 1) = v171;
    v206 = v174;
    v140[1] = type metadata accessor for TVSearchableView(0, &v205);
    swift_getKeyPath();

    sub_1E5C9CAD0();

    *(v207 + 9) = *(v204 + 9);
    v206 = v203;
    v207[0] = v204[0];
    v205 = v202;
    v141 = v35;
    if (BYTE8(v204[1]))
    {
      if (BYTE8(v207[1]) == 1)
      {
        v43 = v42;
        v44 = *&v207[1];
        v45 = v206;
        v226 = v205;
        v227 = v206;
        v228 = v207[0];
        v229 = *&v207[1];
        swift_getKeyPath();

        sub_1E5C9CAD0();

        if (v201 == 1 && v44)
        {

          v165 = v140;
          v47 = MEMORY[0x1EEE9AC00](v46);
          v164 = &v140[-8];
          v140[-6] = v41;
          v140[-5] = v43;
          v48 = v174;
          v49 = MEMORY[0x1EEE9AC00](v47);
          v161 = &v140[-10];
          v140[-8] = v50;
          v140[-7] = v43;
          *&v140[-6] = v48;
          MEMORY[0x1EEE9AC00](v49);
          v140[-6] = v51;
          v140[-5] = v43;
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054008, &unk_1E5CA1230);
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
          v53 = sub_1E5C27F74(&qword_1ED054010, &qword_1ED054008, &unk_1E5CA1230, MEMORY[0x1E6981F48]);
          v54 = sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20, MEMORY[0x1E697D680]);
          v138 = v53;
          v139 = v54;
          v55 = v48;
          v136 = v52;
          v137 = MEMORY[0x1E6981138];
          v56 = v150;
          sub_1E5C9C300();
          sub_1E5C30CAC(&v205);

          v57 = v151;
          v58 = v153;
          (*(v151 + 16))(v154, v56, v153);
          swift_storeEnumTagMultiPayload();
          v59 = MEMORY[0x1E697C7C8];
          sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540, MEMORY[0x1E697C7C8]);
          sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0, v59);
          v60 = v155;
          sub_1E5C9C280();
          v61 = sub_1E5C2CDCC();
          sub_1E5C45DEC(v60, v159, v171, v61, *(&v48 + 1));
          sub_1E5C48E94(v60);
          (*(v57 + 8))(v56, v58);
        }

        else
        {
          sub_1E5C30CAC(&v205);
          v98 = *(v45 + 16);

          v55 = v174;
          if (v98)
          {
            v99 = v147;
            v100 = *(&v174 + 1);
            sub_1E5C28390();
            v101 = v148;
            sub_1E5C28390();
            v102 = sub_1E5C2CDCC();
            sub_1E5C45EE4(v101, v159, v43, v102, v100);
            v103 = *(v149 + 8);
            v103(v101, v43);
            v103(v99, v43);
          }

          else
          {
            v104 = v174;
            v105 = v145;
            sub_1E5C9C320();
            v106 = v146;
            v107 = v156;
            (*(v146 + 16))(v154, v105, v156);
            swift_storeEnumTagMultiPayload();
            v108 = MEMORY[0x1E697C7C8];
            sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540, MEMORY[0x1E697C7C8]);
            sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0, v108);
            v109 = v155;
            sub_1E5C9C280();
            v110 = sub_1E5C2CDCC();
            sub_1E5C45DEC(v109, v159, v43, v110, *(&v174 + 1));
            sub_1E5C48E94(v109);
            v111 = v105;
            v55 = v104;
            (*(v106 + 8))(v111, v107);
          }
        }

        v112 = v169;
        v85 = v143;
        v76 = v144;
        v84 = v163;
        v199 = sub_1E5C2CDCC();
        v200 = *(&v174 + 1);
        WitnessTable = swift_getWitnessTable();
        v114 = v157;
        sub_1E5C28390();
        v115 = sub_1E5C48438();
        v197 = v55;
        v198 = v115;
        v195 = swift_getWitnessTable();
        v75 = v55;
        v79 = MEMORY[0x1E6981E60];
        v196 = MEMORY[0x1E6981E60];
        v116 = v172;
        v117 = swift_getWitnessTable();
        sub_1E5C45EE4(v114, v116, v112, v117, WitnessTable);
        v118 = *(v158 + 8);
        v118(v114, v112);
        v118(v162, v112);
      }

      else
      {
        v86 = sub_1E5C9C460();
        v87 = v27;
        v88 = v174;
        sub_1E5C4781C(v86, 0x4024000000000000, 0, v41, v174);
        v89 = sub_1E5C48438();
        v179 = v88;
        v180 = v89;
        v76 = v144;
        v90 = swift_getWitnessTable();
        sub_1E5C28390();
        v171 = v164[1];
        (v171)(v27, v76);
        sub_1E5C28390();
        v91 = v160;
        v92 = MEMORY[0x1E6981E60];
        sub_1E5C45DEC(v27, v76, MEMORY[0x1E6981E70], v90, MEMORY[0x1E6981E60]);
        v177 = v90;
        v178 = v92;
        v93 = v172;
        v94 = swift_getWitnessTable();
        v175 = sub_1E5C2CDCC();
        v176 = *(&v174 + 1);
        v95 = v169;
        v96 = swift_getWitnessTable();
        v84 = v163;
        sub_1E5C45DEC(v91, v93, v95, v94, v96);
        (v161[1])(v91, v93);
        v97 = v171;
        (v171)(v87, v76);
        (v97)(v165, v76);
        v79 = MEMORY[0x1E6981E60];
        v75 = v174;
        v85 = v143;
      }
    }

    else
    {
      sub_1E5C30CAC(&v205);
      v74 = sub_1E5C48438();
      v75 = v174;
      v185 = v174;
      v186 = v74;
      v76 = v144;
      v77 = swift_getWitnessTable();
      v78 = v160;
      v79 = MEMORY[0x1E6981E60];
      sub_1E5C45EE4(v77, v76, MEMORY[0x1E6981E70], v77, MEMORY[0x1E6981E60]);
      v183 = v77;
      v184 = v79;
      v80 = v172;
      v81 = swift_getWitnessTable();
      v181 = sub_1E5C2CDCC();
      v182 = *(&v174 + 1);
      v82 = v169;
      v83 = swift_getWitnessTable();
      v84 = v163;
      sub_1E5C45DEC(v78, v80, v82, v81, v83);
      (v161[1])(v78, v80);
      v85 = v143;
    }

    v119 = sub_1E5C48438();
    v193 = v75;
    v194 = v119;
    v120 = swift_getWitnessTable();
    v191 = v120;
    v192 = v79;
    v121 = swift_getWitnessTable();
    v122 = sub_1E5C2CDCC();
    v123 = *(&v174 + 1);
    v189 = v122;
    v190 = *(&v174 + 1);
    v124 = swift_getWitnessTable();
    v187 = v121;
    v188 = v124;
    v125 = swift_getWitnessTable();
    v126 = v141;
    sub_1E5C28390();
    sub_1E5C45DEC(v126, v85, v76, v125, v120);
    v127 = *(v142 + 8);
    v127(v126, v85);
    v128 = v84;
    v73 = v123;
    v127(v128, v85);
  }

  else
  {
    v62 = v166;
    *&v205 = v166;
    *(&v205 + 1) = v171;
    v63 = v174;
    v206 = v174;
    type metadata accessor for TVSearchableView(0, &v205);
    v64 = sub_1E5C9C460();
    sub_1E5C4781C(v64, 0x4024000000000000, 0, v62, v63);
    v65 = sub_1E5C48438();
    v224 = v63;
    v225 = v65;
    v66 = swift_getWitnessTable();
    sub_1E5C28390();
    v171 = v164[1];
    (v171)(v27, v21);
    sub_1E5C28390();
    v222 = v66;
    v223 = MEMORY[0x1E6981E60];
    v67 = swift_getWitnessTable();
    v68 = sub_1E5C2CDCC();
    v69 = *(&v174 + 1);
    v220 = v68;
    v221 = *(&v174 + 1);
    v70 = swift_getWitnessTable();
    v218 = v67;
    v219 = v70;
    v71 = swift_getWitnessTable();
    sub_1E5C45EE4(v27, v31, v21, v71, v66);
    v72 = v171;
    (v171)(v27, v21);
    (v72)(v165, v21);
    v73 = v69;
  }

  v129 = sub_1E5C48438();
  v216 = v174;
  v217 = v129;
  v130 = swift_getWitnessTable();
  v214 = v130;
  v215 = MEMORY[0x1E6981E60];
  v131 = swift_getWitnessTable();
  v212 = sub_1E5C2CDCC();
  v213 = v73;
  v132 = swift_getWitnessTable();
  v210 = v131;
  v211 = v132;
  v208 = swift_getWitnessTable();
  v209 = v130;
  v133 = v168;
  swift_getWitnessTable();
  v134 = v173;
  sub_1E5C28390();
  return (*(v167 + 8))(v134, v133);
}

uint64_t sub_1E5C4781C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E5C9C390();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1E5C9BDA0();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_1E5C9C380();
  MEMORY[0x1E6939030](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E5C47958@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for TVSearchableView(0, v19);
  swift_getKeyPath();

  sub_1E5C9CAD0();

  result = sub_1E5C9C540();
  *a6 = result;
  *(a6 + 8) = v16;
  *(a6 + 16) = v17 & 1;
  *(a6 + 24) = v18;
  return result;
}

uint64_t sub_1E5C47B0C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  type metadata accessor for TVSearchableView(0, &v39);
  swift_getKeyPath();

  sub_1E5C9CAD0();

  v18 = sub_1E5C9C540();
  v35 = v19;
  v36 = v18;
  v34 = v20;
  v37 = v21;
  v39 = a2;
  v40 = a3;
  sub_1E5C28160();

  v22 = sub_1E5C9C580();
  v24 = v23;
  LOBYTE(a5) = v25;
  sub_1E5C9C4F0();
  v26 = sub_1E5C9C550();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_1E5C2824C(v22, v24, a5 & 1);

  LOBYTE(v39) = v34 & 1;
  v43 = v30 & 1;
  *a8 = v36;
  *(a8 + 8) = v35;
  *(a8 + 16) = v34 & 1;
  *(a8 + 24) = v37;
  *(a8 + 32) = v26;
  *(a8 + 40) = v28;
  *(a8 + 48) = v30 & 1;
  *(a8 + 56) = v32;
  sub_1E5C281B4(v36, v35, v34 & 1);

  sub_1E5C281B4(v26, v28, v30 & 1);

  sub_1E5C2824C(v26, v28, v30 & 1);

  sub_1E5C2824C(v36, v35, v34 & 1);
}

uint64_t sub_1E5C47DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v32 = a7;
  v33[0] = a3;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v27 = type metadata accessor for TVSearchableView(0, v33);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v27 - v11;
  v13 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();

  sub_1E5C9CAD0();

  v33[7] = sub_1E5C9CC50();
  v33[8] = v17;
  v18 = v27;
  (*(v9 + 16))(v12, a1, v27);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 2) = v28;
  *(v21 + 3) = v22;
  v23 = v31;
  *(v21 + 4) = v30;
  *(v21 + 5) = v23;
  (*(v9 + 32))(&v21[v19], v12, v18);
  v24 = &v21[v20];
  v25 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 1) = v25;
  *(v24 + 2) = *(a2 + 32);
  *(v24 + 6) = *(a2 + 48);
  sub_1E5C49000(a2, v33);
  sub_1E5C28160();
  return sub_1E5C9C8D0();
}

uint64_t sub_1E5C480D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  type metadata accessor for TVSearchableView(0, v16);
  v14 = *(a2 + 32);
  *v13 = *(a2 + 24);
  *(v13 + 1) = v14;
  v13[16] = 3;
  swift_storeEnumTagMultiPayload();

  sub_1E5C9CAF0();

  return sub_1E5C30C50(v13);
}

uint64_t sub_1E5C481D8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  type metadata accessor for TVSearchableView(0, v16);
  *v14 = a2;
  swift_storeEnumTagMultiPayload();

  sub_1E5C9CAF0();

  return sub_1E5C30C50(v14);
}

uint64_t sub_1E5C482C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168, MEMORY[0x1E6999B78]);
  *(a8 + 16) = sub_1E5C9BF10();
  *(a8 + 24) = v15;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v16 = type metadata accessor for TVSearchableView(0, v18);
  (*(*(a4 - 8) + 32))(a8 + *(v16 + 56), a2, a4);
  return (*(*(a5 - 8) + 32))(a8 + *(v16 + 60), a3, a5);
}

unint64_t sub_1E5C48438()
{
  result = qword_1ED054850;
  if (!qword_1ED054850)
  {
    sub_1E5C9C390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054850);
  }

  return result;
}

uint64_t sub_1E5C484A0(uint64_t a1, char a2)
{
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_1E5C9CDD0();
    v9 = sub_1E5C9C410();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E5C58D60(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&dword_1E5C20000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E693A130](v11, -1, -1);
      MEMORY[0x1E693A130](v10, -1, -1);
    }

    sub_1E5C9C180();
    swift_getAtKeyPath();
    sub_1E5C48660(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

uint64_t sub_1E5C48660(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1E5C4866C(uint64_t a1, _BYTE *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for TVSearchableView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E5C481D8(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1E5C48728@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054858, &qword_1E5CA1290);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E5C3165C(v2, &v17 - v9, &qword_1ED054858, &qword_1E5CA1290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E5C9BF80();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E5C9CDD0();
    v14 = sub_1E5C9C410();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E5C58D60(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_1E5C20000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E693A130](v16, -1, -1);
      MEMORY[0x1E693A130](v15, -1, -1);
    }

    sub_1E5C9C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E5C489B4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1E5C3165C(v2, &v16 - v9, &qword_1ED054860, &qword_1E5CA1298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E5C4905C(v10, a1);
  }

  v12 = sub_1E5C9CDD0();
  v13 = sub_1E5C9C410();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E5C58D60(0xD000000000000020, 0x80000001E5CA7E90, &v17);
    _os_log_impl(&dword_1E5C20000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E693A130](v15, -1, -1);
    MEMORY[0x1E693A130](v14, -1, -1);
  }

  sub_1E5C9C180();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E5C48C08@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054870, &qword_1E5CA4C10);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E5C3165C(v2, &v17 - v9, &qword_1ED054870, &qword_1E5CA4C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E5C9BFA0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E5C9CDD0();
    v14 = sub_1E5C9C410();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E5C58D60(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&dword_1E5C20000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E693A130](v16, -1, -1);
      MEMORY[0x1E693A130](v15, -1, -1);
    }

    sub_1E5C9C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E5C48E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F68, &unk_1E5CA11D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C48F30()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = *(type metadata accessor for TVSearchableView(0, v9) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E5C480D8(v0 + v6, v7, v1, v2, v3, v4);
}

uint64_t sub_1E5C4905C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E5C490F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1E5C49140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5C491C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054878, &qword_1E5CA1398);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v31 - v4);
  v6 = sub_1E5C9C3B0();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054880, &qword_1E5CA13A0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054888, &qword_1E5CA13A8);
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054890, &qword_1E5CA13B0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(v1 + 16);
  v45[0] = *v1;
  v45[1] = v18;
  v46 = *(v1 + 96);
  v19 = *(v1 + 80);
  v45[4] = *(v1 + 64);
  v45[5] = v19;
  v20 = *(v1 + 48);
  v45[2] = *(v1 + 32);
  v45[3] = v20;
  if (*(*&v45[0] + 16))
  {
    v35 = v15;
    v21 = sub_1E5C9C430();
    v36 = v14;
    MEMORY[0x1EEE9AC00](v21);
    v32 = v11;
    *(&v31 - 2) = v45;
    v37 = a1;
    v33 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054898, &qword_1E5CA13B8);
    v34 = v3;
    sub_1E5C27F74(&qword_1ED0548A0, &qword_1ED054898, &qword_1E5CA13B8, MEMORY[0x1E6981F48]);
    sub_1E5C9BDC0();
    sub_1E5C9C3A0();
    v22 = sub_1E5C27F74(&qword_1ED0548A8, &qword_1ED054880, &qword_1E5CA13A0, MEMORY[0x1E697BE60]);
    v23 = v42;
    sub_1E5C9C6F0();
    (*(v40 + 8))(v8, v41);
    (*(v38 + 8))(v10, v23);
    v43 = v23;
    v44 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = v32;
    sub_1E5C9C5A0();
    (*(v39 + 8))(v13, v25);
    v26 = v35;
    v27 = v36;
    (*(v35 + 16))(v33, v17, v36);
    swift_storeEnumTagMultiPayload();
    v43 = v25;
    v44 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E5C9C280();
    return (*(v26 + 8))(v17, v27);
  }

  else
  {
    *v5 = sub_1E5C9C7A0();
    swift_storeEnumTagMultiPayload();
    v29 = sub_1E5C27F74(&qword_1ED0548A8, &qword_1ED054880, &qword_1E5CA13A0, MEMORY[0x1E697BE60]);
    v43 = v42;
    v44 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v43 = v11;
    v44 = v30;
    swift_getOpaqueTypeConformance2();
    return sub_1E5C9C280();
  }
}

uint64_t sub_1E5C497C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v48 = a2;
  v47 = sub_1E5C9C2D0();
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E5C9C990();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548B0, &qword_1E5CA13C0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548B8, &qword_1E5CA13C8);
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  *v19 = sub_1E5C9C1A0();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548C0, &qword_1E5CA13D0);
  sub_1E5C49D14(a1, &v19[*(v20 + 44)]);
  v21 = sub_1E5C9C460();
  sub_1E5C9BDA0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548C8, &qword_1E5CA13D8) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_1E5C9C470();
  sub_1E5C9BDA0();
  v32 = &v19[*(v14 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548D0, &qword_1E5CA13E0);
  sub_1E5C9C9A0();
  *(swift_allocObject() + 16) = xmmword_1E5CA12B0;
  *v6 = xmmword_1E5CA12C0;
  (*(v4 + 104))(v6, *MEMORY[0x1E697D748], v44);
  sub_1E5C9C9B0();
  v49 = v43;
  sub_1E5C9C200();
  v50 = 0;
  sub_1E5C4BCF0(&qword_1ED0548D8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1E5C9D160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548E0, &qword_1E5CA13E8);
  sub_1E5C4B50C();
  sub_1E5C9CA50();
  sub_1E5C23AF0(v19, v17);
  v37 = *(v8 + 16);
  v38 = v46;
  v37(v46, v12, v7);
  v39 = v48;
  sub_1E5C23AF0(v17, v48);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054900, &qword_1E5CA13F8);
  v37((v39 + *(v40 + 48)), v38, v7);
  v41 = *(v8 + 8);
  v41(v12, v7);
  sub_1E5C3177C(v19, &qword_1ED0548B8, &qword_1E5CA13C8);
  v41(v38, v7);
  return sub_1E5C3177C(v17, &qword_1ED0548B8, &qword_1E5CA13C8);
}

id sub_1E5C49D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v84 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
  v91 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054988, &qword_1E5CA14C0);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v67 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054990, &qword_1E5CA14C8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054998, &qword_1E5CA14D0);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v81 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v67 - v9;
  v10 = sub_1E5C9C1E0();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5C9C4E0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549A0, &qword_1E5CA14D8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v67 - v19;
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_1E5C9C560();
  v24 = v23;
  v26 = v25;
  v85 = v27;
  v28 = objc_opt_self();
  v29 = *MEMORY[0x1E69DDD00];
  v87 = v28;
  result = [v28 _preferredFontForTextStyle_variant_];
  if (result)
  {
    sub_1E5C9C520();
    v31 = *(v13 + 104);
    v69 = *MEMORY[0x1E6980EA8];
    v70 = v13 + 104;
    v68 = v31;
    v31(v15);
    sub_1E5C9C500();

    v32 = *(v13 + 8);
    v71 = v15;
    v72 = v13 + 8;
    v73 = v12;
    v67 = v32;
    v32(v15, v12);
    v33 = sub_1E5C9C550();
    v74 = v34;
    v36 = v35;
    v38 = v37;

    sub_1E5C2824C(v22, v24, v26 & 1);

    sub_1E5C9CA00();
    sub_1E5C9C040();
    v106 = v36 & 1;
    *&v96 = v33;
    *(&v96 + 1) = v74;
    LOBYTE(v97) = v36 & 1;
    *(&v97 + 1) = v38;
    v39 = v86;
    sub_1E5C9C1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549A8, &qword_1E5CA14E0);
    sub_1E5C4BE64();
    sub_1E5C9C6D0();
    (*(v88 + 8))(v39, v89);
    v105[6] = v102;
    v105[7] = v103;
    v105[8] = v104;
    v105[2] = v98;
    v105[3] = v99;
    v105[4] = v100;
    v105[5] = v101;
    v105[0] = v96;
    v105[1] = v97;
    sub_1E5C3177C(v105, &qword_1ED0549A8, &qword_1E5CA14E0);
    v40 = swift_allocObject();
    v41 = v94;
    v42 = *(v94 + 80);
    *(v40 + 80) = *(v94 + 64);
    *(v40 + 96) = v42;
    *(v40 + 112) = *(v41 + 96);
    v43 = *(v41 + 16);
    *(v40 + 16) = *v41;
    *(v40 + 32) = v43;
    v44 = *(v41 + 48);
    *(v40 + 48) = *(v41 + 32);
    *(v40 + 64) = v44;
    sub_1E5C4BA98(v41, &v96);
    v45 = v90;
    sub_1E5C9C8A0();
    v46 = sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20, MEMORY[0x1E697D680]);
    v47 = v92;
    v48 = v95;
    v89 = v46;
    sub_1E5C9C5B0();
    (*(v91 + 8))(v45, v48);
    result = [v87 _preferredFontForTextStyle_variant_];
    if (result)
    {
      sub_1E5C9C520();
      v49 = v71;
      v50 = v73;
      v68(v71, v69, v73);
      v51 = sub_1E5C9C500();

      v67(v49, v50);
      KeyPath = swift_getKeyPath();
      v53 = v79;
      (*(v75 + 32))(v79, v47, v76);
      v54 = (v53 + *(v78 + 36));
      *v54 = KeyPath;
      v54[1] = v51;
      v92 = sub_1E5C9C1B0();
      LODWORD(v91) = v55;
      v96 = *(v94 + 32);
      LOBYTE(v97) = *(v94 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549B8, &qword_1E5CA1518);
      v56 = sub_1E5C9C920();
      v90 = &v67;
      MEMORY[0x1EEE9AC00](v56);
      sub_1E5C4BF18();
      v57 = v80;
      sub_1E5C9C6B0();

      sub_1E5C3177C(v53, &qword_1ED054990, &qword_1E5CA14C8);
      v58 = v93;
      v59 = v77;
      sub_1E5C3165C(v93, v77, &qword_1ED0549A0, &qword_1E5CA14D8);
      v61 = v81;
      v60 = v82;
      v62 = *(v82 + 16);
      v63 = v83;
      v62(v81, v57, v83);
      v64 = v84;
      sub_1E5C3165C(v59, v84, &qword_1ED0549A0, &qword_1E5CA14D8);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549D8, &qword_1E5CA1528);
      v62((v64 + *(v65 + 48)), v61, v63);
      v66 = *(v60 + 8);
      v66(v57, v63);
      sub_1E5C3177C(v58, &qword_1ED0549A0, &qword_1E5CA14D8);
      v66(v61, v63);
      return sub_1E5C3177C(v59, &qword_1ED0549A0, &qword_1E5CA14D8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5C4A7A0@<X0>(uint64_t a1@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_1E5C9C560();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E5C4A870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549E0, &qword_1E5CA1530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_1E5C9BBC0();
  v17 = sub_1E5C9CC50();
  v18 = v9;
  sub_1E5C9BD80();
  v10 = sub_1E5C9BD90();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  v11 = swift_allocObject();
  v12 = *(a1 + 80);
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = v12;
  *(v11 + 112) = *(a1 + 96);
  v13 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  v14 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v14;
  sub_1E5C4BA98(a1, v16);
  sub_1E5C28160();
  return sub_1E5C9C8B0();
}

uint64_t sub_1E5C4AACC@<X0>(uint64_t a1@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_1E5C9C560();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E5C4ABA4(uint64_t *a1)
{
  v2 = *a1;
  if (*(*a1 + 16) >= 6uLL)
  {
    v3 = 6;
  }

  else
  {
    v3 = *(*a1 + 16);
  }

  v4 = *(type metadata accessor for SearchHistoryItem(0) - 8);
  v13[13] = sub_1E5C4B720(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), 0, (2 * v3) | 1);
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 5);
  *(v5 + 80) = *(a1 + 4);
  *(v5 + 96) = v6;
  *(v5 + 112) = a1[12];
  v7 = *(a1 + 1);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 3);
  *(v5 + 48) = *(a1 + 2);
  *(v5 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E5C4BA28;
  *(v9 + 24) = v5;
  sub_1E5C4BA98(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054908, &qword_1E5CA1430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054910, &qword_1E5CA1438);
  sub_1E5C27F74(&qword_1ED054918, &qword_1ED054908, &qword_1E5CA1430, MEMORY[0x1E69E6338]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0548F0, &qword_1E5CA13F0);
  v11 = sub_1E5C27F74(&qword_1ED0548F8, &qword_1ED0548F0, &qword_1E5CA13F0, MEMORY[0x1E697D680]);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_1E5C9C950();
}

uint64_t sub_1E5C4ADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v7 = type metadata accessor for SearchHistoryItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548F0, &qword_1E5CA13F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - v12;
  sub_1E5C4BAD0(a2, v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 120) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = *(a3 + 80);
  *(v15 + 80) = *(a3 + 64);
  *(v15 + 96) = v16;
  *(v15 + 112) = *(a3 + 96);
  v17 = *(a3 + 16);
  *(v15 + 16) = *a3;
  *(v15 + 32) = v17;
  v18 = *(a3 + 48);
  *(v15 + 48) = *(a3 + 32);
  *(v15 + 64) = v18;
  sub_1E5C4BB34(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v26[4] = a3;
  v26[5] = a2;
  sub_1E5C4BA98(a3, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054928, &qword_1E5CA1448);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054930, &qword_1E5CA1450);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054938, &qword_1E5CA1458);
  v21 = sub_1E5C4BC08();
  v22 = sub_1E5C4BD38();
  v27[0] = v19;
  v27[1] = MEMORY[0x1E6981CD8];
  v27[2] = v20;
  v27[3] = v20;
  v27[4] = v21;
  v27[5] = MEMORY[0x1E6981CD0];
  v27[6] = v22;
  v27[7] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1E5C9C8A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054978, &qword_1E5CA1470);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E5CA12B0;
  v27[0] = a1;
  *(v23 + 32) = sub_1E5C9D050();
  *(v23 + 40) = v24;
  sub_1E5C27F74(&qword_1ED0548F8, &qword_1ED0548F0, &qword_1E5CA13F0, MEMORY[0x1E697D680]);
  sub_1E5C9C5B0();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E5C4B120(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054930, &qword_1E5CA1450);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - v5);
  v8 = *a2;
  v7 = a2[1];
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054858, &qword_1E5CA1290);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for SearchHistoryItemView(0);
  v10 = v6 + *(v9 + 20);
  *v10 = *(a1 + 8);
  *(v10 + 2) = *(a1 + 24);
  v11 = (v6 + *(v9 + 24));
  *v11 = v8;
  v11[1] = v7;
  v12 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  [v12 initWithRed:0.0784313725 green:0.0784313725 blue:0.0784313725 alpha:1.0];
  v13 = sub_1E5C9C780();
  v14 = sub_1E5C9C450();
  v15 = v6 + *(v4 + 36);
  *v15 = v13;
  v15[8] = v14;
  sub_1E5C9C9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054938, &qword_1E5CA1458);
  sub_1E5C4BC08();
  sub_1E5C4BD38();
  sub_1E5C9C760();
  return sub_1E5C3177C(v6, &qword_1ED054930, &qword_1E5CA1450);
}

uint64_t sub_1E5C4B31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5C9BC90();
  v5 = v4;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054938, &qword_1E5CA1458) + 36));
  v7 = *(sub_1E5C9C010() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1E5C9C1C0();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054970, &qword_1E5CA1468) + 36)] = 256;
  return sub_1E5C3165C(a1, a2, &qword_1ED054930, &qword_1E5CA1450);
}

uint64_t sub_1E5C4B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054938, &qword_1E5CA1458) + 36));
  v5 = *(sub_1E5C9C010() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5C9C1C0();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054970, &qword_1E5CA1468) + 36)] = 256;
  return sub_1E5C3165C(a1, a2, &qword_1ED054930, &qword_1E5CA1450);
}

unint64_t sub_1E5C4B50C()
{
  result = qword_1ED0548E8;
  if (!qword_1ED0548E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0548E0, &qword_1E5CA13E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0548F0, &qword_1E5CA13F0);
    sub_1E5C27F74(&qword_1ED0548F8, &qword_1ED0548F0, &qword_1E5CA13F0, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0548E8);
  }

  return result;
}

uint64_t sub_1E5C4B600(uint64_t a1)
{
  v2 = sub_1E5C9BF80();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5C9C0B0();
}

uint64_t sub_1E5C4B6C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C140();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C4B720(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054920, &qword_1E5CA1440);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v7);
  v46 = &v39 - v11;
  v12 = a3 >> 1;
  v13 = MEMORY[0x1E69E7CC0];
  if (a3 >> 1 == a2)
  {
    v14 = 0;
LABEL_31:
    v36 = v13[3];
    if (v36 < 2)
    {
      return v13;
    }

    v37 = v36 >> 1;
    v22 = __OFSUB__(v37, v14);
    v38 = v37 - v14;
    if (!v22)
    {
      v13[2] = v38;
      return v13;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = *(v6 + 80);
    v42 = v16;
    v43 = (v16 + 32) & ~v16;
    v17 = MEMORY[0x1E69E7CC0] + v43;
    if (a2 <= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = a2;
    }

    v44 = v18;
    v19 = MEMORY[0x1E69E7CC0];
    v40 = v6;
    v41 = v9;
    while (v44 != a2)
    {
      v20 = v45 + *(*(type metadata accessor for SearchHistoryItem(0) - 8) + 72) * a2;
      v21 = *(v5 + 48);
      *v9 = v15;
      result = sub_1E5C4BAD0(v20, v9 + v21);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_36;
      }

      result = sub_1E5C4BDF0(v9, v46);
      if (v14)
      {
        v13 = v19;
        v22 = __OFSUB__(v14--, 1);
        if (v22)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v23 = v19[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v24 = v5;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054980, &unk_1E5CA14B0);
        v27 = *(v6 + 72);
        v28 = v43;
        v13 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v13);
        if (!v27)
        {
          goto LABEL_39;
        }

        v29 = result - v28;
        if (result - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_40;
        }

        v31 = v29 / v27;
        v13[2] = v26;
        v13[3] = 2 * (v29 / v27);
        v32 = v13 + v28;
        v33 = v19[3] >> 1;
        v34 = v33 * v27;
        if (v19[2])
        {
          if (v13 < v19 || v32 >= v19 + v43 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v17 = &v32[v34];
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v5 = v24;
        v6 = v40;
        v9 = v41;
        v22 = __OFSUB__(v35, 1);
        v14 = v35 - 1;
        if (v22)
        {
          goto LABEL_37;
        }
      }

      ++a2;
      result = sub_1E5C4BDF0(v46, v17);
      v17 += *(v6 + 72);
      ++v15;
      v19 = v13;
      if (v12 == a2)
      {
        goto LABEL_31;
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
LABEL_40:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5C4BA30(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054920, &qword_1E5CA1440);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1E5C4BAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C4BB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5C4BC08()
{
  result = qword_1ED054940;
  if (!qword_1ED054940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054930, &qword_1E5CA1450);
    sub_1E5C4BCF0(&qword_1ED054948, type metadata accessor for SearchHistoryItemView, &unk_1E5CA33B8);
    sub_1E5C27F74(&qword_1ED054950, &qword_1ED054958, &qword_1E5CA1460, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054940);
  }

  return result;
}

uint64_t sub_1E5C4BCF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5C4BD38()
{
  result = qword_1ED054960;
  if (!qword_1ED054960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054938, &qword_1E5CA1458);
    sub_1E5C4BC08();
    sub_1E5C27F74(&qword_1ED054968, &qword_1ED054970, &qword_1E5CA1468, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054960);
  }

  return result;
}

uint64_t sub_1E5C4BDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054920, &qword_1E5CA1440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5C4BE64()
{
  result = qword_1ED0549B0;
  if (!qword_1ED0549B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0549A8, &qword_1E5CA14E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0549B0);
  }

  return result;
}

unint64_t sub_1E5C4BF18()
{
  result = qword_1ED0549C0;
  if (!qword_1ED0549C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054990, &qword_1E5CA14C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E60, &qword_1E5C9DE20);
    sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED0549C8, &qword_1ED0549D0, &qword_1E5CA1520, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0549C0);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

unint64_t sub_1E5C4C0C8()
{
  result = qword_1ED0549E8;
  if (!qword_1ED0549E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0549F0, &qword_1E5CA1538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054888, &qword_1E5CA13A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054880, &qword_1E5CA13A0);
    sub_1E5C27F74(&qword_1ED0548A8, &qword_1ED054880, &qword_1E5CA13A0, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0549E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVSearchViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5C4C2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549F8, &qword_1E5CA15C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1E5C4C3A4()
{
  result = qword_1ED054A00;
  if (!qword_1ED054A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0549F8, &qword_1E5CA15C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A00);
  }

  return result;
}

__n128 SearchLandingFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

uint64_t SearchLandingFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v111 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A08, &qword_1E5CA15E0);
  v109 = *(v11 - 8);
  v110 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v108 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v108 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v108 - v22;
  v24 = v6[11];
  v123 = v6[10];
  v124 = v24;
  v25 = v6[13];
  v125 = v6[12];
  v126 = v25;
  v26 = v6[7];
  v119 = v6[6];
  v120 = v26;
  v27 = v6[9];
  v121 = v6[8];
  v122 = v27;
  v28 = v6[3];
  v115 = v6[2];
  v116 = v28;
  v29 = v6[5];
  v117 = v6[4];
  v118 = v29;
  v30 = v6[1];
  v113 = *v6;
  v114 = v30;
  if (!a6)
  {
    if (*(a4 + 16))
    {
      v34 = *a2;
      v35 = *(a2 + 8);
      v36 = *(a2 + 16);
    }

    else
    {
      v34 = 0xD000000000000014;
      v35 = 0x80000001E5CA7F20;
      v51 = *a2;
      v52 = *(a2 + 8);
      v53 = *(a2 + 16);

      sub_1E5C27EC4(v51, v52, v53);
      v36 = 0;
      *a2 = 0xD000000000000014;
      *(a2 + 8) = 0x80000001E5CA7F20;
      *(a2 + 16) = 0;
    }

    sub_1E5C27EC4(v34, v35, v36);
    *a2 = a4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v55 = v54[16];
    v56 = v54[20];
    v57 = &v17[v54[24]];
    v112[0] = 2;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    v58 = *MEMORY[0x1E6999B60];
    v59 = sub_1E5C9CAC0();
    (*(*(v59 - 8) + 104))(&v17[v55], v58, v59);
    v60 = swift_allocObject();
    v61 = v124;
    v60[11] = v123;
    v60[12] = v61;
    v62 = v126;
    v60[13] = v125;
    v60[14] = v62;
    v63 = v120;
    v60[7] = v119;
    v60[8] = v63;
    v64 = v122;
    v60[9] = v121;
    v60[10] = v64;
    v65 = v116;
    v60[3] = v115;
    v60[4] = v65;
    v66 = v118;
    v60[5] = v117;
    v60[6] = v66;
    v67 = v114;
    v60[1] = v113;
    v60[2] = v67;
    *v57 = &unk_1E5CA1600;
    *(v57 + 1) = v60;
    sub_1E5C4DE54(&v113, v112);
    sub_1E5C9CD70();
    v68 = *MEMORY[0x1E6999B48];
    v69 = sub_1E5C9CAB0();
    (*(*(v69 - 8) + 104))(&v17[v56], v68, v69);
    v71 = v109;
    v70 = v110;
    (*(v109 + 104))(v17, *MEMORY[0x1E6999AD8], v110);
    v72 = v111;
    v73 = *v111;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_1E5C4E61C(0, v73[2] + 1, 1, v73, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v75 = v73[2];
    v74 = v73[3];
    if (v75 >= v74 >> 1)
    {
      v73 = sub_1E5C4E61C((v74 > 1), v75 + 1, 1, v73, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v73[2] = v75 + 1;
    result = (*(v71 + 32))(v73 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v75, v17, v70);
    goto LABEL_24;
  }

  if (a6 == 1)
  {
    v31 = *a2;
    v32 = *(a2 + 8);
    v33 = *(a2 + 16);

    result = sub_1E5C27EC4(v31, v32, v33);
    *a2 = a4;
    *(a2 + 8) = a5;
    *(a2 + 16) = 0;
    return result;
  }

  if (!(a4 | a5))
  {
    sub_1E5C27EC4(*a2, *(a2 + 8), *(a2 + 16));
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v77 = v76[16];
    v78 = v76[20];
    v79 = &v20[v76[24]];
    v112[0] = 0;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    v80 = *MEMORY[0x1E6999B60];
    v81 = sub_1E5C9CAC0();
    (*(*(v81 - 8) + 104))(&v20[v77], v80, v81);
    v82 = swift_allocObject();
    v83 = v124;
    v82[11] = v123;
    v82[12] = v83;
    v84 = v126;
    v82[13] = v125;
    v82[14] = v84;
    v85 = v120;
    v82[7] = v119;
    v82[8] = v85;
    v86 = v122;
    v82[9] = v121;
    v82[10] = v86;
    v87 = v116;
    v82[3] = v115;
    v82[4] = v87;
    v88 = v118;
    v82[5] = v117;
    v82[6] = v88;
    v89 = v114;
    v82[1] = v113;
    v82[2] = v89;
    *v79 = &unk_1E5CA1610;
    *(v79 + 1) = v82;
    sub_1E5C4DE54(&v113, v112);
    sub_1E5C9CD70();
    v90 = *MEMORY[0x1E6999B48];
    v91 = sub_1E5C9CAB0();
    (*(*(v91 - 8) + 104))(&v20[v78], v90, v91);
    v93 = v109;
    v92 = v110;
    (*(v109 + 104))(v20, *MEMORY[0x1E6999AD8], v110);
    v72 = v111;
    v73 = *v111;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_1E5C4E61C(0, v73[2] + 1, 1, v73, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v95 = v73[2];
    v94 = v73[3];
    if (v95 >= v94 >> 1)
    {
      v73 = sub_1E5C4E61C((v94 > 1), v95 + 1, 1, v73, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v73[2] = v95 + 1;
    result = (*(v93 + 32))(v73 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95, v20, v92);
LABEL_24:
    *v72 = v73;
    return result;
  }

  if (a4 ^ 1 | a5)
  {
    if (*(a2 + 16) == 1)
    {
      return result;
    }

    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v97 = v96[16];
    v98 = v96[20];
    v99 = &v23[v96[24]];
    v112[0] = 1;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    v100 = *MEMORY[0x1E6999B60];
    v101 = sub_1E5C9CAC0();
    (*(*(v101 - 8) + 104))(&v23[v97], v100, v101);
    *v99 = &unk_1E5CA1618;
    *(v99 + 1) = 0;
    sub_1E5C9CD70();
    v102 = *MEMORY[0x1E6999B48];
    v103 = sub_1E5C9CAB0();
    (*(*(v103 - 8) + 104))(&v23[v98], v102, v103);
    v105 = v109;
    v104 = v110;
    (*(v109 + 104))(v23, *MEMORY[0x1E6999AD8], v110);
    v47 = v111;
    v48 = *v111;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1E5C4E61C(0, v48[2] + 1, 1, v48, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v107 = v48[2];
    v106 = v48[3];
    if (v107 >= v106 >> 1)
    {
      v48 = sub_1E5C4E61C((v106 > 1), v107 + 1, 1, v48, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v48[2] = v107 + 1;
    result = (*(v105 + 32))(v48 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v107, v23, v104);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v38 = v37[16];
    v39 = v37[20];
    v40 = &v14[v37[24]];
    v112[0] = 3;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    sub_1E5C9CD70();
    v41 = *MEMORY[0x1E6999B60];
    v42 = sub_1E5C9CAC0();
    (*(*(v42 - 8) + 104))(&v14[v38], v41, v42);
    v43 = *MEMORY[0x1E6999B40];
    v44 = sub_1E5C9CAB0();
    (*(*(v44 - 8) + 104))(&v14[v39], v43, v44);
    *v40 = &unk_1E5CA15F0;
    *(v40 + 1) = 0;
    v46 = v109;
    v45 = v110;
    (*(v109 + 104))(v14, *MEMORY[0x1E6999AD8], v110);
    v47 = v111;
    v48 = *v111;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1E5C4E61C(0, v48[2] + 1, 1, v48, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v50 = v48[2];
    v49 = v48[3];
    if (v50 >= v49 >> 1)
    {
      v48 = sub_1E5C4E61C((v49 > 1), v50 + 1, 1, v48, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v48[2] = v50 + 1;
    result = (*(v46 + 32))(v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v50, v14, v45);
  }

  *v47 = v48;
  return result;
}

unint64_t sub_1E5C4CF3C()
{
  result = qword_1ED054A18;
  if (!qword_1ED054A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A18);
  }

  return result;
}

uint64_t sub_1E5C4CF90()
{
  *(v0 + 40) = sub_1E5C9CD60();
  *(v0 + 48) = sub_1E5C9CD50();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
  *v1 = v0;
  v1[1] = sub_1E5C4D07C;

  return MEMORY[0x1EEE01A40](v0 + 16, v2);
}

uint64_t sub_1E5C4D07C()
{

  v1 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4E870, v1, v0);
}

uint64_t sub_1E5C4D1B8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = sub_1E5C9CD60();
  v2[14] = sub_1E5C9CD50();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4D2C4;

  return v6();
}

uint64_t sub_1E5C4D2C4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  if (v1)
  {
    v6 = sub_1E5C9CD10();
    *(v4 + 152) = v6;
    *(v4 + 160) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1E5C4D650, v6, v5);
  }

  else
  {
    *(v4 + 64) = a1;
    *(v4 + 136) = a1;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    v7 = swift_task_alloc();
    *(v4 + 144) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
    *v7 = v4;
    v7[1] = sub_1E5C4D48C;

    return MEMORY[0x1EEE01A40](v4 + 64, v8);
  }
}

uint64_t sub_1E5C4D48C()
{

  v1 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4D5EC, v1, v0);
}

uint64_t sub_1E5C4D5EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5C4D650()
{
  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_1E5C9BD40();
  __swift_project_value_buffer(v2, qword_1ED065C70);
  v3 = v1;
  v4 = sub_1E5C9BD20();
  v5 = sub_1E5C9CDC0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5C20000, v4, v5, "Failed to fetch landing page: %@", v7, 0xCu);
    sub_1E5C4E804(v8);
    MEMORY[0x1E693A130](v8, -1, -1);
    MEMORY[0x1E693A130](v7, -1, -1);
  }

  swift_getErrorValue();
  v11 = sub_1E5C9D080();
  *(v0 + 168) = v12;
  *(v0 + 40) = v11;
  *(v0 + 48) = v12;
  *(v0 + 56) = 1;
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
  *v13 = v0;
  v13[1] = sub_1E5C4D860;

  return MEMORY[0x1EEE01A40](v0 + 40, v14);
}

uint64_t sub_1E5C4D860()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5C4D9A4, v3, v2);
}

uint64_t sub_1E5C4D9A4()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5C4DA14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_1E5C9CD60();
  *(v2 + 24) = sub_1E5C9CD50();
  v4 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4DAAC, v4, v3);
}

uint64_t sub_1E5C4DAAC()
{
  v1 = *(v0 + 16);

  (*(v1 + 192))(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E5C4DB1C()
{
  *(v0 + 40) = sub_1E5C9CD60();
  *(v0 + 48) = sub_1E5C9CD50();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
  *v1 = v0;
  v1[1] = sub_1E5C4DC08;

  return MEMORY[0x1EEE01A40](v0 + 16, v2);
}

uint64_t sub_1E5C4DC08()
{

  v1 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4DD44, v1, v0);
}

uint64_t sub_1E5C4DD44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5C4DDBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C4DA14(a1, v1 + 16);
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C4DF2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4DFC4;

  return sub_1E5C4D1B8(a1, v1 + 16);
}

uint64_t sub_1E5C4DFC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1E5C4E0BC()
{
  result = qword_1ED054A20;
  if (!qword_1ED054A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A20);
  }

  return result;
}

unint64_t sub_1E5C4E114()
{
  result = qword_1ED054A28;
  if (!qword_1ED054A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A28);
  }

  return result;
}

unint64_t sub_1E5C4E16C()
{
  result = qword_1ED054A30;
  if (!qword_1ED054A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A30);
  }

  return result;
}

unint64_t sub_1E5C4E1C4()
{
  result = qword_1EE2C44D0[0];
  if (!qword_1EE2C44D0[0])
  {
    type metadata accessor for SearchState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C44D0);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1E5C4E258(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1E5C4E2A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchQueryMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchQueryMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C4E47C()
{
  result = qword_1ED054A38;
  if (!qword_1ED054A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A38);
  }

  return result;
}

char *sub_1E5C4E4D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A50, &qword_1E5CA17B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E5C4E61C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1E5C4E804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A70, &qword_1E5CA17D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchResultsRequest.QueryMode.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5C9CF10();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t SearchResultsRequest.QueryMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E656D6572636E69;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_1E5C4E908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656D6572636E69;
  }

  else
  {
    v3 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB000000006C6174;
  }

  if (*a2)
  {
    v5 = 0x6E656D6572636E69;
  }

  else
  {
    v5 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C6174;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5C9D060();
  }

  return v8 & 1;
}

uint64_t sub_1E5C4E9B8@<X0>(char *a2@<X8>)
{
  v3 = sub_1E5C9CF10();

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

void sub_1E5C4EA18(uint64_t *a1@<X8>)
{
  v2 = 0x6574656C706D6F63;
  if (*v1)
  {
    v2 = 0x6E656D6572636E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006C6174;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1E5C4EB14()
{
  result = qword_1ED054A80;
  if (!qword_1ED054A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A80);
  }

  return result;
}

uint64_t sub_1E5C4EB68()
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C4EBF4(uint64_t a1)
{
  sub_1E5C9CC60();
}

uint64_t sub_1E5C4EC6C(uint64_t a1)
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

unint64_t sub_1E5C4ED04()
{
  result = qword_1ED054A88;
  if (!qword_1ED054A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A88);
  }

  return result;
}

uint64_t sub_1E5C4ED58(uint64_t a1, unsigned __int8 a2)
{
  sub_1E5C9CC60();
}

uint64_t SearchItemPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchItemPlaceholder.referenceIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double SearchItemPlaceholder.type.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;

  return result;
}

uint64_t SearchItemPlaceholder.editorialCardIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

__n128 SearchItemPlaceholder.init(identifier:type:referenceIdentifier:referenceType:editorialCardIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  result = *a3;
  *(a9 + 40) = *a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

unint64_t sub_1E5C4EF78()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x636E657265666572;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1E5C4F028@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C4FF10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C4F050(uint64_t a1)
{
  v2 = sub_1E5C4F33C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C4F08C(uint64_t a1)
{
  v2 = sub_1E5C4F33C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchItemPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A90, &qword_1E5CA18E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v7;
  v23 = *(v1 + 32);
  v8 = *(v1 + 40);
  v16 = *(v1 + 48);
  v17 = v8;
  v9 = *(v1 + 56);
  v15[1] = *(v1 + 64);
  v15[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C4F33C();
  sub_1E5C9D130();
  LOBYTE(v21) = 0;
  v10 = v20;
  sub_1E5C9D000();
  if (!v10)
  {
    v11 = v23;
    v13 = v16;
    v12 = v17;
    LOBYTE(v21) = 1;
    sub_1E5C9D000();
    LOBYTE(v21) = v11;
    v24 = 2;
    sub_1E5C4F390();
    sub_1E5C9D030();
    v21 = v12;
    v22 = v13;
    v24 = 3;
    sub_1E5C4F3E4();

    sub_1E5C9D030();

    LOBYTE(v21) = 4;
    sub_1E5C9CFD0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5C4F33C()
{
  result = qword_1ED054A98;
  if (!qword_1ED054A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A98);
  }

  return result;
}

unint64_t sub_1E5C4F390()
{
  result = qword_1ED054AA0;
  if (!qword_1ED054AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AA0);
  }

  return result;
}

unint64_t sub_1E5C4F3E4()
{
  result = qword_1ED054AA8;
  if (!qword_1ED054AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AA8);
  }

  return result;
}

uint64_t SearchItemPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AB0, &qword_1E5CA18E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C4F33C();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32) = 0;
  v9 = sub_1E5C9CF70();
  v26 = v10;
  LOBYTE(v32) = 1;
  v11 = sub_1E5C9CF70();
  *(&v25 + 1) = v12;
  *&v25 = v11;
  LOBYTE(v27) = 2;
  sub_1E5C4F7C4();
  sub_1E5C9CFA0();
  v41 = v32;
  LOBYTE(v27) = 3;
  sub_1E5C4F818();
  sub_1E5C9CFA0();
  v23 = v32;
  v24 = v33;
  v42 = 4;
  v13 = sub_1E5C9CF40();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = *(&v25 + 1);
  *&v27 = v9;
  *(&v27 + 1) = v26;
  v18 = v25;
  v28 = v25;
  v19 = v41;
  LOBYTE(v29) = v41;
  *(&v29 + 1) = v23;
  *&v30 = v24;
  *(&v30 + 1) = v16;
  v31 = v15;
  *(a2 + 64) = v15;
  v20 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v20;
  v21 = v28;
  *a2 = v27;
  *(a2 + 16) = v21;
  sub_1E5C4F86C(&v27, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32 = v9;
  v33 = v26;
  v34 = v18;
  v35 = v17;
  v36 = v19;
  v37 = v23;
  v38 = v24;
  v39 = v16;
  v40 = v15;
  return sub_1E5C4F8A4(&v32);
}

unint64_t sub_1E5C4F7C4()
{
  result = qword_1ED054AB8;
  if (!qword_1ED054AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AB8);
  }

  return result;
}

unint64_t sub_1E5C4F818()
{
  result = qword_1ED054AC0;
  if (!qword_1ED054AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AC0);
  }

  return result;
}

uint64_t SearchItemPlaceholder.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C4ED58(a1, v5);
  if (!v3)
  {
    MEMORY[0x1E69399F0](0);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1E5C9D0F0();
  }

  MEMORY[0x1E69399F0](1);
  sub_1E5C9CC60();
  if (!v4)
  {
    return sub_1E5C9D0F0();
  }

LABEL_3:
  sub_1E5C9D0F0();

  return sub_1E5C9CC60();
}

uint64_t SearchItemPlaceholder.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C4ED58(v5, v3);
  if (!v1)
  {
    MEMORY[0x1E69399F0](0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E5C9D0F0();
    return sub_1E5C9D110();
  }

  MEMORY[0x1E69399F0](1);
  sub_1E5C9CC60();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E5C9D0F0();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C4FAE8()
{
  sub_1E5C9D0D0();
  SearchItemPlaceholder.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C4FB2C(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchItemPlaceholder.hash(into:)(v2);
  return sub_1E5C9D110();
}

BOOL _s13FitnessSearch0B15ItemPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = a1[7];
  v15 = *(a2 + 64);
  v16 = a1[8];
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1E5C9D060() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1E5C9D060() & 1) == 0 || (sub_1E5C762CC(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {

      return 0;
    }

    if ((v5 != v11 || v6 != v10) && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v10)
    {
      return 0;
    }
  }

  if (!v16)
  {
    return !v15;
  }

  return v15 && (v14 == v13 && v16 == v15 || (sub_1E5C9D060() & 1) != 0);
}

unint64_t sub_1E5C4FCE8()
{
  result = qword_1ED054AC8;
  if (!qword_1ED054AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AC8);
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

uint64_t sub_1E5C4FD60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E5C4FDA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5C4FE0C()
{
  result = qword_1ED054AD0;
  if (!qword_1ED054AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AD0);
  }

  return result;
}

unint64_t sub_1E5C4FE64()
{
  result = qword_1ED054AD8;
  if (!qword_1ED054AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AD8);
  }

  return result;
}

unint64_t sub_1E5C4FEBC()
{
  result = qword_1ED054AE0;
  if (!qword_1ED054AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AE0);
  }

  return result;
}

uint64_t sub_1E5C4FF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7F40 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA7F60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t SearchContentTile.type.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchContentTile(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C50220(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C2B5DC(v9, v6);
    v10 = &v6[*(v4 + 100)];
    v12 = *v10;
    v11 = *(v10 + 1);

    result = sub_1E5C50284(v6);
  }

  else
  {
    v12 = *(v9 + 5);
    v11 = *(v9 + 6);
  }

  *a1 = v12;
  a1[1] = v11;
  return result;
}

uint64_t sub_1E5C50220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchContentTile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C50284(uint64_t a1)
{
  v2 = type metadata accessor for SearchItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchContentTile.referenceIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchContentTile(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C50220(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C2B5DC(v7, v4);
    v8 = *&v4[*(v2 + 60)];

    sub_1E5C50284(v4);
  }

  else
  {
    v8 = *(v7 + 2);
  }

  return v8;
}

uint64_t SearchContentTile.referenceType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchContentTile(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C50220(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C2B5DC(v7, v4);
    v8 = v4[*(v2 + 64)];
    sub_1E5C50284(v4);
  }

  else
  {
    v8 = v7[32];
  }

  return v8;
}

__n128 TVSearchFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

void TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v456 = a3;
  v457 = a2;
  v453 = a1;
  v448 = type metadata accessor for SearchHint(0);
  MEMORY[0x1EEE9AC00](v448);
  v450 = v439 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchHistoryItem(0);
  v445 = *(v7 - 8);
  v8 = *(v445 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v446 = v439 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v449 = v439 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A60, &qword_1E5CA17C0);
  v12 = *(v11 - 8);
  v454 = v11;
  v455 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v451 = v439 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v447 = v439 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v441 = v439 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v442 = v439 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v439 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v439 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v439 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v444 = v439 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v443 = v439 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = v439 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = v439 - v37;
  v39 = type metadata accessor for SearchAction(0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v452 = (v439 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v43 = v439 - v42;
  v44 = v4[11];
  v483 = v4[10];
  v484 = v44;
  v45 = v4[13];
  v485 = v4[12];
  v486 = v45;
  v46 = v4[7];
  v479 = v4[6];
  v480 = v46;
  v47 = v4[9];
  v481 = v4[8];
  v482 = v47;
  v48 = v4[3];
  v475 = v4[2];
  v476 = v48;
  v49 = v4[5];
  v477 = v4[4];
  v478 = v49;
  v50 = v4[1];
  v473 = *v4;
  v474 = v50;
  v51 = a4;
  v53 = v52;
  sub_1E5C426C4(v51, v439 - v42, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *&v462[0] = *v43;
      v191 = *&v462[0];

      sub_1E5C595C8(v462);
      v192 = *&v462[0];
      v193 = *(type metadata accessor for SearchState(0) + 44);
      v194 = v457;

      *(v194 + v193) = v192;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v195 = sub_1E5C9BD40();
      __swift_project_value_buffer(v195, qword_1ED065C70);

      v196 = sub_1E5C9BD20();
      v197 = sub_1E5C9CDE0();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        *v198 = 134217984;
        v199 = *(v191 + 16);

        *(v198 + 4) = v199;

        _os_log_impl(&dword_1E5C20000, v196, v197, "[History] Fetched %ld.", v198, 0xCu);
        MEMORY[0x1E693A130](v198, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      break;
    case 2u:
      v221 = *v43;
      v220 = *(v43 + 1);
      v222 = HIBYTE(v220) & 0xF;
      if ((v220 & 0x2000000000000000) == 0)
      {
        v222 = *v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v222)
      {
        v469 = v483;
        v470 = v484;
        v471 = v485;
        v472 = v486;
        v465 = v479;
        v466 = v480;
        v467 = v481;
        v468 = v482;
        v462[2] = v475;
        v462[3] = v476;
        v463 = v477;
        v464 = v478;
        v462[0] = v473;
        v462[1] = v474;
        v223 = v452;
        *v452 = v221;
        *(v223 + 8) = v220;
        *(v223 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v453, v457, v456, v223);
        sub_1E5C5A9F4(v223, type metadata accessor for SearchAction);
      }

      else
      {

        *(v457 + 50) = 0;
      }

      break;
    case 3u:
      v154 = *v43;
      v153 = *(v43 + 1);
      v155 = *(v43 + 2);
      v156 = *(v43 + 3);
      v157 = *(v43 + 4);
      v454 = *(v43 + 5);
      v159 = *(v43 + 6);
      v158 = *(v43 + 7);
      v160 = *(v43 + 9);
      v443 = *(v43 + 8);
      v444 = v158;
      v161 = *(v43 + 11);
      v441 = *(v43 + 10);
      v442 = v160;
      v440 = v161;
      LODWORD(v451) = v43[96];
      v162 = *(v43 + 13);
      v449 = *(v43 + 14);
      v450 = v162;
      v163 = *(v43 + 15);
      v447 = *(v43 + 16);
      v448 = v163;
      v164 = *(v43 + 17);
      v445 = *(v43 + 18);
      v446 = v164;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v165 = sub_1E5C9BD40();
      __swift_project_value_buffer(v165, qword_1ED065C70);

      v166 = sub_1E5C9BD20();
      v167 = sub_1E5C9CDE0();

      v455 = v153;

      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v439[0] = v154;
        v169 = v168;
        v170 = swift_slowAlloc();
        v439[1] = v53;
        v171 = v170;
        *&v462[0] = v170;
        *v169 = 141558275;
        *(v169 + 4) = 1752392040;
        *(v169 + 12) = 2081;

        v172 = v156;
        v173 = sub_1E5C58D60(v156, v157, v462);

        *(v169 + 14) = v173;
        _os_log_impl(&dword_1E5C20000, v166, v167, "[Incremental] Completed '%{private,mask.hash}s'", v169, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v171);
        MEMORY[0x1E693A130](v171, -1, -1);
        v174 = v169;
        v154 = v439[0];
        MEMORY[0x1E693A130](v174, -1, -1);
      }

      else
      {

        v172 = v156;
      }

      v395 = v457;
      v396 = (v395 + *(type metadata accessor for SearchState(0) + 68));
      sub_1E5C30DB8(*v396, v396[1], v396[2], v396[3], v396[4]);
      v397 = v443;
      *v396 = v444;
      v396[1] = v397;
      v398 = v441;
      v396[2] = v442;
      v396[3] = v398;
      v396[4] = v440;
      v469 = v483;
      v470 = v484;
      v471 = v485;
      v472 = v486;
      v465 = v479;
      v466 = v480;
      v467 = v481;
      v468 = v482;
      v462[2] = v475;
      v462[3] = v476;
      v463 = v477;
      v464 = v478;
      v462[0] = v473;
      v462[1] = v474;
      v399 = v452;
      v400 = v454;
      v401 = v455;
      *v452 = v154;
      *(v399 + 8) = v401;
      *(v399 + 16) = v155;
      *(v399 + 24) = v172;
      *(v399 + 32) = v157;
      *(v399 + 40) = v400;
      *(v399 + 48) = v159;
      *(v399 + 56) = v451;
      v402 = v449;
      *(v399 + 64) = v450;
      *(v399 + 72) = v402;
      v403 = v447;
      *(v399 + 80) = v448;
      *(v399 + 88) = v403;
      v404 = v445;
      *(v399 + 96) = v446;
      *(v399 + 104) = v404;
      swift_storeEnumTagMultiPayload();
      TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v453, v395, v456, v399);
      sub_1E5C5A9F4(v399, type metadata accessor for SearchAction);
      break;
    case 4u:
      v249 = *v43;
      v248 = *(v43 + 1);
      v250 = v43[16];
      v251 = type metadata accessor for SearchState(0);
      v252 = v457;
      v253 = v457 + v251[13];
      if (!*(v253 + 56) && (*v253 == v249 && *(v253 + 8) == v248 || (sub_1E5C9D060() & 1) != 0))
      {
        goto LABEL_151;
      }

      v254 = (v252 + v251[14]);
      v255 = *v254;
      v256 = v254[1];
      LOBYTE(v459) = v250;
      *(&v459 + 1) = v249;
      *&v460 = v248;
      *(&v460 + 1) = v255;
      v461[0] = v256;
      *&v461[1] = 0;
      *v254 = v249;
      v254[1] = v248;
      v257 = HIBYTE(v248) & 0xF;
      if ((v248 & 0x2000000000000000) == 0)
      {
        v257 = v249 & 0xFFFFFFFFFFFFLL;
      }

      if (v257)
      {
        v258 = qword_1ED053E00;
        swift_bridgeObjectRetain_n();
        if (v258 != -1)
        {
          swift_once();
        }

        v259 = sub_1E5C9BD40();
        __swift_project_value_buffer(v259, qword_1ED065C70);

        v260 = sub_1E5C9BD20();
        v261 = sub_1E5C9CDE0();

        v262 = os_log_type_enabled(v260, v261);
        v263 = v454;
        LODWORD(v453) = v250;
        if (v262)
        {
          v264 = swift_slowAlloc();
          v265 = swift_slowAlloc();
          *&v462[0] = v265;
          *v264 = 141558275;
          *(v264 + 4) = 1752392040;
          *(v264 + 12) = 2081;
          *(v264 + 14) = sub_1E5C58D60(v249, v248, v462);
          _os_log_impl(&dword_1E5C20000, v260, v261, "[Query] Submitted: '%{private,mask.hash}s'", v264, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v265);
          MEMORY[0x1E693A130](v265, -1, -1);
          MEMORY[0x1E693A130](v264, -1, -1);
        }

        v266 = v456;
        v267 = (v252 + v251[17]);
        sub_1E5C30DB8(*v267, v267[1], v267[2], v267[3], v267[4]);
        v267[4] = 0;
        *v267 = 0u;
        *(v267 + 1) = 0u;
        *(v252 + 50) = 1;
        *&v462[0] = 5;
        memset(v462 + 8, 0, 56);
        LOBYTE(v463) = 2;
        sub_1E5C59308();
        v268 = v443;
        sub_1E5C9CE40();
        v269 = *MEMORY[0x1E6999AE8];
        v270 = v455;
        v457 = *(v455 + 104);
        (v457)(v268, v269, v263);
        v271 = *v266;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v271 = sub_1E5C4E5D4(0, *(v271 + 16) + 1, 1, v271);
        }

        v273 = *(v271 + 16);
        v272 = *(v271 + 24);
        if (v273 >= v272 >> 1)
        {
          v271 = sub_1E5C4E5D4((v272 > 1), v273 + 1, 1, v271);
        }

        *(v271 + 16) = v273 + 1;
        v275 = *(v270 + 32);
        v274 = v270 + 32;
        v451 = ((*(v274 + 48) + 32) & ~*(v274 + 48));
        v452 = v275;
        v450 = *(v274 + 40);
        v455 = v274;
        v275(&v451[v271 + v450 * v273], v443, v263);
        v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
        v277 = v276[16];
        v449 = v276[20];
        v278 = v444;
        v279 = &v444[v276[24]];
        *&v462[0] = 3;
        memset(v462 + 8, 0, 56);
        LOBYTE(v463) = 2;
        sub_1E5C9CE40();
        v280 = *MEMORY[0x1E6999B60];
        v281 = sub_1E5C9CAC0();
        v282 = &v278[v277];
        v283 = v454;
        (*(*(v281 - 8) + 104))(v282, v280, v281);
        v284 = swift_allocObject();
        *(v284 + 16) = v249;
        *(v284 + 24) = v248;
        *(v284 + 32) = v453;
        v285 = v484;
        *(v284 + 200) = v483;
        *(v284 + 216) = v285;
        v286 = v486;
        *(v284 + 232) = v485;
        *(v284 + 248) = v286;
        v287 = v480;
        *(v284 + 136) = v479;
        *(v284 + 152) = v287;
        v288 = v482;
        *(v284 + 168) = v481;
        *(v284 + 184) = v288;
        v289 = v476;
        *(v284 + 72) = v475;
        *(v284 + 88) = v289;
        v290 = v478;
        *(v284 + 104) = v477;
        *(v284 + 120) = v290;
        v291 = v474;
        *(v284 + 40) = v473;
        *(v284 + 56) = v291;
        v292 = v460;
        *(v284 + 264) = v459;
        *(v284 + 280) = v292;
        *(v284 + 296) = v461[0];
        *(v284 + 312) = *&v461[1];
        *v279 = &unk_1E5CA1BA0;
        *(v279 + 1) = v284;
        sub_1E5C593F4(&v473, v462);
        sub_1E5C9CD70();
        v293 = *MEMORY[0x1E6999B48];
        v294 = sub_1E5C9CAB0();
        (*(*(v294 - 8) + 104))(&v278[v449], v293, v294);
        (v457)(v278, *MEMORY[0x1E6999AD8], v283);
        v296 = *(v271 + 16);
        v295 = *(v271 + 24);
        if (v296 >= v295 >> 1)
        {
          v271 = sub_1E5C4E5D4((v295 > 1), v296 + 1, 1, v271);
        }

        *(v271 + 16) = v296 + 1;
        v297 = v456;
        v452(&v451[v271 + v296 * v450], v444, v283);
        *v297 = v271;
      }

      else
      {

        sub_1E5C59574(&v459);
        *(v252 + 50) = 0;
      }

      break;
    case 5u:
      v307 = v449;
      sub_1E5C5A8B4(v43, v449, type metadata accessor for SearchHistoryItem);
      v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v309 = v308[16];
      v310 = v308[20];
      v311 = &v29[v308[24]];
      *&v462[0] = 11;
      memset(v462 + 8, 0, 56);
      LOBYTE(v463) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v312 = *MEMORY[0x1E6999B60];
      v313 = sub_1E5C9CAC0();
      (*(*(v313 - 8) + 104))(&v29[v309], v312, v313);
      v314 = v307;
      v315 = v446;
      sub_1E5C426C4(v314, v446, type metadata accessor for SearchHistoryItem);
      v316 = (*(v445 + 80) + 16) & ~*(v445 + 80);
      v317 = swift_allocObject();
      sub_1E5C5A8B4(v315, v317 + v316, type metadata accessor for SearchHistoryItem);
      *v311 = &unk_1E5CA1B90;
      *(v311 + 1) = v317;
      sub_1E5C9CD70();
      v318 = *MEMORY[0x1E6999B48];
      v319 = sub_1E5C9CAB0();
      (*(*(v319 - 8) + 104))(&v29[v310], v318, v319);
      v321 = v454;
      v320 = v455;
      (*(v455 + 104))(v29, *MEMORY[0x1E6999AD8], v454);
      v322 = v456;
      v323 = *v456;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v323 = sub_1E5C4E5D4(0, v323[2] + 1, 1, v323);
      }

      v325 = v323[2];
      v324 = v323[3];
      if (v325 >= v324 >> 1)
      {
        v323 = sub_1E5C4E5D4((v324 > 1), v325 + 1, 1, v323);
      }

      sub_1E5C5A9F4(v449, type metadata accessor for SearchHistoryItem);
      v323[2] = v325 + 1;
      (*(v320 + 32))(v323 + ((*(v320 + 80) + 32) & ~*(v320 + 80)) + *(v320 + 72) * v325, v29, v321);
      *v322 = v323;
      break;
    case 6u:
      v224 = *v43;
      v225 = *(v43 + 1);
      v226 = *(v43 + 2);
      v227 = *(v43 + 3);
      v228 = *(v43 + 4);
      v451 = *(v43 + 5);
      v455 = *(v43 + 6);
      v456 = v228;

      v452 = v224;
      v453 = v227;
      if (v225)
      {
        v229 = v224;
      }

      else
      {
        v229 = 0;
      }

      v450 = v229;
      if (v225)
      {
        v230 = v225;
      }

      else
      {
        v230 = 0xE000000000000000;
      }

      v231 = *(v226 + 16);
      v454 = v226;
      if (v231)
      {
        v448 = v230;
        v458 = MEMORY[0x1E69E7CC0];
        v449 = v225;

        sub_1E5C5A894(0, v231, 0);
        v232 = v458;
        v233 = (v226 + 32);
        do
        {
          v234 = *v233;
          v235 = v233[1];
          v236 = v233[3];
          v462[2] = v233[2];
          v462[3] = v236;
          v462[0] = v234;
          v462[1] = v235;
          v237 = *(&v236 + 1);
          v487 = v235;
          sub_1E5C2A1B8(v462, &v459);

          MEMORY[0x1E6939590](58, 0xE100000000000000);
          *&v459 = *(v237 + 16);
          v238 = sub_1E5C9D050();
          MEMORY[0x1E6939590](v238);

          sub_1E5C2A1F0(v462);
          v239 = v487;
          v458 = v232;
          v241 = *(v232 + 16);
          v240 = *(v232 + 24);
          if (v241 >= v240 >> 1)
          {
            sub_1E5C5A894((v240 > 1), v241 + 1, 1);
            v232 = v458;
          }

          *(v232 + 16) = v241 + 1;
          *(v232 + 16 * v241 + 32) = v239;
          v233 += 4;
          --v231;
        }

        while (v231);
        v230 = v448;
        v225 = v449;
        v227 = v453;
        v226 = v454;
      }

      else
      {

        v232 = MEMORY[0x1E69E7CC0];
      }

      v405 = v456;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v406 = sub_1E5C9BD40();
      __swift_project_value_buffer(v406, qword_1ED065C70);

      v407 = sub_1E5C9BD20();
      v408 = sub_1E5C9CDE0();

      if (os_log_type_enabled(v407, v408))
      {
        v409 = swift_slowAlloc();
        v410 = swift_slowAlloc();
        *&v462[0] = v410;
        *v409 = 141558787;
        *(v409 + 4) = 1752392040;
        *(v409 + 12) = 2081;

        v411 = sub_1E5C58D60(v227, v456, v462);

        *(v409 + 14) = v411;
        *(v409 + 22) = 2080;
        v412 = sub_1E5C58D60(v450, v230, v462);

        *(v409 + 24) = v412;
        *(v409 + 32) = 2080;
        v413 = MEMORY[0x1E69395F0](v232, MEMORY[0x1E69E6158]);
        v415 = v414;

        v416 = sub_1E5C58D60(v413, v415, v462);
        v227 = v453;

        *(v409 + 34) = v416;
        _os_log_impl(&dword_1E5C20000, v407, v408, "[Results] Fetched '%{private,mask.hash}s' (%s): %s", v409, 0x2Au);
        swift_arrayDestroy();
        v417 = v410;
        v226 = v454;
        MEMORY[0x1E693A130](v417, -1, -1);
        v418 = v409;
        v405 = v456;
        MEMORY[0x1E693A130](v418, -1, -1);
      }

      else
      {
      }

      v419 = v452;
      v420 = type metadata accessor for SearchState(0);
      v421 = v457;
      v422 = v457 + *(v420 + 52);
      *(&v462[2] + 9) = *(v422 + 41);
      v423 = *(v422 + 16);
      v462[0] = *v422;
      v462[1] = v423;
      v462[2] = *(v422 + 32);
      v424 = sub_1E5C30CAC(v462);
      *v422 = v419;
      *(v422 + 8) = v225;
      *(v422 + 16) = v226;
      *(v422 + 24) = v227;
      v425 = v451;
      *(v422 + 32) = v405;
      *(v422 + 40) = v425;
      *(v422 + 48) = v455;
      *(v422 + 56) = 1;
      (v485)(v424);
      *(v421 + 50) = 0;
      break;
    case 7u:
      v388 = *(v43 + 1);
      v459 = *v43;
      v460 = v388;
      v389 = *(v43 + 3);
      v461[0] = *(v43 + 2);
      v461[1] = v389;
      v390 = (v457 + *(type metadata accessor for SearchState(0) + 60));
      v391 = v390[1];
      v462[0] = *v390;
      v462[1] = v391;
      v392 = v390[3];
      v462[2] = v390[2];
      v462[3] = v392;
      sub_1E5C3177C(v462, &qword_1ED053F80, &qword_1E5C9E528);
      v393 = v460;
      *v390 = v459;
      v390[1] = v393;
      v394 = v461[1];
      v390[2] = v461[0];
      v390[3] = v394;
      break;
    case 8u:
      sub_1E5C5A8B4(v43, v450, type metadata accessor for SearchHint);
      v178 = type metadata accessor for SearchState(0);
      v179 = v457;
      v180 = (v457 + *(v178 + 68));
      sub_1E5C30DB8(*v180, v180[1], v180[2], v180[3], v180[4]);
      v180[4] = 0;
      *v180 = 0u;
      *(v180 + 1) = 0u;
      *&v462[0] = 5;
      memset(v462 + 8, 0, 56);
      LOBYTE(v463) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v182 = v454;
      v181 = v455;
      (*(v455 + 104))(v26, *MEMORY[0x1E6999AE8], v454);
      v183 = v456;
      v184 = *v456;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_1E5C4E5D4(0, v184[2] + 1, 1, v184);
      }

      v186 = v184[2];
      v185 = v184[3];
      if (v186 >= v185 >> 1)
      {
        v184 = sub_1E5C4E5D4((v185 > 1), v186 + 1, 1, v184);
      }

      v184[2] = v186 + 1;
      (*(v181 + 32))(v184 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v186, v26, v182);
      *v183 = v184;
      v463 = v477;
      v464 = v478;
      v462[2] = v475;
      v462[3] = v476;
      v467 = v481;
      v468 = v482;
      v465 = v479;
      v466 = v480;
      v471 = v485;
      v472 = v486;
      v469 = v483;
      v470 = v484;
      v462[0] = v473;
      v462[1] = v474;
      v187 = v450;
      v188 = (v450 + *(v448 + 32));
      v189 = v188[1];
      v190 = v452;
      *v452 = *v188;
      *(v190 + 8) = v189;
      *(v190 + 16) = 1;
      swift_storeEnumTagMultiPayload();

      TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v453, v179, v183, v190);
      sub_1E5C5A9F4(v190, type metadata accessor for SearchAction);
      sub_1E5C5A9F4(v187, type metadata accessor for SearchHint);
      break;
    case 9u:
      v371 = *(v43 + 1);
      v453 = *v43;
      v372 = *(v43 + 2);
      v373 = *(v43 + 3);
      v374 = *(v43 + 4);

      v375 = type metadata accessor for SearchState(0);
      v376 = v457;
      v377 = (v457 + *(v375 + 56));
      v378 = *v377;
      v379 = v377[1];
      v380 = HIBYTE(v379) & 0xF;
      if ((v379 & 0x2000000000000000) == 0)
      {
        v380 = v378 & 0xFFFFFFFFFFFFLL;
      }

      if (!v380)
      {

        *(v376 + 49) = 0;
        *&v462[0] = 5;
        memset(v462 + 8, 0, 56);
        LOBYTE(v463) = 2;
        sub_1E5C59308();
        sub_1E5C9CE40();
        v426 = v455;
        (*(v455 + 104))(v23, *MEMORY[0x1E6999AE8], v454);
        v427 = v456;
        v428 = *v456;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v428 = sub_1E5C4E5D4(0, v428[2] + 1, 1, v428);
        }

        v430 = v428[2];
        v429 = v428[3];
        if (v430 >= v429 >> 1)
        {
          v428 = sub_1E5C4E5D4((v429 > 1), v430 + 1, 1, v428);
        }

        v428[2] = v430 + 1;
        (*(v426 + 32))(v428 + ((*(v426 + 80) + 32) & ~*(v426 + 80)) + *(v426 + 72) * v430, v23, v454);
        *v427 = v428;
        v61 = (v376 + *(v375 + 68));
        goto LABEL_143;
      }

      if ((v378 != v373 || v379 != v374) && (sub_1E5C9D060() & 1) == 0)
      {

        goto LABEL_151;
      }

      v456 = v375;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v381 = sub_1E5C9BD40();
      __swift_project_value_buffer(v381, qword_1ED065C70);

      v382 = sub_1E5C9BD20();
      v383 = sub_1E5C9CDE0();
      if (os_log_type_enabled(v382, v383))
      {
        v384 = swift_slowAlloc();
        v385 = swift_slowAlloc();
        *&v462[0] = v385;
        *v384 = 141558531;
        *(v384 + 4) = 1752392040;
        *(v384 + 12) = 2081;

        v386 = sub_1E5C58D60(v373, v374, v462);

        *(v384 + 14) = v386;
        *(v384 + 22) = 2048;
        *(v384 + 24) = *(v372 + 16);

        _os_log_impl(&dword_1E5C20000, v382, v383, "[Suggestions] Completed '%{private,mask.hash}s': %ld", v384, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v385);
        v387 = v385;
        v376 = v457;
        MEMORY[0x1E693A130](v387, -1, -1);
        MEMORY[0x1E693A130](v384, -1, -1);
      }

      else
      {
      }

      v431 = v453;
      v432 = (v376 + *(v456 + 17));
      sub_1E5C30DB8(*v432, v432[1], v432[2], v432[3], v432[4]);
      *v432 = v431;
      v432[1] = v371;
      v432[2] = v372;
      v432[3] = v373;
      v432[4] = v374;
      break;
    case 0xAu:
      v101 = *v43;
      v100 = *(v43 + 1);
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v102 = sub_1E5C9BD40();
      __swift_project_value_buffer(v102, qword_1ED065C70);

      v103 = sub_1E5C9BD20();
      v104 = sub_1E5C9CDB0();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *&v462[0] = v106;
        *v105 = 141558275;
        *(v105 + 4) = 1752392040;
        *(v105 + 12) = 2081;
        *(v105 + 14) = sub_1E5C58D60(v101, v100, v462);
        _os_log_impl(&dword_1E5C20000, v103, v104, "[Text] Changed: %{private,mask.hash}s", v105, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v106);
        MEMORY[0x1E693A130](v106, -1, -1);
        MEMORY[0x1E693A130](v105, -1, -1);
      }

      v107 = v457;
      v108 = type metadata accessor for SearchState(0);
      v109 = (v107 + v108[14]);
      v110 = *v109;
      v111 = v109[1];
      if (*v109 == v101 && v111 == v100 || (sub_1E5C9D060() & 1) != 0 || (v112 = (v107 + v108[17]), v112[2]) && (v112[3] == v101 && v112[4] == v100 || (sub_1E5C9D060() & 1) != 0) || (v113 = v107 + v108[13], !*(v113 + 56)) && (*v113 == v101 && *(v113 + 8) == v100 || (sub_1E5C9D060() & 1) != 0) || (v114 = v112[1], v115 = v112[2], v116 = v112[3], v117 = v112[4], *&v462[0] = *v112, *(&v462[0] + 1) = v114, *&v462[1] = v115, *(&v462[1] + 1) = v116, *&v462[2] = v117, sub_1E5C3210C(*&v462[0], v114, v115, v116, v117), v118._countAndFlagsBits = v101, v118._object = v100, v119 = SearchHintsState.containsMatchingHint(label:)(v118), sub_1E5C30DB8(*&v462[0], *(&v462[0] + 1), *&v462[1], *(&v462[1] + 1), *&v462[2]), v119))
      {
LABEL_151:
      }

      else
      {
        LOBYTE(v487) = 2;
        *(&v487 + 1) = v101;
        *&v488 = v100;
        *(&v488 + 1) = v110;
        v489 = v111;
        v490 = 0;
        if ((v100 & 0x2000000000000000) != 0)
        {
          v120 = HIBYTE(v100) & 0xF;
        }

        else
        {
          v120 = v101 & 0xFFFFFFFFFFFFLL;
        }

        *(v457 + 49) = v120 != 0;
        *v109 = v101;
        v109[1] = v100;
        *&v462[0] = 5;
        memset(v462 + 8, 0, 56);
        LOBYTE(v463) = 2;
        v121 = sub_1E5C59308();
        swift_bridgeObjectRetain_n();
        v122 = v442;
        v448 = v121;
        sub_1E5C9CE40();
        v123 = (v455 + 104);
        v124 = *(v455 + 104);
        (v124)(v122, *MEMORY[0x1E6999AE8], v454);
        v125 = *v456;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v452 = v124;
        v453 = v123;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v125 = sub_1E5C4E5D4(0, v125[2] + 1, 1, v125);
        }

        v128 = v125[2];
        v127 = v125[3];
        if (v128 >= v127 >> 1)
        {
          v125 = sub_1E5C4E5D4((v127 > 1), v128 + 1, 1, v125);
        }

        v125[2] = v128 + 1;
        v129 = v454;
        v130 = *(v455 + 32);
        v450 = (*(v455 + 80) + 32) & ~*(v455 + 80);
        v451 = v130;
        v449 = *(v455 + 72);
        v131 = v125 + v450 + v449 * v128;
        v132 = v455 + 32;
        (v130)(v131, v442, v454);
        *v456 = v125;
        if (v120)
        {
          v455 = v132;
          sub_1E5C30DB8(*v112, v112[1], v112[2], v112[3], v112[4]);
          v112[4] = 0;
          *v112 = 0u;
          *(v112 + 1) = 0u;
          *(v457 + 50) = 1;
          v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
          v134 = v133[16];
          v457 = v133[20];
          v135 = v441;
          v136 = &v441[v133[24]];
          *&v462[0] = 5;
          memset(v462 + 8, 0, 56);
          LOBYTE(v463) = 2;
          sub_1E5C9CE40();
          v137 = *MEMORY[0x1E6999B60];
          v138 = sub_1E5C9CAC0();
          (*(*(v138 - 8) + 104))(&v135[v134], v137, v138);
          v139 = swift_allocObject();
          *(v139 + 16) = v101;
          *(v139 + 24) = v100;
          v140 = v484;
          *(v139 + 192) = v483;
          *(v139 + 208) = v140;
          v141 = v486;
          *(v139 + 224) = v485;
          *(v139 + 240) = v141;
          v142 = v480;
          *(v139 + 128) = v479;
          *(v139 + 144) = v142;
          v143 = v482;
          *(v139 + 160) = v481;
          *(v139 + 176) = v143;
          v144 = v476;
          *(v139 + 64) = v475;
          *(v139 + 80) = v144;
          v145 = v478;
          *(v139 + 96) = v477;
          *(v139 + 112) = v145;
          v146 = v474;
          *(v139 + 32) = v473;
          *(v139 + 48) = v146;
          v147 = v488;
          *(v139 + 256) = v487;
          *(v139 + 272) = v147;
          *(v139 + 288) = v489;
          *(v139 + 304) = v490;
          *v136 = &unk_1E5CA1B80;
          *(v136 + 1) = v139;
          sub_1E5C593F4(&v473, v462);
          sub_1E5C9CD70();
          v148 = *MEMORY[0x1E6999B48];
          v149 = sub_1E5C9CAB0();
          (*(*(v149 - 8) + 104))(&v135[v457], v148, v149);
          v452(v135, *MEMORY[0x1E6999AD8], v129);
          v151 = v125[2];
          v150 = v125[3];
          if (v151 >= v150 >> 1)
          {
            v125 = sub_1E5C4E5D4((v150 > 1), v151 + 1, 1, v125);
          }

          v152 = v456;
          v125[2] = v151 + 1;
          (v451)(v125 + v450 + v151 * v449, v441, v129);
          *v152 = v125;
        }

        else
        {

          sub_1E5C59574(&v487);
          v433 = v457;
          *(v457 + 50) = 0;
          sub_1E5C30DB8(*v112, v112[1], v112[2], v112[3], v112[4]);
          v112[4] = 0;
          *v112 = 0u;
          *(v112 + 1) = 0u;
          v434 = *(v113 + 16);
          v459 = *v113;
          v460 = v434;
          v461[0] = *(v113 + 32);
          *(v461 + 9) = *(v113 + 41);
          sub_1E5C30CAC(&v459);
          *v113 = 0u;
          *(v113 + 16) = 0u;
          *(v113 + 32) = 0u;
          *(v113 + 48) = 0;
          *(v113 + 56) = 2;
          v435 = (v433 + v108[15]);
          v436 = v435[1];
          v462[0] = *v435;
          v462[1] = v436;
          v437 = v435[3];
          v462[2] = v435[2];
          v462[3] = v437;
          v438 = sub_1E5C3177C(v462, &qword_1ED053F80, &qword_1E5C9E528);
          *v435 = 0u;
          v435[1] = 0u;
          v435[2] = 0u;
          v435[3] = 0u;
          (v473)(v438);
        }
      }

      break;
    case 0xBu:
      v175 = type metadata accessor for SearchState(0);
      v176 = v457;
      v177 = (v457 + *(v175 + 56));

      *v177 = 0;
      v177[1] = 0xE000000000000000;
      *(v176 + 49) = 0;
      break;
    case 0xCu:
      v298 = type metadata accessor for SearchState(0);
      v299 = v457;
      v300 = (v457 + v298[14]);

      *v300 = 0;
      v300[1] = 0xE000000000000000;
      v301 = (v299 + v298[17]);
      sub_1E5C30DB8(*v301, v301[1], v301[2], v301[3], v301[4]);
      v301[4] = 0;
      *v301 = 0u;
      *(v301 + 1) = 0u;
      v302 = v299 + v298[13];
      v303 = *(v302 + 16);
      v459 = *v302;
      v460 = v303;
      v461[0] = *(v302 + 32);
      *(v461 + 9) = *(v302 + 41);
      sub_1E5C30CAC(&v459);
      *v302 = 0u;
      *(v302 + 16) = 0u;
      *(v302 + 32) = 0u;
      *(v302 + 48) = 0;
      *(v302 + 56) = 2;
      v304 = (v299 + v298[15]);
      v305 = v304[1];
      v462[0] = *v304;
      v462[1] = v305;
      v306 = v304[3];
      v462[2] = v304[2];
      v462[3] = v306;
      sub_1E5C3177C(v462, &qword_1ED053F80, &qword_1E5C9E528);
      *v304 = 0u;
      v304[1] = 0u;
      v304[2] = 0u;
      v304[3] = 0u;
      break;
    case 0xDu:
      v85 = type metadata accessor for SearchState(0);
      v86 = v457;
      v87 = (v457 + *(v85 + 56));
      v89 = *v87;
      v88 = v87[1];
      v90 = qword_1ED053E00;

      if (v90 != -1)
      {
        swift_once();
      }

      v91 = sub_1E5C9BD40();
      __swift_project_value_buffer(v91, qword_1ED065C70);

      v92 = sub_1E5C9BD20();
      v93 = sub_1E5C9CDE0();

      v94 = os_log_type_enabled(v92, v93);
      v95 = v456;
      if (v94)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v462[0] = v97;
        *v96 = 141558275;
        *(v96 + 4) = 1752392040;
        *(v96 + 12) = 2081;
        *(v96 + 14) = sub_1E5C58D60(v89, v88, v462);
        _os_log_impl(&dword_1E5C20000, v92, v93, "[Dictation] Triggered '%{private,mask.hash}s'", v96, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v97);
        MEMORY[0x1E693A130](v97, -1, -1);
        MEMORY[0x1E693A130](v96, -1, -1);
      }

      v99 = v452;
      v98 = v453;
      v469 = v483;
      v470 = v484;
      v471 = v485;
      v472 = v486;
      v465 = v479;
      v466 = v480;
      v467 = v481;
      v468 = v482;
      v462[2] = v475;
      v462[3] = v476;
      v463 = v477;
      v464 = v478;
      v462[0] = v473;
      v462[1] = v474;
      *v452 = v89;
      *(v99 + 8) = v88;
      swift_storeEnumTagMultiPayload();
      TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v98, v86, v95, v99);
      sub_1E5C5A9F4(v99, type metadata accessor for SearchAction);
      break;
    case 0xEu:
      *(v457 + *(type metadata accessor for SearchState(0) + 64)) = 0;
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v201 = v200[16];
      v202 = v200[20];
      v203 = &v38[v200[24]];
      memset(v462, 0, sizeof(v462));
      LOBYTE(v463) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v204 = *MEMORY[0x1E6999B60];
      v205 = sub_1E5C9CAC0();
      (*(*(v205 - 8) + 104))(&v38[v201], v204, v205);
      v206 = swift_allocObject();
      v207 = v484;
      v206[11] = v483;
      v206[12] = v207;
      v208 = v486;
      v206[13] = v485;
      v206[14] = v208;
      v209 = v480;
      v206[7] = v479;
      v206[8] = v209;
      v210 = v482;
      v206[9] = v481;
      v206[10] = v210;
      v211 = v476;
      v206[3] = v475;
      v206[4] = v211;
      v212 = v478;
      v206[5] = v477;
      v206[6] = v212;
      v213 = v474;
      v206[1] = v473;
      v206[2] = v213;
      *v203 = &unk_1E5CA1BC0;
      *(v203 + 1) = v206;
      sub_1E5C593F4(&v473, v462);
      sub_1E5C9CD70();
      v214 = *MEMORY[0x1E6999B48];
      v215 = sub_1E5C9CAB0();
      (*(*(v215 - 8) + 104))(&v38[v202], v214, v215);
      v217 = v454;
      v216 = v455;
      (*(v455 + 104))(v38, *MEMORY[0x1E6999AD8], v454);
      v81 = v456;
      v82 = *v456;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_1E5C4E5D4(0, v82[2] + 1, 1, v82);
      }

      v219 = v82[2];
      v218 = v82[3];
      if (v219 >= v218 >> 1)
      {
        v82 = sub_1E5C4E5D4((v218 > 1), v219 + 1, 1, v82);
      }

      v82[2] = v219 + 1;
      (*(v216 + 32))(v82 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v219, v38, v217);
      goto LABEL_62;
    case 0xFu:
      v62 = *(type metadata accessor for SearchState(0) + 64);
      if (*(v457 + v62) == 1)
      {
        *(v457 + v62) = 0;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
        v64 = v63[16];
        v65 = v63[20];
        v66 = &v36[v63[24]];
        memset(v462, 0, sizeof(v462));
        LOBYTE(v463) = 2;
        sub_1E5C59308();
        sub_1E5C9CE40();
        v67 = *MEMORY[0x1E6999B60];
        v68 = sub_1E5C9CAC0();
        (*(*(v68 - 8) + 104))(&v36[v64], v67, v68);
        v69 = swift_allocObject();
        v70 = v484;
        v69[11] = v483;
        v69[12] = v70;
        v71 = v486;
        v69[13] = v485;
        v69[14] = v71;
        v72 = v480;
        v69[7] = v479;
        v69[8] = v72;
        v73 = v482;
        v69[9] = v481;
        v69[10] = v73;
        v74 = v476;
        v69[3] = v475;
        v69[4] = v74;
        v75 = v478;
        v69[5] = v477;
        v69[6] = v75;
        v76 = v474;
        v69[1] = v473;
        v69[2] = v76;
        *v66 = &unk_1E5CA1BB0;
        *(v66 + 1) = v69;
        sub_1E5C593F4(&v473, v462);
        sub_1E5C9CD70();
        v77 = *MEMORY[0x1E6999B48];
        v78 = sub_1E5C9CAB0();
        (*(*(v78 - 8) + 104))(&v36[v65], v77, v78);
        v80 = v454;
        v79 = v455;
        (*(v455 + 104))(v36, *MEMORY[0x1E6999AD8], v454);
        v81 = v456;
        v82 = *v456;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1E5C4E5D4(0, v82[2] + 1, 1, v82);
        }

        v84 = v82[2];
        v83 = v82[3];
        if (v84 >= v83 >> 1)
        {
          v82 = sub_1E5C4E5D4((v83 > 1), v84 + 1, 1, v82);
        }

        v82[2] = v84 + 1;
        (*(v79 + 32))(v82 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v84, v36, v80);
LABEL_62:
        *v81 = v82;
      }

      else
      {
        *(v457 + v62) = 1;
      }

      break;
    case 0x10u:
      v242 = type metadata accessor for SearchState(0);
      v243 = v457 + *(v242 + 52);
      if (*(v243 + 56) == 2)
      {
        v244 = vorrq_s8(*(v243 + 24), *(v243 + 40));
        if (!(*&vorr_s8(*v244.i8, *&vextq_s8(v244, v244, 8uLL)) | *(v243 + 16) | *(v243 + 8) | *v243))
        {
          v245 = (v457 + *(v242 + 60));
          v246 = v245[1];
          v462[0] = *v245;
          v462[1] = v246;
          v247 = v245[3];
          v462[2] = v245[2];
          v462[3] = v247;
          sub_1E5C3177C(v462, &qword_1ED053F80, &qword_1E5C9E528);
          *v245 = 0u;
          v245[1] = 0u;
          v245[2] = 0u;
          v245[3] = 0u;
        }
      }

      (v485)();
      break;
    case 0x11u:
      v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v327 = v326[16];
      v328 = v326[20];
      v329 = v447;
      v330 = &v447[v326[24]];
      *&v462[0] = 8;
      memset(v462 + 8, 0, 56);
      LOBYTE(v463) = 2;
      v450 = sub_1E5C59308();
      sub_1E5C9CE40();
      v331 = *MEMORY[0x1E6999B50];
      v332 = sub_1E5C9CAC0();
      v333 = *(v332 - 8);
      v448 = *(v333 + 104);
      v449 = v332;
      v446 = v333 + 104;
      (v448)(&v329[v327], v331);
      v334 = *MEMORY[0x1E6999B40];
      v335 = sub_1E5C9CAB0();
      v336 = *(v335 - 8);
      v337 = *(v336 + 104);
      v338 = (v336 + 104);
      v337(&v329[v328], v334, v335);
      v339 = swift_allocObject();
      v340 = v484;
      v339[11] = v483;
      v339[12] = v340;
      v341 = v486;
      v339[13] = v485;
      v339[14] = v341;
      v342 = v480;
      v339[7] = v479;
      v339[8] = v342;
      v343 = v482;
      v339[9] = v481;
      v339[10] = v343;
      v344 = v476;
      v339[3] = v475;
      v339[4] = v344;
      v345 = v478;
      v339[5] = v477;
      v339[6] = v345;
      v346 = v474;
      v339[1] = v473;
      v339[2] = v346;
      *v330 = &unk_1E5CA1B60;
      *(v330 + 1) = v339;
      sub_1E5C593F4(&v473, v462);
      sub_1E5C9CD70();
      LODWORD(v328) = *MEMORY[0x1E6999AD8];
      v347 = v455;
      v348 = *MEMORY[0x1E6999AD8];
      v444 = *(v455 + 104);
      (v444)(v329, v348, v454);
      v349 = *v456;
      v350 = swift_isUniquelyReferenced_nonNull_native();
      v457 = v335;
      LODWORD(v445) = v328;
      if ((v350 & 1) == 0)
      {
        v349 = sub_1E5C4E5D4(0, v349[2] + 1, 1, v349);
      }

      v352 = v349[2];
      v351 = v349[3];
      v452 = v338;
      v453 = v337;
      if (v352 >= v351 >> 1)
      {
        v349 = sub_1E5C4E5D4((v351 > 1), v352 + 1, 1, v349);
      }

      v349[2] = v352 + 1;
      v354 = *(v347 + 32);
      v353 = v347 + 32;
      v355 = (*(v353 + 48) + 32) & ~*(v353 + 48);
      v356 = *(v353 + 40);
      v357 = v454;
      v455 = v353;
      v447 = v354;
      (v354)(v349 + v355 + v356 * v352, v329, v454);
      v358 = v326[16];
      v443 = v326[20];
      v359 = v451;
      v360 = &v451[v326[24]];
      *&v462[0] = 2;
      memset(v462 + 8, 0, 56);
      LOBYTE(v463) = 2;
      sub_1E5C9CE40();
      (v448)(&v359[v358], *MEMORY[0x1E6999B60], v449);
      v361 = swift_allocObject();
      v362 = v484;
      v361[11] = v483;
      v361[12] = v362;
      v363 = v486;
      v361[13] = v485;
      v361[14] = v363;
      v364 = v480;
      v361[7] = v479;
      v361[8] = v364;
      v365 = v482;
      v361[9] = v481;
      v361[10] = v365;
      v366 = v476;
      v361[3] = v475;
      v361[4] = v366;
      v367 = v478;
      v361[5] = v477;
      v361[6] = v367;
      v368 = v474;
      v361[1] = v473;
      v361[2] = v368;
      *v360 = &unk_1E5CA1B70;
      *(v360 + 1) = v361;
      sub_1E5C593F4(&v473, v462);
      sub_1E5C9CD70();
      v453(&v443[v359], *MEMORY[0x1E6999B48], v457);
      (v444)(v359, v445, v357);
      v370 = v349[2];
      v369 = v349[3];
      if (v370 >= v369 >> 1)
      {
        v349 = sub_1E5C4E5D4((v369 > 1), v370 + 1, 1, v349);
      }

      v349[2] = v370 + 1;
      (v447)(v349 + v355 + v370 * v356, v451, v454);
      *v456 = v349;
      break;
    case 0x12u:
      return;
    default:
      v54 = *v43;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v55 = sub_1E5C9BD40();
      __swift_project_value_buffer(v55, qword_1ED065C70);
      v56 = sub_1E5C9BD20();
      v57 = sub_1E5C9CDB0();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v457;
      if (v58)
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        *(v60 + 4) = v54;
        _os_log_impl(&dword_1E5C20000, v56, v57, "[Focus] isSearching: %{BOOL}d", v60, 8u);
        MEMORY[0x1E693A130](v60, -1, -1);
      }

      *(v59 + 49) = v54;
      if ((v54 & 1) == 0)
      {
        v61 = (v457 + *(type metadata accessor for SearchState(0) + 68));
LABEL_143:
        sub_1E5C30DB8(*v61, v61[1], v61[2], v61[3], v61[4]);
        v61[4] = 0;
        *v61 = 0u;
        *(v61 + 1) = 0u;
      }

      break;
  }
}
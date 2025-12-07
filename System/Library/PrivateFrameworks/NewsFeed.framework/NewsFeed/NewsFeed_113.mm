uint64_t sub_1D65BEDC4()
{
  v1 = 0x656C797473;
  v2 = 0x656C616373;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

uint64_t sub_1D65BEE24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C7278(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65BEE5C(uint64_t a1)
{
  v2 = sub_1D66C411C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BEE98(uint64_t a1)
{
  v2 = sub_1D66C411C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.Weight.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C4368(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C43FC(0);
  sub_1D5B58B84(&qword_1EC887530, sub_1D66C43FC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x746867696577, 0xE600000000000000, 0x656C616373, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C76094();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C954A4();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.Weight.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v68 - v8;
  sub_1D66C457C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v82 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C43FC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887530, sub_1D66C43FC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Weight, v19, v21, v16, &type metadata for FormatSymbolConfig.Weight, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v69 = *(v24 + 16);
  v70 = v22;
  v68[1] = v24 + 16;
  v69(v9, v23, v22);
  v68[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v81 = v15;
  v79 = 0uLL;
  v80 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v78 = 0;
  v28 = swift_allocObject();
  v75 = v68;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v78;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v77 = v9;
  v68[-4] = sub_1D5B4AA6C;
  v68[-3] = 0;
  v66 = sub_1D6708BD4;
  v67 = v30;
  v78 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v78;
  v71 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66C4610(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EC887548, sub_1D66C4610, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v73 = v33;
  v74 = v34;
  v35 = sub_1D72647CC();
  v78 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v78;
  v37 = &v14[*(v11 + 36)];
  v39 = *(v37 + 3);
  v38 = *(v37 + 4);
  v40 = __swift_project_boxed_opaque_existential_1(v37, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v68[-4] = sub_1D615B4A4;
  v68[-3] = &v68[-6];
  v44 = v76;
  v45 = v77;
  v66 = sub_1D6708BD4;
  v67 = v31;
  sub_1D5D2BC70(v77, sub_1D615B49C, v46, sub_1D615B4A4, &v68[-6], v39, v38);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v47 = v14;
  }

  else
  {
    v76 = v37;

    sub_1D61B9A34();
    v47 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v48 = v70;
    v49 = __swift_project_value_buffer(v70, qword_1EDFFCD98);
    v50 = v72;
    v69(v72, v49, v48);
    swift_storeEnumTagMultiPayload();
    v77 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v53 = v51;
    *(v51 + 16) = v77;
    *(v51 + 32) = v81;
    v54 = v71;
    *(v51 + 40) = v71;
    *(v51 + 48) = v27;
    if (v82 == 5)
    {
    }

    else
    {
      v75 = v68;
      v81 = v82;
      MEMORY[0x1EEE9AC00](v51, v52);
      v68[-4] = sub_1D5B4AA6C;
      v68[-3] = 0;
      v66 = sub_1D6708BD4;
      v67 = v53;
      v78 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v77;
      *(v56 + 32) = v78;
      *(v56 + 40) = v54;
      *(v56 + 48) = v27;
      swift_retain_n();
      v57 = sub_1D72647CC();
      v78 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v77;
      *(v58 + 40) = v78;
      v59 = *(v76 + 3);
      v60 = *(v76 + 4);
      v61 = __swift_project_boxed_opaque_existential_1(v76, v59);
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      v68[-4] = sub_1D615B4A4;
      v68[-3] = &v68[-6];
      v50 = v72;
      v66 = sub_1D66C46A4;
      v67 = v56;
      LOBYTE(v60) = sub_1D5D2F7A4(v72, sub_1D615B49C, v65, sub_1D615B4A4, &v68[-6], v59, v60);

      if (v60)
      {
        sub_1D66C3A00();
        v47 = v14;
        sub_1D72647EC();
      }

      else
      {
        v47 = v14;
      }
    }

    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v47, sub_1D66C457C);
}

uint64_t sub_1D65BFADC()
{
  v1 = 0x656C616373;
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
    return 0x746867696577;
  }
}

uint64_t sub_1D65BFB28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C73D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65BFB60(uint64_t a1)
{
  v2 = sub_1D66C44D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BFB9C(uint64_t a1)
{
  v2 = sub_1D66C44D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65BFBD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C74E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65BFC10(uint64_t a1)
{
  v2 = sub_1D5C75A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BFC4C(uint64_t a1)
{
  v2 = sub_1D5C75A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65BFC94()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65BFD8C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65BFE70(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65BFF64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66640D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65BFF94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x657474656C6170;
  v5 = 0xEA0000000000726FLL;
  v6 = 0x6C6F6369746C756DLL;
  v7 = 0x6F7268636F6E6F6DLL;
  v8 = 0xEA0000000000656DLL;
  if (v2 != 3)
  {
    v7 = 0x726F7463656C6573;
    v8 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6863726172656968;
    v3 = 0xEC0000006C616369;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D65C00F8()
{
  v1 = 0x6F436C6F626D7973;
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
    return 0x6F6C6F436C6C6966;
  }
}

uint64_t sub_1D65C0158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C76D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65C0190(uint64_t a1)
{
  v2 = sub_1D665E8D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C01CC(uint64_t a1)
{
  v2 = sub_1D665E8D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolScale.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v40;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v40 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t sub_1D65C07E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C646E7562;
  if (v2 != 1)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D6574737973;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x656C646E7562;
  if (*a2 != 1)
  {
    v8 = 0x726F7463656C6573;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6574737973;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65C08DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65C0978(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65C0A00(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65C0A98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C646E7562;
  if (v2 != 1)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574737973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65C0B40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C77FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65C0B78(uint64_t a1)
{
  v2 = sub_1D5C48BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C0BB4(uint64_t a1)
{
  v2 = sub_1D5C48BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTagBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v188 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v187 = &v164 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v186 = &v164 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v185 = &v164 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v184 = &v164 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v183 = &v164 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v182 = &v164 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v181 = &v164 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v180 = &v164 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v179 = &v164 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v178 = &v164 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v177 = &v164 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v176 = &v164 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v175 = &v164 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v174 = &v164 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v172 = &v164 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v171 = &v164 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v170 = &v164 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v169 = &v164 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v168 = &v164 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v167 = &v164 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v166 = &v164 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v165 = &v164 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v164 = &v164 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v173 = &v164 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v164 - v80;
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = &v164 - v84;
  MEMORY[0x1EEE9AC00](v86, v87);
  v89 = &v164 - v88;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v90 - 8, v91);
  v93 = &v164 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *v1;
  v95 = a1[3];
  v96 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v95);
  v97 = sub_1D5C30408();
  v98 = v93;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Bool, &type metadata for FormatCodingKeys, v99, v95, &type metadata for FormatTagBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v96, v93, v97, &off_1F51F6B78);
  switch(v94)
  {
    case 1:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v134 = sub_1D725BD1C();
      v135 = __swift_project_value_buffer(v134, qword_1EDFFCDF8);
      (*(*(v134 - 8) + 16))(v85, v135, v134);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423A6C(1, v85);
      v102 = v85;
      goto LABEL_47;
    case 2:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v126 = sub_1D725BD1C();
      v127 = __swift_project_value_buffer(v126, qword_1EDFFCDF8);
      (*(*(v126 - 8) + 16))(v81, v127, v126);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423A6C(2, v81);
      v102 = v81;
      goto LABEL_47;
    case 3:
      v103 = v93;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCD00);
      v108 = v173;
      (*(*(v130 - 8) + 16))(v173, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 3;
      goto LABEL_87;
    case 4:
      v103 = v93;
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v116 = sub_1D725BD1C();
      v117 = __swift_project_value_buffer(v116, qword_1EDFFCDE0);
      v108 = v164;
      (*(*(v116 - 8) + 16))(v164, v117, v116);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 4;
      goto LABEL_87;
    case 5:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCD80);
      v108 = v165;
      (*(*(v141 - 8) + 16))(v165, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 5;
      goto LABEL_87;
    case 6:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v147 = sub_1D725BD1C();
      v148 = __swift_project_value_buffer(v147, qword_1EDFFCD80);
      v108 = v166;
      (*(*(v147 - 8) + 16))(v166, v148, v147);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 6;
      goto LABEL_87;
    case 7:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v132 = sub_1D725BD1C();
      v133 = __swift_project_value_buffer(v132, qword_1EDFFCD80);
      v108 = v167;
      (*(*(v132 - 8) + 16))(v167, v133, v132);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 7;
      goto LABEL_87;
    case 8:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v153 = sub_1D725BD1C();
      v154 = __swift_project_value_buffer(v153, qword_1EDFFCD80);
      v108 = v168;
      (*(*(v153 - 8) + 16))(v168, v154, v153);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 8;
      goto LABEL_87;
    case 9:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCD80);
      v108 = v169;
      (*(*(v120 - 8) + 16))(v169, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 9;
      goto LABEL_87;
    case 10:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v151 = sub_1D725BD1C();
      v152 = __swift_project_value_buffer(v151, qword_1EDFFCD80);
      v108 = v170;
      (*(*(v151 - 8) + 16))(v170, v152, v151);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 10;
      goto LABEL_87;
    case 11:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD80);
      v108 = v171;
      (*(*(v114 - 8) + 16))(v171, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 11;
      goto LABEL_87;
    case 12:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD80);
      v108 = v172;
      (*(*(v118 - 8) + 16))(v172, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 12;
      goto LABEL_87;
    case 13:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v145 = sub_1D725BD1C();
      v146 = __swift_project_value_buffer(v145, qword_1EDFFCD80);
      v108 = v174;
      (*(*(v145 - 8) + 16))(v174, v146, v145);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 13;
      goto LABEL_87;
    case 14:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCD80);
      v108 = v175;
      (*(*(v112 - 8) + 16))(v175, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 14;
      goto LABEL_87;
    case 15:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v128 = sub_1D725BD1C();
      v129 = __swift_project_value_buffer(v128, qword_1EDFFCD80);
      v108 = v176;
      (*(*(v128 - 8) + 16))(v176, v129, v128);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 15;
      goto LABEL_87;
    case 16:
      v103 = v93;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD68);
      v108 = v177;
      (*(*(v110 - 8) + 16))(v177, v111, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 16;
      goto LABEL_87;
    case 17:
      v103 = v93;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v137 = sub_1D725BD1C();
      v138 = __swift_project_value_buffer(v137, qword_1EDFFCD68);
      v108 = v178;
      (*(*(v137 - 8) + 16))(v178, v138, v137);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 17;
      goto LABEL_87;
    case 18:
      v103 = v93;
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v149 = sub_1D725BD1C();
      v150 = __swift_project_value_buffer(v149, qword_1EDFFCE68);
      v108 = v179;
      (*(*(v149 - 8) + 16))(v179, v150, v149);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 18;
      goto LABEL_87;
    case 19:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v157 = sub_1D725BD1C();
      v158 = __swift_project_value_buffer(v157, qword_1EDFFCE38);
      v108 = v180;
      (*(*(v157 - 8) + 16))(v180, v158, v157);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 19;
      goto LABEL_87;
    case 20:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v139 = sub_1D725BD1C();
      v140 = __swift_project_value_buffer(v139, qword_1EDFFCE38);
      v108 = v181;
      (*(*(v139 - 8) + 16))(v181, v140, v139);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 20;
      goto LABEL_87;
    case 21:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v143 = sub_1D725BD1C();
      v144 = __swift_project_value_buffer(v143, qword_1EDFFCE38);
      v108 = v182;
      (*(*(v143 - 8) + 16))(v182, v144, v143);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 21;
      goto LABEL_87;
    case 22:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v155 = sub_1D725BD1C();
      v156 = __swift_project_value_buffer(v155, qword_1EDFFCE38);
      v108 = v183;
      (*(*(v155 - 8) + 16))(v183, v156, v155);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 22;
      goto LABEL_87;
    case 23:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v159 = sub_1D725BD1C();
      v160 = __swift_project_value_buffer(v159, qword_1EDFFCE38);
      v108 = v184;
      (*(*(v159 - 8) + 16))(v184, v160, v159);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 23;
      goto LABEL_87;
    case 24:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCE38);
      v108 = v185;
      (*(*(v124 - 8) + 16))(v185, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 24;
      goto LABEL_87;
    case 25:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v122 = sub_1D725BD1C();
      v123 = __swift_project_value_buffer(v122, qword_1EDFFCE38);
      v108 = v186;
      (*(*(v122 - 8) + 16))(v186, v123, v122);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 26;
      goto LABEL_87;
    case 26:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v161 = sub_1D725BD1C();
      v162 = __swift_project_value_buffer(v161, qword_1EDFFCE38);
      v108 = v187;
      (*(*(v161 - 8) + 16))(v187, v162, v161);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 25;
LABEL_87:
      v109 = v108;
      goto LABEL_88;
    case 27:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v104 = sub_1D725BD1C();
      v105 = __swift_project_value_buffer(v104, qword_1EDFFCE38);
      v106 = v188;
      (*(*(v104 - 8) + 16))(v188, v105, v104);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 27;
      v108 = v106;
      v109 = v106;
LABEL_88:
      sub_1D6423A6C(v107, v109);
      sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
      v136 = v103;
      break;
    default:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v100 = sub_1D725BD1C();
      v101 = __swift_project_value_buffer(v100, qword_1EDFFCDF8);
      (*(*(v100 - 8) + 16))(v89, v101, v100);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423A6C(0, v89);
      v102 = v89;
LABEL_47:
      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
      v136 = v98;
      break;
  }

  return sub_1D5D2CFE8(v136, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v57 - v23;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  *&v60 = v1[1];
  *(&v60 + 1) = v29;
  v30 = *(v1 + 16);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = sub_1D5C30408();
  v61 = v28;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Command, &type metadata for FormatCodingKeys, v34, v31, &type metadata for FormatTagBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v32, v28, v33, &off_1F51F6C78);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD30);
      (*(*(v39 - 8) + 16))(v9, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v61;
      sub_1D6485814(4, *(&v60 + 1), v9);
      v38 = v9;
    }

    else
    {
      if (v60 == 0)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
        (*(*(v51 - 8) + 16))(v20, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v50 = 1;
        v53 = v20;
        v37 = v61;
      }

      else
      {
        if (*(&v60 + 1) ^ 1 | v60)
        {
          v37 = v61;
          if (qword_1EDF31F38 != -1)
          {
            swift_once();
          }

          v54 = sub_1D725BD1C();
          v55 = __swift_project_value_buffer(v54, qword_1EDFFCE38);
          v20 = v59;
          (*(*(v54 - 8) + 16))(v59, v55, v54);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v50 = 5;
        }

        else
        {
          v37 = v61;
          if (qword_1EDF31F10 != -1)
          {
            swift_once();
          }

          v48 = sub_1D725BD1C();
          v49 = __swift_project_value_buffer(v48, qword_1EDFFCDF8);
          v20 = v58;
          (*(*(v48 - 8) + 16))(v58, v49, v48);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v50 = 3;
        }

        v53 = v20;
      }

      sub_1D642351C(v50, v53);
      v38 = v20;
    }
  }

  else if (v30)
  {
    sub_1D5B58478(0);
    v42 = *(v41 + 48);
    v43 = &v16[*(v41 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
    v46 = *(*(v44 - 8) + 16);
    v46(v16, v45, v44);
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v44, qword_1EDFFCDF8);
    v46(&v16[v42], v47, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v43 = 0;
    *(v43 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v37 = v61;
    sub_1D63B3CDC(2, *(&v60 + 1), v60, v16);
    v38 = v16;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    (*(*(v35 - 8) + 16))(v24, v36, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v61;
    sub_1D63B3B44(0, BYTE8(v60) & 1, v24);
    v38 = v24;
  }

  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.Image.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v44 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v46;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5117C70;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66C4844();
    v48 = 0;
    v49 = 0;
    sub_1D726431C();
    if (v47[0] <= 1u)
    {
      v27 = 0x1000000000000004;
      if (v47[0])
      {
        (*(v11 + 8))(v15, v5);
        v28 = 0;
        v24 = 0;
        v26 = 1;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v26 = 0;
        v28 = 0;
        v24 = 0;
      }
    }

    else if (v47[0] == 2)
    {
      *v47 = xmmword_1D7279980;
      sub_1D66C4898();
      sub_1D726427C();
      if (v50)
      {
        v24 = v51;
        v27 = v49;
        v26 = v48;
        v29 = *(v11 + 8);
        v30 = v50;
        v29(v15, v5);
        v28 = v30;
      }

      else
      {
        if (qword_1EDF1C278 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v27 = qword_1EDF1C280;
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        sub_1D5F3FE24(0);
        v33 = swift_allocObject();
        v44 = xmmword_1D7273AE0;
        v45 = v33;
        *(v33 + 16) = xmmword_1D7273AE0;
        *(v33 + 32) = v32;
        *(v33 + 40) = 0;
        v34 = swift_allocObject();
        *(v34 + 16) = 0x4020000000000000;
        v24 = swift_allocObject();
        *(v24 + 16) = v44;
        *(v24 + 32) = v34;
        *(v24 + 40) = 0;
        v52 = 1;
        v35 = *(v11 + 8);

        v35(v15, v5);
        v28 = v45;
        v26 = v52;
      }
    }

    else
    {
      if (v47[0] == 3)
      {
        *v47 = xmmword_1D7279980;
        sub_1D66C4898();
        sub_1D726427C();
        if (v50)
        {
          v45 = v50;
          v24 = v51;
          v25 = v49;
          v26 = v48;
          (*(v11 + 8))(v15, v5);
        }

        else
        {
          if (qword_1EDF1C278 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v25 = qword_1EDF1C280;
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          sub_1D5F3FE24(0);
          v37 = swift_allocObject();
          v44 = xmmword_1D7273AE0;
          *(v37 + 16) = xmmword_1D7273AE0;
          *(v37 + 32) = v36;
          v45 = v37;
          *(v37 + 40) = 0;
          v38 = swift_allocObject();
          *(v38 + 16) = 0x4020000000000000;
          v24 = swift_allocObject();
          *(v24 + 16) = v44;
          *(v24 + 32) = v38;
          *(v24 + 40) = 0;
          v52 = 1;
          v39 = *(v11 + 8);

          v39(v15, v5);
          v26 = v52;
        }

        v27 = v25 | 4;
      }

      else
      {
        *v47 = xmmword_1D7279980;
        sub_1D66C4898();
        sub_1D726427C();
        if (v50)
        {
          v45 = v50;
          v24 = v51;
          v31 = v49;
          v26 = v48;
          (*(v11 + 8))(v15, v5);
        }

        else
        {
          if (qword_1EDF1C278 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v31 = qword_1EDF1C280;
          v40 = swift_allocObject();
          *(v40 + 16) = 0;
          sub_1D5F3FE24(0);
          v41 = swift_allocObject();
          v44 = xmmword_1D7273AE0;
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v40;
          v45 = v41;
          *(v41 + 40) = 0;
          v42 = swift_allocObject();
          *(v42 + 16) = 0x4020000000000000;
          v24 = swift_allocObject();
          *(v24 + 16) = v44;
          *(v24 + 32) = v42;
          *(v24 + 40) = 0;
          v52 = 1;
          v43 = *(v11 + 8);

          v43(v15, v5);
          v26 = v52;
        }

        v27 = v31 | 0x1000000000000000;
      }

      v28 = v45;
    }

    *v12 = v26 & 1;
    v12[1] = v27;
    v12[2] = v28;
    v12[3] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTagBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v49 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v48 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1[1];
  v28 = v1[2];
  v27 = v1[3];
  v50 = *v1;
  v51 = v28;
  v52 = v27;
  v30 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = sub_1D5C30408();
  v53 = v25;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Image, &type metadata for FormatCodingKeys, v32, v30, &type metadata for FormatTagBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v29, v25, v31, &off_1F51F6C78);
  v33 = (v26 >> 59) & 2 | (v26 >> 2) & 1;
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCE98);
      (*(*(v38 - 8) + 16))(v6, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v53;
      sub_1D63B3E70(4, v50 & 1, v26 & 0xEFFFFFFFFFFFFFFBLL, v51, v52, v6);
      v37 = v6;
    }

    else if (v26 != 0x1000000000000004 || v52 | v51 | v50)
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCDE0);
      v46 = v49;
      (*(*(v44 - 8) + 16))(v49, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v53;
      sub_1D6423670(1, v46);
      v37 = v46;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
      (*(*(v42 - 8) + 16))(v21, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v53;
      sub_1D6423670(0, v21);
      v37 = v21;
    }
  }

  else if (v33)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCDE0);
    (*(*(v40 - 8) + 16))(v10, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v53;
    sub_1D63B3E70(3, v50 & 1, v26 & 0xEFFFFFFFFFFFFFFBLL, v51, v52, v10);
    v37 = v10;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD98);
    (*(*(v34 - 8) + 16))(v14, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v53;
    sub_1D63B3E70(2, v50 & 1, v26, v51, v52, v14);
    v37 = v14;
  }

  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v36, sub_1D5D30DC4);
}

uint64_t sub_1D65C3988()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65C3A84(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65C3B6C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65C3C64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66637A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65C3C94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006F676F4C72;
  v4 = 0x656873696C627570;
  v5 = 0xE400000000000000;
  v6 = 1852793705;
  v7 = 0xEA00000000006F67;
  if (v2 != 3)
  {
    v7 = 0xED0000746C416F67;
  }

  if (v2 != 2)
  {
    v6 = 0x6F4C7374726F7073;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001D73B9BF0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t FormatTagBinding.SourceItemTip.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTagBinding.SourceItemTip, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatTagBinding.SourceItemTip, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v17, v14, v18, &off_1F51F6B38);
  if (v15)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423D04(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423D04(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65C4134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73756C507377656ELL;
  }

  else
  {
    v3 = 0x776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEF736569726F7453;
  }

  if (*a2)
  {
    v5 = 0x73756C507377656ELL;
  }

  else
  {
    v5 = 0x776F6C6C6F66;
  }

  if (*a2)
  {
    v6 = 0xEF736569726F7453;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65C41E4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65C4270(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatTagBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v155 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v154 = &v136 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v153 = &v136 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v152 = &v136 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v151 = &v136 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v150 = &v136 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v149 = &v136 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v148 = &v136 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v147 = &v136 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v146 = &v136 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v145 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v144 = &v136 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v142 = &v136 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v141 = &v136 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v140 = &v136 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v139 = &v136 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v138 = &v136 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v137 = &v136 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v143 = &v136 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v136 = &v136 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v136 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v136 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v136 - v73;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v78 = &v136 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *v1;
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  v82 = sub_1D5C30408();
  v156 = v78;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Text, &type metadata for FormatCodingKeys, v83, v80, &type metadata for FormatTagBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v81, v78, v82, &off_1F51F6C78);
  switch(v79)
  {
    case 1:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCD30);
      (*(*(v111 - 8) + 16))(v70, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D6423918(1, v70);
      v104 = v70;
      break;
    case 2:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCDE0);
      (*(*(v101 - 8) + 16))(v66, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D6423918(2, v66);
      v104 = v66;
      break;
    case 3:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      v74 = v136;
      (*(*(v107 - 8) + 16))(v136, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 3;
      goto LABEL_32;
    case 4:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v95 = sub_1D725BD1C();
      v96 = __swift_project_value_buffer(v95, qword_1EDFFCD80);
      v89 = v143;
      (*(*(v95 - 8) + 16))(v143, v96, v95);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 4;
      goto LABEL_72;
    case 5:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD80);
      v89 = v137;
      (*(*(v117 - 8) + 16))(v137, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 5;
      goto LABEL_72;
    case 6:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCD30);
      v89 = v138;
      (*(*(v123 - 8) + 16))(v138, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 6;
      goto LABEL_72;
    case 7:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v109 = sub_1D725BD1C();
      v110 = __swift_project_value_buffer(v109, qword_1EDFFCD00);
      v89 = v139;
      (*(*(v109 - 8) + 16))(v139, v110, v109);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 7;
      goto LABEL_72;
    case 8:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v129 = sub_1D725BD1C();
      v130 = __swift_project_value_buffer(v129, qword_1EDFFCD00);
      v89 = v140;
      (*(*(v129 - 8) + 16))(v140, v130, v129);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 8;
      goto LABEL_72;
    case 9:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCD00);
      v89 = v141;
      (*(*(v99 - 8) + 16))(v141, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 9;
      goto LABEL_72;
    case 10:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v127 = sub_1D725BD1C();
      v128 = __swift_project_value_buffer(v127, qword_1EDFFCDE0);
      v89 = v142;
      (*(*(v127 - 8) + 16))(v142, v128, v127);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 10;
      goto LABEL_72;
    case 11:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCDE0);
      v89 = v144;
      (*(*(v93 - 8) + 16))(v144, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 11;
      goto LABEL_72;
    case 12:
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCE98);
      v89 = v145;
      (*(*(v97 - 8) + 16))(v145, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 12;
      goto LABEL_72;
    case 13:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCDE0);
      v89 = v146;
      (*(*(v121 - 8) + 16))(v146, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 13;
      goto LABEL_72;
    case 14:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v91 = sub_1D725BD1C();
      v92 = __swift_project_value_buffer(v91, qword_1EDFFCDE0);
      v89 = v147;
      (*(*(v91 - 8) + 16))(v147, v92, v91);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 14;
      goto LABEL_72;
    case 15:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCDE0);
      v89 = v148;
      (*(*(v105 - 8) + 16))(v148, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 15;
      goto LABEL_72;
    case 16:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD80);
      v89 = v149;
      (*(*(v87 - 8) + 16))(v149, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 16;
      goto LABEL_72;
    case 17:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCD80);
      v89 = v150;
      (*(*(v113 - 8) + 16))(v150, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 17;
      goto LABEL_72;
    case 18:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v125 = sub_1D725BD1C();
      v126 = __swift_project_value_buffer(v125, qword_1EDFFCDE0);
      v89 = v151;
      (*(*(v125 - 8) + 16))(v151, v126, v125);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 18;
      goto LABEL_72;
    case 19:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD80);
      v89 = v152;
      (*(*(v133 - 8) + 16))(v152, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 19;
      goto LABEL_72;
    case 20:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v115 = sub_1D725BD1C();
      v116 = __swift_project_value_buffer(v115, qword_1EDFFCD80);
      v89 = v153;
      (*(*(v115 - 8) + 16))(v153, v116, v115);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 20;
      goto LABEL_72;
    case 21:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v119 = sub_1D725BD1C();
      v120 = __swift_project_value_buffer(v119, qword_1EDFFCD80);
      v89 = v154;
      (*(*(v119 - 8) + 16))(v154, v120, v119);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 21;
      goto LABEL_72;
    case 22:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v131 = sub_1D725BD1C();
      v132 = __swift_project_value_buffer(v131, qword_1EDFFCD68);
      v89 = v155;
      (*(*(v131 - 8) + 16))(v155, v132, v131);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 22;
LABEL_72:
      v103 = v156;
      sub_1D6423918(v90, v89);
      v104 = v89;
      break;
    default:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCD30);
      (*(*(v84 - 8) + 16))(v74, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 0;
LABEL_32:
      v103 = v156;
      sub_1D6423918(v86, v74);
      v104 = v74;
      break;
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v103, sub_1D5D30DC4);
}

uint64_t FormatTagFollowContext.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C4940(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C70A78(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25208, sub_1D5C70A78, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTagFollowContext, v17, v19, v14, &type metadata for FormatTagFollowContext, v17, &type metadata for FormatVersions.CrystalGlowC, v15, v12, v18, &off_1F51F6AF8);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (v13)
  {
    v22 = &v12[*(v9 + 44)];
    v24 = *v22;
    v23 = *(v22 + 1);
    LOBYTE(v44) = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v44;
    *(v25 + 40) = v24;
    *(v25 + 48) = v23;
    sub_1D66C49D4(0);
    v27 = v26;
    sub_1D5B58B84(&qword_1EDF031C8, sub_1D66C49D4, MEMORY[0x1E69E6F60]);

    v43 = v27;
    v28 = sub_1D72647CC();
    LOBYTE(v44) = 0;
    v29 = swift_allocObject();
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 16) = v28;
    *(v29 + 40) = v44;
    v30 = &v12[*(v9 + 36)];
    v31 = *(v30 + 3);
    v32 = *(v30 + 4);
    v33 = __swift_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x1EEE9AC00](v33, v34);
    MEMORY[0x1EEE9AC00](v35, v36);
    *(&v43 - 4) = sub_1D5B4AA6C;
    *(&v43 - 3) = 0;
    v41 = sub_1D66C4A68;
    v42 = v25;
    v38 = sub_1D5D2F7A4(v7, sub_1D615B49C, v37, sub_1D615B4A4, (&v43 - 6), v31, v32);
    if (v2)
    {
      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v12, sub_1D66C4940);
    }

    v40 = v38;

    if (v40)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 1;
      sub_1D5F94F84();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v12, sub_1D66C4940);
}

void sub_1D65C5C00(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001D73D27D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D72646CC();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D65C5CF8(uint64_t a1)
{
  v2 = sub_1D5C70AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C5D34(uint64_t a1)
{
  v2 = sub_1D5C70AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTagIconPreferredSource.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTagIconPreferredSource, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatTagIconPreferredSource, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A038(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A038(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65C609C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x76614E64656566;
  }

  else
  {
    v3 = 0x616D497265766F63;
  }

  if (v2)
  {
    v4 = 0xEA00000000006567;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x76614E64656566;
  }

  else
  {
    v5 = 0x616D497265766F63;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000006567;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65C6148()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65C61D0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65C6244(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65C62D4(uint64_t *a1@<X8>)
{
  v2 = 0x616D497265766F63;
  if (*v1)
  {
    v2 = 0x76614E64656566;
  }

  v3 = 0xEA00000000006567;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatTagIconStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66C4B38(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C4BCC(0);
  sub_1D5B58B84(&qword_1EDF25558, sub_1D66C4BCC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_18:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v7;
  v11 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6624FB8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v28 + 8))(v14, v6);
      goto LABEL_18;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  if (sub_1D726434C())
  {
    v32 = 0uLL;
    v33 = 0;
    sub_1D66C4D4C();
    sub_1D726431C();
    v18 = v34;
  }

  else
  {
    v18 = 1;
  }

  v27 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v27;
    v31 = 0;
    sub_1D5B556F4();
    sub_1D726431C();
    v19 = v34;
  }

  else
  {
    if (qword_1EDF1C278 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = qword_1EDF1C280;
  }

  sub_1D660C130(sub_1D66C4B38, &v32, 0.0);
  v25 = v32;
  sub_1D660C130(sub_1D66C4B38, &v32, 8.0);
  (*(v28 + 8))(v10, v6);
  v26 = v32;
  *v11 = v18;
  *(v11 + 8) = v19;
  *(v11 + 16) = v25;
  *(v11 + 24) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double FormatTagIconStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v146 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v147 = &v141 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v153 = &v141 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v141 - v14;
  sub_1D66C4DA0(0);
  *&v155 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v22 = v1[1];
  v21 = v1[2];
  v148 = v1[3];
  v149 = v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D66C4BCC(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF25558, sub_1D66C4BCC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTagIconStyle, v26, v28, v23, &type metadata for FormatTagIconStyle, v26, &type metadata for FormatVersions.AzdenE, v24, v19, v27, &off_1F51F6C18);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v33 = v31 + 16;
  v32(v15, v30, v29);
  v154 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v150 = v29;
  v151 = v32;
  v152 = v33;
  if (v20)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
    v34 = v173;
LABEL_5:
    v35 = v153;
    goto LABEL_6;
  }

  v44 = v155;
  v45 = &v19[*(v155 + 44)];
  v47 = *v45;
  v46 = *(v45 + 1);
  LOBYTE(v168) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v168;
  *(v48 + 40) = v47;
  *(v48 + 48) = v46;
  sub_1D66C4E34(0);
  v50 = v49;
  sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34, MEMORY[0x1E69E6F60]);

  *&v144 = v50;
  v51 = sub_1D72647CC();
  LOBYTE(v168) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v168;
  v53 = &v19[*(v44 + 36)];
  v54 = *(v53 + 3);
  v55 = *(v53 + 4);
  v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
  v145 = &v141;
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D66C4EC8;
  v140 = v48;
  v60 = v173;
  v62 = sub_1D5D2F7A4(v15, sub_1D615B49C, v61, sub_1D615B4A4, (&v141 - 6), v54, v55);
  v34 = v60;
  if (v60)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v19, sub_1D66C4DA0);
    return result;
  }

  v83 = v62;

  if ((v83 & 1) == 0)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
    v29 = v150;
    v32 = v151;
    goto LABEL_5;
  }

  v168 = 0uLL;
  LOBYTE(v169) = 0;
  LOBYTE(v166[0]) = 0;
  sub_1D66C4F44();
  sub_1D72647EC();
  v29 = v150;
  v32 = v151;
  v35 = v153;
  sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
LABEL_6:
  v36 = qword_1EDF31EE8;

  v37 = v155;
  if (v36 != -1)
  {
    swift_once();
  }

  v173 = v34;
  v145 = __swift_project_value_buffer(v29, qword_1EDFFCD98);
  (v32)(v35);
  swift_storeEnumTagMultiPayload();
  if (v22 >> 61)
  {
    goto LABEL_15;
  }

  v38 = *(v22 + 48);
  v164[1] = *(v22 + 32);
  v164[2] = v38;
  v164[3] = *(v22 + 64);
  v165 = *(v22 + 80);
  v164[0] = *(v22 + 16);
  v39 = *(v22 + 64);
  v162[2] = *(v22 + 48);
  v162[3] = v39;
  v163 = *(v22 + 80);
  v40 = *(v22 + 32);
  v162[0] = *(v22 + 16);
  v162[1] = v40;
  sub_1D5D3F188(v164, &v157);
  if (qword_1EDF1C290 != -1)
  {
    swift_once();
  }

  v166[2] = xmmword_1EDF1C2B8;
  v166[3] = unk_1EDF1C2C8;
  v167 = word_1EDF1C2D8;
  v166[0] = xmmword_1EDF1C298;
  v166[1] = *&word_1EDF1C2A8;
  v159 = xmmword_1EDF1C2B8;
  v160 = unk_1EDF1C2C8;
  v161 = word_1EDF1C2D8;
  v157 = xmmword_1EDF1C298;
  v158 = *&word_1EDF1C2A8;
  sub_1D5D3F188(v166, &v156);
  v42 = _s8NewsFeed16FormatSystemFontV2eeoiySbAC_ACtFZ_0(v162, &v157, v41);
  v170 = v159;
  v171 = v160;
  v172 = v161;
  v168 = v157;
  v169 = v158;
  sub_1D5D41588(&v168);
  sub_1D5D41588(v164);
  if ((v42 & 1) == 0)
  {
LABEL_15:
    *&v143 = v22;
    v64 = &v19[*(v37 + 44)];
    v66 = *v64;
    v65 = *(v64 + 1);
    LOBYTE(v168) = 0;
    v67 = v35;
    v68 = swift_allocObject();
    v144 = xmmword_1D728CF30;
    *(v68 + 16) = xmmword_1D728CF30;
    *(v68 + 32) = v168;
    *(v68 + 40) = v66;
    *(v68 + 48) = v65;
    sub_1D66C4E34(0);
    v70 = v69;
    sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34, MEMORY[0x1E69E6F60]);

    v141 = v70;
    v71 = sub_1D72647CC();
    LOBYTE(v168) = 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v144;
    *(v72 + 40) = v168;
    v73 = &v19[*(v37 + 36)];
    v74 = *(v73 + 3);
    v75 = *(v73 + 4);
    v76 = __swift_project_boxed_opaque_existential_1(v73, v74);
    v142 = &v141;
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v141 - 4) = sub_1D5B4AA6C;
    *(&v141 - 3) = 0;
    v139 = sub_1D6708BDC;
    v140 = v68;
    v80 = v173;
    v82 = sub_1D5D2F7A4(v67, sub_1D615B49C, v81, sub_1D615B4A4, (&v141 - 6), v74, v75);
    if (v80)
    {
      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v19, sub_1D66C4DA0);

      return result;
    }

    v84 = v82;

    if (v84)
    {
      v168 = v144;
      LOBYTE(v169) = 0;
      *&v166[0] = v143;
      sub_1D5B57BA4();

      sub_1D72647EC();
      v37 = v155;
      v85 = v151;
      v86 = v153;
      v173 = 0;

      sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

      v43 = v147;
      v85(v147, v145, v150);
    }

    else
    {
      v173 = 0;
      sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

      v37 = v155;
      v43 = v147;
      v151(v147, v145, v150);
    }
  }

  else
  {
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);

    v43 = v147;
    v32(v147, v145, v29);
  }

  swift_storeEnumTagMultiPayload();
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  sub_1D5F3FE24(0);
  v153 = v88;
  inited = swift_initStackObject();
  v144 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v87;
  *(inited + 40) = 0;

  sub_1D633A310(v90, inited);
  LOBYTE(v87) = v91;
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v93 = v92;
  swift_arrayDestroy();
  if ((v87 & 1) == 0)
  {
    v141 = v93;
    v95 = &v19[*(v37 + 44)];
    v97 = *v95;
    v96 = *(v95 + 1);
    LOBYTE(v168) = 0;
    v98 = swift_allocObject();
    v143 = xmmword_1D7297410;
    *(v98 + 16) = xmmword_1D7297410;
    *(v98 + 32) = v168;
    *(v98 + 40) = v97;
    *(v98 + 48) = v96;
    sub_1D66C4E34(0);
    v100 = v99;
    sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34, MEMORY[0x1E69E6F60]);

    v142 = v100;
    v101 = sub_1D72647CC();
    LOBYTE(v168) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = v101;
    *(v102 + 24) = v143;
    *(v102 + 40) = v168;
    v103 = &v19[*(v37 + 36)];
    v104 = *(v103 + 3);
    v105 = *(v103 + 4);
    v106 = __swift_project_boxed_opaque_existential_1(v103, v104);
    MEMORY[0x1EEE9AC00](v106, v107);
    MEMORY[0x1EEE9AC00](v108, v109);
    *(&v141 - 4) = sub_1D5B4AA6C;
    *(&v141 - 3) = 0;
    v139 = sub_1D6708BDC;
    v140 = v98;
    v110 = v173;
    v112 = sub_1D5D2F7A4(v43, sub_1D615B49C, v111, sub_1D615B4A4, (&v141 - 6), v104, v105);
    v173 = v110;
    if (v110)
    {
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v19, sub_1D66C4DA0);
LABEL_38:

      return result;
    }

    v113 = v112;

    if (v113)
    {
      v168 = v143;
      LOBYTE(v169) = 0;
      *&v166[0] = v149;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      v114 = v173;
      sub_1D72647EC();
      v173 = v114;
      v94 = v146;
      if (v114)
      {

        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v19, sub_1D66C4DA0);
        goto LABEL_38;
      }

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);

      v94 = v146;
    }

    v37 = v155;
    goto LABEL_33;
  }

  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

  v94 = v146;
LABEL_33:
  v151(v94, v145, v150);
  swift_storeEnumTagMultiPayload();
  v115 = swift_allocObject();
  *(v115 + 16) = 0x4020000000000000;
  v116 = swift_initStackObject();
  *(v116 + 16) = v144;
  *(v116 + 32) = v115;
  *(v116 + 40) = 0;

  sub_1D633A310(v117, v116);
  LOBYTE(v115) = v118;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v115)
  {
    goto LABEL_34;
  }

  v120 = &v19[*(v37 + 44)];
  v122 = *v120;
  v121 = *(v120 + 1);
  LOBYTE(v168) = 0;
  v123 = swift_allocObject();
  v155 = xmmword_1D72BAA60;
  *(v123 + 16) = xmmword_1D72BAA60;
  *(v123 + 32) = v168;
  *(v123 + 40) = v122;
  *(v123 + 48) = v121;
  sub_1D66C4E34(0);
  v125 = v124;
  sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34, MEMORY[0x1E69E6F60]);

  v154 = v125;
  v126 = sub_1D72647CC();
  LOBYTE(v168) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v155;
  *(v127 + 40) = v168;
  v128 = &v19[*(v37 + 36)];
  v129 = *(v128 + 3);
  v130 = *(v128 + 4);
  v131 = __swift_project_boxed_opaque_existential_1(v128, v129);
  MEMORY[0x1EEE9AC00](v131, v132);
  MEMORY[0x1EEE9AC00](v133, v134);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D6708BDC;
  v140 = v123;
  v135 = v173;
  v137 = sub_1D5D2F7A4(v94, sub_1D615B49C, v136, sub_1D615B4A4, (&v141 - 6), v129, v130);
  v173 = v135;
  if (v135)
  {
    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);

    v119 = v19;
    goto LABEL_37;
  }

  v138 = v137;

  if ((v138 & 1) == 0)
  {
LABEL_34:
    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
    v119 = v19;
LABEL_37:
    sub_1D5D2CFE8(v119, sub_1D66C4DA0);
    goto LABEL_38;
  }

  v168 = v155;
  LOBYTE(v169) = 0;
  *&v166[0] = v148;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();

  sub_1D72647EC();

  sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v19, sub_1D66C4DA0);

  return result;
}

uint64_t sub_1D65C7B94()
{
  v1 = *v0;
  v2 = 0x5373726566657270;
  v3 = 0x676E6964646170;
  v4 = 0x615272656E726F63;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1953394534;
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

uint64_t sub_1D65C7C34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C79F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65C7C6C(uint64_t a1)
{
  v2 = sub_1D66C4CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C7CA8(uint64_t a1)
{
  v2 = sub_1D66C4CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTagNavigate.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C4F98(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5C6EE38(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF255E8, sub_1D5C6EE38, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTagNavigate, v16, v18, v13, &type metadata for FormatTagNavigate, v16, &type metadata for FormatVersions.JazzkonG, v14, v11, v17, &off_1F51F6BF8);
  v19 = qword_1EDF31EA8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  LOBYTE(v47) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v47;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  sub_1D66C502C(0);
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF03648, sub_1D66C502C, MEMORY[0x1E69E6F60]);

  v45[1] = v27;
  v29 = sub_1D72647CC();
  LOBYTE(v47) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v47;
  v31 = &v11[*(v8 + 36)];
  v32 = *(v31 + 3);
  v33 = *(v31 + 4);
  v34 = __swift_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D66C50C0;
  v44 = v25;
  v38 = v46;
  v40 = sub_1D5D2F7A4(v6, sub_1D615B49C, v39, sub_1D615B4A4, &v45[-6], v32, v33);
  if (!v38)
  {
    v41 = v40;
    v46 = v28;

    if (v41)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = v12;
      sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
      sub_1D6670830();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D66C4F98);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D66C4F98);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D66C4F98);
}

uint64_t sub_1D65C81F0(uint64_t a1)
{
  v2 = sub_1D5C6EFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C822C(uint64_t a1)
{
  v2 = sub_1D5C6EFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTemperatureFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66C513C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C51D0(0);
  sub_1D5B58B84(&qword_1EDF0C390, sub_1D66C51D0, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6628490(0x74696E55776F6873, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5CDCE98();
  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v26;
  *v13 = v25;
  *(v13 + 16) = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTemperatureFormat.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C5350(0);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66C51D0(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C390, sub_1D66C51D0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTemperatureFormat, v17, v19, v14, &type metadata for FormatTemperatureFormat, v17, &type metadata for FormatVersions.Sydro, v15, v10, v18, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCDE0);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v48 = v6;
  v22 = v49;
  v23 = &v10[*(v49 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v57 = 0;
  v26 = swift_allocObject();
  v47[2] = v47;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v57;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v47[-4] = sub_1D5B4AA6C;
  v47[-3] = 0;
  v45 = sub_1D6708BE0;
  v46 = v28;
  v57 = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v57;
  *(v29 + 40) = v25;
  *(v29 + 48) = v24;
  sub_1D66C53E4(0);
  v31 = v30;
  sub_1D5B58B84(&qword_1EDF029F8, sub_1D66C53E4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v47[1] = v31;
  v32 = sub_1D72647CC();
  v57 = 0;
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = v32;
  *(v33 + 40) = v57;
  v34 = *(v22 + 36);
  v35 = v48;
  v36 = *&v10[v34 + 24];
  v37 = *&v10[v34 + 32];
  v38 = __swift_project_boxed_opaque_existential_1(&v10[v34], v36);
  MEMORY[0x1EEE9AC00](v38, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v47[-4] = sub_1D615B4A4;
  v47[-3] = &v47[-6];
  v45 = sub_1D66C5478;
  v46 = v29;
  v42 = v50;
  sub_1D5D2BC70(v35, sub_1D615B49C, v43, sub_1D615B4A4, &v47[-6], v36, v37);
  if (v42)
  {
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D60ED320();
    sub_1D72647EC();
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v10, sub_1D66C5350);
}

uint64_t sub_1D65C8A70()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x74696E55776F6873;
  }
}

void sub_1D65C8AA4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696E55776F6873 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D65C8B90(uint64_t a1)
{
  v2 = sub_1D66C52A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C8BCC(uint64_t a1)
{
  v2 = sub_1D66C52A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D65C8C08(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D65C8CF0(uint64_t a1)
{
  v2 = sub_1D5CA1BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C8D2C(uint64_t a1)
{
  v2 = sub_1D5CA1BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65C8D68()
{
  v1 = 0x63697274656DLL;
  v2 = 0x656D7473756A6461;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x656C797473;
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

uint64_t sub_1D65C8DD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C7BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65C8E10(uint64_t a1)
{
  v2 = sub_1D665DC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C8E4C(uint64_t a1)
{
  v2 = sub_1D665DC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextAdjustmentOtherBaseline.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D66C54F4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v76 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5CA052C(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24DB8, sub_1D5CA052C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextAdjustmentOtherBaseline, v20, v22, v17, &type metadata for FormatTextAdjustmentOtherBaseline, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v73 = *(v25 + 16);
  v74 = v24;
  v78 = v23;
  v72 = v25 + 16;
  v73(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v15;
  v87 = v16;
  v84 = 0uLL;
  v85 = 0;
  v26 = &v14[*(v11 + 44)];
  v81 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v88 = 0;
  v29 = swift_allocObject();
  v82 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v88;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708BE4;
  v68 = v31;
  v88 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v88;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C5588(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02CB8, sub_1D66C5588, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v88 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v88;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v45 = v81;
  v67 = sub_1D66C561C;
  v68 = v32;
  v46 = v83;
  sub_1D5D2BC70(v81, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v46)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v49 = v14;
  }

  else
  {
    v70 = v38;
    v48 = v78;

    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v51 = v77;
    (v73)(v77, v74, v48);
    swift_storeEnumTagMultiPayload();
    v86 = v76;
    v83 = xmmword_1D728CF30;
    v84 = xmmword_1D728CF30;
    v85 = 0;
    v88 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v88;
    v53 = v75;
    *(v52 + 40) = v75;
    *(v52 + 48) = v28;
    MEMORY[0x1EEE9AC00](v52, v54);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708BE4;
    v68 = v55;
    v88 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v83;
    *(v56 + 32) = v88;
    *(v56 + 40) = v53;
    *(v56 + 48) = v28;
    swift_retain_n();
    v82 = v14;
    v57 = sub_1D72647CC();
    v88 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v83;
    *(v58 + 40) = v88;
    v59 = *(v70 + 3);
    v60 = *(v70 + 4);
    v61 = __swift_project_boxed_opaque_existential_1(v70, v59);
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708BE4;
    v68 = v56;
    sub_1D5D2BC70(v51, sub_1D615B49C, v65, sub_1D615B4A4, (&v69 - 6), v59, v60);

    type metadata accessor for FormatTextNodeStyle();
    sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
    v66 = v82;
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v49 = v66;
  }

  return sub_1D5D2CFE8(v49, sub_1D66C54F4);
}

uint64_t sub_1D65C9724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C7D18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65C975C(uint64_t a1)
{
  v2 = sub_1D5CA061C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C9798(uint64_t a1)
{
  v2 = sub_1D5CA061C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextAlignment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v40;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v40 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t FormatTextContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v115 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v114 = &v108 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v112 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v113 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = &v108 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v110 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v108 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v109 = &v108 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v108 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v108 - v35;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v2;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v44 = sub_1D5C30408();
  v116 = v40;
  sub_1D5D2EE70(&type metadata for FormatTextContent, &type metadata for FormatCodingKeys, v45, v43, &type metadata for FormatTextContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v42, v40, v44, &off_1F51F6C78);
  v46 = v41 >> 60;
  if ((v41 >> 60) > 4)
  {
    if (v46 <= 6)
    {
      v62 = v46 == 5;
      v51 = v116;
      v63 = v41 & 0xFFFFFFFFFFFFFFFLL;
      if (!v62)
      {
        v102 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v122[5] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v122[6] = v102;
        v122[7] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v123 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v103 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v122[1] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v122[2] = v103;
        v104 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v122[3] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v122[4] = v104;
        v122[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D62B52F8(v122, v117);
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v105 = sub_1D725BD1C();
        v106 = __swift_project_value_buffer(v105, qword_1EDFFCD18);
        v25 = v113;
        (*(*(v105 - 8) + 16))(v113, v106, v105);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AF560(6, v122, v25);
        sub_1D62B52A4(v122);
        goto LABEL_43;
      }

      v64 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *(v63 + 24);
      v66 = qword_1EDF31EB0;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
      v69 = v111;
      (*(*(v67 - 8) + 16))(v111, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AF38C(5, v64, v65, v69);
    }

    else
    {
      v51 = v116;
      if (v46 == 7)
      {
        v81 = v41 & 0xFFFFFFFFFFFFFFFLL;
        v82 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v83 = *(v81 + 24);
        v84 = qword_1EDF31EE8;

        if (v84 != -1)
        {
          swift_once();
        }

        v85 = sub_1D725BD1C();
        v86 = __swift_project_value_buffer(v85, qword_1EDFFCD98);
        v69 = v112;
        (*(*(v85 - 8) + 16))(v112, v86, v85);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AF718(7, v82, v83, v69);
      }

      else
      {
        if (v46 == 8)
        {
          v54 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v124[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v124[1] = v54;
          v124[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v125 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          sub_1D66C5868(v124, v117);
          if (qword_1EDF31E80 != -1)
          {
            swift_once();
          }

          v55 = sub_1D725BD1C();
          v56 = __swift_project_value_buffer(v55, qword_1EDFFCCA8);
          v25 = v114;
          (*(*(v55 - 8) + 16))(v114, v56, v55);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          sub_1D63AF8AC(8, v124, v25);
          sub_1D66C58C4(v124);
          goto LABEL_43;
        }

        v90 = v41 & 0xFFFFFFFFFFFFFFFLL;
        v91 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v92 = *(v90 + 24);
        v93 = qword_1EDF31F50;

        if (v93 != -1)
        {
          swift_once();
        }

        v94 = sub_1D725BD1C();
        v95 = __swift_project_value_buffer(v94, qword_1EDFFCE80);
        v69 = v115;
        (*(*(v94 - 8) + 16))(v115, v95, v94);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AFA54(9, v91, v92, v69);
      }
    }

    v25 = v69;
LABEL_43:
    v80 = v25;
LABEL_44:
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
    v61 = v51;
    return sub_1D5D2CFE8(v61, sub_1D5D30DC4);
  }

  if (v46 > 1)
  {
    if (v46 == 2)
    {
      v70 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v71 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v115 = v70;
      sub_1D5B58478(0);
      v73 = *(v72 + 48);
      v74 = v109;
      v75 = &v109[*(v72 + 64)];
      v76 = qword_1EDF31EB0;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD30);
      v79 = *(*(v77 - 8) + 16);
      v79(v74, v78, v77);
      v79(v74 + v73, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v75 = 0;
      *(v75 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v51 = v116;
      sub_1D63AEE90(2, v115, v71, v74);

      v80 = v74;
      goto LABEL_44;
    }

    if (v46 == 3)
    {
      v47 = v41 & 0xFFFFFFFFFFFFFFFLL;
      v48 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *(v47 + 24);
      v50 = qword_1EDF31EB0;

      v51 = v116;
      if (v50 != -1)
      {
        swift_once();
      }

      v52 = sub_1D725BD1C();
      v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
      (*(*(v52 - 8) + 16))(v25, v53, v52);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AF058(3, v48, v49, v25);
    }

    else
    {
      v87 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v120[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v120[1] = v87;
      v121 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D66C5918(v120, v117);
      v51 = v116;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v88 = sub_1D725BD1C();
      v89 = __swift_project_value_buffer(v88, qword_1EDFFCD30);
      v25 = v110;
      (*(*(v88 - 8) + 16))(v110, v89, v88);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AF1EC(4, v120, v25);
      sub_1D66C5974(v120);
    }

    goto LABEL_43;
  }

  if (v46)
  {
    v96 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v97 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v98 = qword_1EDF31EB0;

    v99 = v116;
    if (v98 != -1)
    {
      swift_once();
    }

    v100 = sub_1D725BD1C();
    v101 = __swift_project_value_buffer(v100, qword_1EDFFCD30);
    (*(*(v100 - 8) + 16))(v32, v101, v100);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AEE90(1, v96, v97, v32);

    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    v61 = v99;
  }

  else
  {
    v57 = *(v41 + 32);
    v118[0] = *(v41 + 16);
    v118[1] = v57;
    v118[2] = *(v41 + 48);
    v119 = *(v41 + 64);
    sub_1D5FD78CC(v118, v117);
    v58 = v116;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v59 = sub_1D725BD1C();
    v60 = __swift_project_value_buffer(v59, qword_1EDFFCD30);
    (*(*(v59 - 8) + 16))(v36, v60, v59);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AECE8(0, v118, v36);
    sub_1D5FD7B18(v118);
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
    v61 = v58;
  }

  return sub_1D5D2CFE8(v61, sub_1D5D30DC4);
}

uint64_t sub_1D65CAA38(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1802398060;
    v6 = 0x656D695465746164;
    if (a1 != 8)
    {
      v6 = 0x726F7463656C6573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x686374697773;
    if (a1 != 5)
    {
      v7 = 0x7265626D756ELL;
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
    v1 = 0x676E69646E6962;
    v2 = 0x657A696C61636F6CLL;
    v3 = 0x657474616D726F66;
    if (a1 != 3)
    {
      v3 = 0x656D686361747461;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656E696C6E69;
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

uint64_t sub_1D65CABCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D65CAA38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTextLineBreakMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  v47 = *v1;
  v25 = a1[3];
  v26 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(*(v27 - 8) + 16);
  v29(v24, v28, v27);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v30 = v50;
  sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v25, v26);
  if (v30)
  {
    return sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v32 = v48;
  v33 = v48[3];
  v34 = v48[4];
  v50 = __swift_project_boxed_opaque_existential_1(v48, v33);
  if (v47 > 2)
  {
    v40 = v34;
    if (v47 == 3)
    {
      v38 = v42;
      v29(v42, v28, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v33, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_1D7264B3C();
    }

    else
    {
      if (v47 == 4)
      {
        v36 = v43;
        v29(v43, v28, v27);
      }

      else
      {
        v36 = v44;
        v29(v44, v28, v27);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v33, v40);
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_1D7264B3C();
    }
  }

  else if (v47)
  {
    if (v47 == 1)
    {
      v29(v46, v28, v27);
      v35 = v46;
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v35, sub_1D5B4AA6C, 0, v33, v34);
      sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v40 = v34;
      v39 = v41;
      v29(v41, v28, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v33, v40);
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_1D7264B3C();
  }

  else
  {
    v29(v45, v28, v27);
    v37 = v45;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v33, v34);
    sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_1D7264B3C();
  }

  __swift_mutable_project_boxed_opaque_existential_1(v49, v49[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1D65CB3F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C7E38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65CB428(uint64_t a1)
{
  v2 = sub_1D5C88D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CB464(uint64_t a1)
{
  v2 = sub_1D5C88D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65CB4A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C83E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65CB4D8(uint64_t a1)
{
  v2 = sub_1D5CE63E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CB514(uint64_t a1)
{
  v2 = sub_1D5CE63E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAlternativeLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatTextNodeAlternativeLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
  v28 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v36 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = qword_1EDF31EB0;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD30);
      (*(*(v39 - 8) + 16))(v10, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638A694(2, v36, v37, v10);

      v35 = v10;
    }

    else
    {
      v46 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v48 = qword_1EDF31EB0;

      if (v48 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
      (*(*(v49 - 8) + 16))(v6, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638A694(3, v46, v47, v6);

      v35 = v6;
    }
  }

  else if (v28)
  {
    v41 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v42 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v43 = qword_1EDF31EB0;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
    (*(*(v44 - 8) + 16))(v14, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A4FC(1, v41, v42, v14);

    v35 = v14;
  }

  else
  {
    v29 = *(v23 + 16);
    v30 = *(v23 + 24);
    v31 = *(v23 + 32);
    v32 = qword_1EDF31EB0;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A364(0, v29, v30, v31, v18);

    v35 = v18;
  }

  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65CBAFC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65CBBA8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65CBC40(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65CBCE8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7629921;
  v4 = 0xE300000000000000;
  v5 = 6581857;
  if (*v1 != 2)
  {
    v5 = 29295;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 0x656E694C74786574;
    v2 = 0xE900000000000073;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FormatTextNodeAlternativeLogic.AlternativeLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66C5B08(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C5B9C(0);
  sub_1D5B58B84(&qword_1EC887598, sub_1D66C5B9C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5CE65B0();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeAlternativeLogic.AlternativeLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D66C5D1C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v75 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66C5B9C(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC887598, sub_1D66C5B9C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic.AlternativeLogic, v20, v22, v17, &type metadata for FormatTextNodeAlternativeLogic.AlternativeLogic, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v72 = *(v25 + 16);
  v73 = v24;
  v77 = v23;
  v71 = v25 + 16;
  v72(v9);
  v70 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v15;
  v86 = v16;
  v83 = 0uLL;
  v84 = 0;
  v26 = &v14[*(v11 + 44)];
  v80 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v87 = 0;
  v29 = swift_allocObject();
  v81 = &v68;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v87;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D6708BE8;
  v67 = v31;
  v87 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v87;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C5DB0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8875B0, sub_1D66C5DB0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v35;
  v79 = v34;
  v36 = sub_1D72647CC();
  v87 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v87;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v45 = v80;
  v66 = sub_1D66C5E44;
  v67 = v32;
  v46 = v82;
  sub_1D5D2BC70(v80, sub_1D615B49C, v47, sub_1D615B4A4, (&v68 - 6), v39, v40);
  if (v46)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v68 = v38;
    v69 = v28;
    v48 = v77;

    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v50 = v76;
    (v72)(v76, v73, v48);
    swift_storeEnumTagMultiPayload();
    v85 = v75;
    v82 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    v87 = 0;
    v51 = swift_allocObject();
    v81 = &v68;
    *(v51 + 16) = v82;
    *(v51 + 32) = v87;
    v52 = v74;
    v53 = v69;
    *(v51 + 40) = v74;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v68 - 4) = sub_1D5B4AA6C;
    *(&v68 - 3) = 0;
    v66 = sub_1D6708BE8;
    v67 = v55;
    v87 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v82;
    *(v56 + 32) = v87;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v87 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v82;
    *(v58 + 40) = v87;
    v59 = *(v68 + 3);
    v60 = *(v68 + 4);
    v61 = __swift_project_boxed_opaque_existential_1(v68, v59);
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v68 - 4) = sub_1D615B4A4;
    *(&v68 - 3) = (&v68 - 6);
    v66 = sub_1D6708BE8;
    v67 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v65, sub_1D615B4A4, (&v68 - 6), v59, v60);

    sub_1D665C4B4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C5D1C);
}

uint64_t sub_1D65CC948()
{
  v1 = 0x6369676F6CLL;
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
    return 0x696669746E656469;
  }
}

uint64_t sub_1D65CC99C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C854C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65CC9D4(uint64_t a1)
{
  v2 = sub_1D66C5C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CCA10(uint64_t a1)
{
  v2 = sub_1D66C5C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAlternativeLogic.LogicalOperator.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D66C5EC0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C5F54(0);
  sub_1D5B58B84(&qword_1EC8875E0, sub_1D66C5F54, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v26;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6627E68(7563372, 0xE300000000000000, 7563378, 0xE300000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5CE65B0();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v18 = v29;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v24 = v29;
  *v13 = v18;
  v13[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeAlternativeLogic.LogicalOperator.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D66C60D4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C5F54(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8875E0, sub_1D66C5F54, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic.LogicalOperator, v19, v21, v16, &type metadata for FormatTextNodeAlternativeLogic.LogicalOperator, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v85 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v85;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708BEC;
  v69 = v31;
  v85 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C6168(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8875F8, sub_1D66C6168, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v85 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v85;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v45 = v83;
  v46 = v84;
  v68 = sub_1D66C61FC;
  v69 = v32;
  sub_1D5D2BC70(v84, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v38;
    v49 = v78;
    v48 = v79;
    v83 = v28;

    v50 = sub_1D665C4B4();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708BEC;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708BEC;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C60D4);
}

uint64_t sub_1D65CD5F8()
{
  v1 = 7563378;
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
    return 7563372;
  }
}

uint64_t sub_1D65CD638@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C8668(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65CD670(uint64_t a1)
{
  v2 = sub_1D66C602C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CD6AC(uint64_t a1)
{
  v2 = sub_1D66C602C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAlternativeLogic.TextLines.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v70 - v8);
  sub_1D66C6278(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5CE7168(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24E78, sub_1D5CE7168, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic.TextLines, v19, v21, v16, &type metadata for FormatTextNodeAlternativeLogic.TextLines, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v74 = *(v24 + 16);
  v75 = v23;
  v73 = v24 + 16;
  v74(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v85 = 0;
  v28 = swift_allocObject();
  v81 = &v70;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v85;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v83 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708908;
  v69 = v30;
  v85 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  v76 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66C630C(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF02DB8, sub_1D66C630C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v34;
  v80 = v33;
  v35 = sub_1D72647CC();
  v85 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v85;
  v37 = *(v11 + 36);
  v82 = v14;
  v38 = &v14[v37];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v46 = v83;
  v45 = v84;
  v68 = sub_1D66C63A0;
  v69 = v31;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v50 = v82;
  }

  else
  {
    v70 = v38;
    v71 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v48 = v82;
    sub_1D72647EC();
    v49 = v48;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v52 = v78;
    (v74)(v78, v75, v22);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v88) = v77;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v83 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v76;
    v55 = v71;
    *(v53 + 40) = v76;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708908;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v70 + 3);
    v62 = *(v70 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v70, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708908;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v50 = v49;
  }

  return sub_1D5D2CFE8(v50, sub_1D66C6278);
}

uint64_t sub_1D65CDFA0(uint64_t a1)
{
  v2 = sub_1D5CE72D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CDFDC(uint64_t a1)
{
  v2 = sub_1D5CE72D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAttachment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v103 = &v94 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v94 - v11;
  sub_1D66C641C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v97 = *(v1 + 8);
  v19 = *(v1 + 24);
  v98 = *(v1 + 16);
  v99 = v19;
  v117 = *(v1 + 32);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5CCF388(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF250B8, sub_1D5CCF388, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAttachment, v23, v25, v20, &type metadata for FormatTextNodeAttachment, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v96 = v27;
  v101 = v29;
  v102 = v26;
  v105 = v28 + 16;
  (v29)(v12);
  v104 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v111 = v18;
  v114 = 0uLL;
  v115 = 0;
  v30 = &v17[*(v14 + 44)];
  *&v108 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v116 = 0;
  v33 = swift_allocObject();
  *&v109 = &v94;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v116;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v35 = v17;
  *(&v94 - 4) = sub_1D5B4AA6C;
  *(&v94 - 3) = 0;
  v92 = sub_1D6708BF0;
  v93 = v36;
  v116 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v116;
  v100 = v31;
  *(v37 + 40) = v31;
  *(v37 + 48) = v32;
  sub_1D66C64B0(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03048, sub_1D66C64B0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v106 = v40;
  v107 = v39;
  v41 = sub_1D72647CC();
  v116 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v116;
  v43 = &v17[*(v14 + 36)];
  v45 = *(v43 + 3);
  v44 = *(v43 + 4);
  v46 = __swift_project_boxed_opaque_existential_1(v43, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v94 - 4) = sub_1D615B4A4;
  *(&v94 - 3) = (&v94 - 6);
  v50 = v108;
  v92 = sub_1D6708BF0;
  v93 = v37;
  v51 = v110;
  sub_1D5D2BC70(v108, sub_1D615B49C, v52, sub_1D615B4A4, (&v94 - 6), v45, v44);
  if (v51)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v53 = v35;
    return sub_1D5D2CFE8(v53, sub_1D66C641C);
  }

  v110 = v43;

  sub_1D5C87FC8();
  sub_1D72647EC();
  v53 = v35;
  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

  v56 = v102;
  v55 = v103;
  v57 = v101;
  v101(v103, v96, v102);
  swift_storeEnumTagMultiPayload();
  if (v97)
  {
    LOBYTE(v114) = 0;
    v58 = swift_allocObject();
    v109 = xmmword_1D728CF30;
    *(v58 + 16) = xmmword_1D728CF30;
    *(v58 + 32) = v114;
    *(v58 + 40) = v100;
    *(v58 + 48) = v32;

    v59 = v55;
    v60 = sub_1D72647CC();
    LOBYTE(v114) = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v109;
    *(v61 + 40) = v114;
    v62 = *(v110 + 3);
    v63 = *(v110 + 4);
    v64 = __swift_project_boxed_opaque_existential_1(v110, v62);
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v94 - 4) = sub_1D5B4AA6C;
    *(&v94 - 3) = 0;
    v92 = sub_1D66C6544;
    v93 = v58;
    v69 = sub_1D5D2F7A4(v59, sub_1D615B49C, v68, sub_1D615B4A4, (&v94 - 6), v62, v63);
    v90 = v69;

    if (v90)
    {
      v114 = v109;
      v115 = 0;
      LOBYTE(v111) = 1;
      sub_1D66C65C0();
      sub_1D72647EC();
      sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
      v57 = v101;
      v56 = v102;
      *&v109 = 0;
    }

    else
    {
      *&v109 = 0;
      sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
      v57 = v101;
      v56 = v102;
    }
  }

  else
  {
    *&v109 = 0;
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
  }

  v70 = v95;
  v71 = v117;
  v73 = v98;
  v72 = v99;
  sub_1D5C75A4C(v98, v99, v117);
  v74 = v32;
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v75 = __swift_project_value_buffer(v56, qword_1EDFFCE80);
  v57(v70, v75, v56);
  swift_storeEnumTagMultiPayload();
  v76 = v100;
  v77 = v110;
  if (v71)
  {

    sub_1D5D2F2C8(v73, v72, 1);
    sub_1D5D2F2C8(1, 0, 0);
    goto LABEL_16;
  }

  sub_1D5D2F2C8(v73, v72, 0);
  sub_1D5D2F2C8(1, 0, 0);
  if ((v73 & 1) == 0)
  {
LABEL_16:
    LOBYTE(v114) = 0;
    v78 = swift_allocObject();
    v108 = xmmword_1D7297410;
    *(v78 + 16) = xmmword_1D7297410;
    *(v78 + 32) = v114;
    *(v78 + 40) = v76;
    *(v78 + 48) = v74;

    v79 = sub_1D72647CC();
    LOBYTE(v114) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v108;
    *(v80 + 40) = v114;
    v81 = *(v77 + 3);
    v82 = *(v77 + 4);
    v83 = __swift_project_boxed_opaque_existential_1(v77, v81);
    MEMORY[0x1EEE9AC00](v83, v84);
    MEMORY[0x1EEE9AC00](v85, v86);
    *(&v94 - 4) = sub_1D5B4AA6C;
    *(&v94 - 3) = 0;
    v92 = sub_1D6708BF0;
    v93 = v78;
    v87 = v109;
    v89 = sub_1D5D2F7A4(v70, sub_1D615B49C, v88, sub_1D615B4A4, (&v94 - 6), v81, v82);
    if (v87)
    {
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2F2C8(v98, v99, v117);
    }

    else
    {
      v91 = v89;

      if (v91)
      {
        v114 = v108;
        v115 = 0;
        v111 = v98;
        v112 = v99;
        v113 = v117;
        sub_1D60ED320();
        sub_1D72647EC();
        sub_1D5D2F2C8(v111, v112, v113);
        sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2F2C8(v98, v99, v117);
      }
    }

    return sub_1D5D2CFE8(v53, sub_1D66C641C);
  }

  sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v53, sub_1D66C641C);
}

uint64_t sub_1D65CEC38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C8890(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65CEC70(uint64_t a1)
{
  v2 = sub_1D5CCF478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CECAC(uint64_t a1)
{
  v2 = sub_1D5CCF478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAttachmentAlignment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v27;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v27);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t sub_1D65CF094(char a1)
{
  result = 0x656E696C64616568;
  switch(a1)
  {
    case 1:
      result = 0x6575737369;
      break;
    case 2:
      result = 0x70756F7267;
      break;
    case 3:
      result = 0x6E6F6974706FLL;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    case 5:
      result = 0x6172546F69647561;
      break;
    case 6:
      result = 6775156;
      break;
    case 7:
      result = 0x6465626D45626577;
      break;
    case 8:
      result = 0x656C7A7A7570;
      break;
    case 9:
      result = 0x7954656C7A7A7570;
      break;
    case 10:
      result = 0x7453656C7A7A7570;
      break;
    case 11:
      result = 0x74496D6F74737563;
      break;
    case 12:
      result = 0x76457374726F7073;
      break;
    case 13:
      result = 0x6C6C6177796170;
      break;
    case 14:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65CF23C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t sub_1D65CF2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1D7264A0C();
  a3(v5);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65CF36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65CF3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1D7264A0C();
  a4(v6);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65CF444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D65CF094(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTextNodeDateTimeFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D66C6614(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C66A8(0);
  sub_1D5B58B84(&qword_1EC887628, sub_1D66C66A8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v31;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x74616D726F66, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D60344C0();
  v28 = 0uLL;
  LOBYTE(v29) = 0;
  sub_1D726431C();
  v17 = v26;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CCD298();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  v24 = v29;
  v25 = v30;
  *v13 = v17;
  *(v13 + 8) = v23;
  *(v13 + 24) = v24;
  *(v13 + 40) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeDateTimeFormat.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D66C6828(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v80 = *(v1 + 3);
  v81 = v16;
  v17 = v1[6];
  v79 = v1[5];
  v78 = v17;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66C66A8(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EC887628, sub_1D66C66A8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeDateTimeFormat, v21, v23, v18, &type metadata for FormatTextNodeDateTimeFormat, v21, &type metadata for FormatVersions.Dawnburst, v19, v14, v22, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCCA8);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v76 = v25;
  v83 = v24;
  v75 = v27;
  v74 = v26 + 16;
  (v27)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v89 = v15;
  v91 = 0uLL;
  LOBYTE(v92) = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v95 = 0;
  v31 = swift_allocObject();
  v86 = &v70;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v95;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v87 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708BF4;
  v69 = v33;
  v95 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v95;
  v77 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66C68BC(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC887640, sub_1D66C68BC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v84 = v37;
  v85 = v36;
  v38 = sub_1D72647CC();
  v95 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v95;
  v40 = &v14[*(v11 + 36)];
  v41 = *(v40 + 3);
  v42 = *(v40 + 4);
  v43 = __swift_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v48 = v87;
  v47 = v88;
  v68 = sub_1D66C6950;
  v69 = v34;
  sub_1D5D2BC70(v87, sub_1D615B49C, v49, sub_1D615B4A4, (&v70 - 6), v41, v42);
  if (v47)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v40;
    v50 = v83;
    v72 = v30;

    sub_1D6034514();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v52 = v82;
    v75(v82, v76, v50);
    swift_storeEnumTagMultiPayload();
    v92 = v80;
    v91 = v81;
    v93 = v79;
    v94 = v78;
    v88 = xmmword_1D728CF30;
    v89 = xmmword_1D728CF30;
    v90 = 0;
    v95 = 0;
    v53 = swift_allocObject();
    v87 = &v70;
    *(v53 + 16) = v88;
    *(v53 + 32) = v95;
    v54 = v77;
    v55 = v72;
    *(v53 + 40) = v77;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708BF4;
    v69 = v57;
    v95 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v88;
    *(v58 + 32) = v95;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v95 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v88;
    *(v60 + 40) = v95;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708BF4;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D66C69CC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C6828);
}

uint64_t sub_1D65D00F0()
{
  v1 = 0x74616D726F66;
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
    return 0x676E69646E6962;
  }
}

uint64_t sub_1D65D0140@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C89F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D0178(uint64_t a1)
{
  v2 = sub_1D66C6780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D01B4(uint64_t a1)
{
  v2 = sub_1D66C6780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D01F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C8B08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D0228(uint64_t a1)
{
  v2 = sub_1D5C9778C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D0264(uint64_t a1)
{
  v2 = sub_1D5C9778C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D02A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C8C18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D02D8(uint64_t a1)
{
  v2 = sub_1D5C78498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D0314(uint64_t a1)
{
  v2 = sub_1D5C78498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeLink.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C6A20(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C6AB4(0);
  sub_1D5B58B84(&qword_1EC887670, sub_1D66C6AB4, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x746E65746E6F63, 0xE700000000000000, 7107189, 0xE300000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C6F1D8();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CA2FA0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeLink.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D66C6C34(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C6AB4(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887670, sub_1D66C6AB4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeLink, v19, v21, v16, &type metadata for FormatTextNodeLink, v19, &type metadata for FormatVersions.AzdenE, v17, v14, v20, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v77 = v23;
  v78 = v22;
  v72 = v24 + 16;
  v73 = v25;
  (v25)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v15;
  v85 = 0uLL;
  v86 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v81 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v83 = v9;
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708BF8;
  v68 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C6CC8(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887688, sub_1D66C6CC8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v84 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v84;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v45 = v82;
  v46 = v83;
  v67 = sub_1D66C6D5C;
  v68 = v32;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v38;
    v49 = v77;
    v48 = v78;
    v82 = v28;

    sub_1D5C76E3C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v51 = v76;
    v73(v76, v49, v48);
    swift_storeEnumTagMultiPayload();
    v87 = v75;
    v83 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v84 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v84;
    v53 = v74;
    v54 = v82;
    *(v52 + 40) = v74;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708BF8;
    v68 = v56;
    v84 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v83;
    *(v57 + 32) = v84;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v84 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v83;
    *(v59 + 40) = v84;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708BF8;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D60B27FC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C6C34);
}

uint64_t sub_1D65D0EF8()
{
  v1 = 7107189;
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
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D65D0F44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C8DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D0F7C(uint64_t a1)
{
  v2 = sub_1D66C6B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D0FB8(uint64_t a1)
{
  v2 = sub_1D66C6B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D0FF4()
{
  v1 = 0x74616D726F66;
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
    return 0x7265626D756ELL;
  }
}

uint64_t sub_1D65D1040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C8EEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D1078(uint64_t a1)
{
  v2 = sub_1D665BA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D10B4(uint64_t a1)
{
  v2 = sub_1D665BA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D1108@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CA5A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D1140(uint64_t a1)
{
  v2 = sub_1D5C31BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D117C(uint64_t a1)
{
  v2 = sub_1D5C31BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D11B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CAABC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D11F0(uint64_t a1)
{
  v2 = sub_1D5C36820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D122C(uint64_t a1)
{
  v2 = sub_1D5C36820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D1268(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7361637265776F6CLL;
  if (v2 == 1)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x696C617469706163;
    v4 = 0xEA0000000000657ALL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7361637265707075;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x7361637265776F6CLL;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x696C617469706163;
    v8 = 0xEA0000000000657ALL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7361637265707075;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65D136C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65D1414(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65D14A8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatTranslate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  *&v75 = a2;
  *(&v75 + 1) = a3;
  v76 = a4;
  v77 = a5;
  v71 = type metadata accessor for FormatRange(0, &v75);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v11);
  v62 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v69 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v70 = &v59 - v21;
  v72 = a2;
  *&v75 = a2;
  *(&v75 + 1) = a3;
  v64 = a3;
  v65 = a4;
  v76 = a4;
  v77 = a5;
  v74 = a5;
  v22 = _s10CodingKeysOMa_21(255, &v75);
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  *&v75 = v22;
  *(&v75 + 1) = WitnessTable;
  v66 = v24;
  v67 = WitnessTable;
  v76 = v24;
  v77 = v25;
  v26 = type metadata accessor for FormatCodingKeysContainer(255, &v75);
  swift_getWitnessTable();
  v27 = sub_1D726435C();
  v73 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v59 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v78;
  sub_1D7264B0C();
  v32 = v31;
  if (v31)
  {
    goto LABEL_13;
  }

  v59 = 0;
  v60 = v30;
  v78 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = sub_1D7264AFC();
  v34 = Dictionary<>.errorOnUnknownKeys.getter(v33);

  v35 = v72;
  v36 = v74;
  if ((v34 & 1) == 0)
  {
LABEL_10:
    v75 = 0uLL;
    LOBYTE(v76) = 0;
    v49 = v71;
    swift_getWitnessTable();
    v50 = v70;
    v51 = v78;
    v53 = v59;
    v52 = v60;
    sub_1D726431C();
    v32 = v53;
    if (!v53)
    {
      v75 = xmmword_1D728CF30;
      LOBYTE(v76) = 0;
      sub_1D726431C();
      (*(v73 + 8))(v52, v51);
      v54 = v35;
      v55 = *(v68 + 32);
      v56 = v36;
      v57 = v61;
      v55(v61, v50, v49);
      v58 = v62;
      v55(v62, v69, v49);
      FormatTranslate.init(x:y:)(v57, v58, v54, v64, v65, v56, v63);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v73 + 8))(v52, v51);
LABEL_13:
    sub_1D61E4FBC(a1, v32);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = 0;
  v38 = (sub_1D726433C() + 48);
  v39 = v73;
  while (1)
  {
    if (v37 == sub_1D726279C())
    {

      v36 = v74;
      v35 = v72;
      goto LABEL_10;
    }

    v40 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v40 & 1) == 0)
    {
      break;
    }

    v42 = *v38;
    v75 = *(v38 - 1);
    LOBYTE(v76) = v42;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_16;
    }

    v43 = sub_1D6AFC82C(v26);
    ++v37;
    v38 += 24;
    if (v44)
    {
      v45 = v43;
      v46 = v44;

      v47 = sub_1D6AFC690(v22, v67, v66, v25);
      sub_1D5E2D970();
      v32 = swift_allocError();
      *v48 = v45;
      *(v48 + 8) = v46;
      *(v48 + 16) = v47;
      *(v48 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v39 + 8))(v60, v78);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatTranslate.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v42 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v39 - v9;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v44 = *(a2 + 24);
  v45 = v11;
  *&v51 = v11;
  *(&v51 + 1) = v44;
  v43 = v12;
  v52 = v12;
  v53 = v13;
  v14 = _s10CodingKeysOMa_21(255, &v51);
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v51 = v14;
  *(&v51 + 1) = WitnessTable;
  v52 = v16;
  v53 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer(255, &v51);
  v19 = swift_getWitnessTable();
  v20 = sub_1D726446C();
  v21 = swift_getWitnessTable();
  v54 = type metadata accessor for VersionedKeyedEncodingContainer(0, v20, v21, v22);
  v46 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v23);
  v25 = v39 - v24;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5D2EE70(a2, v18, v28, v26, a2, v18, &type metadata for FormatVersions.JazzkonC, v27, v25, v19, &off_1F51F6C78);
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
  v31 = *(v29 - 8);
  v40 = *(v31 + 16);
  v41 = v30;
  v39[1] = v31 + 16;
  v40(v10);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v51 = v45;
  *(&v51 + 1) = v44;
  v52 = v43;
  v53 = v13;
  v32 = type metadata accessor for FormatRange(0, &v51);
  v33 = swift_getWitnessTable();
  v34 = v47;
  sub_1D5D38930(v48, v49, v10, sub_1D5B4AA6C, 0, v54, v32, v33);
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  if (v34)
  {
    return (*(v46 + 8))(v25, v54);
  }

  v36 = *(a2 + 52);
  v51 = xmmword_1D728CF30;
  LOBYTE(v52) = 0;
  v37 = v42;
  (v40)(v42, v41, v29);
  swift_storeEnumTagMultiPayload();
  v38 = v54;
  sub_1D5D38930(v48 + v36, &v51, v37, sub_1D5B4AA6C, 0, v54, v32, v33);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
  return (*(v46 + 8))(v25, v38);
}

uint64_t sub_1D65D1FD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D65D20DC(char a1)
{
  if (!a1)
  {
    return 120;
  }

  if (a1 == 1)
  {
    return 121;
  }

  return 1885433183;
}

uint64_t sub_1D65D2180@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, void *)@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1D65D7D28(a1[2], a1[3], a1[4], a1[5], a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D21B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65D220C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65D2260@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CAF40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D2298(uint64_t a1)
{
  v2 = sub_1D5CDF3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D22D4(uint64_t a1)
{
  v2 = sub_1D5CDF3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTypeDefinition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v36 = *v1;
  v20 = *(v1 + 32);
  v34 = *(v1 + 16);
  v35 = v20;
  v21 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTypeDefinition, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatTypeDefinition, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v23, v18, v24, &off_1F51F6C78);
  if (v21 >> 6)
  {
    if (v21 >> 6 == 1)
    {
      *&v37[0] = v36;
      *(&v37[0] + 1) = v19;
      v37[1] = v34;
      v37[2] = v35;
      v38 = v21 & 1;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD18);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A1D10(1, v37, v10);
      v28 = v10;
    }

    else
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDC8);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A1EB8(2, v36, v6);
      v28 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A1B7C(0, v36, v14);
    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65D2744(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x63614D6574617473;
  v4 = 0xEC000000656E6968;
  if (v2 != 1)
  {
    v3 = 0x74496D6F74737563;
    v4 = 0xEA00000000006D65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1836412517;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x63614D6574617473;
  v8 = 0xEC000000656E6968;
  if (*a2 != 1)
  {
    v7 = 0x74496D6F74737563;
    v8 = 0xEA00000000006D65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1836412517;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65D2858()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65D2900(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65D2994(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65D2A38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC000000656E6968;
  v5 = 0x63614D6574617473;
  if (v2 != 1)
  {
    v5 = 0x74496D6F74737563;
    v4 = 0xEA00000000006D65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1836412517;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatTypeDefinition.Case.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v97 = &v85 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v85 - v11;
  sub_1D66C9230(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v89 = v1[3];
  v90 = v20;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CE0820(0);
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF25358, sub_1D5CE0820, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTypeDefinition.Case, v24, v26, v21, &type metadata for FormatTypeDefinition.Case, v24, &type metadata for FormatVersions.JazzkonC, v22, v17, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v95 = v28;
  v96 = v27;
  v94 = v30;
  v92 = v29 + 16;
  (v30)(v12);
  v91 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v106 = v19;
  v107 = v18;
  v104 = 0uLL;
  v105 = 0;
  v31 = &v17[*(v14 + 44)];
  v101 = v12;
  v33 = *v31;
  v32 = *(v31 + 1);
  v108 = 0;
  v34 = swift_allocObject();
  v102 = &v85;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v108;
  *(v34 + 40) = v33;
  *(v34 + 48) = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v85 - 4) = sub_1D5B4AA6C;
  *(&v85 - 3) = 0;
  v83 = sub_1D6708C04;
  v84 = v36;
  v108 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v108;
  v93 = v33;
  *(v37 + 40) = v33;
  *(v37 + 48) = v32;
  sub_1D66C92C4(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03378, sub_1D66C92C4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v98 = v39;
  v99 = v40;
  v41 = sub_1D72647CC();
  v108 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v108;
  v43 = &v17[*(v14 + 36)];
  v44 = *(v43 + 3);
  v45 = *(v43 + 4);
  v100 = v17;
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v85 - 4) = sub_1D615B4A4;
  *(&v85 - 3) = (&v85 - 6);
  v83 = sub_1D6708C04;
  v84 = v37;
  v50 = v101;
  v51 = v103;
  sub_1D5D2BC70(v101, sub_1D615B49C, v52, sub_1D615B4A4, (&v85 - 6), v44, v45);
  if (v51)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v53 = v100;
    return sub_1D5D2CFE8(v53, sub_1D66C9230);
  }

  v86 = v43;
  v87 = v32;

  v53 = v100;
  sub_1D72647EC();
  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

  v54 = v97;
  v94(v97, v95, v96);
  swift_storeEnumTagMultiPayload();
  v106 = v90;
  v107 = v89;
  v103 = xmmword_1D728CF30;
  v104 = xmmword_1D728CF30;
  v105 = 0;
  v108 = 0;
  v55 = swift_allocObject();
  v102 = &v85;
  *(v55 + 16) = v103;
  *(v55 + 32) = v108;
  v56 = v93;
  v57 = v87;
  *(v55 + 40) = v93;
  *(v55 + 48) = v57;
  MEMORY[0x1EEE9AC00](v55, v58);
  v101 = 0;
  *(&v85 - 4) = sub_1D5B4AA6C;
  *(&v85 - 3) = 0;
  v83 = sub_1D6708C04;
  v84 = v59;
  v108 = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v103;
  *(v60 + 32) = v108;
  *(v60 + 40) = v56;
  *(v60 + 48) = v57;
  swift_retain_n();
  v61 = sub_1D72647CC();
  v108 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v103;
  *(v62 + 40) = v108;
  v63 = *(v86 + 3);
  v64 = *(v86 + 4);
  v65 = __swift_project_boxed_opaque_existential_1(v86, v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v85 - 4) = sub_1D615B4A4;
  *(&v85 - 3) = (&v85 - 6);
  v83 = sub_1D6708C04;
  v84 = v60;
  v69 = v101;
  sub_1D5D2BC70(v54, sub_1D615B49C, v70, sub_1D615B4A4, (&v85 - 6), v63, v64);
  if (v69)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v53, sub_1D66C9230);
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

  v72 = v88;
  v94(v88, v95, v96);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v104) = 0;
  v73 = swift_allocObject();
  v103 = xmmword_1D7297410;
  *(v73 + 16) = xmmword_1D7297410;
  *(v73 + 32) = v104;
  *(v73 + 40) = v93;
  *(v73 + 48) = v87;

  v74 = sub_1D72647CC();
  LOBYTE(v104) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v103;
  *(v75 + 40) = v104;
  v76 = *(v86 + 3);
  v77 = *(v86 + 4);
  v78 = __swift_project_boxed_opaque_existential_1(v86, v76);
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v85 - 4) = sub_1D5B4AA6C;
  *(&v85 - 3) = 0;
  v83 = sub_1D66C9358;
  v84 = v73;
  LOBYTE(v76) = sub_1D5D2F7A4(v72, sub_1D615B49C, v82, sub_1D615B4A4, (&v85 - 6), v76, v77);

  if (v76)
  {
    v104 = v103;
    v105 = 0;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1D72647EC();
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v53, sub_1D66C9230);
  }

  sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v53, sub_1D66C9230);
}

uint64_t sub_1D65D3654@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CB0B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D368C(uint64_t a1)
{
  v2 = sub_1D5CE098C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D36C8(uint64_t a1)
{
  v2 = sub_1D5CE098C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTypeDefinition.Enum.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C93D4(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5CDFCC8(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF25348, sub_1D5CDFCC8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTypeDefinition.Enum, v16, v18, v13, &type metadata for FormatTypeDefinition.Enum, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v12;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v45 = 0;
  v24 = swift_allocObject();
  v44[2] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v45;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D6708C08;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66C9468(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03368, sub_1D66C9468, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[1] = v29;
  v30 = sub_1D72647CC();
  v45 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v45;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D66C94FC;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
    sub_1D6686F30();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66C93D4);
}

void sub_1D65D3C34(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D65D3D1C(uint64_t a1)
{
  v2 = sub_1D5CE015C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D3D58(uint64_t a1)
{
  v2 = sub_1D5CE015C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D3DA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65D3E64(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65D3F14(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65D3FD4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574756C6F736261;
  v4 = 0xE700000000000000;
  v5 = 0x676E69646E6962;
  if (*v1 != 2)
  {
    v5 = 0x6E656E6F706D6F63;
    v4 = 0xEA00000000007374;
  }

  if (*v1)
  {
    v3 = 0x7465737361;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double sub_1D65D40B8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D65D41A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6974706FLL;
  v5 = 0xE800000000000000;
  v6 = 0x6465626D45626577;
  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  if (v2 != 4)
  {
    v8 = 6775156;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006D65;
  v10 = 0x74496D6F74737563;
  if (v2 != 1)
  {
    v10 = 0x656E696C64616568;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t FormatURLComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v32;
    v13 = a1[3];
    v31 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117EF0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v31;
          goto LABEL_9;
        }
      }
    }

    sub_1D66C9578();
    v42 = 0;
    v43 = 0;
    sub_1D726431C();
    if (v44)
    {
      v33 = xmmword_1D7279980;
      if (v44 == 1)
      {
        sub_1D66C95CC();
        sub_1D726431C();
        a1 = v31;
        (*(v11 + 8))(v10, v6);
        v23 = v34;
        v24 = v35;
        v25 = v36;
        v26 = v38;
        v27 = v39;
        v28 = v40;
        v29 = v37 & 0xC7FF;
        v30 = v41 & 0xC7FF | 0x1000;
      }

      else
      {
        sub_1D66C95CC();
        sub_1D726431C();
        a1 = v31;
        (*(v11 + 8))(v10, v6);
        v23 = v34;
        v24 = v35;
        v25 = v36;
        v26 = v38;
        v27 = v39;
        v28 = v40;
        v29 = v37 & 0xC7FF;
        v30 = v41 & 0xC7FF | 0x2000;
      }
    }

    else
    {
      v33 = xmmword_1D7279980;
      sub_1D667CF44();
      sub_1D726431C();
      a1 = v31;
      (*(v11 + 8))(v10, v6);
      v30 = 0;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      v29 = v37 & 0xC7FF;
    }

    *v12 = v23;
    *(v12 + 16) = v24;
    *(v12 + 32) = v25;
    *(v12 + 48) = v29;
    *(v12 + 56) = v26;
    *(v12 + 72) = v27;
    *(v12 + 88) = v28;
    *(v12 + 104) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatURLComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v19 = v1[3];
  v53 = v1[2];
  v54 = v19;
  v20 = v1[5];
  v55 = v1[4];
  v56 = v20;
  v21 = v1[7];
  v57 = v1[6];
  v22 = v1[8];
  v23 = v1[9];
  v47 = v21;
  v48 = v22;
  v24 = v1[10];
  v25 = v1[11];
  v49 = v23;
  v50 = v24;
  v26 = v1[12];
  v51 = v25;
  v52 = v26;
  v27 = *(v1 + 52);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v58 = v16;
  sub_1D5D2EE70(&type metadata for FormatURLComponent, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatURLComponent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v29, v16, v30, &off_1F51F6C98);
  v32 = (v27 >> 12) & 3;
  if (v32)
  {
    if (v32 == 1)
    {
      v65[0] = v18;
      v65[1] = v17;
      v65[2] = v53;
      v65[3] = v54;
      v65[4] = v55;
      v65[5] = v56;
      v65[6] = v57;
      v65[7] = v47;
      v65[8] = v48;
      v65[9] = v49;
      v65[10] = v50;
      v65[11] = v51;
      v65[12] = v52;
      v66 = v27 & 0xCFFF;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
      v35 = v45;
      (*(*(v33 - 8) + 16))(v45, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v65;
      v37 = 1;
    }

    else
    {
      v67[0] = v18;
      v67[1] = v17;
      v67[2] = v53;
      v67[3] = v54;
      v67[4] = v55;
      v67[5] = v56;
      v67[6] = v57;
      v67[7] = v47;
      v67[8] = v48;
      v67[9] = v49;
      v67[10] = v50;
      v67[11] = v51;
      v67[12] = v52;
      v68 = v27 & 0xCFFF;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCE38);
      v35 = v46;
      (*(*(v42 - 8) + 16))(v46, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v67;
      v37 = 2;
    }

    v40 = v58;
    sub_1D63A72F8(v37, v36, v35);
    v41 = v35;
  }

  else
  {
    *&v59 = v18;
    *(&v59 + 1) = v17;
    v60 = v53;
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v64 = v57;
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v38 = sub_1D725BD1C();
    v39 = __swift_project_value_buffer(v38, qword_1EDFFCE38);
    (*(*(v38 - 8) + 16))(v12, v39, v38);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v40 = v58;
    sub_1D63A7150(0, &v59, v12);
    v41 = v12;
  }

  sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v40, sub_1D5D30DC4);
}

uint64_t sub_1D65D4BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261507972657571;
  v4 = 0xEA00000000006D61;
  if (v2 != 1)
  {
    v3 = 0x746E656D67617266;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1752457584;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7261507972657571;
  v8 = 0xEA00000000006D61;
  if (*a2 != 1)
  {
    v7 = 0x746E656D67617266;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65D4CD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65D4D78(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65D4E04(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65D4EA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663B34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65D4ED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000006D61;
  v5 = 0x7261507972657571;
  if (v2 != 1)
  {
    v5 = 0x746E656D67617266;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatURLComponentQueryParameter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66C9620(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C96B4(0);
  sub_1D5B58B84(&qword_1EC8876C8, sub_1D66C96B4, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v34;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(1701667182, 0xE400000000000000, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667CF44();
  v35 = 0uLL;
  v36 = 0;
  sub_1D726431C();
  v30 = *(&v37 + 1);
  v17 = v37;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v35 = xmmword_1D728CF30;
  v36 = 0;
  sub_1D726431C();
  (*(v13 + 8))(v10, v7);
  v23 = v38;
  *(a2 + 56) = v37;
  v24 = v40;
  v25 = v30;
  v26 = v31;
  *a2 = v17;
  *(a2 + 8) = v25;
  v28 = *(&v31 + 1);
  v27 = v32;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  *(a2 + 32) = __PAIR128__(*(&v32 + 1), v27);
  *(a2 + 48) = v33;
  *(a2 + 50) = v41;
  *(a2 + 54) = v42;
  *(a2 + 72) = v23;
  *(a2 + 88) = v39;
  *(a2 + 104) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatURLComponentQueryParameter.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v84 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - v8;
  sub_1D66C9834(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v88 = v1[1];
  v89 = v15;
  v16 = *(v1 + 4);
  v87 = *(v1 + 5);
  v17 = *(v1 + 24);
  v82 = *(v1 + 72);
  v83 = *(v1 + 56);
  v18 = *(v1 + 12);
  v81 = *(v1 + 11);
  v80 = v18;
  v99 = *(v1 + 52);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D66C96B4(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EC8876C8, sub_1D66C96B4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatURLComponentQueryParameter, v22, v24, v19, &type metadata for FormatURLComponentQueryParameter, v22, &type metadata for FormatVersions.CrystalGlowE, v20, v14, v23, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCE38);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v78 = v26;
  v85 = v25;
  v77 = v28;
  v76 = v27 + 16;
  (v28)(v9);
  v75 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v93 = v89;
  v94 = v88;
  v95 = v16;
  v96 = v87;
  v97 = v17;
  v91 = 0uLL;
  v92 = 0;
  v29 = &v14[*(v11 + 44)];
  *&v88 = v9;
  v30 = *v29;
  v31 = *(v29 + 1);
  v98 = 0;
  v32 = swift_allocObject();
  *&v89 = &v72;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v98;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v72 - 4) = sub_1D5B4AA6C;
  *(&v72 - 3) = 0;
  v70 = sub_1D67088A0;
  v71 = v34;
  v98 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v98;
  v79 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66C98C8(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC8876E0, sub_1D66C98C8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v86 = v38;
  v87 = v37;
  v39 = sub_1D72647CC();
  v98 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v98;
  v41 = &v14[*(v11 + 36)];
  v42 = *(v41 + 3);
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v72 - 4) = sub_1D615B4A4;
  *(&v72 - 3) = (&v72 - 6);
  v48 = v88;
  v70 = sub_1D67088A0;
  v71 = v35;
  v49 = v90;
  sub_1D5D2BC70(v88, sub_1D615B49C, v50, sub_1D615B4A4, (&v72 - 6), v42, v43);
  if (v49)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v73 = v41;
    v51 = v85;
    v74 = v31;

    v52 = sub_1D6686A30();
    sub_1D72647EC();
    v72 = v52;
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v54 = v84;
    v77(v84, v78, v51);
    swift_storeEnumTagMultiPayload();
    v93 = v83;
    v94 = v82;
    v95 = v81;
    v96 = v80;
    v97 = v99;
    v90 = xmmword_1D728CF30;
    v91 = xmmword_1D728CF30;
    v92 = 0;
    v98 = 0;
    v55 = swift_allocObject();
    *&v89 = &v72;
    *(v55 + 16) = v90;
    *(v55 + 32) = v98;
    v56 = v79;
    v57 = v74;
    *(v55 + 40) = v79;
    *(v55 + 48) = v57;
    MEMORY[0x1EEE9AC00](v55, v58);
    *(&v72 - 4) = sub_1D5B4AA6C;
    *(&v72 - 3) = 0;
    v70 = sub_1D67088A0;
    v71 = v59;
    v98 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v90;
    *(v60 + 32) = v98;
    *(v60 + 40) = v56;
    *(v60 + 48) = v57;
    swift_retain_n();
    v61 = sub_1D72647CC();
    v98 = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = v90;
    *(v62 + 40) = v98;
    v63 = *(v73 + 3);
    v64 = *(v73 + 4);
    v65 = __swift_project_boxed_opaque_existential_1(v73, v63);
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v72 - 4) = sub_1D615B4A4;
    *(&v72 - 3) = (&v72 - 6);
    v70 = sub_1D67088A0;
    v71 = v60;
    sub_1D5D2BC70(v54, sub_1D615B49C, v69, sub_1D615B4A4, (&v72 - 6), v63, v64);

    sub_1D72647EC();
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C9834);
}

uint64_t sub_1D65D5CD0(uint64_t a1)
{
  v2 = sub_1D66C978C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D5D0C(uint64_t a1)
{
  v2 = sub_1D66C978C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatURLComponents.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D5C2E60C(0, &qword_1EC8876E8, sub_1D66C99C0, sub_1D66C9A14, &type metadata for FormatURLComponent);
  v6 = v5;
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - v8;
  sub_1D66C9A68(0);
  v36 = v10;
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C9AFC(0);
  sub_1D5B58B84(&qword_1EC887728, sub_1D66C9AFC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v36;
  if (v15)
  {
    v17 = sub_1D726433C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (*v19 != 1)
      {
        v19 += 24;
        if (!--v18)
        {
          goto LABEL_7;
        }
      }

      v26 = *(v19 - 2);
      v25 = *(v19 - 1);

      v27 = sub_1D6627E68(0x4C525565736162, 0xE700000000000000, 0x6E656E6F706D6F63, 0xEA00000000007374);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v41 + 8))(v13, v16);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5CA2FA0();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726431C();
  v20 = v37;
  v32 = xmmword_1D728CF30;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  v21 = sub_1D726434C();
  v22 = v41;
  if (v21)
  {
    v37 = v32;
    v38 = 0;
    sub_1D66C9C7C();
    sub_1D726431C();
    v23 = v13;
    v24 = v35;
    v30 = v23;
    v31 = sub_1D725A74C();
    (*(v34 + 8))(v33, v6);
  }

  else
  {
    v30 = v13;
    v31 = MEMORY[0x1E69E7CC0];
    v24 = v35;
  }

  (*(v22 + 8))(v30, v16);
  *v24 = v20;
  v24[1] = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatURLComponents.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v63 - v8;
  sub_1D66C9D0C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C9AFC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887728, sub_1D66C9AFC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatURLComponents, v19, v21, v16, &type metadata for FormatURLComponents, v19, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v20, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE38);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v68 = v23;
  v69 = v22;
  v66 = v24 + 16;
  v67 = v25;
  (v25)(v9);
  v65 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v80 = v15;
  v78 = 0uLL;
  v79 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v77 = 0;
  v29 = swift_allocObject();
  *&v75 = &v63;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v77;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v63 - 4) = sub_1D5B4AA6C;
  *(&v63 - 3) = 0;
  v61 = sub_1D6708C0C;
  v62 = v31;
  v77 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v77;
  v64 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C9DA0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887748, sub_1D66C9DA0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v72 = v35;
  v73 = v34;
  v36 = sub_1D72647CC();
  v77 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v77;
  v38 = *(v11 + 36);
  v74 = v14;
  v39 = &v14[v38];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v63 - 4) = sub_1D615B4A4;
  *(&v63 - 3) = (&v63 - 6);
  v61 = sub_1D6708C0C;
  v62 = v32;
  v46 = v76;
  sub_1D5D2BC70(v9, sub_1D615B49C, v47, sub_1D615B4A4, (&v63 - 6), v40, v41);
  if (v46)
  {
    v48 = v74;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v76 = v39;

    sub_1D60B27FC();
    v48 = v74;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v49 = v70;
    v67(v70, v68, v69);
    swift_storeEnumTagMultiPayload();
    if (*(v71 + 16))
    {
      LOBYTE(v78) = 0;
      v50 = swift_allocObject();
      v75 = xmmword_1D728CF30;
      *(v50 + 16) = xmmword_1D728CF30;
      *(v50 + 32) = v78;
      *(v50 + 40) = v64;
      *(v50 + 48) = v28;

      v51 = sub_1D72647CC();
      LOBYTE(v78) = 0;
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      *(v52 + 24) = v75;
      *(v52 + 40) = v78;
      v53 = *(v76 + 3);
      v54 = *(v76 + 4);
      v55 = __swift_project_boxed_opaque_existential_1(v76, v53);
      MEMORY[0x1EEE9AC00](v55, v56);
      MEMORY[0x1EEE9AC00](v57, v58);
      *(&v63 - 4) = sub_1D5B4AA6C;
      *(&v63 - 3) = 0;
      v61 = sub_1D66C9E34;
      v62 = v50;
      LOBYTE(v53) = sub_1D5D2F7A4(v49, sub_1D615B49C, v59, sub_1D615B4A4, (&v63 - 6), v53, v54);

      if ((v53 & 1) == 0)
      {
        sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v48, sub_1D66C9D0C);
      }

      v78 = v75;
      v79 = 0;
      v80 = v71;
      sub_1D5C34D84(0, &qword_1EC887750, &type metadata for FormatURLComponent, MEMORY[0x1E69E62F8]);
      sub_1D66C9EB0();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v48, sub_1D66C9D0C);
}

uint64_t sub_1D65D6A04()
{
  v1 = 0x6E656E6F706D6F63;
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
    return 0x4C525565736162;
  }
}

uint64_t sub_1D65D6A5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CB334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D6A94(uint64_t a1)
{
  v2 = sub_1D66C9BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D6AD0(uint64_t a1)
{
  v2 = sub_1D66C9BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatURLParameterOptionModifier.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C9F4C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5C6B390(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF24E28, sub_1D5C6B390, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatURLParameterOptionModifier, v16, v18, v13, &type metadata for FormatURLParameterOptionModifier, v16, &type metadata for FormatVersions.JazzkonG, v14, v11, v17, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD18);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v12;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v45 = 0;
  v24 = swift_allocObject();
  v44[2] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v45;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D6708C10;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66C9FE0(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF02D48, sub_1D66C9FE0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[1] = v29;
  v30 = sub_1D72647CC();
  v45 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v45;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D6708C10;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
    sub_1D6670830();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66C9F4C);
}

void sub_1D65D703C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D65D7130(uint64_t a1)
{
  v2 = sub_1D5C6B480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D716C(uint64_t a1)
{
  v2 = sub_1D5C6B480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatUnboundValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v63 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v66 = &v57 - v8;
  v65 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10, v9);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v71 = &v57 - v15;
  v72 = v14;
  v74 = v16;
  *&v75 = v16;
  v67 = v17;
  v68 = v18;
  *(&v75 + 1) = v17;
  v76 = v14;
  v77 = v18;
  v19 = _s10CodingKeysOMa_15(255, &v75);
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *&v75 = v19;
  *(&v75 + 1) = WitnessTable;
  v69 = v21;
  v70 = WitnessTable;
  v76 = v21;
  v77 = v22;
  v23 = type metadata accessor for FormatCodingKeysContainer(255, &v75);
  swift_getWitnessTable();
  v24 = sub_1D726435C();
  v73 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v57 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v78;
  sub_1D7264B0C();
  v29 = v28;
  if (v28)
  {
    goto LABEL_13;
  }

  v58 = v22;
  v59 = 0;
  v60 = v27;
  v78 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = sub_1D7264AFC();
  v31 = Dictionary<>.errorOnUnknownKeys.getter(v30);

  if ((v31 & 1) == 0)
  {
LABEL_10:
    v75 = 0uLL;
    LOBYTE(v76) = 0;
    v47 = v71;
    v46 = v72;
    v48 = v78;
    v50 = v59;
    v49 = v60;
    sub_1D726431C();
    if (!v50)
    {
      v75 = xmmword_1D728CF30;
      LOBYTE(v76) = 0;
      v51 = v67;
      v52 = v66;
      sub_1D726431C();
      (*(v73 + 8))(v49, v48);
      v53 = v47;
      v54 = v61;
      v55 = v74;
      (*(v65 + 32))(v61, v53, v74);
      v56 = v62;
      (*(v63 + 32))(v62, v52, v51);
      sub_1D714193C(v54, v56, v55, v51, v46, v68, v64);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v73 + 8))(v49, v48);
    v29 = v50;
LABEL_13:
    sub_1D61E4FBC(a1, v29);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v33 = (sub_1D726433C() + 48);
  v34 = v19;
  v36 = v69;
  v35 = v70;
  while (1)
  {
    if (v32 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v37 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v37 & 1) == 0)
    {
      break;
    }

    v39 = *v33;
    v75 = *(v33 - 1);
    LOBYTE(v76) = v39;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_16;
    }

    v40 = sub_1D6AFC82C(v23);
    ++v32;
    v33 += 24;
    if (v41)
    {
      v42 = v40;
      v43 = v41;

      v44 = sub_1D6AFC690(v34, v35, v36, v58);
      sub_1D5E2D970();
      v29 = swift_allocError();
      *v45 = v42;
      *(v45 + 8) = v43;
      *(v45 + 16) = v44;
      *(v45 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v73 + 8))(v60, v78);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatUnboundValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v50 = &v37 - v9;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 40);
  v41 = *(a2 + 32);
  v42 = v11;
  *&v47 = v11;
  *(&v47 + 1) = v10;
  v38 = v12;
  v39 = v10;
  v48 = v41;
  v49 = v12;
  v13 = _s10CodingKeysOMa_15(255, &v47);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v47 = v13;
  *(&v47 + 1) = WitnessTable;
  v48 = v15;
  v49 = v16;
  v17 = type metadata accessor for FormatCodingKeysContainer(255, &v47);
  v18 = swift_getWitnessTable();
  v19 = sub_1D726446C();
  v20 = swift_getWitnessTable();
  v46 = type metadata accessor for VersionedKeyedEncodingContainer(0, v19, v20, v21);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v22);
  v24 = &v37 - v23;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D5D2EE70(a2, v17, v27, v25, a2, v17, &type metadata for FormatVersions.JazzkonG, v26, v24, v18, &off_1F51F6BF8);
  v47 = 0uLL;
  LOBYTE(v48) = 0;
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD18);
  v30 = *(*(v28 - 8) + 16);
  v31 = v50;
  v30(v50, v29, v28);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v32 = v44;
  sub_1D5D38930(v45, &v47, v31, sub_1D5B4AA6C, 0, v46, v42, *(v41 + 16));
  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  if (v32)
  {
    return (*(v43 + 8))(v24, v46);
  }

  v34 = *(a2 + 52);
  v47 = xmmword_1D728CF30;
  LOBYTE(v48) = 0;
  v35 = v40;
  v30(v40, v29, v28);
  swift_storeEnumTagMultiPayload();
  v36 = v46;
  sub_1D5D38930(v45 + v34, &v47, v35, sub_1D5B4AA6C, 0, v46, v39, *(v38 + 16));
  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return (*(v43 + 8))(v24, v36);
}

uint64_t sub_1D65D7C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6962 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E756F626E75 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D65D7D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v5 = a5(255, v9);
  sub_1D72644CC();
  swift_allocObject();
  v6 = sub_1D726270C();
  *v7 = 256;
  *(v7 + 2) = 2;
  return sub_1D5BFCB60(v6, v5);
}

uint64_t sub_1D65D7DA0(char a1)
{
  if (!a1)
  {
    return 0x676E69646E6962;
  }

  if (a1 == 1)
  {
    return 0x646E756F626E75;
  }

  return 1885433183;
}

uint64_t sub_1D65D7E08(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_1D7264A5C();
}

uint64_t sub_1D65D7EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1D65D7EE8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D7F5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65D7FB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatUnderline.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66CA0F0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66CA184(0);
  sub_1D5B58B84(&qword_1EDF24B58, sub_1D66CA184, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x656C797473, 0xE500000000000000, 0x726F6C6F63, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D66CA304();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726427C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatUnderline.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v95 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v86 - v8;
  sub_1D66CA358(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v93 = *(v1 + 1);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66CA184(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24B58, sub_1D66CA184, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatUnderline, v19, v21, v16, &type metadata for FormatUnderline, v19, &type metadata for FormatVersions.AzdenE, v17, v14, v20, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  *&v94 = v23;
  v91 = v24 + 16;
  v92 = v25;
  v25(v9);
  v90 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v99 = 0uLL;
  v100 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = v14;
  v28 = *v26;
  v29 = *(v26 + 1);
  LOBYTE(v101) = 0;
  v30 = swift_allocObject();
  v32 = v30;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v101;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  v33 = v11;
  v96 = v27;
  if (v15 == 8)
  {

    goto LABEL_5;
  }

  v89 = v86;
  LOBYTE(v101) = v15;
  MEMORY[0x1EEE9AC00](v30, v31);
  v88 = &v86[-6];
  v86[-4] = sub_1D5B4AA6C;
  v86[-3] = 0;
  v84 = sub_1D6708C14;
  v85 = v32;
  v98 = 0;
  v40 = swift_allocObject();
  v41 = v28;
  v42 = v40;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v98;
  v87 = v41;
  *(v40 + 40) = v41;
  *(v40 + 48) = v29;
  sub_1D66CA3EC(0);
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF02A08, sub_1D66CA3EC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v86[1] = v45;
  v86[2] = v44;
  v46 = v33;
  v47 = sub_1D72647CC();
  v98 = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v98;
  v49 = &v27[*(v46 + 36)];
  v50 = *(v49 + 3);
  v51 = *(v49 + 4);
  v52 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = v88;
  v86[-4] = sub_1D615B4A4;
  v86[-3] = v56;
  v84 = sub_1D6708C14;
  v85 = v42;
  v57 = v97;
  v59 = sub_1D5D2F7A4(v9, sub_1D615B49C, v58, sub_1D615B4A4, &v86[-6], v50, v51);
  v97 = v57;
  if (!v57)
  {
    v79 = v59;

    if (v79)
    {
      sub_1D66CA4FC();
      v80 = v97;
      sub_1D72647EC();
      v97 = v80;
      v28 = v87;
      if (v80)
      {
        sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

        goto LABEL_9;
      }

      v33 = v46;
    }

    else
    {
      v33 = v46;
      v28 = v87;
    }

LABEL_5:
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v34 = v95;
    (v92)(v95, v94, v22);
    swift_storeEnumTagMultiPayload();
    v94 = xmmword_1D728CF30;
    v99 = xmmword_1D728CF30;
    v100 = 0;
    LOBYTE(v101) = 0;
    v35 = swift_allocObject();
    v37 = v35;
    *(v35 + 16) = v94;
    *(v35 + 32) = v101;
    *(v35 + 40) = v28;
    *(v35 + 48) = v29;
    v38 = v93;
    if ((~v93 & 0xF000000000000007) == 0)
    {

      v39 = v96;
LABEL_20:
      sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
      v60 = v39;
      return sub_1D5D2CFE8(v60, sub_1D66CA358);
    }

    v92 = v86;
    v101 = v93;
    MEMORY[0x1EEE9AC00](v35, v36);
    v86[-4] = sub_1D5B4AA6C;
    v86[-3] = 0;
    v84 = sub_1D6708C14;
    v85 = v37;
    v98 = 0;
    v61 = v33;
    v62 = swift_allocObject();
    *(v62 + 16) = v94;
    *(v62 + 32) = v98;
    *(v62 + 40) = v28;
    *(v62 + 48) = v29;
    swift_retain_n();
    sub_1D5CFCFAC(v38);
    sub_1D66CA3EC(0);
    v64 = v63;
    sub_1D5B58B84(&qword_1EDF02A08, sub_1D66CA3EC, MEMORY[0x1E69E6F60]);
    v65 = v96;
    v93 = v64;
    v66 = sub_1D72647CC();
    v98 = 0;
    v67 = v34;
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v94;
    *(v68 + 40) = v98;
    v69 = (v65 + *(v61 + 36));
    v70 = v69[3];
    v71 = v69[4];
    v72 = __swift_project_boxed_opaque_existential_1(v69, v70);
    MEMORY[0x1EEE9AC00](v72, v73);
    MEMORY[0x1EEE9AC00](v74, v75);
    v86[-4] = sub_1D615B4A4;
    v86[-3] = &v86[-6];
    v84 = sub_1D66CA480;
    v85 = v62;
    v76 = v97;
    v78 = sub_1D5D2F7A4(v67, sub_1D615B49C, v77, sub_1D615B4A4, &v86[-6], v70, v71);
    v97 = v76;
    if (v76)
    {
    }

    else
    {
      v81 = v78;

      if (v81)
      {
        sub_1D5B55CBC();
        v39 = v96;
        v82 = v97;
        sub_1D72647EC();

        v34 = v95;
        v97 = v82;
        goto LABEL_20;
      }
    }

    v34 = v95;
    v39 = v96;
    goto LABEL_20;
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

LABEL_9:
  v60 = v96;
  return sub_1D5D2CFE8(v60, sub_1D66CA358);
}

uint64_t sub_1D65D8C78()
{
  v1 = 0x726F6C6F63;
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
    return 0x656C797473;
  }
}

uint64_t sub_1D65D8CC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66CB454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65D8CFC(uint64_t a1)
{
  v2 = sub_1D66CA25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D8D38(uint64_t a1)
{
  v2 = sub_1D66CA25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatUnderlineStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v48 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v47 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v46 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v45 = &v43 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44 = &v43 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v43 - v29;
  v52 = *v1;
  v31 = a1[3];
  v32 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD98);
  v35 = *(*(v33 - 8) + 16);
  v35(v30, v34, v33);
  v36 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v37 = v55;
  sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v31, v32);
  if (v37)
  {
    return sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  }

  v43 = v36;
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v39 = v53;
  v40 = v53[3];
  v55 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v40);
  if (v52 > 3)
  {
    if (v52 <= 5)
    {
      v42 = v48;
      v35(v48, v34, v33);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v40, v55);
      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      sub_1D7264B3C();
      goto LABEL_15;
    }

    if (v52 == 6)
    {
      v41 = v50;
      v35(v50, v34, v33);
    }

    else
    {
      v41 = v51;
      v35(v51, v34, v33);
    }
  }

  else if (v52 > 1)
  {
    v41 = v46;
    v35(v46, v34, v33);
  }

  else
  {
    v41 = v44;
    v35(v44, v34, v33);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v40, v55);
  sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_1D7264B3C();
LABEL_15:
  __swift_mutable_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t FormatUserBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatUserBinding.Command, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatUserBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v21, v18, v22, &off_1F51F6AF8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE50);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6422E78(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE50);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6422E78(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE50);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6422E78(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatUserInterfaceStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCC90);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v27;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v27);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t FormatUserInterfaceValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  v11 = *(a2 + 24);
  v43 = *(a2 + 16);
  v13 = _s10CodingKeysOMa_13(255, v43, v11, v12);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v45 = v13;
  *(&v45 + 1) = WitnessTable;
  v46 = v15;
  v47 = v16;
  v17 = type metadata accessor for FormatCodingKeysContainer(255, &v45);
  v18 = swift_getWitnessTable();
  v19 = sub_1D726446C();
  v20 = swift_getWitnessTable();
  v48 = type metadata accessor for VersionedKeyedEncodingContainer(0, v19, v20, v21);
  v41 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v22);
  v24 = &v37 - v23;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v39 = a2;
  sub_1D5D2EE70(a2, v17, v27, v25, a2, v17, &type metadata for FormatVersions.JazzkonC, v26, v24, v18, &off_1F51F6C78);
  v45 = 0uLL;
  LOBYTE(v46) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(*(v28 - 8) + 16);
  v38 = v29;
  v30(v10);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v31 = *(v11 + 16);
  v32 = v42;
  sub_1D5D38930(v44, &v45, v10, sub_1D5B4AA6C, 0, v48, v43, v31);
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  if (v32)
  {
    return (*(v41 + 8))(v24, v48);
  }

  v34 = v40;
  v35 = *(v39 + 36);
  v45 = xmmword_1D728CF30;
  LOBYTE(v46) = 0;
  (v30)(v40, v38, v28);
  swift_storeEnumTagMultiPayload();
  v36 = v48;
  sub_1D5D38930(v44 + v35, &v45, v34, sub_1D5B4AA6C, 0, v48, v43, v31);
  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return (*(v41 + 8))(v24, v36);
}

uint64_t sub_1D65DA328(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D65DA43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v3 = a3(255, a1, a2);
  sub_1D72644CC();
  swift_allocObject();
  v4 = sub_1D726270C();
  *v5 = 256;
  *(v5 + 2) = 2;

  return sub_1D5BFCB60(v4, v3);
}

uint64_t sub_1D65DA4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1D7264A5C();
}

uint64_t sub_1D65DA510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65DA328(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65DA540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_13);
  *a2 = result;
  return result;
}

uint64_t sub_1D65DA584(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65DA5D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatVBoxNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v265 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v270 = &v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v271 = &v265 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v272 = &v265 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v273 = &v265 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v274 = &v265 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v280 = &v265 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v278 = &v265 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v277 = &v265 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v265 - v35;
  sub_1D66CB564(0);
  v284 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v265 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1D5C71758(0);
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF24BE8, sub_1D5C71758, &unk_1D7321584);
  v285 = v40;
  sub_1D5D2EE70(v4, v44, v46, v41, v4, v44, &type metadata for FormatVersions.JazzkonC, v42, v40, v45, &off_1F51F6C78);
  swift_beginAccess();
  v47 = v2[2];
  v48 = v2[3];
  v281 = v2;
  v49 = qword_1EDF31EB0;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  v52 = *(v50 - 8);
  v53 = *(v52 + 16);
  v54 = (v52 + 16);
  *&v283 = v51;
  v53(v36);
  v282 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v55 = sub_1D725895C();
  v56 = (*(*(v55 - 8) + 48))(v8, 1, v55);
  v276 = v53;
  v279 = v54;
  v275 = v50;
  if (v56 == 1)
  {
    v268 = v47;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v57 = v284;
    v58 = v285;
    v59 = &v285[*(v284 + 44)];
    v61 = *v59;
    v60 = *(v59 + 1);
    LOBYTE(v287) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = v287;
    *(v62 + 40) = v61;
    *(v62 + 48) = v60;
    sub_1D66CB5F8(0);
    v64 = v63;
    v65 = sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8, MEMORY[0x1E69E6F60]);

    v269 = v64;
    v66 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v67 = swift_allocObject();
    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    *(v67 + 16) = v66;
    *(v67 + 40) = v287;
    v68 = (v58 + *(v57 + 36));
    v69 = v68[3];
    v70 = v68[4];
    v71 = __swift_project_boxed_opaque_existential_1(v68, v69);
    MEMORY[0x1EEE9AC00](v71, v72);
    MEMORY[0x1EEE9AC00](v73, v74);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v62;
    v75 = v286;
    v77 = sub_1D5D2F7A4(v36, sub_1D615B49C, v76, sub_1D615B4A4, (&v265 - 6), v69, v70);
    if (v75)
    {
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

LABEL_20:
      v113 = v58;
      return sub_1D5D2CFE8(v113, sub_1D66CB564);
    }

    v133 = v77;
    v286 = v65;

    if (v133)
    {
      v287 = 0uLL;
      LOBYTE(v288) = 0;
      v299 = v268;
      v300 = v48;
      sub_1D72647EC();

      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      v50 = v275;
      v78 = v284;
      v286 = 0;
      v53 = v276;
      goto LABEL_8;
    }

    v286 = 0;
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    v50 = v275;
    v53 = v276;
  }

  else
  {
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v78 = v284;
LABEL_8:
  v79 = v277;
  v80 = v283;
  (v53)(v277, v283, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  (v53)(v79, v80, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  v81 = v281;
  swift_beginAccess();
  v82 = v81[8];
  v83 = v278;
  (v53)();
  swift_storeEnumTagMultiPayload();
  if (((v82 >> 59) & 0x1E | (v82 >> 2) & 1) == 0x16 && v82 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
    v84 = v286;
    v85 = v280;
  }

  else
  {
    v58 = v285;
    v114 = &v285[*(v78 + 44)];
    v116 = *v114;
    v115 = *(v114 + 1);
    LOBYTE(v287) = 0;
    v117 = swift_allocObject();
    v277 = xmmword_1D72BAA60;
    *(v117 + 16) = xmmword_1D72BAA60;
    *(v117 + 32) = v287;
    *(v117 + 40) = v116;
    *(v117 + 48) = v115;
    sub_1D5C82CD8(v82);
    sub_1D66CB5F8(0);
    v119 = v118;
    sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8, MEMORY[0x1E69E6F60]);

    v269 = v119;
    v120 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = v277;
    *(v121 + 40) = v287;
    v122 = (v58 + *(v78 + 36));
    v123 = v122[3];
    v124 = v122[4];
    v125 = __swift_project_boxed_opaque_existential_1(v122, v123);
    MEMORY[0x1EEE9AC00](v125, v126);
    MEMORY[0x1EEE9AC00](v127, v128);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v117;
    v129 = v286;
    v131 = sub_1D5D2F7A4(v83, sub_1D615B49C, v130, sub_1D615B4A4, (&v265 - 6), v123, v124);
    v132 = v83;
    v84 = v129;
    if (v129)
    {

      sub_1D5C92A8C(v82);
      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
      goto LABEL_20;
    }

    v137 = v131;

    if (v137)
    {
      v287 = v277;
      LOBYTE(v288) = 0;
      v297 = v82;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v81 = v281;
      v53 = v276;
      v85 = v280;
      v78 = v284;
      sub_1D5C92A8C(v297);
      sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
      v50 = v275;
    }

    else
    {
      sub_1D5C92A8C(v82);
      sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
      v81 = v281;
      v50 = v275;
      v53 = v276;
      v85 = v280;
      v78 = v284;
    }
  }

  v286 = v84;
  v86 = v81[10];
  v268 = v81[9];
  *&v277 = v86;
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v87 = __swift_project_value_buffer(v50, qword_1EDFFCE98);
  (v53)(v85, v87, v50);
  swift_storeEnumTagMultiPayload();
  v278 = xmmword_1D72BAA70;
  v287 = xmmword_1D72BAA70;
  LOBYTE(v288) = 0;
  v88 = *(v78 + 44);
  v89 = v285;
  v90 = &v285[v88];
  v92 = *v90;
  v91 = *(v90 + 1);
  LOBYTE(v297) = 0;
  v93 = swift_allocObject();
  v95 = v93;
  *(v93 + 16) = v278;
  *(v93 + 32) = v297;
  *(v93 + 40) = v92;
  *(v93 + 48) = v91;
  v269 = v92;
  if (v277)
  {
    v267 = &v265;
    v297 = v268;
    v298 = v277;
    MEMORY[0x1EEE9AC00](v93, v94);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v95;
    LOBYTE(v296) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v278;
    *(v96 + 32) = v296;
    *(v96 + 40) = v92;
    *(v96 + 48) = v91;
    sub_1D66CB5F8(0);
    v98 = v97;
    sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    *&v277 = v98;
    v99 = sub_1D72647CC();
    LOBYTE(v296) = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = v278;
    *(v100 + 40) = v296;
    v101 = (v89 + *(v284 + 36));
    v102 = v101[3];
    v103 = v101[4];
    v104 = __swift_project_boxed_opaque_existential_1(v101, v102);
    MEMORY[0x1EEE9AC00](v104, v105);
    MEMORY[0x1EEE9AC00](v106, v107);
    *(&v265 - 4) = sub_1D615B4A4;
    *(&v265 - 3) = (&v265 - 6);
    v263 = sub_1D6708A70;
    v264 = v96;
    v108 = v280;
    v109 = v286;
    v111 = sub_1D5D2F7A4(v280, sub_1D615B49C, v110, sub_1D615B4A4, (&v265 - 6), v102, v103);
    if (v109)
    {

      v112 = v285;

      sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
      v113 = v112;
      return sub_1D5D2CFE8(v113, sub_1D66CB564);
    }

    v138 = v111;

    if (v138)
    {
      sub_1D6689AF0();
      sub_1D72647EC();
      v81 = v281;
      v50 = v275;
      v53 = v276;
      v135 = v274;
      v286 = 0;
      v136 = v91;

      sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);
      v286 = 0;
      v81 = v281;
      v50 = v275;
      v53 = v276;
      v136 = v91;
      v135 = v274;
    }
  }

  else
  {

    sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);

    v135 = v274;
    v136 = v91;
  }

  swift_beginAccess();
  v139 = v81[11];
  (v53)(v135, v283, v50);
  swift_storeEnumTagMultiPayload();
  v140 = *(v139 + 16);
  v266 = v136;
  if (!v140)
  {
    sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
    goto LABEL_37;
  }

  LOBYTE(v287) = 0;
  v141 = swift_allocObject();
  v280 = xmmword_1D72BAA80;
  *(v141 + 16) = xmmword_1D72BAA80;
  *(v141 + 32) = v287;
  *(v141 + 40) = v269;
  *(v141 + 48) = v136;
  sub_1D66CB5F8(0);
  v143 = v142;
  v144 = sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8, MEMORY[0x1E69E6F60]);

  v145 = v285;
  *&v278 = v143;
  v146 = sub_1D72647CC();
  LOBYTE(v287) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = v146;
  *(v147 + 24) = v280;
  *(v147 + 40) = v287;
  v148 = (v145 + *(v284 + 36));
  v149 = v148[3];
  v150 = v148[4];
  v151 = __swift_project_boxed_opaque_existential_1(v148, v149);
  MEMORY[0x1EEE9AC00](v151, v152);
  MEMORY[0x1EEE9AC00](v153, v154);
  *(&v265 - 4) = sub_1D5B4AA6C;
  *(&v265 - 3) = 0;
  v263 = sub_1D6708A70;
  v264 = v141;
  v155 = v286;
  v157 = sub_1D5D2F7A4(v135, sub_1D615B49C, v156, sub_1D615B4A4, (&v265 - 6), v149, v150);
  if (!v155)
  {
    v158 = v157;
    v286 = v144;

    if (v158)
    {
      v287 = v280;
      LOBYTE(v288) = 0;
      v296 = v139;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v81 = v281;
      v136 = v266;
      v286 = 0;

      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
      v50 = v275;
    }

    else
    {
      v286 = 0;
      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

      v81 = v281;
      v50 = v275;
      v136 = v266;
    }

LABEL_37:
    swift_beginAccess();
    v159 = v81[12];
    v160 = v273;
    (v276)(v273, v283, v50);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v287) = 0;
    v161 = swift_allocObject();
    v283 = xmmword_1D72BAA90;
    *(v161 + 16) = xmmword_1D72BAA90;
    *(v161 + 32) = v287;
    *(v161 + 40) = v269;
    *(v161 + 48) = v136;
    sub_1D66CB5F8(0);
    v163 = v162;
    v164 = sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8, MEMORY[0x1E69E6F60]);

    *&v280 = v159;

    v165 = v285;
    *&v278 = v163;
    v166 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = v166;
    *(v167 + 24) = v283;
    *(v167 + 40) = v287;
    v168 = (v165 + *(v284 + 36));
    v169 = v168[3];
    v170 = v168[4];
    v171 = __swift_project_boxed_opaque_existential_1(v168, v169);
    MEMORY[0x1EEE9AC00](v171, v172);
    MEMORY[0x1EEE9AC00](v173, v174);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v161;
    v175 = v286;
    v177 = sub_1D5D2F7A4(v160, sub_1D615B49C, v176, sub_1D615B4A4, (&v265 - 6), v169, v170);
    v286 = v175;
    if (v175)
    {
      sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

      v113 = v165;
      return sub_1D5D2CFE8(v113, sub_1D66CB564);
    }

    v178 = v177;
    v179 = v280;
    *&v277 = v168;
    v284 = v164;

    if (v178)
    {
      v287 = v283;
      LOBYTE(v288) = 0;
      v295 = v179;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v180 = v285;
      v181 = v286;
      sub_1D72647EC();
      v286 = v181;
      v182 = v281;
      v183 = v275;
      v184 = v273;
      if (v181)
      {

        v185 = v184;
LABEL_65:
        sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);
        v113 = v180;
        return sub_1D5D2CFE8(v113, sub_1D66CB564);
      }

      sub_1D5D2CFE8(v184, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);

      v182 = v281;
      v183 = v275;
    }

    swift_beginAccess();
    v186 = *(v182 + 104);
    sub_1D5B58478(0);
    v188 = *(v187 + 48);
    v189 = v272;
    v190 = &v272[*(v187 + 64)];
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v191 = __swift_project_value_buffer(v183, qword_1EDFFCD98);
    v192 = v276;
    (v276)(v189, v191, v183);
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    *&v283 = __swift_project_value_buffer(v183, qword_1EDFFCE50);
    v192(v189 + v188);
    *v190 = 0;
    *(v190 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    if (v186)
    {
      LOBYTE(v287) = 0;
      v193 = swift_allocObject();
      v280 = xmmword_1D72BAAA0;
      *(v193 + 16) = xmmword_1D72BAAA0;
      *(v193 + 32) = v287;
      *(v193 + 40) = v269;
      *(v193 + 48) = v266;

      v194 = sub_1D72647CC();
      LOBYTE(v287) = 0;
      v195 = swift_allocObject();
      *(v195 + 16) = v194;
      *(v195 + 24) = v280;
      *(v195 + 40) = v287;
      v196 = v277;
      v197 = *(v277 + 24);
      v198 = *(v277 + 32);
      v199 = __swift_project_boxed_opaque_existential_1(v277, v197);
      MEMORY[0x1EEE9AC00](v199, v200);
      MEMORY[0x1EEE9AC00](v201, v202);
      *(&v265 - 4) = sub_1D5B4AA6C;
      *(&v265 - 3) = 0;
      v263 = sub_1D6708A70;
      v264 = v193;
      v203 = v286;
      v205 = sub_1D5D2F7A4(v189, sub_1D615B49C, v204, sub_1D615B4A4, (&v265 - 6), v197, v198);
      v286 = v203;
      if (v203)
      {
        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);

LABEL_57:
        v113 = v285;
        return sub_1D5D2CFE8(v113, sub_1D66CB564);
      }

      v223 = v205;

      if (v223)
      {
        v287 = v280;
        LOBYTE(v288) = 0;
        v294[0] = 1;
        v180 = v285;
        v224 = v286;
        sub_1D72647EC();
        v286 = v224;
        v182 = v281;
        v206 = v271;
        v183 = v275;
        if (v224)
        {
LABEL_64:
          v185 = v189;
          goto LABEL_65;
        }

        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
        v182 = v281;
        v206 = v271;
        v183 = v275;
      }
    }

    else
    {
      sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
      v206 = v271;
      v196 = v277;
    }

    swift_beginAccess();
    v208 = v182[14];
    v207 = v182[15];
    v209 = *(v182 + 128);
    (v276)(v206, v283, v183);
    swift_storeEnumTagMultiPayload();
    if (v209)
    {
      sub_1D5C75A4C(v208, v207, 1);

      sub_1D5D2F2C8(v208, v207, 1);
      sub_1D5D2F2C8(0, 0, 0);
    }

    else
    {
      sub_1D5D2F2C8(v208, v207, 0);
      sub_1D5D2F2C8(0, 0, 0);
      if ((v208 & 1) == 0)
      {
        v227 = v206;
        goto LABEL_67;
      }
    }

    *&v277 = v207;
    LOBYTE(v287) = 0;
    v210 = swift_allocObject();
    v283 = xmmword_1D72BAAB0;
    *(v210 + 16) = xmmword_1D72BAAB0;
    *(v210 + 32) = v287;
    *(v210 + 40) = v269;
    *(v210 + 48) = v266;

    v211 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v212 = v206;
    v213 = swift_allocObject();
    *(v213 + 16) = v211;
    *(v213 + 24) = v283;
    *(v213 + 40) = v287;
    v214 = v196[3];
    v215 = v196[4];
    v216 = __swift_project_boxed_opaque_existential_1(v196, v214);
    *&v280 = &v265;
    MEMORY[0x1EEE9AC00](v216, v217);
    MEMORY[0x1EEE9AC00](v218, v219);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v210;
    v220 = v286;
    v222 = sub_1D5D2F7A4(v212, sub_1D615B49C, v221, sub_1D615B4A4, (&v265 - 6), v214, v215);
    v286 = v220;
    if (v220)
    {
      sub_1D5D2CFE8(v212, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2F2C8(v208, v277, v209);
      goto LABEL_57;
    }

    v225 = v222;

    if ((v225 & 1) == 0)
    {
      sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2F2C8(v208, v277, v209);
      v182 = v281;
LABEL_70:
      v228 = v182[17];
      v281 = v182[18];
      v229 = v182[19];
      v282 = v182[20];
      v231 = v182[21];
      v230 = v182[22];
      v232 = v270;
      v233 = v269;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v234 = v275;
      v235 = __swift_project_value_buffer(v275, qword_1EDFFCE38);
      (v276)(v232, v235, v234);
      swift_storeEnumTagMultiPayload();
      v283 = xmmword_1D72BAAC0;
      v292 = xmmword_1D72BAAC0;
      v293 = 0;
      LOBYTE(v287) = 0;
      v237 = swift_allocObject();
      *(v237 + 16) = v283;
      *(v237 + 32) = v287;
      *(v237 + 40) = v233;
      v238 = v266;
      *(v237 + 48) = v266;
      if (v228)
      {
        v239 = v228;
        *&v280 = &v265;
        *&v287 = v228;
        v240 = v281;
        *(&v287 + 1) = v281;
        v241 = v229;
        v288 = v229;
        v242 = v282;
        v289 = v282;
        v290 = v231;
        v291 = v230;
        *&v277 = v239;
        MEMORY[0x1EEE9AC00](v238, v236);
        v243 = v196;
        v245 = v244;
        v279 = &v265 - 6;
        *(&v265 - 4) = sub_1D5B4AA6C;
        *(&v265 - 3) = 0;
        v263 = sub_1D6708A70;
        v264 = v237;
        v301 = 0;
        v246 = swift_allocObject();
        *(v246 + 16) = v283;
        *(v246 + 32) = v301;
        *(v246 + 40) = v269;
        *(v246 + 48) = v245;
        swift_retain_n();
        sub_1D5EB1D80(v277, v240, v241, v242, v231, v230);
        v247 = sub_1D72647CC();
        v301 = 0;
        v248 = swift_allocObject();
        *(v248 + 16) = v247;
        *(v248 + 24) = v283;
        *(v248 + 40) = v301;
        v249 = v243[3];
        v250 = v243[4];
        v251 = __swift_project_boxed_opaque_existential_1(v243, v249);
        MEMORY[0x1EEE9AC00](v251, v252);
        MEMORY[0x1EEE9AC00](v253, v254);
        v255 = v279;
        *(&v265 - 4) = sub_1D615B4A4;
        *(&v265 - 3) = v255;
        v263 = sub_1D6708A70;
        v264 = v246;
        v256 = v286;
        v258 = sub_1D5D2F7A4(v270, sub_1D615B49C, v257, sub_1D615B4A4, (&v265 - 6), v249, v250);
        if (v256)
        {

          v259 = v285;
LABEL_78:
          v261 = v290;

          sub_1D5CBF568(v261);

          sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
LABEL_82:
          v113 = v259;
          return sub_1D5D2CFE8(v113, sub_1D66CB564);
        }

        v260 = v258;

        if (v260)
        {
          sub_1D6659A24();
          v259 = v285;
          sub_1D72647EC();

          goto LABEL_78;
        }

        v262 = v290;

        sub_1D5CBF568(v262);

        sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
      }

      v259 = v285;
      goto LABEL_82;
    }

    v287 = v283;
    LOBYTE(v288) = 0;
    *&v292 = v208;
    *(&v292 + 1) = v277;
    v293 = v209;
    sub_1D60ED320();
    v180 = v285;
    v226 = v286;
    sub_1D72647EC();
    v286 = v226;
    v182 = v281;
    v189 = v271;
    if (v226)
    {
      sub_1D5D2F2C8(v292, *(&v292 + 1), v293);
      goto LABEL_64;
    }

    sub_1D5D2F2C8(v292, *(&v292 + 1), v293);
    v227 = v189;
LABEL_67:
    sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);
    goto LABEL_70;
  }

  sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v285, sub_1D66CB564);
}
uint64_t sub_1D5170A64()
{
  sub_1D56162D8();
  sub_1D517059C(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5170AA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0DB8, &qword_1D563C5A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v39 = type metadata accessor for StorePlatformSocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v37 = v17;
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51711F4();
  v18 = v36;
  sub_1D5616398();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v36 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  LOBYTE(v40) = 0;
  sub_1D5171308(&qword_1EDD531B8, MEMORY[0x1E6975DC0]);
  sub_1D5615F78();
  v19 = v37;
  sub_1D4F39A1C(v14, v37, &qword_1EC7EB5B8, &unk_1D56206A0);
  LOBYTE(v40) = 1;
  v20 = sub_1D5615F38();
  v21 = v39;
  v22 = (v19 + *(v39 + 20));
  *v22 = v20;
  v22[1] = v23;
  v42 = 2;
  sub_1D4F89C9C();
  sub_1D5615FD8();
  v24 = v41;
  v25 = (v19 + v21[6]);
  *v25 = v40;
  v25[1] = v24;
  OUTLINED_FUNCTION_7_70(3);
  *(v19 + v21[7]) = sub_1D5615F48();
  OUTLINED_FUNCTION_7_70(4);
  *(v19 + v21[8]) = sub_1D5615F48();
  OUTLINED_FUNCTION_7_70(5);
  v26 = sub_1D5615F38();
  v27 = (v19 + v21[9]);
  *v27 = v26;
  v27[1] = v28;
  sub_1D560C0A8();
  LOBYTE(v40) = 6;
  OUTLINED_FUNCTION_0_115();
  sub_1D5171478(v29, v30, MEMORY[0x1E6968FD0]);
  sub_1D5615F78();
  sub_1D4F39A1C(v10, v19 + v21[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v40) = 7;
  v31 = v36;
  sub_1D5615F78();
  v32 = OUTLINED_FUNCTION_2_95();
  v33(v32);
  sub_1D4F39A1C(v31, v19 + *(v39 + 44), &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5171248(v19, v35[0]);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1D51712AC(v19);
}

uint64_t sub_1D51710B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D516FF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51710DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D51701D0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5171104(uint64_t a1)
{
  v2 = sub_1D51711F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5171140(uint64_t a1)
{
  v2 = sub_1D51711F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51711B8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D517059C(v2);
  return sub_1D5616328();
}

unint64_t sub_1D51711F4()
{
  result = qword_1EC7F0DC0;
  if (!qword_1EC7F0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DC0);
  }

  return result;
}

uint64_t sub_1D5171248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformSocialProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51712AC(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformSocialProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5171308(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v4 = MEMORY[0x1E6975968];
    sub_1D5171478(&qword_1EDD533A8, MEMORY[0x1E6975968], MEMORY[0x1E6975988]);
    sub_1D5171478(&qword_1EDD533B0, v4, MEMORY[0x1E6975970]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D51713DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D5171478(a2, MEMORY[0x1E6975968], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5171478(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D51714C0()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C240);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FF18();
}

_BYTE *storeEnumTagSinglePayload for StorePlatformSocialProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D51715E8()
{
  result = qword_1EC7F0DD0;
  if (!qword_1EC7F0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DD0);
  }

  return result;
}

unint64_t sub_1D5171640()
{
  result = qword_1EC7F0DD8;
  if (!qword_1EC7F0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DD8);
  }

  return result;
}

unint64_t sub_1D5171698()
{
  result = qword_1EC7F0DE0;
  if (!qword_1EC7F0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DE0);
  }

  return result;
}

void static CloudUploadedVideo.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v247 = sub_1D56109F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v35);
  v36 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v253 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v43);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_4();
  v257 = v46;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v254 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v49);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  v256 = v51;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0DF8, &unk_1D563C6D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  v259 = v53;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v263 = v54;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  v261 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v58 = OUTLINED_FUNCTION_22(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_2();
  v262 = v60;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_177(v63);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  v268 = v64;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  v266 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v67);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  v267 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8B0, &unk_1D5633390);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_103_9(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v75 = v74;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_114();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v77);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_31();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_45();
  v81 = v28[1];
  v82 = v26[1];
  if (v81)
  {
    if (!v82)
    {
      goto LABEL_31;
    }

    v83 = *v28 == *v26 && v81 == v82;
    if (!v83 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v82)
  {
    goto LABEL_31;
  }

  v239 = v36;
  v271 = v26;
  v240 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v84 = v240[5];
  v85 = *(v79 + 48);
  v241 = v28;
  sub_1D4F39AB0(v28 + v84, v22, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v271 + v84, v22 + v85, &qword_1EC7EB5B8, &unk_1D56206A0);
  v86 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_57(v86, v87, v73);
  if (v83)
  {
    OUTLINED_FUNCTION_57(v22 + v85, 1, v73);
    if (v83)
    {
      sub_1D4E50004(v22, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_20;
    }

LABEL_18:
    v91 = &qword_1EC7EC330;
    v92 = &qword_1D56222C0;
    v93 = v22;
LABEL_30:
    sub_1D4E50004(v93, v91, v92);
    goto LABEL_31;
  }

  sub_1D4F39AB0(v22, v20, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v22 + v85, 1, v73);
  if (v88)
  {
    v89 = OUTLINED_FUNCTION_116();
    v90(v89);
    goto LABEL_18;
  }

  (*(v75 + 32))(v21, v22 + v85, v73);
  sub_1D4F39858();
  v94 = sub_1D5614D18();
  v95 = *(v75 + 8);
  v95(v21, v73);
  v96 = OUTLINED_FUNCTION_116();
  (v95)(v96);
  sub_1D4E50004(v22, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v97 = v240[6];
  v98 = *(v70 + 48);
  v99 = v269;
  OUTLINED_FUNCTION_113(v241 + v97, v269);
  OUTLINED_FUNCTION_113(v271 + v97, v269 + v98);
  v100 = OUTLINED_FUNCTION_67_18();
  OUTLINED_FUNCTION_57(v100, v101, v270);
  if (v83)
  {
    OUTLINED_FUNCTION_57(v269 + v98, 1, v270);
    if (v83)
    {
      sub_1D4E50004(v269, &qword_1EC7EF380, &unk_1D5677480);
      goto LABEL_33;
    }

LABEL_28:
    v91 = &qword_1EC7EF8B0;
    v92 = &unk_1D5633390;
LABEL_29:
    v93 = v99;
    goto LABEL_30;
  }

  sub_1D4F39AB0(v269, v267, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_57(v269 + v98, 1, v270);
  if (v102)
  {
    (*(v268 + 8))(v267, v270);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_81();
  v103(v266, v269 + v98, v270);
  sub_1D5172C14();
  OUTLINED_FUNCTION_85_8();
  v104 = sub_1D5614D18();
  v105 = *(v268 + 8);
  v105(v266, v270);
  v105(v267, v270);
  sub_1D4E50004(v269, &qword_1EC7EF380, &unk_1D5677480);
  if ((v104 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  v106 = v240[7];
  v107 = (v241 + v106);
  v108 = *(v241 + v106 + 8);
  v109 = (v271 + v106);
  v110 = *(v271 + v106 + 8);
  if (v108)
  {
    if (!v110)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v107 != *v109)
    {
      LOBYTE(v110) = 1;
    }

    if (v110)
    {
      goto LABEL_31;
    }
  }

  v111 = v240[8];
  v112 = *(v271 + v111);
  if (*(v241 + v111))
  {
    if (!v112)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    v114 = v113;

    if ((v114 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v112)
  {
    goto LABEL_31;
  }

  v115 = *(v264 + 48);
  v116 = &qword_1EC7EC960;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v117, v118, v119, v120);
  OUTLINED_FUNCTION_94_11();
  v121 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_18(v121, v122);
  if (v83)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EC7EC960 + v115);
    if (v83)
    {
      sub_1D4E50004(&qword_1EC7EC960, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_55;
    }

LABEL_52:
    v91 = &qword_1EC7EC968;
    v92 = &unk_1D5622290;
LABEL_53:
    v93 = v116;
    goto LABEL_30;
  }

  sub_1D4F39AB0(&qword_1EC7EC960, v262, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_43_0(&qword_1EC7EC960 + v115);
  if (v123)
  {
    v124 = OUTLINED_FUNCTION_164_0();
    v125(v124);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_11_18();
  v126(v261, &qword_1EC7EC960 + v115, v265);
  sub_1D4F7BF60();
  OUTLINED_FUNCTION_85_8();
  v127 = sub_1D5614D18();
  v128 = OUTLINED_FUNCTION_82_13(v127);
  v115(v128);
  v129 = OUTLINED_FUNCTION_164_0();
  v115(v129);
  sub_1D4E50004(&qword_1EC7EC960, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v270 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_55:
  v130 = v240[10];
  v131 = *(v271 + v130);
  if (*(v241 + v130))
  {
    if (!v131)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    v133 = v132;

    if ((v133 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v131)
  {
    goto LABEL_31;
  }

  v99 = v259;
  v134 = *(v258 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v135, v136, v137, v138);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v139, v140, v141, v142);
  v143 = OUTLINED_FUNCTION_67_18();
  OUTLINED_FUNCTION_4_18(v143, v144);
  if (v83)
  {
    OUTLINED_FUNCTION_43_0(v259 + v134);
    if (v83)
    {
      sub_1D4E50004(v259, &qword_1EC7EF3A0, &qword_1D5631128);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  sub_1D4F39AB0(v259, v256, &qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_43_0(v259 + v134);
  if (v145)
  {
    v146 = OUTLINED_FUNCTION_164_0();
    v147(v146);
LABEL_68:
    v91 = &qword_1EC7F0DF8;
    v92 = &unk_1D563C6D0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_11_18();
  v148(v254, v259 + v134, v260);
  sub_1D5172B60();
  OUTLINED_FUNCTION_85_8();
  v149 = sub_1D5614D18();
  v150 = *(v257 + 8);
  v150(v254, v260);
  v151 = OUTLINED_FUNCTION_164_0();
  (v150)(v151);
  sub_1D4E50004(v259, &qword_1EC7EF3A0, &qword_1D5631128);
  if ((v149 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_70:
  v152 = *(v255 + 48);
  v116 = &unk_1EC7E9CA8;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v153, v154, v155, v156);
  OUTLINED_FUNCTION_94_11();
  v157 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_18(v157, v158);
  if (v83)
  {
    OUTLINED_FUNCTION_43_0(&unk_1EC7E9CA8 + v152);
    if (v83)
    {
      sub_1D4E50004(&unk_1EC7E9CA8, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  sub_1D4F39AB0(&unk_1EC7E9CA8, v252, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_43_0(&unk_1EC7E9CA8 + v152);
  if (v159)
  {
    v160 = OUTLINED_FUNCTION_164_0();
    v161(v160);
LABEL_78:
    v91 = &qword_1EC7E9FB0;
    v92 = &qword_1D562C590;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_11_18();
  v162(v250, &unk_1EC7E9CA8 + v152, v239);
  OUTLINED_FUNCTION_0_116();
  sub_1D5172B18(v163, v164, MEMORY[0x1E6968FC8]);
  OUTLINED_FUNCTION_85_8();
  v165 = sub_1D5614D18();
  v166 = OUTLINED_FUNCTION_82_13(v165);
  v152(v166);
  v167 = OUTLINED_FUNCTION_164_0();
  v152(v167);
  sub_1D4E50004(&unk_1EC7E9CA8, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v270 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_80:
  v168 = v240[13];
  v169 = *(v271 + v168 + 8);
  if (*(v241 + v168 + 8))
  {
    if (!v169)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_31_0(v241 + v168);
    v172 = v83 && v170 == v171;
    if (!v172 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v169)
  {
    goto LABEL_31;
  }

  v173 = *(v264 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v174, v175, v176, v177);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v178, v179, v180, v181);
  OUTLINED_FUNCTION_57(v251, 1, v265);
  if (v83)
  {
    OUTLINED_FUNCTION_1(v251 + v173);
    if (v83)
    {
      sub_1D4E50004(v251, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_99;
    }

LABEL_97:
    v91 = &qword_1EC7EC968;
    v92 = &unk_1D5622290;
    v183 = &a17;
LABEL_117:
    v93 = *(v183 - 32);
    goto LABEL_30;
  }

  sub_1D4F39AB0(v251, v248, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_1(v251 + v173);
  if (v182)
  {
    (*(v263 + 8))(v248, v265);
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_81();
  v184(v261, v251 + v173, v265);
  v185 = sub_1D4F7BF60();
  OUTLINED_FUNCTION_157_0(v185, v186, v187, v185);
  v188 = OUTLINED_FUNCTION_51();
  (unk_1D56334C0)(v188);
  v189 = OUTLINED_FUNCTION_85();
  (unk_1D56334C0)(v189);
  sub_1D4E50004(v251, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v265 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_99:
  OUTLINED_FUNCTION_90_12();
  v190 = *(v244 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v191, v192, v193, v194);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v195, v196, v197, v198);
  OUTLINED_FUNCTION_57(v249, 1, v247);
  if (v83)
  {
    OUTLINED_FUNCTION_57(v249 + v190, 1, v247);
    if (!v83)
    {
      goto LABEL_106;
    }

    sub_1D4E50004(v249, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  else
  {
    sub_1D4F39AB0(v249, v245, &qword_1EC7EB5C0, &unk_1D56223C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v249 + v190, 1, v247);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_136();
      v200(v245, v247);
LABEL_106:
      v91 = &qword_1EC7EF610;
      v92 = &unk_1D5637E70;
      v183 = &a15;
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_81();
    v201(v242, v249 + v190, v247);
    OUTLINED_FUNCTION_5_73();
    v204 = sub_1D5172B18(v202, v203, MEMORY[0x1E6975EA0]);
    OUTLINED_FUNCTION_157_0(v204, v205, v206, v204);
    v207 = OUTLINED_FUNCTION_51();
    (unk_1D56223C0)(v207);
    v208 = OUTLINED_FUNCTION_85();
    (unk_1D56223C0)(v208);
    sub_1D4E50004(v249, &qword_1EC7EB5C0, &unk_1D56223C0);
    if ((v249 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_90_12();
  v209 = *(v255 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v210, v211, v212, v213);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v214, v215, v216, v217);
  OUTLINED_FUNCTION_57(v246, 1, v239);
  if (!v83)
  {
    sub_1D4F39AB0(v246, v243, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v246 + v209, 1, v239);
    if (!v218)
    {
      OUTLINED_FUNCTION_81();
      v219(v250, v246 + v209, v239);
      OUTLINED_FUNCTION_0_116();
      v222 = sub_1D5172B18(v220, v221, MEMORY[0x1E6968FC8]);
      OUTLINED_FUNCTION_157_0(v222, v223, v224, v222);
      v225 = OUTLINED_FUNCTION_51();
      (unk_1D561D1D0)(v225);
      v226 = OUTLINED_FUNCTION_85();
      (unk_1D561D1D0)(v226);
      sub_1D4E50004(v246, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v246 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_119;
    }

    (*(v253 + 8))(v243, v239);
LABEL_116:
    v91 = &qword_1EC7E9FB0;
    v92 = &qword_1D562C590;
    v183 = &a12;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_57(v246 + v209, 1, v239);
  if (!v83)
  {
    goto LABEL_116;
  }

  sub_1D4E50004(v246, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_119:
  OUTLINED_FUNCTION_90_12();
  OUTLINED_FUNCTION_66_12();
  if (v229)
  {
    if (!v227)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_31_0(v228);
    v232 = v83 && v230 == v231;
    if (!v232 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v227)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_90_12();
  OUTLINED_FUNCTION_66_12();
  if (v235 && v233)
  {
    OUTLINED_FUNCTION_31_0(v234);
    if (!v83 || v236 != v237)
    {
      sub_1D5616168();
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5172B18(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5172B60()
{
  result = qword_1EC7F0E00;
  if (!qword_1EC7F0E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EC7F0E08, type metadata accessor for CloudHLSAsset, &unk_1D5661380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E00);
  }

  return result;
}

unint64_t sub_1D5172C14()
{
  result = qword_1EC7EF8B8;
  if (!qword_1EC7EF8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D5172B18(&qword_1EC7EF8C0, type metadata accessor for CloudAssetFlavors, &unk_1D5657E44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8B8);
  }

  return result;
}

uint64_t sub_1D5172CC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F547465737361 && a2 == 0xEB00000000736E65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001D56819A0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7465737341736C68 && a2 == 0xE800000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C725574736F70 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x614464616F6C7075 && a2 == 0xEA00000000006574;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000013 && 0x80000001D5683C10 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1D5616168();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D5173158(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6B6F547465737361;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x7465737341736C68;
      break;
    case 8:
      result = 0x76697372656D6D69;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6172615079616C70;
      break;
    case 12:
      result = 0x6C725574736F70;
      break;
    case 13:
      result = 0x614464616F6C7075;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5173324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5172CC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D517334C(uint64_t a1)
{
  v2 = sub_1D5173888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5173388(uint64_t a1)
{
  v2 = sub_1D5173888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudUploadedVideo.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E10, &unk_1D563C6E0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  v6 = sub_1D5173888();
  OUTLINED_FUNCTION_132(&type metadata for CloudUploadedVideo.Attributes.CodingKeys, v7, v6);
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v0)
  {
    v8 = type metadata accessor for CloudUploadedVideo.Attributes(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C43C8();
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_37_1(3);
    sub_1D5616058();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D517B2B8(&qword_1EC7EC9D8, sub_1D4F7CD24);
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D51738DC(&qword_1EC7EC9F0, sub_1D4F7D1A8);
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5173950();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v13 = v8[12];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v9, v10, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_53_10(v13);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_37_1(9);
    sub_1D5616028();
    OUTLINED_FUNCTION_53_10(v8[14]);
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    sub_1D56109F8();
    OUTLINED_FUNCTION_5_73();
    sub_1D5172B18(v11, v12, MEMORY[0x1E6975E90]);
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v8[16]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_37_1(13);
    sub_1D5616028();
    OUTLINED_FUNCTION_37_1(14);
    sub_1D5616028();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5173888()
{
  result = qword_1EDD563C8[0];
  if (!qword_1EDD563C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD563C8);
  }

  return result;
}

uint64_t sub_1D51738DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    a2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5173950()
{
  result = qword_1EC7F0E18;
  if (!qword_1EC7F0E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EDD57A18, type metadata accessor for CloudHLSAsset, &unk_1D5661358);
    sub_1D5172B18(qword_1EDD57A20, type metadata accessor for CloudHLSAsset, &unk_1D5661330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E18);
  }

  return result;
}

void CloudUploadedVideo.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v94 = sub_1D56109F8();
  OUTLINED_FUNCTION_4();
  v82 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v81 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v92 = v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_103_9(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v93 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v87 = v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_4();
  v80 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v79 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v85 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v90 = v24;
  v91 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_177(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v88 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  v84 = v31;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  v78 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v77 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_19_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v39 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_71_1();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_45();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v43 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  sub_1D4F39AB0(v0 + v43[5], v3, &qword_1EC7EB5B8, &unk_1D56206A0);
  v44 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_57(v44, v45, v37);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v47(v2, v3, v37);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v39 + 8))(v2, v37);
  }

  sub_1D4F39AB0(v0 + v43[6], v1, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_43_0(v1);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v48(v77, v1, v83);
    OUTLINED_FUNCTION_27();
    sub_1D5174460();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v78 + 8))(v77, v83);
  }

  v49 = (v0 + v43[7]);
  if (*(v49 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v50 = *v49;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v50);
  }

  if (*(v0 + v43[8]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v43[9], v84, &qword_1EC7EC960, &unk_1D56334C0);
  v51 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v51, v52, v91);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v53 = OUTLINED_FUNCTION_56_17();
    v54(v53);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v90 + 8))(v89, v91);
  }

  if (*(v0 + v43[10]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v43[11], v85, &qword_1EC7EF3A0, &qword_1D5631128);
  v55 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v55, v56);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_58_16();
    v58(v57);
    OUTLINED_FUNCTION_27();
    sub_1D517B204();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v80 + 8))(v79, v86);
  }

  sub_1D4F39AB0(v0 + v43[12], v87, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_74(v87);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v59 = OUTLINED_FUNCTION_56_17();
    v60(v59);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v61, v62, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v63 = OUTLINED_FUNCTION_85_0();
    v64(v63);
  }

  if (*(v0 + v43[13] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v43[14], v88, &qword_1EC7EC960, &unk_1D56334C0);
  v65 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v65, v66, v91);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v67 = OUTLINED_FUNCTION_58_16();
    v68(v67);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v90 + 8))(v89, v91);
  }

  sub_1D4F39AB0(v0 + v43[15], v92, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_43_0(v92);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v82 + 32))(v81, v92, v94);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_5_73();
    sub_1D5172B18(v69, v70, MEMORY[0x1E6975E98]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v82 + 8))(v81, v94);
  }

  sub_1D4F39AB0(v0 + v43[16], v93, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_74(v93);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v71 = OUTLINED_FUNCTION_56_17();
    v72(v71);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v73, v74, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v75 = OUTLINED_FUNCTION_85_0();
    v76(v75);
  }

  if (*(v0 + v43[17] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v43[18] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D5174460()
{
  result = qword_1EC7EF8C8;
  if (!qword_1EC7EF8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D5172B18(&qword_1EC7EF8D0, type metadata accessor for CloudAssetFlavors, &unk_1D5657DB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8C8);
  }

  return result;
}

void CloudUploadedVideo.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v128 = v20;
  v23 = v22;
  v120 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_177(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v121 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_2();
  v123 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v126 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v37 = OUTLINED_FUNCTION_22(v36);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v117 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = v117 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_19_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v117 - v47;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E38, &unk_1D563C6F0);
  OUTLINED_FUNCTION_4();
  v50 = v49;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v117 - v52;
  v130 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v129 = v55;
  v56 = v23[3];
  v127 = v23;
  __swift_project_boxed_opaque_existential_1(v23, v56);
  sub_1D5173888();
  v125 = v53;
  v57 = v128;
  sub_1D5616398();
  if (v57)
  {
    v128 = v57;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    LODWORD(v63) = 0;
    v64 = 0;
    v65 = 0;
    LODWORD(v124) = 0;
    LODWORD(v125) = 0;
  }

  else
  {
    v58 = v48;
    v128 = v42;
    v118 = v40;
    v119 = v50;
    v64 = v124;
    v59 = sub_1D5615F38();
    v70 = v129;
    *v129 = v59;
    v70[1] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F886BC();
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    v65 = v119;
    v72 = v130;
    sub_1D4F39A1C(v58, v70 + v130[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    LOBYTE(a10) = 2;
    sub_1D50C41B8();
    OUTLINED_FUNCTION_188();
    sub_1D5615F78();
    sub_1D4F39A1C(v21, v70 + v72[6], &qword_1EC7EF380, &unk_1D5677480);
    OUTLINED_FUNCTION_153_0(3);
    v73 = sub_1D5615F68();
    v74 = v70 + v72[7];
    *v74 = v73;
    v74[8] = v75 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v131 = 4;
    sub_1D517B2B8(&qword_1EDD528F8, sub_1D4F886BC);
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    *(v70 + v72[8]) = a10;
    v76 = v70;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 5;
    v78 = sub_1D4F88A24();
    v79 = v128;
    sub_1D5615F78();
    v117[0] = v78;
    v117[1] = v77;
    sub_1D4F39A1C(v79, v76 + v72[9], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v131 = 6;
    sub_1D51738DC(&qword_1EDD52908, sub_1D4F88B0C);
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    *(v76 + v72[10]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D517B32C();
    OUTLINED_FUNCTION_188();
    v80 = v126;
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    v81 = v129;
    sub_1D4F39A1C(v80, v129 + v72[11], &qword_1EC7EF3A0, &qword_1D5631128);
    v61 = sub_1D560C0A8();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v82, v83, MEMORY[0x1E6968FD0]);
    v63 = v123;
    sub_1D5615F78();
    v128 = 0;
    sub_1D4F39A1C(v63, v81 + v130[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_153_0(9);
    v62 = v125;
    v84 = v128;
    v85 = sub_1D5615F38();
    v128 = v84;
    if (v84)
    {
      v87 = OUTLINED_FUNCTION_33_33();
      v88(v87);
      LODWORD(v125) = 0;
      v60 = 1;
      OUTLINED_FUNCTION_11_65();
      OUTLINED_FUNCTION_76_0();
    }

    else
    {
      v89 = (v129 + v130[13]);
      *v89 = v85;
      v89[1] = v86;
      v62 = v125;
      v90 = v128;
      sub_1D5615F78();
      v128 = v90;
      if (!v90)
      {
        sub_1D4F39A1C(v118, v129 + v130[14], &qword_1EC7EC960, &unk_1D56334C0);
        sub_1D56109F8();
        OUTLINED_FUNCTION_5_73();
        sub_1D5172B18(v94, v95, MEMORY[0x1E6975EA8]);
        OUTLINED_FUNCTION_188();
        v62 = v125;
        v96 = v128;
        sub_1D5615F78();
        LODWORD(v126) = v96 == 0;
        v128 = v96;
        if (v96 || (sub_1D4F39A1C(v122, v129 + v130[15], &qword_1EC7EB5C0, &unk_1D56223C0), v62 = v125, v97 = v128, sub_1D5615F78(), (v128 = v97) != 0))
        {
          v98 = OUTLINED_FUNCTION_33_33();
          v99(v98);
          v68 = 0;
          LODWORD(v123) = 0;
        }

        else
        {
          sub_1D4F39A1C(v121, v129 + v130[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_153_0(13);
          v62 = v125;
          v101 = v128;
          v102 = sub_1D5615F38();
          v128 = v101;
          if (v101)
          {
            v104 = OUTLINED_FUNCTION_33_33();
            v105(v104);
            LODWORD(v123) = 0;
            v68 = 1;
          }

          else
          {
            v106 = (v129 + v130[17]);
            *v106 = v102;
            v106[1] = v103;
            OUTLINED_FUNCTION_153_0(14);
            v62 = v125;
            v107 = v128;
            v108 = sub_1D5615F38();
            v128 = v107;
            if (!v107)
            {
              v112 = v108;
              v113 = v109;
              v114 = OUTLINED_FUNCTION_33_33();
              v115(v114);
              v116 = (v129 + v130[18]);
              *v116 = v112;
              v116[1] = v113;
              OUTLINED_FUNCTION_14_51();
              sub_1D517B614();
              __swift_destroy_boxed_opaque_existential_1(v127);
              OUTLINED_FUNCTION_13_50();
              sub_1D517B668();
              goto LABEL_31;
            }

            v110 = OUTLINED_FUNCTION_33_33();
            v111(v110);
            v68 = 1;
            LODWORD(v123) = 1;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v127);
        OUTLINED_FUNCTION_11_65();
        OUTLINED_FUNCTION_76_0();
        LODWORD(v125) = v100;
        v67 = 1;
        v66 = v129;
        goto LABEL_6;
      }

      v91 = OUTLINED_FUNCTION_33_33();
      v92(v91);
      v60 = 1;
      OUTLINED_FUNCTION_11_65();
      OUTLINED_FUNCTION_76_0();
      LODWORD(v125) = v93;
    }
  }

  v66 = v129;
  __swift_destroy_boxed_opaque_existential_1(v127);
  if (v60)
  {
    v67 = 0;
    LODWORD(v126) = 0;
    v68 = 0;
    LODWORD(v123) = 0;
LABEL_6:

    goto LABEL_19;
  }

  LODWORD(v123) = 0;
  v68 = 0;
  LODWORD(v126) = 0;
  v67 = 0;
LABEL_19:
  v69 = v130;
  if (!v61)
  {
    if (!v62)
    {
      goto LABEL_21;
    }

LABEL_8:

    if (v63)
    {
      goto LABEL_22;
    }

LABEL_9:
    if (!v64)
    {
      goto LABEL_23;
    }

LABEL_10:

    if (v65)
    {
      goto LABEL_24;
    }

LABEL_11:
    if (!v124)
    {
      goto LABEL_25;
    }

LABEL_12:
    sub_1D4E50004(v66 + v69[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if (v125)
    {
      goto LABEL_26;
    }

LABEL_13:
    if (!v67)
    {
      goto LABEL_27;
    }

LABEL_14:
    sub_1D4E50004(v66 + v69[14], &qword_1EC7EC960, &unk_1D56334C0);
    if (v126)
    {
      goto LABEL_28;
    }

LABEL_15:
    if (!v68)
    {
      goto LABEL_29;
    }

LABEL_16:
    sub_1D4E50004(v66 + v69[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v123 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  sub_1D4E50004(v66 + v130[6], &qword_1EC7EF380, &unk_1D5677480);
  if (v62)
  {
    goto LABEL_8;
  }

LABEL_21:
  if (!v63)
  {
    goto LABEL_9;
  }

LABEL_22:
  sub_1D4E50004(v66 + v69[9], &qword_1EC7EC960, &unk_1D56334C0);
  if (v64)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (!v65)
  {
    goto LABEL_11;
  }

LABEL_24:
  sub_1D4E50004(v66 + v69[11], &qword_1EC7EF3A0, &qword_1D5631128);
  if (v124)
  {
    goto LABEL_12;
  }

LABEL_25:
  if (!v125)
  {
    goto LABEL_13;
  }

LABEL_26:

  if (v67)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (!v126)
  {
    goto LABEL_15;
  }

LABEL_28:
  sub_1D4E50004(v66 + v69[15], &qword_1EC7EB5C0, &unk_1D56223C0);
  if (v68)
  {
    goto LABEL_16;
  }

LABEL_29:
  if (v123)
  {
LABEL_30:
  }

LABEL_31:
  OUTLINED_FUNCTION_26();
}

uint64_t CloudUploadedVideo.Relationships.curator.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = type metadata accessor for CloudUploadedVideo.Relationships(v2);
  return sub_1D4F39AB0(v1 + *(v3 + 20), v0, &qword_1EC7EA798, &unk_1D5622EF0);
}

uint64_t sub_1D5175310@<X0>(char *a4@<X8>)
{
  v5 = sub_1D5615EF8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t CloudUploadedVideo.Relationships.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x726F7461727563;
  }

  else
  {
    return 0x73747369747261;
  }
}

uint64_t sub_1D51753F8@<X0>(uint64_t *a1@<X8>)
{
  result = CloudUploadedVideo.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1D5175458(uint64_t a1)
{
  v2 = sub_1D517B4B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5175494(uint64_t a1)
{
  v2 = sub_1D517B4B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudUploadedVideo.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4();
  v52 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v50 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v51 = v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E40, &qword_1D563C700);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_103_9(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_45();
  v18 = OUTLINED_FUNCTION_85_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_68_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAA0, &unk_1D5627040);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = *(v24 + 56);
  v55 = v5;
  sub_1D4F39AB0(v5, &v50 - v25, &qword_1EC7EB5A8, &unk_1D5622F00);
  v56 = v3;
  sub_1D4F39AB0(v3, &v26[v27], &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_57(v26, 1, v14);
  if (!v28)
  {
    sub_1D4F39AB0(v26, v0, &qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_57(&v26[v27], 1, v14);
    if (!v28)
    {
      (*(v16 + 32))(v1, &v26[v27], v14);
      sub_1D5000458();
      v32 = sub_1D5614D18();
      v33 = *(v16 + 8);
      v33(v1, v14);
      v33(v0, v14);
      sub_1D4E50004(v26, &qword_1EC7EB5A8, &unk_1D5622F00);
      if ((v32 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    (*(v16 + 8))(v0, v14);
LABEL_9:
    v29 = &qword_1EC7EDAA0;
    v30 = &unk_1D5627040;
    v31 = v26;
LABEL_20:
    sub_1D4E50004(v31, v29, v30);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_57(&v26[v27], 1, v14);
  if (!v28)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v26, &qword_1EC7EB5A8, &unk_1D5622F00);
LABEL_11:
  v34 = *(type metadata accessor for CloudUploadedVideo.Relationships(0) + 20);
  v35 = v54;
  v36 = *(v53 + 48);
  OUTLINED_FUNCTION_113(v55 + v34, v54);
  OUTLINED_FUNCTION_113(v56 + v34, v35 + v36);
  v37 = v57;
  OUTLINED_FUNCTION_57(v35, 1, v57);
  if (!v28)
  {
    sub_1D4F39AB0(v35, v51, &qword_1EC7EA798, &unk_1D5622EF0);
    OUTLINED_FUNCTION_57(v35 + v36, 1, v37);
    if (!v38)
    {
      v41 = v52;
      OUTLINED_FUNCTION_11_18();
      v42 = v35 + v36;
      v43 = v50;
      v44(v50, v42, v37);
      v45 = sub_1D517B434();
      OUTLINED_FUNCTION_157_0(v45, v46, v47, v45);
      v48 = *(v41 + 8);
      v48(v43, v37);
      v49 = OUTLINED_FUNCTION_85();
      (v48)(v49);
      sub_1D4E50004(v35, &qword_1EC7EA798, &unk_1D5622EF0);
      goto LABEL_21;
    }

    v39 = OUTLINED_FUNCTION_85();
    v40(v39);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_57(v35 + v36, 1, v37);
  if (!v28)
  {
LABEL_19:
    v29 = &qword_1EC7F0E40;
    v30 = &qword_1D563C700;
    v31 = v35;
    goto LABEL_20;
  }

  sub_1D4E50004(v35, &qword_1EC7EA798, &unk_1D5622EF0);
LABEL_21:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudUploadedVideo.Relationships.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E50, &qword_1D563C708);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  v6 = sub_1D517B4B8();
  OUTLINED_FUNCTION_132(&type metadata for CloudUploadedVideo.Relationships.CodingKeys, v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  sub_1D5000530();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v0)
  {
    type metadata accessor for CloudUploadedVideo.Relationships(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D517B50C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  return (*(v4 + 8))(v1, v2);
}

void CloudUploadedVideo.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4();
  v26 = v4;
  v27 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v25 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_114();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v15, v16, &qword_1EC7EB5A8, &unk_1D5622F00);
  v17 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v17, v18, v9);
  if (v19)
  {
    sub_1D56162F8();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_58_16();
    v21(v20);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v11 + 8))(v2, v9);
  }

  v22 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  sub_1D4F39AB0(v0 + *(v22 + 20), v1, &qword_1EC7EA798, &unk_1D5622EF0);
  v23 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v23, v24, v27);
  if (v19)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v26 + 32))(v25, v1, v27);
    sub_1D56162F8();
    sub_1D4F8B314();
    sub_1D5614CB8();
    (*(v26 + 8))(v25, v27);
  }

  OUTLINED_FUNCTION_46();
}

void CloudUploadedVideo.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4();
  v24 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_68_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_71_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  sub_1D56162D8();
  v18 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v18, v19, &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_74(v17);
  if (v20)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v12 + 32))(v3, v17, v10);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v12 + 8))(v3, v10);
  }

  v21 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  sub_1D4F39AB0(v4 + *(v21 + 20), v2, &qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_1(v2);
  if (v20)
  {
    sub_1D56162F8();
  }

  else
  {
    v22 = v24;
    OUTLINED_FUNCTION_81();
    v23(v1, v2, v5);
    sub_1D56162F8();
    sub_1D4F8B314();
    sub_1D5614CB8();
    (*(v22 + 8))(v1, v5);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudUploadedVideo.Relationships.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  a22 = v26;
  a23 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_71_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v47 = v34;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E68, &qword_1D563C710);
  OUTLINED_FUNCTION_4();
  v46 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_45();
  v37 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  v42 = OUTLINED_FUNCTION_81_0();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1D517B4B8();
  sub_1D5616398();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    a13 = 0;
    v44 = sub_1D5000808();
    OUTLINED_FUNCTION_3_64(v44, &a13);
    sub_1D4F39A1C(v47, v41, &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
    a12 = 1;
    v45 = sub_1D517B590();
    OUTLINED_FUNCTION_3_64(v45, &a12);
    (*(v46 + 8))(v25, v48);
    sub_1D4F39A1C(v24, v41 + *(v37 + 20), &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D517B614();
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_4_69();
    sub_1D517B668();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5176408(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v14, &qword_1EC7EB5A8, &unk_1D5622F00);
  if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v9 + 8))(v11, v8);
  }

  sub_1D4F39AB0(v2 + *(v20 + 20), v7, &qword_1EC7EA798, &unk_1D5622EF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v15 = v18;
    v16 = v19;
    (*(v19 + 32))(v18, v7, v3);
    sub_1D56162F8();
    sub_1D4F8B314();
    sub_1D5614CB8();
    (*(v16 + 8))(v15, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D5176758(uint64_t a1)
{
  v2 = sub_1D517B6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5176794(uint64_t a1)
{
  v2 = sub_1D517B6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUploadedVideo.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E78, &qword_1D563C718);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D517B6BC();
  sub_1D56163D8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudUploadedVideo.Metadata.init(snippets:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t CloudUploadedVideo.Metadata.snippets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static CloudUploadedVideo.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v3 = OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C(v3, v4);
      v6 = v5;

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5176A50(uint64_t a1)
{
  v2 = sub_1D517B710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5176A8C(uint64_t a1)
{
  v2 = sub_1D517B710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudUploadedVideo.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E88, &qword_1D563C720);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D517B710();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_26();
}

void CloudUploadedVideo.Metadata.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    sub_1D56162F8();

    sub_1D4F068B4(a1);
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudUploadedVideo.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4(v3);
  }

  return sub_1D5616328();
}

void CloudUploadedVideo.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E98, &unk_1D563C728);
  OUTLINED_FUNCTION_4();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1D517B710();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudUploadedVideo.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  type metadata accessor for CloudUploadedVideo(v0);
  OUTLINED_FUNCTION_14_51();
  return sub_1D517B614();
}

uint64_t CloudUploadedVideo.relationships.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = type metadata accessor for CloudUploadedVideo(v2);
  return sub_1D4F39AB0(v1 + *(v3 + 24), v0, &qword_1EC7ECD60, &qword_1D5622F50);
}

double static CloudUploadedVideo.relationshipCodingKeys.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static CloudUploadedVideo.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7F0DE8 = a1;
}

uint64_t (*static CloudUploadedVideo.relationshipCodingKeys.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1D5176FF8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F0DE8;

  return result;
}

uint64_t sub_1D5177048(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F0DE8 = v1;
}

uint64_t CloudUploadedVideo.views.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  result = type metadata accessor for CloudUploadedVideo(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudUploadedVideo.meta.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = *(v1 + *(type metadata accessor for CloudUploadedVideo(v2) + 32));
  *v0 = v3;

  return sub_1D4E67688(v3);
}

uint64_t CloudUploadedVideo.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudUploadedVideo(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

void (*CloudUploadedVideo.meta.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for CloudUploadedVideo(v0);
  return nullsub_1;
}

uint64_t sub_1D51771D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_64_1();
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D560FF38();
  qword_1EDD562B0 = v0;
  return result;
}

uint64_t sub_1D5177678(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D517770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5177760(uint64_t a1)
{
  v2 = sub_1D517B784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D517779C(uint64_t a1)
{
  v2 = sub_1D517B784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUploadedVideo.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0EA8, &qword_1D563C740);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  v7 = sub_1D517B784();
  OUTLINED_FUNCTION_132(&type metadata for CloudUploadedVideo.CodingKeys, v8, v7);
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_32_9();
  sub_1D56160C8();
  if (!v1)
  {
    v9 = type metadata accessor for CloudUploadedVideo(0);
    type metadata accessor for CloudUploadedVideo.Attributes(0);
    OUTLINED_FUNCTION_17_51();
    sub_1D5172B18(v10, v11, &protocol conformance descriptor for CloudUploadedVideo.Attributes);
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_8_1();
    sub_1D56160C8();
    type metadata accessor for CloudUploadedVideo.Relationships(0);
    OUTLINED_FUNCTION_50_17();
    sub_1D5172B18(v12, v13, &protocol conformance descriptor for CloudUploadedVideo.Relationships);
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    sub_1D517B7D8();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    v15 = *(v0 + *(v9 + 32));
    sub_1D4E67688(v15);
    sub_1D517B82C();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    sub_1D4EA7410(v15);
  }

  return (*(v5 + 8))(v2, v3);
}

void CloudUploadedVideo.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  v3 = type metadata accessor for CloudUploadedVideo(0);
  CloudUploadedVideo.Attributes.hash(into:)();
  sub_1D4F86198();
  sub_1D56162F8();
  v4 = *(v1 + *(v3 + 32));
  if (v4 == 1 || (OUTLINED_FUNCTION_27(), !v4))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    sub_1D4F068B4(a1);
  }
}

uint64_t sub_1D5177AF8(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_164();
  a1(v3);
  return sub_1D5616328();
}

void CloudUploadedVideo.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v22 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for CloudUploadedVideo.Attributes(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0ED0, &qword_1D563C748);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_114();
  v9 = type metadata accessor for CloudUploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v23 = (v13 - v12);
  v24 = *(v11 + 32);
  *(v13 - v12 + v24) = 1;
  v14 = OUTLINED_FUNCTION_85_0();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D517B784();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D4EA7410(*(v23 + v24));
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615FD8();
    *v23 = v25;
    v23[1] = v26;
    OUTLINED_FUNCTION_17_51();
    sub_1D5172B18(v16, v17, &protocol conformance descriptor for CloudUploadedVideo.Attributes);
    sub_1D5615FD8();
    sub_1D517B880();
    type metadata accessor for CloudUploadedVideo.Relationships(0);
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_50_17();
    sub_1D5172B18(v18, v19, &protocol conformance descriptor for CloudUploadedVideo.Relationships);
    sub_1D5615F78();
    sub_1D4F39A1C(v22, v23 + *(v9 + 24), &qword_1EC7ECD60, &qword_1D5622F50);
    sub_1D517B8D4();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    *(v23 + *(v9 + 28)) = 2;
    sub_1D517B928();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    v20 = OUTLINED_FUNCTION_26_18();
    v21(v20);
    sub_1D4EA7410(*(v23 + v24));
    *(v23 + v24) = v25;
    OUTLINED_FUNCTION_48_19();
    sub_1D517B614();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_16_51();
    sub_1D517B668();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5177FD4(uint64_t a1)
{
  v2 = sub_1D5172B18(&qword_1EC7F0F68, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D5178094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void UploadedVideo.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v310 = v23;
  v345 = v24;
  v346 = v25;
  v343 = v27;
  v344 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v342 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  v341 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  v339 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v349 = v49;
  OUTLINED_FUNCTION_70_0();
  v337[0] = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v336 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v52);
  v335 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v61);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v65 = OUTLINED_FUNCTION_22(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v69 = OUTLINED_FUNCTION_22(v68);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v72);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v75);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v78);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v81);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v84);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_3();
  v87 = OUTLINED_FUNCTION_48(v86);
  v88 = type metadata accessor for UploadedVideoPropertyProvider(v87);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5();
  v92 = (v91 - v90);
  v93 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v351 = v94;
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v96 = type metadata accessor for CloudUploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5();
  v100 = v99 - v98;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  sub_1D5610648();
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v102 = sub_1D560D9A8();
  __swift_project_value_buffer(v102, qword_1EDD53CF0);
  v350 = v96;
  v103 = *(v96 + 20);
  v348 = v100;
  v104 = (v100 + v103);
  v352 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v312 = v104;
  sub_1D56105B8();
  sub_1D56140F8();
  v105 = OUTLINED_FUNCTION_31_2(&v334);
  v313 = v106;
  __swift_storeEnumTagSinglePayload(v105, v107, v108, v106);
  type metadata accessor for AssetFlavors(0);
  v109 = OUTLINED_FUNCTION_31_2(&v336);
  v315 = v110;
  __swift_storeEnumTagSinglePayload(v109, v111, v112, v110);
  sub_1D560F928();
  v113 = OUTLINED_FUNCTION_31_2(v337);
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
  sub_1D56106B8();
  v117 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
  v121 = sub_1D5610978();
  v122 = OUTLINED_FUNCTION_31_2(&v339);
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
  v125 = sub_1D560C328();
  v126 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v125);
  sub_1D56128E8();
  v129 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
  type metadata accessor for HLSAsset(0);
  v133 = OUTLINED_FUNCTION_31_2(&v344);
  v319 = v134;
  __swift_storeEnumTagSinglePayload(v133, v135, v136, v134);
  sub_1D5610CB8();
  v137 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
  v141 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v141);
  sub_1D5613198();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  sub_1D56134E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
  sub_1D5614A78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
  OUTLINED_FUNCTION_33();
  v323 = v121;
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v121);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v141);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v170 = OUTLINED_FUNCTION_31_2(v354);
  v327 = v171;
  __swift_storeEnumTagSinglePayload(v170, v172, v173, v171);
  type metadata accessor for CuratorRelationshipProvider(0);
  v174 = OUTLINED_FUNCTION_31_2(&a9);
  v330 = v175;
  __swift_storeEnumTagSinglePayload(v174, v176, v177, v175);
  v178 = *(v351 + 16);
  v179 = v92 + v88[31];
  v338 = v20;
  v340 = v93;
  v178(v179, v20, v93);
  sub_1D5610658();
  v180 = sub_1D5610618();
  v311 = v181;
  v182 = sub_1D56105C8();
  v183 = sub_1D56105F8();
  v184 = sub_1D56105E8();
  v337[1] = v101;
  v347 = v29;
  v185 = sub_1D56105A8();
  v186 = v92 + v88[9];
  *v186 = 0;
  v307 = v186;
  v186[8] = 1;
  if (qword_1EDD54CE8 != -1)
  {
    swift_once();
  }

  v187 = qword_1EDD76B50;
  if (qword_1EDD76B50 >> 62)
  {
    sub_1D560CDE8();

    v304 = sub_1D5615E18();

    v187 = v304;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v92 + v88[30]) = v187;
  v188 = (v92 + v88[33]);
  *v188 = v180;
  v188[1] = v311;
  *(v92 + v88[34]) = v182;
  *(v92 + v88[35]) = v183;
  *(v92 + v88[36]) = v184;
  *(v92 + v88[37]) = v185;
  v189 = v312[1];
  *v92 = *v312;
  v92[1] = v189;
  v190 = v352;
  sub_1D4F39AB0(v312 + *(v352 + 20), v317, &qword_1EC7EB5B8, &unk_1D56206A0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v192 = OUTLINED_FUNCTION_105();
  __swift_getEnumTagSinglePayload(v192, v193, v191);
  OUTLINED_FUNCTION_112_8();
  if (v184 == 1)
  {
    sub_1D4E50004(v317, &qword_1EC7EB5B8, &unk_1D56206A0);
    v194 = 1;
  }

  else
  {
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0();
    (*(v195 + 8))(v317, v191);
    v194 = 0;
  }

  __swift_storeEnumTagSinglePayload(v318, v194, 1, v313);
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v318, v196, v197, v198);
  sub_1D4F39AB0(v312 + v190[6], v320, &qword_1EC7EF380, &unk_1D5677480);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_1(v320);
  v200 = v328;
  if (v270)
  {
    sub_1D4E50004(v320, &qword_1EC7EF380, &unk_1D5677480);
    v202 = 1;
  }

  else
  {
    sub_1D536AC28();
    OUTLINED_FUNCTION_24_0();
    (*(v201 + 8))(v320, v199);
    v202 = 0;
  }

  __swift_storeEnumTagSinglePayload(v321, v202, 1, v315);
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v321, v203, v204, v205);
  OUTLINED_FUNCTION_17_51();
  sub_1D5172B18(v206, v207, &protocol conformance descriptor for CloudUploadedVideo.Attributes);
  sub_1D5612A68();
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v322, v208, v209, v210);
  v211 = (v312 + v190[7]);
  if ((v211[1] & 1) == 0)
  {
    *v307 = *v211 / 1000.0;
    *(v307 + 8) = 0;
  }

  *(v92 + v88[10]) = *(v312 + v190[8]);
  sub_1D4F39AB0(v312 + v190[9], v324, &qword_1EC7EC960, &unk_1D56334C0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_getEnumTagSinglePayload(v324, 1, v212);
  OUTLINED_FUNCTION_112_8();
  if (v324 == 1)
  {
    sub_1D4E50004(v324, &qword_1EC7EC960, &unk_1D56334C0);
    v213 = 1;
    v214 = v326;
  }

  else
  {
    sub_1D5610738();
    v214 = v326;
    OUTLINED_FUNCTION_24_0();
    (*(v215 + 8))(v324, v212);
    v213 = 0;
  }

  __swift_storeEnumTagSinglePayload(v214, v213, 1, v323);
  v216 = v88[12];
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v214, v217, v218, v219);
  *(v92 + v216) = *(v312 + v190[10]);
  sub_1D4F39AB0(v312 + v190[11], v331, &qword_1EC7EF3A0, &qword_1D5631128);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  v221 = OUTLINED_FUNCTION_67_18();
  __swift_getEnumTagSinglePayload(v221, v222, v220);
  OUTLINED_FUNCTION_112_8();
  if (v216 == 1)
  {
    sub_1D4E50004(v331, &qword_1EC7EF3A0, &qword_1D5631128);
    v223 = 1;
  }

  else
  {
    sub_1D54050A0(v328);
    OUTLINED_FUNCTION_24_0();
    (*(v303 + 8))(v331, v220);
    v223 = 0;
  }

  __swift_storeEnumTagSinglePayload(v328, v223, 1, v319);
  v224 = (v92 + v88[24]);
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v328, v225, v226, v227);
  v228 = v352;
  OUTLINED_FUNCTION_95_7();
  sub_1D5000C8C(v229, v230, v231, v232);
  v233 = (v312 + *(v228 + 52));
  v234 = v233[1];
  *v224 = *v233;
  v224[1] = v234;
  sub_1D4F39AB0(v312 + *(v228 + 56), v325, &qword_1EC7EC960, &unk_1D56334C0);
  v235 = OUTLINED_FUNCTION_67_18();
  __swift_getEnumTagSinglePayload(v235, v236, v212);
  OUTLINED_FUNCTION_112_8();
  if (v224 == 1)
  {
    sub_1D4E50004(v325, &qword_1EC7EC960, &unk_1D56334C0);
    v237 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    (*(v238 + 8))(v325, v212);
    v237 = 0;
  }

  __swift_storeEnumTagSinglePayload(v332, v237, 1, v323);
  v329 = (v92 + v88[26]);
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v332, v239, v240, v241);
  OUTLINED_FUNCTION_95_7();
  sub_1D5000C8C(v242, v243, v244, v245);
  v246 = v352;
  OUTLINED_FUNCTION_95_7();
  sub_1D5000C8C(v247, v248, v249, v250);
  sub_1D56107A8();
  v251 = v336;
  v252 = v334;
  v253 = v337[0];
  (*(v336 + 104))(v334, *MEMORY[0x1E6975DC8], v337[0]);
  OUTLINED_FUNCTION_186();
  sub_1D5610798();
  (*(v251 + 8))(v252, v253);
  OUTLINED_FUNCTION_136();
  v254(v333, v335);
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v200, v255, v256, v257);
  v258 = (v312 + *(v246 + 72));
  v259 = v258[1];
  *v329 = *v258;
  v329[1] = v259;
  v260 = *(v350 + 24);
  v261 = v348;
  v262 = v339;
  sub_1D4F39AB0(v348 + v260, v339, &qword_1EC7ECD60, &qword_1D5622F50);
  v263 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  OUTLINED_FUNCTION_1(v262);
  if (v270)
  {

    sub_1D4E50004(v262, &qword_1EC7ECD60, &qword_1D5622F50);
    v264 = 1;
    v266 = v344;
    v265 = v345;
  }

  else
  {
    sub_1D4F39AB0(v262, v308, &qword_1EC7EB5A8, &unk_1D5622F00);

    OUTLINED_FUNCTION_4_69();
    sub_1D517B668();
    v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    v268 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v268, v269, v267);
    v266 = v344;
    v265 = v345;
    if (!v270)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v271, v272, v273, v274);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_49_16();
      sub_1D5172B18(v275, v276, MEMORY[0x1E6976F08]);
      v277 = v346;
      sub_1D5612368();
      v261 = v348;
      sub_1D4E50004(v306, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      (*(v278 + 8))(v308, v267);
      v264 = 0;
      v279 = v341;
      goto LABEL_31;
    }

    sub_1D4E50004(v308, &qword_1EC7EB5A8, &unk_1D5622F00);
    v264 = 1;
  }

  v279 = v341;
  v277 = v346;
LABEL_31:
  v280 = v349;
  __swift_storeEnumTagSinglePayload(v349, v264, 1, v327);
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v280, v281, v282, v283);
  sub_1D4F39AB0(v261 + v260, v279, &qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_1(v279);
  v284 = v347;
  if (v270)
  {
    sub_1D4E50004(v279, &qword_1EC7ECD60, &qword_1D5622F50);
    v285 = 1;
    v286 = v342;
  }

  else
  {
    sub_1D4F39AB0(v279 + *(v263 + 20), v309, &qword_1EC7EA798, &unk_1D5622EF0);
    OUTLINED_FUNCTION_4_69();
    sub_1D517B668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
    OUTLINED_FUNCTION_1(v309);
    v286 = v342;
    if (v287)
    {
      sub_1D4E50004(v309, &qword_1EC7EA798, &unk_1D5622EF0);
      v285 = 1;
    }

    else
    {
      sub_1D4ED3850(v265, v266, v277, v310, v288, v289, v290, v291, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
      OUTLINED_FUNCTION_24_0();
      v292 = OUTLINED_FUNCTION_159();
      v293(v292);
      v285 = 0;
    }
  }

  v294 = v351;
  __swift_storeEnumTagSinglePayload(v286, v285, 1, v330);
  OUTLINED_FUNCTION_95_7();
  sub_1D4E68940(v286, v295, v296, v297);
  v298 = *(v350 + 32);
  v299 = *(v261 + v298);
  if (v299 == 1)
  {
    v300 = 0;
  }

  else
  {
    v300 = *(v261 + v298);
  }

  *(v92 + v88[29]) = v300;
  v354[1] = v88;
  v354[2] = sub_1D5172B18(&qword_1EDD54CD8, type metadata accessor for UploadedVideoPropertyProvider, &unk_1D5632250);
  __swift_allocate_boxed_opaque_existential_0(v353);
  sub_1D517B614();
  sub_1D4E67688(v299);
  UploadedVideo.init(propertyProvider:)(v353, v343);

  OUTLINED_FUNCTION_24_0();
  (*(v301 + 8))(v265, v277);
  OUTLINED_FUNCTION_24_0();
  (*(v302 + 8))(v284);
  (*(v294 + 8))(v338, v340);
  OUTLINED_FUNCTION_16_51();
  sub_1D517B668();
  sub_1D517B668();
  OUTLINED_FUNCTION_46();
}

void UploadedVideo.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v213 = v3;
  v214 = v4;
  v212 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v209 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610088();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v19);
  v208 = sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v207 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v23 = OUTLINED_FUNCTION_48(v22);
  v204 = type metadata accessor for CloudUploadedVideo(v23);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v224 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v27);
  v184 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v183[1] = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v223 = v36;
  v37 = OUTLINED_FUNCTION_70_0();
  v202 = type metadata accessor for CuratorRelationshipProvider(v37);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v222 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v211 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_177(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  v46 = OUTLINED_FUNCTION_22(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  v225 = v48;
  OUTLINED_FUNCTION_70_0();
  v201 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v200 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v54);
  v198 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v197 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  v220 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v61);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  v219 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v68 = OUTLINED_FUNCTION_22(v67);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13();
  v210 = v69;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v70);
  v72 = v183 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v74 = OUTLINED_FUNCTION_22(v73);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13();
  v218 = v75;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_2();
  v217 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v78);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_114();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v80);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_3();
  v216 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v83);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_9();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v85);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  v215 = v87;
  v88 = OUTLINED_FUNCTION_70_0();
  v89 = type metadata accessor for CloudUploadedVideo.Attributes(v88);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_103_9(v91);
  if (qword_1EDD53E28 != -1)
  {
    swift_once();
  }

  sub_1D5172B18(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v92 = sub_1D5172B18(&qword_1EC7EC488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  OUTLINED_FUNCTION_23_4();
  v226 = v0;
  sub_1D560EC28();
  v195 = v229;
  if ((v229 & 1) == 0)
  {
    v93 = v228 * 1000.0;
    if (COERCE__INT64(fabs(v228 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v93 > -9.22337204e18)
    {
      if (v93 < 9.22337204e18)
      {
        v192 = v93;
        goto LABEL_9;
      }

LABEL_69:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_69;
  }

  v192 = 0;
LABEL_9:
  v193 = v7;
  v191 = UploadedVideo.artistName.getter();
  v190 = v94;
  if (qword_1EDD53E58 != -1)
  {
    swift_once();
  }

  v95 = sub_1D56140F8();
  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v96 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v96, v97, v95);
  if (v98)
  {
    sub_1D4E50004(v1, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v100 = 1;
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0();
    (*(v99 + 8))(v1, v95);
    v100 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v101 = OUTLINED_FUNCTION_85_8();
  __swift_storeEnumTagSinglePayload(v101, v100, 1, v102);
  if (qword_1EDD53F70 != -1)
  {
    swift_once();
  }

  type metadata accessor for AssetFlavors(0);
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v2);
  if (v98)
  {
    sub_1D4E50004(v2, &qword_1EC7ECC88, &unk_1D56310F0);
  }

  else
  {
    sub_1D536AE60();
    sub_1D517B668();
  }

  v103 = v217;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_70_11(v104);
  if (qword_1EDD53ED0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  v189 = v228;
  if (qword_1EDD53F18 != -1)
  {
    swift_once();
  }

  v105 = sub_1D5610978();
  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v72, 1, v105);
  if (v98)
  {
    sub_1D4E50004(v72, &qword_1EC7EAC98, &unk_1D561DA80);
    v107 = 1;
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    (*(v106 + 8))(v72, v105);
    v107 = 0;
  }

  v108 = v219;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v103, v107, 1, v109);
  sub_1D4F84AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_39_25();
  v110 = v226;
  sub_1D560EC28();

  v188 = v228;
  if (qword_1EDD53E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for HLSAsset(0);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v95);
  if (v98)
  {
    sub_1D4E50004(v95, &qword_1EC7EF398, &qword_1D5631120);
  }

  else
  {
    sub_1D5405584(v108);
    sub_1D517B668();
  }

  v111 = v210;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_70_11(v112);
  if (qword_1EDD53F50 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  if (qword_1EDD53E78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v194 = v228;
  v187 = v229;
  if (qword_1EDD53EC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v113 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_57(v113, v114, v105);
  if (v98)
  {
    sub_1D4E50004(v111, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    (*(v115 + 8))(v111, v105);
  }

  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_70_11(v116);
  if (qword_1EDD53EF8 != -1)
  {
    swift_once();
  }

  sub_1D56109F8();
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  if (qword_1EDD53E30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v117 = v196;
  sub_1D56107A8();
  if (qword_1EDD53F40 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  (*(v200 + 104))(v199, *MEMORY[0x1E6975DC8], v201);
  v118 = v117;
  v210 = sub_1D56107B8();
  v120 = v119;
  v121 = OUTLINED_FUNCTION_164_0();
  v122(v121);
  sub_1D4E50004(v111, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_136();
  v123(v118, v198);
  if (qword_1EDD53EB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v125 = v228;
  v124 = v229;
  v126 = v227;
  v127 = v190;
  *v227 = v191;
  v126[1] = v127;
  sub_1D4F39A1C(v215, v126 + v89[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39A1C(v216, v126 + v89[6], &qword_1EC7EF380, &unk_1D5677480);
  v128 = v126 + v89[7];
  *v128 = v192;
  v128[8] = v195;
  *(v126 + v89[8]) = v189;
  sub_1D4F39A1C(v217, v126 + v89[9], &qword_1EC7EC960, &unk_1D56334C0);
  *(v126 + v89[10]) = v188;
  sub_1D4F39A1C(v219, v126 + v89[11], &qword_1EC7EF3A0, &qword_1D5631128);
  sub_1D4F39A1C(v220, v126 + v89[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  v129 = (v126 + v89[13]);
  v130 = v187;
  *v129 = v194;
  *(v129 + 1) = v130;
  sub_1D4F39A1C(v218, v126 + v89[14], &qword_1EC7EC960, &unk_1D56334C0);
  v131 = (v126 + v89[17]);
  *v131 = v210;
  v131[1] = v120;
  v132 = (v126 + v89[18]);
  *v132 = v125;
  *(v132 + 1) = v124;
  v133 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v133);
  if (qword_1EDD53E68 != -1)
  {
    swift_once();
  }

  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v138 = v221;
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  v139 = v110;
  if (qword_1EDD53E40 != -1)
  {
    swift_once();
  }

  v220 = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  v140 = v223;
  if (off_1EDD53E88 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  if (off_1EDD53E00 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  sub_1D4ED2CDC();
  OUTLINED_FUNCTION_74(v138);
  v145 = v225;
  if (!v98 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110), v146 = OUTLINED_FUNCTION_88(), OUTLINED_FUNCTION_57(v146, v147, v148), !v98))
  {
    v149 = v211;
    sub_1D4F39AB0(v138, v211, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_74(v149);
    if (v98)
    {
      sub_1D4E50004(v145, &qword_1EC7ECD60, &qword_1D5622F50);
      sub_1D4E50004(v149, &off_1EC7EB5B0, &unk_1D5632170);
      v157 = 1;
      v153 = v186;
    }

    else
    {
      sub_1D5613EF8();
      OUTLINED_FUNCTION_49_16();
      sub_1D5172B18(v150, v151, MEMORY[0x1E6976F08]);
      v219 = v92;
      OUTLINED_FUNCTION_186();
      sub_1D4F1ABE8(v152);
      v153 = v186;
      v154 = v211;
      sub_1D560DA98();
      OUTLINED_FUNCTION_136();
      v155(v140, v184);
      sub_1D4E50004(v145, &qword_1EC7ECD60, &qword_1D5622F50);
      OUTLINED_FUNCTION_24_0();
      (*(v156 + 8))(v154, v137);
      v157 = 0;
    }

    v158 = v185;
    v159 = v220;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v153, v157, 1, v160);
    sub_1D4F39AB0(v140, v158 + *(v159 + 20), &qword_1EC7EA798, &unk_1D5622EF0);
    v161 = OUTLINED_FUNCTION_81_0();
    sub_1D4F39A1C(v161, v162, v163, v164);
    __swift_storeEnumTagSinglePayload(v158, 0, 1, v159);
    sub_1D4F39A1C(v158, v145, &qword_1EC7ECD60, &qword_1D5622F50);
  }

  type metadata accessor for UploadedVideo(0);
  sub_1D5172B18(&unk_1EDD57490, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v165 = sub_1D560CBD8();
  if (v165 <= 1)
  {
    v166 = 1;
  }

  else
  {
    v166 = v165;
  }

  v168 = *v139;
  v167 = v139[1];
  v169 = v204;
  OUTLINED_FUNCTION_14_51();
  v170 = v205;
  sub_1D517B614();
  sub_1D4F39AB0(v145, v170 + v169[6], &qword_1EC7ECD60, &qword_1D5622F50);
  *v170 = v168;
  v170[1] = v167;
  *(v170 + v169[7]) = 1;
  *(v170 + v169[8]) = v166;

  v171 = v203;
  sub_1D5611A28();
  v172 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v171, 0, 1, v172);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
  v177 = v206;
  OUTLINED_FUNCTION_116();
  sub_1D5612B38();
  OUTLINED_FUNCTION_48_19();
  sub_1D517B614();
  sub_1D5611A98();
  v178 = sub_1D5611A88();
  v219 = v179;
  v220 = v178;
  v180 = v207;
  v181 = v209;
  v182 = v208;
  (*(v207 + 16))(v209, v177, v208);
  __swift_storeEnumTagSinglePayload(v181, 0, 1, v182);
  v218 = sub_1D5611A38();
  v217 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D5172B18(&qword_1EDD561E8, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
  sub_1D5610628();
  (*(v180 + 8))(v177, v182);
  OUTLINED_FUNCTION_16_51();
  sub_1D517B668();
  sub_1D517B668();
  sub_1D4E50004(v225, &qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_13_50();
  sub_1D517B668();
  sub_1D4E50004(v221, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4E50004(v223, &qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D517B12C(uint64_t a1)
{
  sub_1D5172B18(&qword_1EC7F0F60, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

  return sub_1D5612668();
}

uint64_t sub_1D517B198(uint64_t a1)
{
  v2 = sub_1D5172B18(&qword_1EC7F0F58, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

  return MEMORY[0x1EEDCE440](a1, v2);
}

unint64_t sub_1D517B204()
{
  result = qword_1EC7F0E28;
  if (!qword_1EC7F0E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EC7F0E30, type metadata accessor for CloudHLSAsset, &unk_1D56612F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E28);
  }

  return result;
}

uint64_t sub_1D517B2B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    a2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D517B32C()
{
  result = qword_1EDD53200;
  if (!qword_1EDD53200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EDD57A18, type metadata accessor for CloudHLSAsset, &unk_1D5661358);
    sub_1D5172B18(qword_1EDD57A20, type metadata accessor for CloudHLSAsset, &unk_1D5661330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53200);
  }

  return result;
}

unint64_t sub_1D517B434()
{
  result = qword_1EC7F0E48;
  if (!qword_1EC7F0E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D4F368F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E48);
  }

  return result;
}

unint64_t sub_1D517B4B8()
{
  result = qword_1EC7F0E58;
  if (!qword_1EC7F0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E58);
  }

  return result;
}

unint64_t sub_1D517B50C()
{
  result = qword_1EC7F0E60;
  if (!qword_1EC7F0E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D5157CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E60);
  }

  return result;
}

unint64_t sub_1D517B590()
{
  result = qword_1EC7F0E70;
  if (!qword_1EC7F0E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D51566B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E70);
  }

  return result;
}

uint64_t sub_1D517B614()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D517B668()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1D517B6BC()
{
  result = qword_1EC7F0E80;
  if (!qword_1EC7F0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E80);
  }

  return result;
}

unint64_t sub_1D517B710()
{
  result = qword_1EC7F0E90;
  if (!qword_1EC7F0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E90);
  }

  return result;
}

unint64_t sub_1D517B784()
{
  result = qword_1EDD562D8[0];
  if (!qword_1EDD562D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD562D8);
  }

  return result;
}

unint64_t sub_1D517B7D8()
{
  result = qword_1EC7F0EC0;
  if (!qword_1EC7F0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EC0);
  }

  return result;
}

unint64_t sub_1D517B82C()
{
  result = qword_1EC7F0EC8;
  if (!qword_1EC7F0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EC8);
  }

  return result;
}

uint64_t sub_1D517B880()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

unint64_t sub_1D517B8D4()
{
  result = qword_1EDD562C0;
  if (!qword_1EDD562C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD562C0);
  }

  return result;
}

unint64_t sub_1D517B928()
{
  result = qword_1EDD561F8[0];
  if (!qword_1EDD561F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD561F8);
  }

  return result;
}

unint64_t sub_1D517B9C8()
{
  result = qword_1EC7F0EE0;
  if (!qword_1EC7F0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EE0);
  }

  return result;
}

unint64_t sub_1D517BA20()
{
  result = qword_1EC7F0EE8;
  if (!qword_1EC7F0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EE8);
  }

  return result;
}

unint64_t sub_1D517BA78()
{
  result = qword_1EC7F0EF0;
  if (!qword_1EC7F0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EF0);
  }

  return result;
}

unint64_t sub_1D517BAD0()
{
  result = qword_1EC7F0EF8;
  if (!qword_1EC7F0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0F00, &qword_1D563C8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EF8);
  }

  return result;
}

unint64_t sub_1D517BB80()
{
  result = qword_1EC7F0F10;
  if (!qword_1EC7F0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F10);
  }

  return result;
}

unint64_t sub_1D517BBD8()
{
  result = qword_1EC7F0F18;
  if (!qword_1EC7F0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F18);
  }

  return result;
}

void sub_1D517BE60(uint64_t a1)
{
  type metadata accessor for CloudUploadedVideo.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D517C1FC(319, qword_1EDD56258, type metadata accessor for CloudUploadedVideo.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD562B8, &type metadata for CloudUploadedVideo.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD561F0, &type metadata for CloudUploadedVideo.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D517BF88(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD53248, &qword_1EC7EF388, &unk_1D5631100);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v10 > 0x3F)
    {
      return v9;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531F8, &qword_1EC7EF3A8, &qword_1D5631130);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_1D517C1FC(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
    if (v14 > 0x3F)
    {
      return v13;
    }

    sub_1D517C1FC(319, &qword_1EDD53158, MEMORY[0x1E6975E88]);
    if (v15 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1D517C1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D517C278(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD530A0, &qword_1EC7EB5D8, &unk_1D5627030);
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD530D0, &qword_1EC7EA7A0, &unk_1D5631110);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudUploadedVideo.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudUploadedVideo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D517C504(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudUploadedVideo.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D517C6A0()
{
  result = qword_1EC7F0F20;
  if (!qword_1EC7F0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F20);
  }

  return result;
}

unint64_t sub_1D517C6F8()
{
  result = qword_1EC7F0F28;
  if (!qword_1EC7F0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F28);
  }

  return result;
}

unint64_t sub_1D517C750()
{
  result = qword_1EC7F0F30;
  if (!qword_1EC7F0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F30);
  }

  return result;
}

unint64_t sub_1D517C7A8()
{
  result = qword_1EDD562C8;
  if (!qword_1EDD562C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD562C8);
  }

  return result;
}

unint64_t sub_1D517C800()
{
  result = qword_1EDD562D0;
  if (!qword_1EDD562D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD562D0);
  }

  return result;
}

unint64_t sub_1D517C858()
{
  result = qword_1EC7F0F38;
  if (!qword_1EC7F0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F38);
  }

  return result;
}

unint64_t sub_1D517C8B0()
{
  result = qword_1EC7F0F40;
  if (!qword_1EC7F0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F40);
  }

  return result;
}

unint64_t sub_1D517C908()
{
  result = qword_1EC7F0F48;
  if (!qword_1EC7F0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F48);
  }

  return result;
}

unint64_t sub_1D517C960()
{
  result = qword_1EC7F0F50;
  if (!qword_1EC7F0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F50);
  }

  return result;
}

unint64_t sub_1D517C9B8()
{
  result = qword_1EDD563B8;
  if (!qword_1EDD563B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD563B8);
  }

  return result;
}

unint64_t sub_1D517CA10()
{
  result = qword_1EDD563C0;
  if (!qword_1EDD563C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD563C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_94_11()
{

  return sub_1D4F39AB0(v5 + v3, v4 + v2, v0, v1);
}

uint64_t sub_1D517CB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a5@<X8>)
{
  v31 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v30 - v16;
  v30[1] = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    *a5 = 1;
    return result;
  }

  v30[0] = a5;
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v12 + 8))(v14, v11);
  v19 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
  {
    sub_1D4E6C9CC(v17, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v20 = sub_1D560D488();
    v22 = v21;
    (*(*(v19 - 8) + 8))(v17, v19);
    if (v20 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_1D5616168();

      if ((v25 & 1) == 0)
      {
        v26 = 1;
        v27 = v30[0];
LABEL_19:
        *v27 = v26;
        return result;
      }
    }
  }

  (*(v31 + 16))(v10, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    result = sub_1D4E6C9CC(&v34, &qword_1EC7EC500, &unk_1D5621030);
LABEL_18:
    v27 = v30[0];
    v26 = 3;
    goto LABEL_19;
  }

  sub_1D4F69344(&v34, v37);
  v28 = v38;
  v29 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v29 + 16))(&v32, v28, v29);
  if (!v33)
  {
    sub_1D4E6C9CC(&v32, &qword_1EC7EC500, &unk_1D5621030);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    goto LABEL_18;
  }

  sub_1D4F69344(&v32, &v34);
  __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  sub_1D4F60168();
  if (v32)
  {
    *v30[0] = 4;
  }

  else
  {
    *v30[0] = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v34);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t MusicLibrary.UnpinAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D517CFB4()
{
  result = qword_1EC7F0F70;
  if (!qword_1EC7F0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F70);
  }

  return result;
}

_BYTE *_s11UnpinActionVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s11UnpinActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t Playlist.Collaboration.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v11 = sub_1D560D708();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  a2[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Playlist.Collaboration(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for Playlist.Collaboration(uint64_t a1)
{
  result = qword_1EDD5F0E8;
  if (!qword_1EDD5F0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D517D388(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_33();
  if (!v5)
  {
    swift_once();
  }

  a3(0);
  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v6, v3, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v7, v3, v8);

  return sub_1D560EC28();
}

uint64_t sub_1D517D4A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_33();
  if (!v4)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v5, v3, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v6, v3, v7);

  return sub_1D560EC28();
}

uint64_t sub_1D517D5A8()
{
  OUTLINED_FUNCTION_17_33();
  if (!v1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v2, v0, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v3, v0, v4);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Collaboration.playlists.getter()
{
  if (qword_1EC7E8FB0 != -1)
  {
    OUTLINED_FUNCTION_19_46(&qword_1EC7E8FB0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v1, v0, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Collaboration.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Playlist.Collaboration.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Playlist.Collaboration(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1D517D7CC()
{
  if (qword_1EC7E8F88 != -1)
  {
    swift_once();
  }

  sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v0, type metadata accessor for Playlist.Collaboration, v1);
  sub_1D560EC28();
  return v3;
}

uint64_t Playlist.Collaboration.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  if (qword_1EC7E8FB0 != -1)
  {
    OUTLINED_FUNCTION_19_46(&qword_1EC7E8FB0);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_8_64();
  sub_1D517FCAC(v8, v1, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v9, v1, v10);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D4E7661C(v6, &qword_1EC7EB620, &unk_1D561E5B0);
    v11 = sub_1D5614898();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }

  else
  {
    sub_1D4EC9C38(a1);
    OUTLINED_FUNCTION_24_0();
    return (*(v13 + 8))(v6, v7);
  }
}

uint64_t static Playlist.Collaboration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Playlist.Collaboration(0);

  return sub_1D5611A78();
}

uint64_t Playlist.Collaboration.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaboration(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_64();
  sub_1D517FCAC(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t Playlist.Collaboration.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaboration(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_64();
  sub_1D517FCAC(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D517DBE8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D517FCAC(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D517DC8C@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Collaboration.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Collaboration.subscript.getter(uint64_t a1)
{
  return sub_1D517DCF4();
}

{
  return sub_1D517DCF4();
}

uint64_t sub_1D517DCF4()
{
  OUTLINED_FUNCTION_7_71();
  sub_1D517FCAC(v1, v0, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_12_54(qword_1EDD5F0F8);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t Playlist.Collaboration.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_7_71();
  sub_1D517FCAC(v2, v1, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_12_54(qword_1EDD5F0F8);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D517DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  v11 = sub_1D517FCAC(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D517E018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  v13 = sub_1D517FCAC(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D517E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  v13 = sub_1D517FCAC(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D517E2A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D517FC58();
  v0 = sub_1D560D138();

  qword_1EC87C258 = v0;
  return result;
}

uint64_t sub_1D517E364@<X0>(_BYTE *a1@<X8>)
{
  result = Playlist.Collaboration.collaboratorStatus.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D517E3A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C260 = v0;
  return result;
}

uint64_t sub_1D517E420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_66();
  sub_1D517FCAC(v1, v2, MEMORY[0x1E6969558]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C268 = v0;
  return result;
}

uint64_t sub_1D517E4C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D517FC04();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C270 = v0;
  return result;
}

uint64_t sub_1D517E540@<X0>(_BYTE *a1@<X8>)
{
  result = Playlist.Collaboration.invitationMode.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D517E57C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_3_92();
  sub_1D517FCAC(v0, v1, MEMORY[0x1E6968FD0]);
  v2 = sub_1D560D138();

  qword_1EC7F0F78 = v2;
  return result;
}

uint64_t sub_1D517E684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D5615278();
  OUTLINED_FUNCTION_6_66();
  sub_1D517FCAC(v1, v2, &protocol conformance descriptor for Playlist.Collaborator);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7F0F80 = v0;
  return result;
}

uint64_t sub_1D517E768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D517FCAC(qword_1EDD52A80, MEMORY[0x1E69773E0], MEMORY[0x1E6977400]);
  OUTLINED_FUNCTION_14_2();
  v0 = sub_1D560D0F8();

  qword_1EC7F0F88 = v0;
  return result;
}

uint64_t sub_1D517E860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D5615278();
  OUTLINED_FUNCTION_6_66();
  sub_1D517FCAC(v1, v2, &protocol conformance descriptor for Playlist.Collaborator);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7F0F90 = v0;
  return result;
}

uint64_t static Playlist.Collaboration.catalogFilterID(for:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D56159B8();
  v1 = sub_1D5614D18();

  if (v1)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D517EA78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t Playlist.Collaboration.init(from:)(void *a1)
{
  type metadata accessor for Playlist.Collaboration(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_96();
  sub_1D517FCAC(v3, v4, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_10_65();
  sub_1D517FCAC(v5, v1, MEMORY[0x1E6975C88]);
  OUTLINED_FUNCTION_13_51(&qword_1EC7EC8B8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Collaboration.encode(to:)(uint64_t a1)
{
  type metadata accessor for Playlist.Collaboration(0);
  OUTLINED_FUNCTION_2_96();
  sub_1D517FCAC(v2, v3, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_10_65();
  sub_1D517FCAC(v4, v1, MEMORY[0x1E6975C88]);
  OUTLINED_FUNCTION_13_51(&qword_1EC7EC8B8);
  return sub_1D5612688();
}

unint64_t Playlist.Collaboration.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_32_33();
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v10 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v10);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  if (qword_1EC7E8FA0 != -1)
  {
    OUTLINED_FUNCTION_17_52(&qword_1EC7E8FA0);
  }

  sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v11, type metadata accessor for Playlist.Collaboration, v12);
  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    sub_1D4E7661C(v0, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    (*(v5 + 32))(v9, v0, v3);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v22 = 0xD000000000000011;
    v23 = v13;
    OUTLINED_FUNCTION_3_92();
    sub_1D517FCAC(v14, v15, MEMORY[0x1E6968FE0]);
    v16 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v16);

    MEMORY[0x1DA6EAC70](0xD000000000000011, v23);

    (*(v5 + 8))(v9, v3);
  }

  if (qword_1EC7E8F98 != -1)
  {
    OUTLINED_FUNCTION_15_52(&qword_1EC7E8F98);
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (v22 != 2)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    v17 = MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5686290);
    OUTLINED_FUNCTION_34_30(v17, v18, &type metadata for Playlist.Collaboration.InvitationMode, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    MEMORY[0x1DA6EAC70](v22, v23);
  }

  if (qword_1EC7E8F80 != -1)
  {
    OUTLINED_FUNCTION_16_52(&qword_1EC7E8F80);
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (v22 != 4)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    v19 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D5686270);
    OUTLINED_FUNCTION_34_30(v19, v20, &type metadata for Playlist.Collaborator.Status, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    MEMORY[0x1DA6EAC70](v22, v23);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

unint64_t Playlist.Collaboration.debugDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_32_33();
  v4 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v50 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_9_0();
  v55 = 0xD000000000000017;
  v56 = v20;
  v53 = 0x22203A646920200ALL;
  v54 = 0xE800000000000000;
  v21 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v21);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v53, v54);

  if (qword_1EC7E8FA0 != -1)
  {
    OUTLINED_FUNCTION_17_52(&qword_1EC7E8FA0);
  }

  v22 = qword_1EC7F0F78;
  OUTLINED_FUNCTION_8_64();
  sub_1D517FCAC(v23, v0, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v24, v0, v25);
  OUTLINED_FUNCTION_20_48(v22, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1D4E7661C(v12, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_29_33();
    v53 = v27;
    v54 = v26;
    OUTLINED_FUNCTION_3_92();
    sub_1D517FCAC(v28, v29, MEMORY[0x1E6968FE0]);
    v30 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v30);

    MEMORY[0x1DA6EAC70](v53, v54);

    (*(v15 + 8))(v19, v13);
  }

  if (qword_1EC7E8F90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_48(qword_1EC87C268, v4);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v32 = v50;
    v31 = v51;
    (*(v51 + 32))(v50, v1, v4);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_29_33();
    v53 = v34 + 11;
    v54 = v33;
    OUTLINED_FUNCTION_11_66();
    sub_1D517FCAC(v35, v36, MEMORY[0x1E6969570]);
    v37 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v37);

    MEMORY[0x1DA6EAC70](v53, v54);

    (*(v31 + 8))(v32, v4);
  }

  if (qword_1EC7E8F98 != -1)
  {
    OUTLINED_FUNCTION_15_52(&qword_1EC7E8F98);
  }

  OUTLINED_FUNCTION_20_48(qword_1EC87C270, &type metadata for Playlist.Collaboration.InvitationMode);
  v38 = v53;
  if (v53 != 2)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    OUTLINED_FUNCTION_29_33();
    v41 = MEMORY[0x1DA6EAC70](v39 + 1, v40 | 0x8000000000000000);
    v52 = v38 & 1;
    OUTLINED_FUNCTION_34_30(v41, v42, &type metadata for Playlist.Collaboration.InvitationMode, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    MEMORY[0x1DA6EAC70](v53, v54);
  }

  if (qword_1EC7E8F80 != -1)
  {
    OUTLINED_FUNCTION_16_52(&qword_1EC7E8F80);
  }

  OUTLINED_FUNCTION_20_48(qword_1EC87C258, &type metadata for Playlist.Collaborator.Status);
  v43 = v53;
  if (v53 != 4)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    OUTLINED_FUNCTION_29_33();
    v46 = MEMORY[0x1DA6EAC70](v44 + 5, v45 | 0x8000000000000000);
    v52 = v43;
    OUTLINED_FUNCTION_34_30(v46, v47, &type metadata for Playlist.Collaborator.Status, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    MEMORY[0x1DA6EAC70](v53, v54);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v55;
}

uint64_t sub_1D517F708()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD0], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F0F98 = v4;
  return result;
}

uint64_t sub_1D517F864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E6975200], v0);
  qword_1EC7F0FA0 = v3;
  return result;
}

uint64_t sub_1D517F978()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F0FA8);
  __swift_project_value_buffer(v0, qword_1EC7F0FA8);
  type metadata accessor for Playlist.Collaboration(0);
  sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  return sub_1D560D978();
}

uint64_t sub_1D517FA50()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F0FC0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F0FC0);
  if (qword_1EC7E8FD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F0FA8);
  OUTLINED_FUNCTION_24_0();
  v3 = *(v2 + 16);

  return v3(v1);
}

unint64_t sub_1D517FC04()
{
  result = qword_1EC7F0FD8;
  if (!qword_1EC7F0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0FD8);
  }

  return result;
}

unint64_t sub_1D517FC58()
{
  result = qword_1EC7F0FE0;
  if (!qword_1EC7F0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0FE0);
  }

  return result;
}

uint64_t sub_1D517FCAC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_48(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_34_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D5615D48();
}

uint64_t sub_1D517FD2C(void *a1)
{
  v2 = sub_1D560F0F8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = [a1 value];
  sub_1D5614D68();

  sub_1D560EED8();
  v12 = [a1 kind];
  v13 = MEMORY[0x1E69755D0];
  switch(v12)
  {
    case 0uLL:
      goto LABEL_9;
    case 1uLL:
      v13 = MEMORY[0x1E69755E0];
      goto LABEL_9;
    case 2uLL:
      v13 = MEMORY[0x1E69755B0];
      goto LABEL_9;
    case 3uLL:
      v13 = MEMORY[0x1E69755C8];
      goto LABEL_9;
    case 4uLL:
      v13 = MEMORY[0x1E69755B8];
      goto LABEL_9;
    case 5uLL:
      v13 = MEMORY[0x1E69755A8];
      goto LABEL_9;
    case 6uLL:
      v13 = MEMORY[0x1E69755C0];
      goto LABEL_9;
    case 7uLL:
      v13 = MEMORY[0x1E69755A0];
LABEL_9:
      (*(v4 + 104))(v10, *v13, v2);
      (*(v4 + 16))(v8, v10, v2);
      sub_1D560F118();

      return (*(v4 + 8))(v10, v2);
    case 8uLL:
      OUTLINED_FUNCTION_6_3();
      v15 = 49;
      OUTLINED_FUNCTION_11_28();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_6_3();
      v15 = 51;
      OUTLINED_FUNCTION_11_28();
LABEL_12:
      result = sub_1D5615E08();
      __break(1u);
      return result;
  }
}

id sub_1D517FFC8()
{
  v0 = sub_1D560F0F8();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560F108();
  v6 = (*(v2 + 88))(v5, v0);
  v7 = 0;
  if (v6 == *MEMORY[0x1E69755D0])
  {
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E69755E0])
  {
    v7 = 1;
LABEL_16:
    sub_1D5180210();
    v8 = sub_1D560F138();
    return sub_1D5180254(v8, v9, v7);
  }

  if (v6 == *MEMORY[0x1E69755B0])
  {
    v7 = 2;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E69755C8])
  {
    v7 = 3;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E69755B8])
  {
    v7 = 4;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E69755A8])
  {
    v7 = 5;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E69755C0])
  {
    v7 = 6;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E69755A0])
  {
    v7 = 7;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E69755D8])
  {
    OUTLINED_FUNCTION_6_3();
    v11 = 79;
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    v11 = 82;
    OUTLINED_FUNCTION_11_28();
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

unint64_t sub_1D5180210()
{
  result = qword_1EDD52650;
  if (!qword_1EDD52650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52650);
  }

  return result;
}

id sub_1D5180254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D5614D38();

  v6 = [v4 initWithValue:v5 kind:a3];

  return v6;
}

uint64_t sub_1D51802D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D5615618();
  if (!v19)
  {
    return sub_1D56151C8();
  }

  v41 = v19;
  v45 = sub_1D5615D08();
  v32 = sub_1D5615D18();
  sub_1D5615CA8();
  result = sub_1D5615608();
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
      v22 = sub_1D5615688();
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
      sub_1D5615CF8();
      result = sub_1D5615658();
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

uint64_t MusicLibraryMapping.Request.init(mappingItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = 0;
  v16[6] = a1;
  v16[2] = a2;
  v16[3] = a3;
  v8 = sub_1D56152D8();
  v10 = _s10FrozenItemVMa(0, a2, a3, v9);

  OUTLINED_FUNCTION_1_11();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1D51802D0(sub_1D51808AC, v16, v8, v10, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  v15 = v17;
  *a4 = a1;
  *(a4 + 8) = v15;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_1D51807CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return sub_1D5015F48(v8, a2, a3, a4);
}

uint64_t MusicLibraryMapping.Request.response()(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  v4 = *v2;
  *(v3 + 128) = *(v2 + 8);
  v5 = v2[2];
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D5180938, 0, 0);
}

uint64_t sub_1D5180938()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  *(v0 + 56) = *(v0 + 96);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1D51809F8;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return sub_1D5180B48(v4, v0 + 16, v5);
}

uint64_t sub_1D51809F8()
{
  OUTLINED_FUNCTION_60();
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v2 = v5;
  *(v5 + 120) = v0;

  sub_1D51813C0(v5 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5180B24, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v3();
  }
}

uint64_t sub_1D5180B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  v6 = sub_1D560DF28();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = *(a3 + 24);
  *(v4 + 88) = *(a3 + 16);
  *(v4 + 96) = swift_getAssociatedTypeWitness();
  *(v4 + 104) = swift_getAssociatedConformanceWitness();
  v7 = sub_1D560CB18();
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *v3;
  *(v4 + 128) = v8;
  *(v4 + 136) = v9;
  *(v4 + 176) = *(v3 + 8);
  *(v4 + 144) = v3[2];

  return MEMORY[0x1EEE6DFA0](sub_1D5180CF4, 0, 0);
}

uint64_t sub_1D5180CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 144);
  *(v12 + 16) = v13;
  v14 = *(v12 + 176);
  v15 = *(v12 + 136);
  v17 = *(v12 + 80);
  v16 = *(v12 + 88);
  v18 = *(v12 + 48);
  v19 = swift_task_alloc();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(v19 + 32) = v15;
  *(v19 + 40) = v14;
  *(v19 + 48) = v13;
  *(v19 + 56) = v18;
  _s10FrozenItemVMa(255, v16, v17, v20);
  sub_1D56152D8();
  sub_1D560CAE8();

  OUTLINED_FUNCTION_0_1();
  swift_getWitnessTable();
  v21 = sub_1D5615028();

  v22 = objc_opt_self();
  v23 = [v22 sharedCloudController];
  v24 = [v23 isUpdateInProgress];

  if (v24 && (v25 = [v22 sharedCloudController], v26 = objc_msgSend(v25, sel_isInitialImport), v25, v26))
  {
    v28 = *(v12 + 80);
    v27 = *(v12 + 88);
    v29 = *(v12 + 40);
    *(v12 + 32) = v21;
    v30 = swift_task_alloc();
    *(v30 + 16) = v27;
    *(v30 + 24) = v28;
    sub_1D56152D8();
    type metadata accessor for MusicLibraryMapping.MappedItem(0, v27, v28, v31);
    OUTLINED_FUNCTION_0_1();
    swift_getWitnessTable();
    v32 = sub_1D5615028();

    OUTLINED_FUNCTION_39_1(v32, 0, v29);

    OUTLINED_FUNCTION_55();

    return v33();
  }

  else
  {
    v36 = *(v12 + 64);
    v35 = *(v12 + 72);
    v37 = *(v12 + 56);
    sub_1D560CB08();
    (*(v36 + 104))(v35, *MEMORY[0x1E6975110], v37);
    v38 = swift_task_alloc();
    *(v12 + 152) = v38;
    *v38 = v12;
    v38[1] = sub_1D5181028;
    v45 = *(v12 + 112);
    v46 = *(v12 + 72);

    return MEMORY[0x1EEDCE158](v46, v45, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_1D5181028(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v7 = v4[8];
  *v6 = *v2;
  v5[20] = v1;

  v8 = (v7 + 8);
  v9 = v4[9];
  v10 = v4[7];
  if (v1)
  {
    (*v8)(v9, v10);
    v11 = sub_1D518133C;
  }

  else
  {
    v5[21] = a1;
    (*v8)(v9, v10);
    v11 = sub_1D51811AC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D51811AC()
{
  v19 = v0;
  v1 = v0[15];
  v14 = v0[14];
  v15 = v0[16];
  v2 = v0[11];
  v3 = v0[10];
  v16 = v0[5];
  v0[3] = v0[21];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_1D560CA58();
  v5 = sub_1D56152D8();
  v7 = type metadata accessor for MusicLibraryMapping.MappedItem(0, v2, v3, v6);
  OUTLINED_FUNCTION_1_11();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1D51802D0(sub_1D5181DE0, v4, v5, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  (*(v1 + 8))(v15, v14);

  OUTLINED_FUNCTION_39_1(v10, 1, &v17);
  v11 = v18;
  *v16 = v17;
  *(v16 + 8) = v11;

  OUTLINED_FUNCTION_55();

  return v12();
}

uint64_t sub_1D518133C()
{
  OUTLINED_FUNCTION_60();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51813C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0FE8, &qword_1D5652AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicLibraryMapping.Request.response(revisionID:requester:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  *(v5 + 24) = v9;
  *(v5 + 32) = v10;
  v11 = swift_task_alloc();
  *(v5 + 40) = v11;
  *v11 = v5;
  v11[1] = sub_1D51814F4;

  return sub_1D5180B48(a1, a3, a4);
}

uint64_t sub_1D51814F4()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D4F8E8B4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D5181618@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v9 = _s10FrozenItemVMa(0, a4, a5, a2);
  result = sub_1D5016040(a1, a3, v9);
  *a6 = result;
  return result;
}

uint64_t sub_1D5181684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1D56158D8();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v40 = a3;
  swift_getAssociatedConformanceWitness();
  v39 = a2;
  v11 = sub_1D560CAB8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v34 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  sub_1D560CAC8();
  sub_1D560CAA8();
  (*(v12 + 8))(v15, v11);
  if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v35 + 8))(v10, v36);
    v22 = 1;
    v24 = v38;
    v23 = v39;
    v25 = v40;
  }

  else
  {
    (*(v16 + 32))(v20, v10, AssociatedTypeWitness);
    v26 = v34;
    (*(v16 + 16))(v34, v20, AssociatedTypeWitness);
    v27 = v37;
    sub_1D560CAD8();
    (*(v16 + 8))(v20, AssociatedTypeWitness);
    v24 = v38;
    v28 = v26;
    v30 = v39;
    v29 = v40;
    sub_1D52FB70C(v28, v27, v39, v40, v38);
    v22 = 0;
    v25 = v29;
    v23 = v30;
  }

  v31 = type metadata accessor for MusicLibraryMapping.MappedItem(0, v23, v25, v21);
  return __swift_storeEnumTagSinglePayload(v24, v22, 1, v31);
}

uint64_t sub_1D5181A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v13 - v10;
  swift_getAssociatedConformanceWitness();
  sub_1D560CA58();
  sub_1D560CA48();
  sub_1D560CA38();
  sub_1D560CAD8();

  return sub_1D52FB70C(v11, v8, a2, a3, a4);
}

uint64_t sub_1D5181B8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D51592F8;

  return MusicLibraryMapping.Request.response()(a1, a2);
}

uint64_t sub_1D5181C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D4E6E494;

  return MusicLibraryMapping.Request.response(revisionID:requester:)(a1, v8, a3, a4);
}

uint64_t sub_1D5181CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5181D20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5181D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal40CatalogAutoplaySuggestedSongsRawResponseV7ResultsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

unint64_t sub_1D5181E54()
{
  result = qword_1EC7F0FF0;
  if (!qword_1EC7F0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0FF0);
  }

  return result;
}

uint64_t sub_1D5181EA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736B63617274 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D5181F30(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1050, &qword_1D563DC48);
  OUTLINED_FUNCTION_25_10();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D518289C();
  sub_1D56163D8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE498, &unk_1D562B140);
  sub_1D502AB94(&qword_1EC7EE4A0, &qword_1EC7EE4A8, MEMORY[0x1E6975D30], MEMORY[0x1E69E6300]);
  sub_1D5616068();
  return (*(v6 + 8))(v9, v2);
}

uint64_t sub_1D51820A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1040, &qword_1D563DC40);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(a1);
  v5 = sub_1D518289C();
  OUTLINED_FUNCTION_3_45(&type metadata for CatalogAutoplaySuggestedSongsRawResponse.Results.CodingKeys, v6, v5);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE498, &unk_1D562B140);
    sub_1D502AB94(&qword_1EC7EE4B8, &qword_1EDD532A8, MEMORY[0x1E6975D48], MEMORY[0x1E69E6330]);
    sub_1D5615F78();
    v7 = OUTLINED_FUNCTION_2_39();
    v8(v7);
    v1 = v10;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1D5182224(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1010, &qword_1D563DA40);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D5182620();
  sub_1D56163D8();
  sub_1D51826C8();
  sub_1D5616068();
  v4 = OUTLINED_FUNCTION_2_39();
  return v5(v4);
}

uint64_t sub_1D5182340(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0FF8, &qword_1D563DA38);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(a1);
  v5 = sub_1D5182620();
  OUTLINED_FUNCTION_3_45(&type metadata for CatalogAutoplaySuggestedSongsRawResponse.CodingKeys, v6, v5);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D5182674();
    sub_1D5615F78();
    v7 = OUTLINED_FUNCTION_2_39();
    v8(v7);
    v1 = v10;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1D5182474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5181EA8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D51824A0(uint64_t a1)
{
  v2 = sub_1D518289C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51824DC(uint64_t a1)
{
  v2 = sub_1D518289C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5182518@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D51820A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5182560(uint64_t a1)
{
  v2 = sub_1D5182620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D518259C(uint64_t a1)
{
  v2 = sub_1D5182620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51825D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5182340(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5182620()
{
  result = qword_1EC7F1000;
  if (!qword_1EC7F1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1000);
  }

  return result;
}

unint64_t sub_1D5182674()
{
  result = qword_1EC7F1008;
  if (!qword_1EC7F1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1008);
  }

  return result;
}

unint64_t sub_1D51826C8()
{
  result = qword_1EC7F1018;
  if (!qword_1EC7F1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1018);
  }

  return result;
}

unint64_t sub_1D5182740()
{
  result = qword_1EC7F1020;
  if (!qword_1EC7F1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1020);
  }

  return result;
}

unint64_t sub_1D5182798()
{
  result = qword_1EC7F1028;
  if (!qword_1EC7F1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1028);
  }

  return result;
}

unint64_t sub_1D51827F0()
{
  result = qword_1EC7F1030;
  if (!qword_1EC7F1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1030);
  }

  return result;
}

unint64_t sub_1D5182848()
{
  result = qword_1EC7F1038;
  if (!qword_1EC7F1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1038);
  }

  return result;
}

unint64_t sub_1D518289C()
{
  result = qword_1EC7F1048;
  if (!qword_1EC7F1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1048);
  }

  return result;
}

_BYTE *sub_1D51828F0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D51829A0()
{
  result = qword_1EC7F1058;
  if (!qword_1EC7F1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1058);
  }

  return result;
}

unint64_t sub_1D51829F8()
{
  result = qword_1EC7F1060;
  if (!qword_1EC7F1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1060);
  }

  return result;
}

unint64_t sub_1D5182A50()
{
  result = qword_1EC7F1068;
  if (!qword_1EC7F1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1068);
  }

  return result;
}

uint64_t sub_1D5182AA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t MusicMovie.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v11 = sub_1D560D708();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  a2[1] = v13;
  v14 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  type metadata accessor for MusicMovie(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5182C9C(void *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  a3(0);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v6, v4, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v7, v4, v8);

  return sub_1D560EC28();
}

uint64_t sub_1D5182DAC()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v2, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v5 = sub_1D4E73624(v3, v0, v4);
  OUTLINED_FUNCTION_45_2(v5, MEMORY[0x1E69E6158], v6, v5);
  if (v9)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t static MusicMovie.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicMovie(0);

  return sub_1D5611A78();
}

uint64_t MusicMovie.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v102 = v4;
  v103 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v100 = v5;
  v6 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v97 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v95 = v9;
  v90 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v89 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v99 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v98 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v85 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  v105 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v85 - v32;
  v34 = type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v104 = v37 - v36;
  sub_1D51877E8(v1, v37 - v36);
  v38 = MusicMovie.title.getter();
  v93 = v39;
  v94 = v38;
  v40 = MusicMovie.artistName.getter();
  v91 = v41;
  v92 = v40;
  if (qword_1EDD541B8 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDD76978;
  v43 = sub_1D56140F8();
  OUTLINED_FUNCTION_4_70();
  v45 = sub_1D4E73624(v44, v2, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v48 = sub_1D4E73624(v46, v2, v47);
  OUTLINED_FUNCTION_60_12(v42, v43);
  if (qword_1EDD54300 != -1)
  {
    OUTLINED_FUNCTION_14_52(&qword_1EDD54300);
  }

  v49 = qword_1EDD76A28;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_60_12(v49, v50);
  v51 = OUTLINED_FUNCTION_67_1(v106[0]);
  v52 = *(v51 + 16);
  v96 = v33;
  if (v52)
  {
    v53 = v6;
    v54 = v22;
    v55 = *(v51 + 80);
    v56 = *(v51 + 88);

    v57 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v57);
    if ((v56 & 1) == 0)
    {
      sub_1D4E50004(v27, &qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_24_0();
      v59 = MEMORY[0x1E6975D50];
      if (v55 >= 500)
      {
        v59 = MEMORY[0x1E6975D58];
      }

      (*(v58 + 104))(v27, *v59, v57);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v57);
    }

    sub_1D4F39A1C(v27, v105, &qword_1EC7EC478, &unk_1D56299D0);
    v22 = v54;
    v6 = v53;
  }

  else
  {

    v60 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v60);
  }

  if (qword_1EDD541F8 != -1)
  {
    OUTLINED_FUNCTION_31_30(&qword_1EDD541F8);
  }

  v61 = qword_1EDD76998;
  v62 = sub_1D560C0A8();
  OUTLINED_FUNCTION_60_12(v61, v62);
  v87 = v22;
  if (qword_1EDD542C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_60_12(qword_1EDD76A10, MEMORY[0x1E69E6370]);
  v86 = LOBYTE(v106[0]);
  v63 = v98;
  __swift_storeEnumTagSinglePayload(v98, 1, 1, v6);
  v107 = v34;
  v108 = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v106);
  v85[1] = v45;
  sub_1D51877E8(v104, boxed_opaque_existential_0);
  v65 = __swift_project_boxed_opaque_existential_1(v106, v107);
  v66 = v89;
  v67 = v88;
  v68 = v90;
  (*(v89 + 16))(v88, &v65[*(v34 + 20)], v90);
  v69 = v95;
  sub_1D5611A98();
  (*(v66 + 8))(v67, v68);
  v70 = v99;
  sub_1D560FDD8();
  (*(v97 + 8))(v69, v6);
  sub_1D4E50004(v63, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v70, 0, 1, v6);
  sub_1D4F39A1C(v70, v63, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v71 = v100;
  sub_1D560EC98();
  sub_1D4F39AB0(v63, v70, &qword_1EC7EA358, &unk_1D561DF50);
  v72 = type metadata accessor for MusicSiriRepresentation(0);
  v73 = v101;
  v74 = v96;
  sub_1D4F39AB0(v96, v101 + v72[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v75 = v105;
  sub_1D4F39AB0(v105, v73 + v72[9], &qword_1EC7EC478, &unk_1D56299D0);
  v76 = v73 + v72[10];
  v77 = v87;
  sub_1D4F39AB0(v87, v76, &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v106[0]) = 6;
  sub_1D50391CC();
  v79 = v78;
  v81 = v80;
  sub_1D4E50004(v70, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v102 + 8))(v71, v103);
  sub_1D4E50004(v63, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v77, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v75, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v74, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5189204(v104);
  *v73 = v79;
  *(v73 + 8) = v81;
  *(v73 + 16) = 6;
  v83 = v93;
  *(v73 + 24) = v94;
  *(v73 + 32) = v83;
  v84 = v91;
  *(v73 + 40) = v92;
  *(v73 + 48) = v84;
  return result;
}

uint64_t MusicMovie.debugDescription.getter()
{
  v155 = sub_1D5613C48();
  OUTLINED_FUNCTION_4();
  v145 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v154 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_2();
  v152 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5F0, &unk_1D562B8A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v128 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_11_3(&v128 - v14);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v147 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_3(&v128 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_11_3(&v128 - v20);
  v142 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v138 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v23);
  v136 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v135 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v26);
  v134 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v133 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v130 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v35);
  v149 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v141 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v128 - v41;
  v43 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v129 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v47 = v46;
  v165 = 0x766F4D636973754DLL;
  v166 = 0xEB00000000286569;
  strcpy(v160, "\n  id: ");
  BYTE1(v160[1]) = 0;
  WORD1(v160[1]) = 0;
  HIDWORD(v160[1]) = -402653184;
  sub_1D560EEC8();
  OUTLINED_FUNCTION_61_19();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  strcpy(v160, ",\n  title: ");
  BYTE5(v160[1]) = 0;
  HIWORD(v160[1]) = -5120;
  MusicMovie.title.getter();
  OUTLINED_FUNCTION_61_19();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  v160[0] = 0xD000000000000011;
  v160[1] = 0x80000001D5685A50;
  MusicMovie.artistName.getter();
  OUTLINED_FUNCTION_61_19();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_18_49();

  if (qword_1EDD54198 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_70();
  v49 = sub_1D4E73624(v48, v1, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v52 = sub_1D4E73624(v50, v1, v51);
  v150 = v49;
  sub_1D560EC28();
  v151 = v52;
  if (v160[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v53);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD542C8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    sub_1D4E50004(v42, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v54 = v129;
    (*(v129 + 32))(v47, v42, v43);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    v160[0] = v56 + 3;
    v160[1] = v55;
    v163 = sub_1D5610928();
    v164 = v57;
    v161 = 10;
    v162 = 0xE100000000000000;
    v158 = 2105354;
    v159 = 0xE300000000000000;
    v58 = sub_1D4F53278();
    v64 = OUTLINED_FUNCTION_23_5(&v161, &v158, v59, v60, v61, v62, MEMORY[0x1E69E6158], v63, v127, v58, v58, v58);
    v66 = v65;

    MEMORY[0x1DA6EAC70](v64, v66);

    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
    (*(v54 + 8))(v47, v43);
  }

  v163 = 0;
  v164 = 0xE000000000000000;
  if (qword_1EDD54360 != -1)
  {
    OUTLINED_FUNCTION_35_32(&qword_1EDD54360);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  if (v160[0])
  {
    v67 = v160[0];
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
  }

  v68 = *(v67 + 16);
  v144 = v8;
  v148 = v0;
  if (v68)
  {
    v69 = (v67 + 40);
    do
    {
      v71 = *(v69 - 1);
      v70 = *v69;
      if ((v164 & 0x2000000000000000) != 0)
      {
        v72 = HIBYTE(v164) & 0xF;
      }

      else
      {
        v72 = v163 & 0xFFFFFFFFFFFFLL;
      }

      if (v72)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v160[0] = 0x22202020200ALL;
      v160[1] = 0xE600000000000000;
      MEMORY[0x1DA6EAC70](v71, v70);

      OUTLINED_FUNCTION_55_0();
      MEMORY[0x1DA6EAC70](v160[0], v160[1]);

      v69 += 2;
      --v68;
    }

    while (v68);

    v74 = v163;
    v73 = v164;
  }

  else
  {

    v74 = 0;
    v73 = 0xE000000000000000;
  }

  v75 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v75 = v74 & 0xFFFFFFFFFFFFLL;
  }

  v76 = v149;
  v77 = v139;
  if (v75)
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    v160[0] = v79;
    v160[1] = v78;
    MEMORY[0x1DA6EAC70](v74, v73);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    v73 = v160[1];
    MEMORY[0x1DA6EAC70](v160[0], v160[1]);
  }

  if (qword_1EDD54338 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EDD76A38, v76);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v76);
  v81 = v76;
  v82 = v141;
  v83 = v140;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v77, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    (*(v141 + 32))(v140, v77, v81);
    v84 = v131;
    sub_1D56107A8();
    v77 = v130;
    (*(v82 + 16))(v130, v83, v81);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v81);
    v85 = v135;
    v86 = v132;
    v87 = v136;
    (*(v135 + 104))(v132, *MEMORY[0x1E6975DC8], v136);
    v139 = sub_1D56107B8();
    v73 = v88;
    (*(v85 + 8))(v86, v87);
    sub_1D4E50004(v77, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v133 + 8))(v84, v134);
    if (v73)
    {
      OUTLINED_FUNCTION_11_61();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_38();
      v160[0] = v90 + 1;
      v160[1] = v89;
      MEMORY[0x1DA6EAC70](v139, v73);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_18_49();
      OUTLINED_FUNCTION_48_20();
    }

    (*(v82 + 8))(v83, v149);
    OUTLINED_FUNCTION_54_15();
  }

  v91 = v145;
  if (qword_1EDD54228 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EDD769C0, MEMORY[0x1E69E6158]);
  v92 = v144;
  if (v160[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v93);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD54270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EDD769E0, MEMORY[0x1E69E6158]);
  if (v160[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v94);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD54350 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EDD76A40, MEMORY[0x1E69E6158]);
  if (v160[1])
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_40_27(v95);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
  }

  if (qword_1EDD541F8 != -1)
  {
    OUTLINED_FUNCTION_31_30(&qword_1EDD541F8);
  }

  OUTLINED_FUNCTION_78_7(qword_1EDD76998, v77);
  v96 = __swift_getEnumTagSinglePayload(v73, 1, v77);
  v97 = v153;
  if (v96 == 1)
  {
    sub_1D4E50004(v73, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v98 = v73;
    v99 = v138;
    v100 = v137;
    (*(v138 + 32))(v137, v98, v77);
    strcpy(v160, ",\n  url: ");
    BYTE3(v160[1]) = 0;
    HIDWORD(v160[1]) = -369098752;
    OUTLINED_FUNCTION_10_66();
    sub_1D4E73624(v101, v102, MEMORY[0x1E6968FE0]);
    sub_1D56160F8();
    OUTLINED_FUNCTION_61_19();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_48_20();
    (*(v99 + 8))(v100, v77);
  }

  v103 = v143;
  if (qword_1EDD541D0 != -1)
  {
    OUTLINED_FUNCTION_34_31(&qword_1EDD541D0);
  }

  OUTLINED_FUNCTION_78_7(qword_1EDD541D8, v97);
  if (__swift_getEnumTagSinglePayload(v103, 1, v97) == 1)
  {
    sub_1D4E50004(v103, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v104 = v147;
    v105 = v146;
    (*(v147 + 32))(v146, v103, v97);
    v161 = 0;
    v162 = 0xE000000000000000;
    (*(v104 + 16))(v11, v105, v97);
    v106 = *(v92 + 36);
    sub_1D5189260();
    sub_1D5615608();
    v107 = (v91 + 16);
    v108 = (v91 + 32);
    v109 = (v91 + 8);
    while (1)
    {
      sub_1D5615648();
      if (*&v11[v106] == v160[0])
      {
        break;
      }

      v110 = v11;
      v111 = sub_1D5615688();
      v112 = v152;
      v113 = v155;
      (*v107)(v152);
      v111(v160, 0);
      sub_1D5615658();
      (*v108)(v154, v112, v113);
      v114 = v161 & 0xFFFFFFFFFFFFLL;
      if ((v162 & 0x2000000000000000) != 0)
      {
        v114 = HIBYTE(v162) & 0xF;
      }

      if (v114)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v160[0] = 10;
      v160[1] = 0xE100000000000000;
      v115 = v154;
      v116 = sub_1D5613B88();
      MEMORY[0x1DA6EAC70](v116);

      MEMORY[0x1DA6EAC70](v160[0], v160[1]);

      (*v109)(v115, v155);
      v97 = v153;
      v11 = v110;
    }

    sub_1D4E50004(v11, &qword_1EC7EE5F0, &unk_1D562B8A0);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    strcpy(v160, ",\n  genres: [");
    HIWORD(v160[1]) = -4864;
    v158 = v161;
    v159 = v162;
    v157[0] = 10;
    v157[1] = 0xE100000000000000;
    v156[0] = 0x202020200ALL;
    v156[1] = 0xE500000000000000;
    v117 = sub_1D4F53278();
    v123 = OUTLINED_FUNCTION_23_5(v157, v156, v118, v119, v120, v121, MEMORY[0x1E69E6158], v122, v127, v117, v117, v117);
    v125 = v124;

    MEMORY[0x1DA6EAC70](v123, v125);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_18_49();

    (*(v147 + 8))(v146, v97);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v165;
}

uint64_t MusicMovie.duration.getter()
{
  if (qword_1EDD541A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v4 = sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_45_2(v4, MEMORY[0x1E69E63B0], v5, v4);
  return v7;
}

void MusicMovie.contentRating.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  v12 = v11;
  if (qword_1EDD54300 != -1)
  {
    OUTLINED_FUNCTION_14_52(&qword_1EDD54300);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v13, v10, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v14, v10, v15);
  sub_1D560EC28();
  if (a10)
  {
    v16 = a10;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4EC92E8(v16, v12);

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5184BD4()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v2, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v3, v0, v4);
  sub_1D560EC28();
  return v6;
}

uint64_t MusicMovie.playbackPosition.getter()
{
  if (qword_1EDD54278 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);

  return sub_1D560EC28();
}

uint64_t MusicMovie.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicMovie(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicMovie.catalogID.getter()
{
  v0 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v11, v12, &protocol conformance descriptor for MusicMovie);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v2 + 8))(v6, v0);
  v13 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    sub_1D4E50004(v10, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v14 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0();
    (*(v15 + 8))(v10, v13);
  }

  return v14;
}

void MusicMovie.clips.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD541E8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF318, &qword_1D563DD60);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v14 = sub_1D4E73624(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void sub_1D5185288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD54300 != -1)
  {
    OUTLINED_FUNCTION_14_52(&qword_1EDD54300);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v14 = sub_1D4E73624(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D518536C()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_70();
  sub_1D4E73624(v2, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v5 = sub_1D4E73624(v3, v0, v4);
  OUTLINED_FUNCTION_45_2(v5, MEMORY[0x1E69E6158], v6, v5);
  return v8;
}

uint64_t MusicMovie.editorialArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1D4F5C2FC();
  sub_1D4F39AB0(a1, v9, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v10 = sub_1D56140F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  result = sub_1D4E50004(v9, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4F5C2FC();
    v13 = OUTLINED_FUNCTION_71();
    sub_1D4E50004(v13, v14, &unk_1D561A0C0);
    return sub_1D4F39A1C(v6, a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

void MusicMovie._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD54250 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v4 = sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_36_1(v4);
  OUTLINED_FUNCTION_69_3();
}

void MusicMovie.editorialCards.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD542D8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v14 = sub_1D4E73624(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void MusicMovie._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  sub_1D4F84A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v4 = sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_36_1(v4);

  OUTLINED_FUNCTION_69_3();
}

void MusicMovie.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD54360 != -1)
  {
    OUTLINED_FUNCTION_35_32(&qword_1EDD54360);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v14 = sub_1D4E73624(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

void sub_1D51858C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EDD541C0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v11, v10, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  v14 = sub_1D4E73624(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t MusicMovie.supportedLocales.getter()
{
  if (qword_1EDD54268 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_99();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);

  return sub_1D560EC28();
}

uint64_t MusicMovie.genres.getter()
{
  if (qword_1EDD541D0 != -1)
  {
    OUTLINED_FUNCTION_34_31(&qword_1EDD541D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.crossMerchandise.getter()
{
  if (qword_1EDD54288 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.moreInGenre.getter()
{
  if (qword_1EDD54340 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.musicArtists.getter()
{
  if (qword_1EDD54308 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.playlists.getter()
{
  if (qword_1EDD54180 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.viewersAlsoBought.getter()
{
  if (qword_1EDD54258 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_3_93();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t MusicMovie.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for MusicMovie(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_40();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t MusicMovie.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for MusicMovie(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_40();
  sub_1D4E73624(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5186134(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D4E73624(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51861D8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicMovie.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicMovie.subscript.getter(uint64_t a1)
{
  return sub_1D5186240();
}

{
  return sub_1D5186240();
}

uint64_t sub_1D5186240()
{
  OUTLINED_FUNCTION_23_41();
  sub_1D4E73624(v1, v0, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_29_34(&qword_1EDD59308);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t MusicMovie.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_23_41();
  sub_1D4E73624(v2, v1, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_29_34(&qword_1EDD59308);
  OUTLINED_FUNCTION_0_118();
  sub_1D4E73624(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5186430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v11 = sub_1D4E73624(&qword_1EDD592E8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D5186564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v13 = sub_1D4E73624(&qword_1EDD592E8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D51866A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v13 = sub_1D4E73624(&qword_1EDD592E8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D51867EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A50 = v0;
  return result;
}

uint64_t sub_1D5186860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76978 = v0;
  return result;
}

uint64_t sub_1D5186904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD533C0, MEMORY[0x1E6975930], MEMORY[0x1E6975948]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A30 = v0;
  return result;
}

uint64_t sub_1D51869B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D518961C();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76990 = v0;
  return result;
}

uint64_t sub_1D5186A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D503853C();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A28 = v0;
  return result;
}

uint64_t sub_1D5186AA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76968 = v0;
  return result;
}

uint64_t sub_1D5186B18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6969558]);
  OUTLINED_FUNCTION_56_18(0x616F6C6E776F645FLL, 0x6564u);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A20 = v0;
  return result;
}

uint64_t sub_1D5186BA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76970 = v0;
  return result;
}

uint64_t sub_1D5186C20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  sub_1D560D118();
  OUTLINED_FUNCTION_63();

  qword_1EDD769D0 = v0;
  return result;
}

uint64_t sub_1D5186CD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_39();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6975E68]);
  OUTLINED_FUNCTION_28_1();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A18 = v0;
  return result;
}

uint64_t sub_1D5186D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D50384C0();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A48 = v0;
  return result;
}

uint64_t sub_1D5186DE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(19);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769C8 = v0;
  return result;
}

uint64_t sub_1D5186E5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A10 = v0;
  return result;
}

uint64_t sub_1D5186EDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(21);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769B8 = v0;
  return result;
}

uint64_t sub_1D5186F58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(qword_1EDD52EF0, MEMORY[0x1E69768B0], MEMORY[0x1E69768C8]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769B0 = v0;
  return result;
}

uint64_t sub_1D5187000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52ED8, MEMORY[0x1E69768E8], MEMORY[0x1E6976900]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(23);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769A8 = v0;
  return result;
}

uint64_t sub_1D51870A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52EC0, MEMORY[0x1E6976A18], MEMORY[0x1E6976A30]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(30);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769A0 = v0;
  return result;
}

uint64_t sub_1D5187150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6969558]);
  OUTLINED_FUNCTION_56_18(0x616C507473616C5FLL, 0x6579u);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A08 = v0;
  return result;
}

uint64_t sub_1D51871E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6969558]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769F0 = v0;
  return result;
}

uint64_t sub_1D5187278()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD52A48, MEMORY[0x1E69774A0], MEMORY[0x1E69774B8]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A00 = v0;
  return result;
}

uint64_t sub_1D5187328()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D503840C();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76980 = v0;
  return result;
}

uint64_t sub_1D5187398()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D51896D0();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769E8 = v0;
  return result;
}

double sub_1D5187410@<D0>(uint64_t a1@<X8>)
{
  MusicMovie.playbackPosition.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D5187454()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D4E73624(&qword_1EDD53160, MEMORY[0x1E6975E88], MEMORY[0x1E6975EA8]);
  OUTLINED_FUNCTION_47_25();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769F8 = v0;
  return result;
}

uint64_t sub_1D51874F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6969558]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A38 = v0;
  return result;
}

uint64_t sub_1D5187594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769E0 = v0;
  return result;
}

uint64_t sub_1D5187610()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(20);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769C0 = v0;
  return result;
}

uint64_t sub_1D518768C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_25();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76A40 = v0;
  return result;
}

uint64_t sub_1D5187700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D51895C8();
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_52_11(16);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD769D8 = v0;
  return result;
}

uint64_t sub_1D5187778()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76988 = v0;
  return result;
}

uint64_t sub_1D51877E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMovie(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D518784C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_66();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76998 = v0;
  return result;
}

uint64_t sub_1D51878D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4E73624(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  v0 = sub_1D560D138();

  qword_1EC7F1070 = v0;
  return result;
}

uint64_t sub_1D51879F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5120684();
  OUTLINED_FUNCTION_28_1();
  sub_1D560D128();
  OUTLINED_FUNCTION_63();

  qword_1EDD542E0 = v0;
  return result;
}

uint64_t sub_1D5187AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_10_66();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EDD54328 = v0;
  return result;
}

uint64_t sub_1D5187BD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_22_39();
  sub_1D4E73624(v1, v2, MEMORY[0x1E6975E68]);
  sub_1D560D138();
  OUTLINED_FUNCTION_63();

  qword_1EDD54240 = v0;
  return result;
}

uint64_t sub_1D5187CE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E73624(&qword_1EDD5D240, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE8]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EDD541D8 = v0;
  return result;
}

uint64_t sub_1D5187DC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v1, v2, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54290 = v0;
  return result;
}

uint64_t sub_1D5187EA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v1, v2, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54348 = v0;
  return result;
}

uint64_t sub_1D5187F80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E73624(&unk_1EDD52E00, MEMORY[0x1E6976F28], MEMORY[0x1E6976F40]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54310 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.musicArtists.getter()
{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D5188070()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E73624(qword_1EDD52A80, MEMORY[0x1E69773E0], MEMORY[0x1E6977400]);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54188 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.playlists.getter()
{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96F8, &qword_1EC7F7528, sub_1D54D5B40);
}

uint64_t sub_1D5188158()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v1, v2, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_14_2();
  sub_1D560D0E8();
  OUTLINED_FUNCTION_63();

  qword_1EDD54260 = v0;
  return result;
}

uint64_t sub_1D5188248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D51882C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D5188340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D51883BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D5188438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D51884B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D5188530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D51885AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D5188628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D51886A4(uint64_t a1, uint64_t a2)
{
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return sub_1D5613028();
}

uint64_t sub_1D5188720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D51887A4(uint64_t a1, uint64_t a2)
{
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return sub_1D5612FD8();
}

uint64_t sub_1D5188828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D51888A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t sub_1D5188920(uint64_t a1, uint64_t a2)
{
  sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return sub_1D560CBD8();
}

uint64_t static MusicMovie.catalogFilterID(for:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D56159B8();
  v1 = sub_1D5614D18();

  if (v1)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5188B14(uint64_t a1, uint64_t a2)
{
  sub_1D4E73624(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return sub_1D5610C58();
}

uint64_t sub_1D5188BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4E73624(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *v9 = v4;
  v9[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v10);
}

uint64_t MusicMovie.init(from:)(void *a1)
{
  type metadata accessor for MusicMovie(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v3, v4, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_26_42();
  sub_1D4E73624(v5, v1, &protocol conformance descriptor for CloudMusicMovie);
  OUTLINED_FUNCTION_30_32(&qword_1EDD5C6D8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicMovie.encode(to:)(uint64_t a1)
{
  type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v2, v3, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_26_42();
  sub_1D4E73624(v4, v1, &protocol conformance descriptor for CloudMusicMovie);
  OUTLINED_FUNCTION_30_32(&qword_1EDD5C6D8);
  return sub_1D5612688();
}

unint64_t MusicMovie.description.getter()
{
  sub_1D5615B68();

  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](0x656C746974202C22, 0xEB0000000022203ALL);
  v1 = MusicMovie.title.getter();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1D5188F74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EDD59388 = v4;
  return result;
}

uint64_t sub_1D51890D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D5621D90;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6975208], v0);
  result = (v8)(v7 + v4, *MEMORY[0x1E6975218], v0);
  qword_1EDD59370 = v6;
  return result;
}

uint64_t sub_1D5189204(uint64_t a1)
{
  v2 = type metadata accessor for MusicMovie(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5189260()
{
  result = qword_1EC7EA5A8;
  if (!qword_1EC7EA5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA5A8);
  }

  return result;
}

uint64_t sub_1D51892C4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD59328);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_2_97();
  sub_1D4E73624(v3, v4, &protocol conformance descriptor for MusicMovie);
  return sub_1D560D988();
}

uint64_t sub_1D5189370()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53D50);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD59320 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD59328);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D518949C(uint64_t a1)
{
  result = sub_1D4E73624(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D51895C8()
{
  result = qword_1EDD55800[0];
  if (!qword_1EDD55800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55800);
  }

  return result;
}

unint64_t sub_1D518961C()
{
  result = qword_1EDD52808;
  if (!qword_1EDD52808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF318, &qword_1D563DD60);
    sub_1D4E73624(qword_1EDD545F0, type metadata accessor for MovieClip, &protocol conformance descriptor for MovieClip);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52808);
  }

  return result;
}

unint64_t sub_1D51896D0()
{
  result = qword_1EDD56B80;
  if (!qword_1EDD56B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56B80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_31(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_61_19()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t MusicMoodStationResponse.stations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicMoodStationResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D5614408();
  OUTLINED_FUNCTION_0_119();
  sub_1D518A338(v2, v3, MEMORY[0x1E6977190]);

  return sub_1D560DAA8();
}

uint64_t MusicMoodStationResponse.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518990C();

  return sub_1D5614CB8();
}

unint64_t sub_1D518990C()
{
  result = qword_1EC7F1088;
  if (!qword_1EC7F1088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA640, &unk_1D563EA60);
    sub_1D518A338(&qword_1EC7EBD38, MEMORY[0x1E6977180], MEMORY[0x1E6977188]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1088);
  }

  return result;
}

uint64_t MusicMoodStationResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518990C();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5189A30(uint64_t a1)
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518990C();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicMoodStationResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = v29 - v6;
  v34 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v32 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA68, &qword_1D5634100);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v29 - v19;
  sub_1D4E628D4(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  sub_1D518A0E8(&qword_1EDD53280, MEMORY[0x1E6975D48]);
  sub_1D5612428();
  if (!v2)
  {
    v30 = v14;
    (*(v14 + 16))(v18, v20, v12);
    v29[0] = 0;
    v29[1] = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = v11;
    sub_1D5616378();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5616368();
    v22 = sub_1D560CD98();
    v23 = v31;
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v22);
    sub_1D5614408();
    OUTLINED_FUNCTION_0_119();
    sub_1D518A338(v24, v25, MEMORY[0x1E6977160]);
    v26 = v34;
    sub_1D5612368();

    sub_1D4F4A0BC(v23);
    (*(v32 + 8))(v21, v26);
    v27 = *(v30 + 8);
    v27(v18, v12);
    v27(v20, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicMoodStationResponse.encode(to:)(void *a1)
{
  v26 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA68, &qword_1D5634100);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163C8();
  v20 = v26;
  (*(v3 + 104))(v7, *MEMORY[0x1E6976A78], v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  OUTLINED_FUNCTION_0_119();
  sub_1D518A338(v21, v22, MEMORY[0x1E6977160]);
  sub_1D560DA98();
  (*(v3 + 8))(v7, v20);
  (*(v10 + 8))(v14, v8);
  sub_1D518A0E8(&qword_1EC7F0BD0, MEMORY[0x1E6975D30]);
  v23 = v27;
  sub_1D5612418();
  return (*(v16 + 8))(v19, v23);
}

uint64_t sub_1D518A0E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    v4 = MEMORY[0x1E6975B30];
    sub_1D518A338(&qword_1EDD53370, MEMORY[0x1E6975B30], MEMORY[0x1E6975B50]);
    sub_1D518A338(&qword_1EDD53378, v4, MEMORY[0x1E6975B38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D518A1EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  sub_1D518A4C8();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_1D518A338(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MusicMoodStationResponse(uint64_t a1)
{
  result = qword_1EC7F1098;
  if (!qword_1EC7F1098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D518A3FC(uint64_t a1)
{
  sub_1D518A468(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D518A468(uint64_t a1)
{
  if (!qword_1EC7F10A8)
  {
    sub_1D5614408();
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F10A8);
    }
  }
}

unint64_t sub_1D518A4C8()
{
  result = qword_1EC7F10B0;
  if (!qword_1EC7F10B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA640, &unk_1D563EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10B0);
  }

  return result;
}

void *sub_1D518A52C()
{
  result = static InternalMusicPlayer.Configuration.Option.allCases.getter();
  qword_1EC7F10B8 = 0x636973754DLL;
  unk_1EC7F10C0 = 0xE500000000000000;
  off_1EC7F10C8 = result;
  return result;
}

void *static InternalMusicPlayer.Configuration.Option.allCases.getter()
{
  sub_1D4EF36B0(&unk_1F50A39B8);
  v0 = &unk_1F50A3990;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4F01FA8();
    v0 = v3;
  }

  v1 = v0[2];
  if (v1 >= v0[3] >> 1)
  {
    sub_1D4F01FA8();
    v0 = v4;
  }

  v0[2] = v1 + 1;
  *(v0 + v1 + 32) = 3;
  return v0;
}

uint64_t InternalMusicPlayer.Configuration.init(playerID:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double static InternalMusicPlayer.Configuration.systemMusic.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EC7E8FF0 != -1)
  {
    swift_once();
  }

  v2 = unk_1EC7F10C0;
  v3 = off_1EC7F10C8;
  *a1 = qword_1EC7F10B8;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t InternalMusicPlayer.Configuration.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InternalMusicPlayer.Configuration.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t InternalMusicPlayer.Configuration.Option.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void *sub_1D518A7B8@<X0>(void *a1@<X8>)
{
  result = static InternalMusicPlayer.Configuration.Option.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static InternalMusicPlayer.Configuration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  return sub_1D4F0B2E4();
}

uint64_t InternalMusicPlayer.Configuration.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();

  return sub_1D4F0B2F8();
}

uint64_t InternalMusicPlayer.Configuration.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D4F0B2F8();
  return sub_1D5616328();
}

uint64_t sub_1D518A914(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  sub_1D56162D8();
  InternalMusicPlayer.Configuration.hash(into:)(v3);
  return sub_1D5616328();
}

unint64_t sub_1D518A968()
{
  result = qword_1EC7F10D0;
  if (!qword_1EC7F10D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F10D8, &qword_1D563EBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10D0);
  }

  return result;
}

unint64_t sub_1D518A9D0()
{
  result = qword_1EC7F10E0;
  if (!qword_1EC7F10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10E0);
  }

  return result;
}

unint64_t sub_1D518AA28()
{
  result = qword_1EC7F10E8;
  if (!qword_1EC7F10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F10E8);
  }

  return result;
}

_BYTE *_s13ConfigurationV6OptionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}
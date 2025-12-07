uint64_t sub_2703ABFB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2703AC3D8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2703ABFF8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2703AC024(uint64_t a1)
{
  v2 = sub_2703AF4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703AC060(uint64_t a1)
{
  v2 = sub_2703AF4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703AC09C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7959906 && a2 == 0xE300000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746167656C6564 && a2 == 0xE800000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2003790950 && a2 == 0xE400000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000002706130F0 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x8000000270613110 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2703AC2D4(unsigned __int8 a1)
{
  sub_2705D83B4();
  MEMORY[0x2743A47E0](a1);
  return sub_2705D8414();
}

unint64_t sub_2703AC31C(char a1)
{
  result = 7959906;
  switch(a1)
  {
    case 1:
      result = 0x65746167656C6564;
      break;
    case 2:
      result = 2003790950;
      break;
    case 3:
      result = 0x4C52556E65706FLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2703AC3D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2703AC44C()
{
  sub_2705D83B4();
  MEMORY[0x2743A47E0](0);
  return sub_2705D8414();
}

uint64_t sub_2703AC490(void *a1, unint64_t a2)
{
  v99 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE988, &qword_2705DAAB8);
  OUTLINED_FUNCTION_0();
  v92 = v4;
  v93 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v91 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE990, &qword_2705DAAC0);
  OUTLINED_FUNCTION_0();
  v89 = v8;
  v90 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v88 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE998, &qword_2705DAAC8);
  OUTLINED_FUNCTION_0();
  v86 = v12;
  v87 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_0();
  v85 = v14;
  v83 = type metadata accessor for OpenURLActionModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  v84 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE9A0, &qword_2705DAAD0);
  OUTLINED_FUNCTION_0();
  v81 = v18;
  v82 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_0();
  v80 = v20;
  v78 = type metadata accessor for FlowActionModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26();
  v79 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE9A8, &qword_2705DAAD8);
  OUTLINED_FUNCTION_0();
  v77 = v24;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE9B0, &qword_2705DAAE0);
  OUTLINED_FUNCTION_0();
  v76 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  v30 = &v75 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE9B8, &qword_2705DAAE8);
  OUTLINED_FUNCTION_0();
  v95 = v31;
  v96 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  v35 = &v75 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703AF1D0();
  v94 = v35;
  sub_2705D84C4();
  switch(v99 >> 61)
  {
    case 1uLL:
      v60 = OUTLINED_FUNCTION_21();
      memcpy(v60, v61, 0x79uLL);
      v97[0] = 1;
      sub_2703AF41C();
      v63 = v94;
      v62 = v95;
      OUTLINED_FUNCTION_18();
      sub_2705D7FE4();
      v64 = OUTLINED_FUNCTION_27();
      memcpy(v64, v65, 0x79uLL);
      sub_2703AF470();
      sub_2705D8084();
      v66 = OUTLINED_FUNCTION_23();
      v67(v66, v23);
      return (*(v96 + 8))(v63, v62);
    case 2uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_9();
      v44 = v79;
      sub_2703AE700(v45, v79, v46);
      __dst[0] = 2;
      sub_2703AF3C8();
      OUTLINED_FUNCTION_3_0(&type metadata for ActionModelBox.Action.FlowCodingKeys);
      OUTLINED_FUNCTION_8();
      sub_2703AED44(v47, v48, &protocol conformance descriptor for FlowActionModel);
      v49 = v82;
      OUTLINED_FUNCTION_30(v44);
      v50 = OUTLINED_FUNCTION_10();
      v51(v50, v49);
      v52 = type metadata accessor for FlowActionModel;
      goto LABEL_6;
    case 3uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_7();
      v44 = v84;
      sub_2703AE700(v53, v84, v54);
      __dst[0] = 3;
      sub_2703AF374();
      OUTLINED_FUNCTION_3_0(&type metadata for ActionModelBox.Action.OpenURLCodingKeys);
      OUTLINED_FUNCTION_11();
      sub_2703AED44(v55, v56, &protocol conformance descriptor for OpenURLActionModel);
      v57 = v87;
      OUTLINED_FUNCTION_30(v44);
      v58 = OUTLINED_FUNCTION_10();
      v59(v58, v57);
      v52 = type metadata accessor for OpenURLActionModel;
LABEL_6:
      sub_2703AFC74(v44, v52);
      return (*(v96 + 8))(v23, v36);
    case 4uLL:
      v39 = OUTLINED_FUNCTION_21();
      memcpy(v39, v40, 0x59uLL);
      v97[0] = 4;
      sub_2703AF2CC();
      OUTLINED_FUNCTION_3_0(&type metadata for ActionModelBox.Action.PromptNotificationCodingKeys);
      v41 = OUTLINED_FUNCTION_27();
      memcpy(v41, v42, 0x59uLL);
      sub_2703AF320();
      v43 = v90;
      OUTLINED_FUNCTION_30(v97);
      goto LABEL_9;
    case 5uLL:
      v69 = OUTLINED_FUNCTION_21();
      memcpy(v69, v70, 0x81uLL);
      v97[0] = 5;
      sub_2703AF224();
      OUTLINED_FUNCTION_3_0(&type metadata for ActionModelBox.Action.RecordMessageEventCodingKeys);
      v71 = OUTLINED_FUNCTION_27();
      memcpy(v71, v72, 0x81uLL);
      sub_2703AF278();
      v43 = v93;
      OUTLINED_FUNCTION_30(v97);
LABEL_9:
      v73 = OUTLINED_FUNCTION_10();
      v74(v73, v43);
      break;
    default:
      memcpy(__dst, (v99 + 16), sizeof(__dst));
      v97[0] = 0;
      sub_2703AF4C4();
      v23 = v94;
      v36 = v95;
      OUTLINED_FUNCTION_18();
      sub_2705D7FE4();
      v37 = OUTLINED_FUNCTION_27();
      memcpy(v37, v38, 0x80uLL);
      sub_2703AF518();
      sub_2705D8084();
      (*(v76 + 8))(v30, v26);
      break;
  }

  return (*(v96 + 8))(v23, v36);
}

unint64_t sub_2703ACC4C(void *a1)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA28, &qword_2705DAAF0);
  OUTLINED_FUNCTION_0();
  v98 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  v102 = v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA30, &qword_2705DAAF8);
  OUTLINED_FUNCTION_0();
  v97 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v100 = v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA38, &qword_2705DAB00);
  OUTLINED_FUNCTION_0();
  v96 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v99 = v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA40, &qword_2705DAB08);
  OUTLINED_FUNCTION_0();
  v95 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_0();
  v101 = v13;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA48, &qword_2705DAB10);
  OUTLINED_FUNCTION_0();
  v94 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA50, &qword_2705DAB18);
  OUTLINED_FUNCTION_0();
  v93 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA58, &unk_2705DAB20);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  v28 = a1[3];
  v27 = a1[4];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_2703AF1D0();
  v29 = v104;
  sub_2705D8484();
  if (v29)
  {
    goto LABEL_8;
  }

  v85 = v18;
  v86 = v22;
  v87 = v17;
  v104 = v25;
  v30 = sub_2705D7FB4();
  sub_27042C9F0(v30, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_7;
  }

  v84 = 0;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2703AD7A4);
  }

  v34 = *(v31 + v32);
  sub_27042C9E4(v32 + 1);
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
LABEL_7:
    v27 = sub_2705D7D84();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v41 = &type metadata for ActionModelBox.Action;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v27 - 8) + 104))(v41, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = OUTLINED_FUNCTION_15();
    v43(v42, v23);
LABEL_8:
    v44 = v103;
    goto LABEL_9;
  }

  switch(v34)
  {
    case 1:
      v106 = 1;
      sub_2703AF41C();
      OUTLINED_FUNCTION_2(&type metadata for ActionModelBox.Action.DelegateCodingKeys, &v106);
      OUTLINED_FUNCTION_24();
      v56 = swift_allocObject();
      sub_2703AFB20();
      v57 = v88;
      OUTLINED_FUNCTION_29(&type metadata for DelegateActionModel);
      OUTLINED_FUNCTION_22();
      swift_unknownObjectRelease();
      v76 = OUTLINED_FUNCTION_10();
      v77(v76, v57);
      v78 = OUTLINED_FUNCTION_1();
      v79(v78);
      v27 = v56 | 0x2000000000000000;
      goto LABEL_15;
    case 2:
      v107 = 2;
      sub_2703AF3C8();
      OUTLINED_FUNCTION_2(&type metadata for ActionModelBox.Action.FlowCodingKeys, &v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8, &qword_2705DA640);
      v48 = swift_allocBox();
      type metadata accessor for FlowActionModel(0);
      OUTLINED_FUNCTION_8();
      sub_2703AED44(v49, v50, &protocol conformance descriptor for FlowActionModel);
      v51 = v90;
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v64 = OUTLINED_FUNCTION_23();
      v65(v64, v51);
      v66 = OUTLINED_FUNCTION_15();
      v67(v66, v23);
      v27 = v48 | 0x4000000000000000;
      v44 = v103;
      break;
    case 3:
      v108 = 3;
      sub_2703AF374();
      OUTLINED_FUNCTION_2(&type metadata for ActionModelBox.Action.OpenURLCodingKeys, &v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8E0, qword_2705DA648);
      v52 = swift_allocBox();
      type metadata accessor for OpenURLActionModel(0);
      OUTLINED_FUNCTION_11();
      sub_2703AED44(v53, v54, &protocol conformance descriptor for OpenURLActionModel);
      v55 = v91;
      sub_2705D7FA4();
      OUTLINED_FUNCTION_22();
      swift_unknownObjectRelease();
      v68 = OUTLINED_FUNCTION_23();
      v69(v68, v55);
      v70 = OUTLINED_FUNCTION_1();
      v71(v70);
      v27 = v52 | 0x6000000000000000;
      goto LABEL_15;
    case 4:
      v109 = 4;
      sub_2703AF2CC();
      OUTLINED_FUNCTION_2(&type metadata for ActionModelBox.Action.PromptNotificationCodingKeys, &v109);
      v46 = swift_allocObject();
      sub_2703AFA18();
      v47 = v92;
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v60 = OUTLINED_FUNCTION_10();
      v61(v60, v47);
      v62 = OUTLINED_FUNCTION_1();
      v63(v62);
      v27 = v46 | 0x8000000000000000;
      goto LABEL_16;
    case 5:
      v110 = 5;
      sub_2703AF224();
      OUTLINED_FUNCTION_2(&type metadata for ActionModelBox.Action.RecordMessageEventCodingKeys, &v110);
      v58 = swift_allocObject();
      sub_2703AF9C4();
      v59 = v89;
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v80 = OUTLINED_FUNCTION_10();
      v81(v80, v59);
      v82 = OUTLINED_FUNCTION_1();
      v83(v82);
      v27 = v58 | 0xA000000000000000;
LABEL_16:
      v44 = v103;
      break;
    default:
      v105 = 0;
      sub_2703AF4C4();
      OUTLINED_FUNCTION_2(&type metadata for ActionModelBox.Action.BuyCodingKeys, &v105);
      v27 = swift_allocObject();
      sub_2703AFB74();
      v39 = v85;
      OUTLINED_FUNCTION_29(&type metadata for BuyActionModel);
      OUTLINED_FUNCTION_22();
      swift_unknownObjectRelease();
      v72 = OUTLINED_FUNCTION_10();
      v73(v72, v39);
      v74 = OUTLINED_FUNCTION_1();
      v75(v74);
LABEL_15:
      v44 = v103;
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v27;
}

uint64_t sub_2703AD7D8(uint64_t a1)
{
  v2 = *v1;
  sub_2705D83B4();
  MEMORY[0x2743A47E0](v2);
  return sub_2705D8414();
}

uint64_t sub_2703AD824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703AC09C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703AD86C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2703AC294();
  *a1 = result;
  return result;
}

uint64_t sub_2703AD894(uint64_t a1)
{
  v2 = sub_2703AF1D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703AD8D0(uint64_t a1)
{
  v2 = sub_2703AF1D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703AD90C(uint64_t a1)
{
  v2 = sub_2703AF41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703AD948(uint64_t a1)
{
  v2 = sub_2703AF41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703AD984(uint64_t a1)
{
  v2 = sub_2703AF3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703AD9C0(uint64_t a1)
{
  v2 = sub_2703AF3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703AD9FC(uint64_t a1)
{
  v2 = sub_2703AF374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703ADA38(uint64_t a1)
{
  v2 = sub_2703AF374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703ADA74(uint64_t a1)
{
  v2 = sub_2703AF2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703ADAB0(uint64_t a1)
{
  v2 = sub_2703AF2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703ADAEC(uint64_t a1)
{
  sub_2705D83B4();
  MEMORY[0x2743A47E0](0);
  return sub_2705D8414();
}

uint64_t sub_2703ADB2C(uint64_t a1)
{
  v2 = sub_2703AF224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703ADB68(uint64_t a1)
{
  v2 = sub_2703AF224();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2703ADBA4@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_2703ACC4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static ActionModelBox.buy(_:)()
{
  OUTLINED_FUNCTION_25();
  memcpy(__dst, v0, sizeof(__dst));
  v2 = swift_allocObject();
  memcpy((v2 + 16), v0, 0x80uLL);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = v2;
  *(v1 + 24) = -1;
  return sub_2703AE65C(__dst, &v4);
}

void static ActionModelBox.flow(_:)()
{
  OUTLINED_FUNCTION_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8, &qword_2705DA640);
  v1 = swift_allocBox();
  OUTLINED_FUNCTION_9();
  sub_2703AE700(v0, v2, v3);
  OUTLINED_FUNCTION_13(v1 | 0x4000000000000000);
}

void static ActionModelBox.openURL(_:)()
{
  OUTLINED_FUNCTION_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8E0, qword_2705DA648);
  v1 = swift_allocBox();
  OUTLINED_FUNCTION_7();
  sub_2703AE700(v0, v2, v3);
  OUTLINED_FUNCTION_13(v1 | 0x6000000000000000);
}

uint64_t static ActionModelBox.promptNotification(_:)()
{
  OUTLINED_FUNCTION_25();
  memcpy(__dst, v0, 0x59uLL);
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x59uLL);
  OUTLINED_FUNCTION_13(v1 | 0x8000000000000000);
  return sub_2703AE7F0(__dst, &v3);
}

uint64_t ActionModelBox.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2705D84B4();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2703AE8E0();
  sub_2705D8204();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void sub_2703ADE54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98, &unk_2705DAB30);
  v5 = sub_2705D7F54();
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    v9 = v5 == 2003790950 && v6 == 0xE400000000000000;
    if (v9 || (sub_2705D8134() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8, &qword_2705DA640);
      v10 = swift_allocBox();
      sub_27042543C(a1, v11, v12, v13, v14, v15, v16, v17, v18, v19, SBYTE4(v19), SBYTE5(v19), SBYTE6(v19), SHIBYTE(v19), v20, v21, v22, v23, v24, v25, v26, v27, vars0, vars8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v10 | 0x4000000000000000;
      *(a2 + 24) = -1;
    }

    else
    {
      sub_2705D7D04();

      MEMORY[0x2743A3A90](v7, v8);

      sub_2705D7D84();
      swift_allocError();
      sub_2703AFBC8(&qword_2807CEAA0, &qword_2807CEA98, &unk_2705DAB30, MEMORY[0x277D844D0]);
      sub_2705D7D34();

      swift_willThrow();
    }
  }
}

uint64_t ActionModelBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D8454();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_2703AE994();
    sub_2705D8184();
    __swift_destroy_boxed_opaque_existential_1(v13);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = v12;
    *(a2 + 24) = -1;

    v9 = OUTLINED_FUNCTION_16();
    sub_2703AE9E8(v9, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v5 = OUTLINED_FUNCTION_16();
  return sub_2703AE980(v5, v6, v7);
}

void sub_2703AE190(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s6ActionVMa(0);
  v5 = v4;
  if (*(a1 + v4[10]) > 1u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8, &qword_2705DA640);
    v15 = swift_allocBox();
    v31 = v30;
    type metadata accessor for FlowActionModel.FlowType(0);
    swift_storeEnumTagMultiPayload();
    v32 = type metadata accessor for FlowActionModel(0);
    v33 = v31 + *(v32 + 20);
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *(v33 + 24) = -2;
    v21 = v31 + *(v32 + 24);
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = -2;
    v26 = *v33;
    v27 = *(v33 + 8);
    v28 = *(v33 + 16);
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *v33 = 0;
    v29 = *(v33 + 24);
    *(v33 + 24) = -2;
  }

  else
  {
    v6 = *(a1 + v4[9]);
    if (v6 != 2 && (v6 & 1) != 0 && (v7 = (a1 + v4[7]), (v8 = v7[1]) != 0))
    {
      v69 = *v7;
      v9 = a1 + v4[12];
      v74 = *v9;
      v75 = *(v9 + 1);
      v10 = a1 + v4[8];
      v11 = *v10;
      v12 = *(v10 + 1);
      v72 = v12;
      v73 = *v10;
      v13 = v9[16];
      v14 = v10[16];
      v71 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8, &qword_2705DA640);
      v15 = swift_allocBox();
      v17 = v16;
      OUTLINED_FUNCTION_24();
      v18 = swift_allocObject();
      *(v18 + 16) = v69;
      *(v18 + 24) = v8;
      *(v18 + 32) = v74;
      *(v18 + 40) = v75;
      *(v18 + 48) = v13;
      *(v18 + 56) = v11;
      *(v18 + 64) = v12;
      *(v18 + 72) = v14;
      *(v18 + 88) = 0;
      *(v18 + 96) = 0;
      *(v18 + 80) = 0;
      *(v18 + 104) = -2;
      *(v18 + 120) = 0;
      *(v18 + 128) = 0;
      *(v18 + 112) = 0;
      *(v18 + 136) = -2;
      v70 = v18 | 0x2000000000000000;
      type metadata accessor for FlowActionModel.FlowType(0);
      swift_storeEnumTagMultiPayload();
      v19 = type metadata accessor for FlowActionModel(0);
      v20 = v17 + *(v19 + 20);
      *v20 = 0;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *(v20 + 24) = -2;
      v21 = v17 + *(v19 + 24);
      *v21 = 0;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *(v21 + 24) = -2;
      v22 = *v20;
      v23 = *(v20 + 8);
      v24 = *(v20 + 16);
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = v70;
      v25 = *(v20 + 24);
      *(v20 + 24) = -1;

      sub_2703AE9E8(v74, v75, v13);
      sub_2703AE9E8(v73, v72, v71);
      v26 = v22;
      v27 = v23;
      v28 = v24;
      v29 = v25;
    }

    else
    {
      v34 = a1[1];
      if (!v34)
      {
        OUTLINED_FUNCTION_12();
        v66 = OUTLINED_FUNCTION_16();
        sub_2703AE980(v66, v67, v68);
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = -2;
        OUTLINED_FUNCTION_28();
        return;
      }

      v35 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8, &qword_2705DA640);
      v15 = swift_allocBox();
      v37 = v36;
      OUTLINED_FUNCTION_24();
      v38 = swift_allocObject();
      *(v38 + 16) = v35;
      *(v38 + 24) = v34;
      *(v38 + 32) = 0;
      *(v38 + 40) = 0;
      *(v38 + 48) = -1;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      *(v38 + 72) = -1;
      *(v38 + 88) = 0;
      *(v38 + 96) = 0;
      *(v38 + 80) = 0;
      *(v38 + 104) = -2;
      *(v38 + 120) = 0;
      *(v38 + 128) = 0;
      *(v38 + 112) = 0;
      *(v38 + 136) = -2;
      v39 = v38 | 0x2000000000000000;
      type metadata accessor for FlowActionModel.FlowType(0);
      swift_storeEnumTagMultiPayload();
      v40 = type metadata accessor for FlowActionModel(0);
      v41 = v37 + *(v40 + 20);
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *(v41 + 24) = -2;
      v21 = v37 + *(v40 + 24);
      *v21 = 0;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *(v21 + 24) = -2;
      v42 = *v41;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *v41 = v39;
      LOBYTE(v39) = *(v41 + 24);
      *(v41 + 24) = -1;

      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v39;
    }
  }

  sub_2703AFC10(v26, v27, v28, v29);
  v45 = *v21;
  v46 = *(v21 + 8);
  v47 = *(v21 + 16);
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *v21 = 0;
  v48 = *(v21 + 24);
  *(v21 + 24) = -2;
  sub_2703AFC10(v45, v46, v47, v48);
  v49 = a1 + v5[8];
  v50 = *v49;
  v51 = *(v49 + 1);
  v52 = v49[16];
  v53 = OUTLINED_FUNCTION_20();
  sub_2703AE9E8(v53, v54, v55);
  OUTLINED_FUNCTION_12();
  v56 = OUTLINED_FUNCTION_16();
  sub_2703AE980(v56, v57, v58);
  *a2 = v15 | 0x4000000000000000;
  *(a2 + 8) = v50;
  *(a2 + 16) = v51;
  *(a2 + 24) = v52;

  v59 = OUTLINED_FUNCTION_20();
  sub_2703AE9E8(v59, v60, v61);

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_28();

  sub_2703AE980(v62, v63, v64);
}

uint64_t sub_2703AE578()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 16), *(v0 + 24), v1);
  }

  v2 = *(v0 + 56);
  if (v2 != 255)
  {
    sub_2703AE630(*(v0 + 40), *(v0 + 48), v2);
  }

  if (*(v0 + 88) != 254)
  {

    v3 = *(v0 + 88);
    if (v3 != 255)
    {
      sub_2703AE630(*(v0 + 72), *(v0 + 80), v3);
    }
  }

  if (*(v0 + 120) != 254)
  {

    v4 = *(v0 + 120);
    if (v4 != 255)
    {
      sub_2703AE630(*(v0 + 104), *(v0 + 112), v4);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2703AE630(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 14 || a3 == 16 || a3 == 15)
  {
  }

  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2703AE700(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2703AE760()
{

  if (*(v0 + 72) != 254)
  {

    v1 = *(v0 + 72);
    if (v1 != 255)
    {
      sub_2703AE630(*(v0 + 56), *(v0 + 64), v1);
    }
  }

  if (*(v0 + 104) != 254)
  {

    v2 = *(v0 + 104);
    if (v2 != 255)
    {
      sub_2703AE630(*(v0 + 88), *(v0 + 96), v2);
    }
  }

  return swift_deallocObject();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2703AE8E0()
{
  result = qword_2807CE8E8;
  if (!qword_2807CE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE8E8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2703AE980(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2703AE630(result, a2, a3);
  }

  return result;
}

unint64_t sub_2703AE994()
{
  result = qword_2807CE8F0;
  if (!qword_2807CE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE8F0);
  }

  return result;
}

uint64_t sub_2703AE9E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2703AE9FC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2703AE9FC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 14 || a3 == 16 || a3 == 15)
  {
  }

  return v3;
}

uint64_t sub_2703AEA28()
{
  if (OUTLINED_FUNCTION_19())
  {
    OUTLINED_FUNCTION_5();
  }

  else
  {
    OUTLINED_FUNCTION_6();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_2703AEA84()
{
  if (OUTLINED_FUNCTION_19())
  {
    OUTLINED_FUNCTION_5();
  }

  else
  {
    OUTLINED_FUNCTION_6();
  }

  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2703AEADC()
{
  result = qword_2807CE908;
  if (!qword_2807CE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CE8F8, &qword_270602AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CE910, &qword_270602AA0);
    sub_2703AEC08();
    sub_2703AECF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE908);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2703AEC08()
{
  result = qword_2807CE918;
  if (!qword_2807CE918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CE910, &qword_270602AA0);
    sub_2703AFBC8(&qword_2807CE920, &qword_2807CE928, &unk_2705DA670, MEMORY[0x277CE04B0]);
    sub_2703AED44(&qword_2807CE930, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE918);
  }

  return result;
}

unint64_t sub_2703AECF0()
{
  result = qword_2807CE938;
  if (!qword_2807CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE938);
  }

  return result;
}

uint64_t sub_2703AED44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2703AED8C()
{
  result = qword_2807CE948;
  if (!qword_2807CE948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CE900, &unk_2705DA660);
    sub_2703AEE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE948);
  }

  return result;
}

unint64_t sub_2703AEE10()
{
  result = qword_2807CE950;
  if (!qword_2807CE950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CE958, &qword_270602B10);
    type metadata accessor for MessageViewStyleBuilderView(255);
    sub_2703AED44(&qword_2807CE960, type metadata accessor for MessageViewStyleBuilderView, &unk_2705F8ADC);
    swift_getOpaqueTypeConformance2();
    sub_2703AFBC8(&qword_2807CE968, &qword_2807CE970, &qword_2705DA680, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE950);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit8JSONTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1Fu) <= 0x10)
  {
    return *(a1 + 16) & 0x1F;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit10JSONObjectVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0x11)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2703AEF78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEE && *(a1 + 25))
    {
      v2 = *a1 + 237;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 0x11)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2703AEFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2703AF024(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703AF044(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2703AF090(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703AF0B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2703AF0F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2703AF14C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2703AF1D0()
{
  result = qword_2807CE9C0;
  if (!qword_2807CE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE9C0);
  }

  return result;
}

unint64_t sub_2703AF224()
{
  result = qword_2807CE9C8;
  if (!qword_2807CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE9C8);
  }

  return result;
}

unint64_t sub_2703AF278()
{
  result = qword_2807CE9D0;
  if (!qword_2807CE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE9D0);
  }

  return result;
}

unint64_t sub_2703AF2CC()
{
  result = qword_2807CE9D8;
  if (!qword_2807CE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE9D8);
  }

  return result;
}

unint64_t sub_2703AF320()
{
  result = qword_2807CE9E0;
  if (!qword_2807CE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE9E0);
  }

  return result;
}

unint64_t sub_2703AF374()
{
  result = qword_2807CE9E8;
  if (!qword_2807CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE9E8);
  }

  return result;
}

unint64_t sub_2703AF3C8()
{
  result = qword_2807CE9F8;
  if (!qword_2807CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CE9F8);
  }

  return result;
}

unint64_t sub_2703AF41C()
{
  result = qword_2807CEA08;
  if (!qword_2807CEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA08);
  }

  return result;
}

unint64_t sub_2703AF470()
{
  result = qword_2807CEA10;
  if (!qword_2807CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA10);
  }

  return result;
}

unint64_t sub_2703AF4C4()
{
  result = qword_2807CEA18;
  if (!qword_2807CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA18);
  }

  return result;
}

unint64_t sub_2703AF518()
{
  result = qword_2807CEA20;
  if (!qword_2807CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA20);
  }

  return result;
}

uint64_t sub_2703AF570(uint64_t a1, id *a2)
{
  result = sub_2705D7544();
  *a2 = 0;
  return result;
}

uint64_t sub_2703AF5E8(uint64_t a1, id *a2)
{
  v3 = sub_2705D7554();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2703AF678@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2703B0898(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2703AF6A8()
{
  v0 = sub_2705D7564();
  v1 = MEMORY[0x2743A3B30](v0);

  return v1;
}

uint64_t sub_2703AF6E8(uint64_t a1, uint64_t a2)
{
  sub_2705D7564();
  sub_2705D7634();
}

uint64_t sub_2703AF744(uint64_t a1, uint64_t a2)
{
  sub_2705D7564();
  sub_2705D83B4();
  sub_2705D7634();
  v2 = sub_2705D8414();

  return v2;
}

uint64_t sub_2703AF7C4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2705D7534();

  *a2 = v3;
  return result;
}

uint64_t sub_2703AF80C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27047E0AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2703AF838(uint64_t a1)
{
  v2 = sub_2703AED44(&qword_2807CEB80, type metadata accessor for AMSMediaArtworkColorKind, &unk_2705DB288);
  v3 = sub_2703AED44(&qword_2807CEB88, type metadata accessor for AMSMediaArtworkColorKind, &unk_2705DB1DC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2703AF8F4()
{

  sub_2703AF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 112) != 254)
  {

    v2 = *(v0 + 112);
    if (v2 != 255)
    {
      sub_2703AE630(*(v0 + 96), *(v0 + 104), v2);
    }
  }

  if (*(v0 + 144) != 254)
  {

    v3 = *(v0 + 144);
    if (v3 != 255)
    {
      sub_2703AE630(*(v0 + 128), *(v0 + 136), v3);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2703AF9AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_2703AF9C4()
{
  result = qword_2807CEA68;
  if (!qword_2807CEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA68);
  }

  return result;
}

unint64_t sub_2703AFA18()
{
  result = qword_2807CEA70;
  if (!qword_2807CEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA70);
  }

  return result;
}

uint64_t sub_2703AFA6C()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 72);
  if (v2 != 255)
  {
    sub_2703AE630(*(v0 + 56), *(v0 + 64), v2);
  }

  if (*(v0 + 104) != 254)
  {

    v3 = *(v0 + 104);
    if (v3 != 255)
    {
      sub_2703AE630(*(v0 + 88), *(v0 + 96), v3);
    }
  }

  if (*(v0 + 136) != 254)
  {

    v4 = *(v0 + 136);
    if (v4 != 255)
    {
      sub_2703AE630(*(v0 + 120), *(v0 + 128), v4);
    }
  }

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

unint64_t sub_2703AFB20()
{
  result = qword_2807CEA88;
  if (!qword_2807CEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA88);
  }

  return result;
}

unint64_t sub_2703AFB74()
{
  result = qword_2807CEA90;
  if (!qword_2807CEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEA90);
  }

  return result;
}

uint64_t sub_2703AFBC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2703AFC10(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 254)
  {

    sub_2703AE980(a2, a3, a4);
  }
}

uint64_t sub_2703AFC74(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ActionModelBox.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActionModelBox.Action.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2703AFE54);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncMessageProvider.ProviderError(unsigned int *a1, int a2)
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

_BYTE *sub_2703AFF54(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2703AFFF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2703B003C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2703B008C()
{
  result = qword_2807CEAC0;
  if (!qword_2807CEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAC0);
  }

  return result;
}

unint64_t sub_2703B00E4()
{
  result = qword_2807CEAC8;
  if (!qword_2807CEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAC8);
  }

  return result;
}

unint64_t sub_2703B013C()
{
  result = qword_2807CEAD0;
  if (!qword_2807CEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAD0);
  }

  return result;
}

unint64_t sub_2703B0194()
{
  result = qword_2807CEAD8;
  if (!qword_2807CEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAD8);
  }

  return result;
}

unint64_t sub_2703B01EC()
{
  result = qword_2807CEAE0;
  if (!qword_2807CEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAE0);
  }

  return result;
}

unint64_t sub_2703B0244()
{
  result = qword_2807CEAE8;
  if (!qword_2807CEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAE8);
  }

  return result;
}

unint64_t sub_2703B029C()
{
  result = qword_2807CEAF0;
  if (!qword_2807CEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAF0);
  }

  return result;
}

unint64_t sub_2703B03CC()
{
  result = qword_2807CEB10;
  if (!qword_2807CEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB10);
  }

  return result;
}

unint64_t sub_2703B0424()
{
  result = qword_2807CEB18;
  if (!qword_2807CEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB18);
  }

  return result;
}

unint64_t sub_2703B047C()
{
  result = qword_2807CEB20;
  if (!qword_2807CEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB20);
  }

  return result;
}

unint64_t sub_2703B04D4()
{
  result = qword_2807CEB28;
  if (!qword_2807CEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB28);
  }

  return result;
}

unint64_t sub_2703B052C()
{
  result = qword_2807CEB30;
  if (!qword_2807CEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB30);
  }

  return result;
}

unint64_t sub_2703B0584()
{
  result = qword_2807CEB38;
  if (!qword_2807CEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB38);
  }

  return result;
}

unint64_t sub_2703B05DC()
{
  result = qword_2807CEB40;
  if (!qword_2807CEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB40);
  }

  return result;
}

unint64_t sub_2703B0634()
{
  result = qword_2807CEB48;
  if (!qword_2807CEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB48);
  }

  return result;
}

unint64_t sub_2703B068C()
{
  result = qword_2807CEB50;
  if (!qword_2807CEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB50);
  }

  return result;
}

unint64_t sub_2703B06E4()
{
  result = qword_2807CEB58;
  if (!qword_2807CEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB58);
  }

  return result;
}

unint64_t sub_2703B073C()
{
  result = qword_2807CEB60;
  if (!qword_2807CEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB60);
  }

  return result;
}

unint64_t sub_2703B0794()
{
  result = qword_2807CEB68;
  if (!qword_2807CEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB68);
  }

  return result;
}

unint64_t sub_2703B07EC()
{
  result = qword_2807CEB70;
  if (!qword_2807CEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB70);
  }

  return result;
}

unint64_t sub_2703B0844()
{
  result = qword_2807CEB78;
  if (!qword_2807CEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEB78);
  }

  return result;
}

uint64_t sub_2703B0898(uint64_t a1)
{
  sub_2705D7564();
  v1 = sub_2705D7534();

  return v1;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2)
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_2703AFC74(v0, _s6ActionVMa);
}

void OUTLINED_FUNCTION_13(uint64_t a1@<X8>)
{
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = a1;
  *(v1 + 24) = -1;
}

uint64_t OUTLINED_FUNCTION_19()
{

  return __isPlatformVersionAtLeast(2, 18, 1, 0);
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1)
{

  return sub_2705D8084();
}

uint64_t sub_2703B0B88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2703B0C10(void *a1)
{
  v2 = v1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEC38, &qword_2705DBDD8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEC40, &qword_2705DBDE0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  sub_2703B1414(v2, v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703B175C();
  sub_2705D84C4();
  sub_2703B1414(v20, __src);
  sub_2703B17B0();
  sub_2705D7FE4();
  memcpy(v19, __src, sizeof(v19));
  sub_2703B1858();
  v15 = v18;
  sub_2705D8084();
  (*(v5 + 8))(v8, v15);
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_2703B0E28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEC10, &qword_2705DBDC0);
  OUTLINED_FUNCTION_0();
  v33 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEC18, &qword_2705DBDC8);
  OUTLINED_FUNCTION_0();
  v36 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703B175C();
  sub_2705D8484();
  if (v2)
  {
    goto LABEL_7;
  }

  v31 = a1;
  v30 = v8;
  v11 = sub_2705D7FB4();
  result = sub_27042C9F0(v11, 0);
  if (v13 == v14 >> 1)
  {
LABEL_6:
    v20 = sub_2705D7D84();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v22 = &type metadata for ActionableElement.Element;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    swift_unknownObjectRelease();
    v23 = OUTLINED_FUNCTION_1_0();
    v24(v23);
    a1 = v31;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  if (v13 < (v14 >> 1))
  {
    sub_27042C9E4(v13 + 1);
    v16 = v15;
    v18 = v17;
    swift_unknownObjectRelease();
    if (v16 == v18 >> 1)
    {
      sub_2703B17B0();
      v19 = v30;
      sub_2705D7ED4();
      sub_2703B1804();
      sub_2705D7FA4();
      v25 = (v33 + 8);
      swift_unknownObjectRelease();
      (*v25)(v19, v4);
      v26 = OUTLINED_FUNCTION_1_0();
      v27(v26);
      memcpy(__dst, __src, sizeof(__dst));
      sub_2703B1414(__dst, v32);
      v28 = v31;
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2703B1248(uint64_t a1)
{
  v2 = sub_2703B17B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703B1284(uint64_t a1)
{
  v2 = sub_2703B17B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703B12C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703B0B88(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2703B12F0(uint64_t a1)
{
  v2 = sub_2703B175C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703B132C(uint64_t a1)
{
  v2 = sub_2703B175C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ActionableElement.button(model:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  sub_2703B1414(v7, __srca);
  memcpy(a2, __srca, 0x78uLL);
  return sub_2703B1428(__dst, &v5);
}

unint64_t sub_2703B1488()
{
  result = qword_2807CEBF0;
  if (!qword_2807CEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEBF0);
  }

  return result;
}

unint64_t sub_2703B14E0()
{
  result = qword_2807CEBF8;
  if (!qword_2807CEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEBF8);
  }

  return result;
}

unint64_t sub_2703B1534(uint64_t a1)
{
  *(a1 + 8) = sub_2703B1564();
  result = sub_2703B15B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2703B1564()
{
  result = qword_2807CEC00;
  if (!qword_2807CEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC00);
  }

  return result;
}

unint64_t sub_2703B15B8()
{
  result = qword_2807CEC08;
  if (!qword_2807CEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC08);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit9TextModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2703B16AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2703B16F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2703B175C()
{
  result = qword_2807CEC20;
  if (!qword_2807CEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC20);
  }

  return result;
}

unint64_t sub_2703B17B0()
{
  result = qword_2807CEC28;
  if (!qword_2807CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC28);
  }

  return result;
}

unint64_t sub_2703B1804()
{
  result = qword_2807CEC30;
  if (!qword_2807CEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC30);
  }

  return result;
}

unint64_t sub_2703B1858()
{
  result = qword_2807CEC48;
  if (!qword_2807CEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC48);
  }

  return result;
}

_BYTE *sub_2703B18C0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2703B195CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2703B1998()
{
  result = qword_2807CEC50;
  if (!qword_2807CEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC50);
  }

  return result;
}

unint64_t sub_2703B19F0()
{
  result = qword_2807CEC58;
  if (!qword_2807CEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC58);
  }

  return result;
}

unint64_t sub_2703B1A48()
{
  result = qword_2807CEC60;
  if (!qword_2807CEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC60);
  }

  return result;
}

unint64_t sub_2703B1AA0()
{
  result = qword_2807CEC68;
  if (!qword_2807CEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC68);
  }

  return result;
}

unint64_t sub_2703B1AF8()
{
  result = qword_2807CEC70;
  if (!qword_2807CEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC70);
  }

  return result;
}

unint64_t sub_2703B1B50()
{
  result = qword_2807CEC78;
  if (!qword_2807CEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC78);
  }

  return result;
}

uint64_t sub_2703B1BCC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  v4 = sub_2703B29A0();
  swift_retain_n();
  v5 = sub_2705D7B04();
  v7[3] = v4;
  v7[4] = MEMORY[0x277D225C0];
  v7[0] = v5;
  sub_2705D7094();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_2703B1C90(uint64_t a1)
{
  v2 = sub_2705D6784();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v3 + 16))(&v12 - v7, a1, v2);
  v9 = (*(v3 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D21CA8])
  {
    (*(v3 + 104))(v6, v9, v2);
    sub_2705D70E4();
    (*(v3 + 8))(v6, v2);
  }

  else if (v9 == *MEMORY[0x277D21CA0])
  {
    sub_2703B29E4();
    v10 = swift_allocError();
    *v11 = 1;
    sub_2705D70D4();
  }

  else
  {
    sub_2705D7E54();
    __break(1u);
  }
}

void sub_2703B1E80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_2705D6784();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  (*(v11 + 16))(&v31 - v15, a1, v10);
  v17 = (*(v11 + 88))(v16, v10);
  v18 = v17;
  if (v17 == *MEMORY[0x277D21CA8])
  {
    sub_2703B2874(a2, &v31);
    if (v32)
    {
      sub_2703B291C(&v31, v33);
      if (qword_2807CE810 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2807CE810);
      }

      v19 = sub_2705D7174();
      __swift_project_value_buffer(v19, qword_28081C4B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
      v20 = sub_2705D6574();
      OUTLINED_FUNCTION_1_1(v20);
      OUTLINED_FUNCTION_2_0();
      *(OUTLINED_FUNCTION_3_1() + 16) = xmmword_2705DC030;
      *&v31 = 0;
      *(&v31 + 1) = 0xE000000000000000;
      sub_2705D7D04();
      MEMORY[0x2743A3A90](0xD00000000000002ALL, 0x8000000270613270);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D65D0, &unk_2705DC050);
      sub_2705D7DF4();
      v32 = MEMORY[0x277D837D0];
      sub_2705D6544();
      sub_2703B2934(&v31, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6E24();

      sub_2703B1BCC(v33, a3, a4, a5);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      sub_2703B2934(&v31, &unk_2807CF480, &unk_2705DC040);
      if (qword_2807CE810 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2807CE810);
      }

      v29 = sub_2705D7174();
      __swift_project_value_buffer(v29, qword_28081C4B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
      v30 = sub_2705D6574();
      OUTLINED_FUNCTION_1_1(v30);
      OUTLINED_FUNCTION_2_0();
      *(swift_allocObject() + 16) = xmmword_2705DC030;
      sub_2705D64C4();
      sub_2705D6E24();

      (*(v11 + 104))(v14, v18, v10);
      sub_2705D70E4();
      (*(v11 + 8))(v14, v10);
    }
  }

  else if (v17 == *MEMORY[0x277D21CA0])
  {
    if (qword_2807CE810 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2807CE810);
    }

    v21 = sub_2705D7174();
    __swift_project_value_buffer(v21, qword_28081C4B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v22 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v22);
    OUTLINED_FUNCTION_2_0();
    *(swift_allocObject() + 16) = xmmword_2705DC030;
    sub_2705D64C4();
    sub_2705D6E34();

    sub_2703B29E4();
    v23 = swift_allocError();
    *v24 = 2;
    sub_2705D70D4();
  }

  else
  {
    if (qword_2807CE810 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2807CE810);
    }

    v25 = sub_2705D7174();
    __swift_project_value_buffer(v25, qword_28081C4B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v26 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v26);
    OUTLINED_FUNCTION_2_0();
    *(swift_allocObject() + 16) = xmmword_2705DC030;
    sub_2705D64C4();
    sub_2705D6E34();

    sub_2703B29E4();
    v27 = swift_allocError();
    *v28 = 2;
    sub_2705D70D4();

    (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_2703B254C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_2703B2874(a2, &v13);
  if (v14)
  {
    sub_2703B291C(&v13, v15);
    if (qword_2807CE810 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2807CE810);
    }

    v8 = sub_2705D7174();
    __swift_project_value_buffer(v8, qword_28081C4B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v9 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v9);
    OUTLINED_FUNCTION_2_0();
    *(OUTLINED_FUNCTION_3_1() + 16) = xmmword_2705DC030;
    *&v13 = 0;
    *(&v13 + 1) = 0xE000000000000000;
    sub_2705D7D04();
    MEMORY[0x2743A3A90](0xD00000000000002ALL, 0x8000000270613170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D65D0, &unk_2705DC050);
    sub_2705D7DF4();
    v14 = MEMORY[0x277D837D0];
    sub_2705D6544();
    sub_2703B2934(&v13, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6E24();

    sub_2703B1BCC(v15, a3, a4, a5);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_2703B2934(&v13, &unk_2807CF480, &unk_2705DC040);
    if (qword_2807CE810 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2807CE810);
    }

    v11 = sub_2705D7174();
    __swift_project_value_buffer(v11, qword_28081C4B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v12 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v12);
    OUTLINED_FUNCTION_2_0();
    *(swift_allocObject() + 16) = xmmword_2705DC030;
    sub_2705D64C4();
    sub_2705D6E34();

    return sub_2705D70D4();
  }
}

uint64_t sub_2703B2874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF480, &unk_2705DC040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2703B291C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2703B2934(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2703B29A0()
{
  result = qword_2807CEC80;
  if (!qword_2807CEC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807CEC80);
  }

  return result;
}

unint64_t sub_2703B29E4()
{
  result = qword_2807CEC88;
  if (!qword_2807CEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonModel.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BranchingActionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2703B2B8CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2703B2BC8()
{
  result = qword_2807CEC90;
  if (!qword_2807CEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return swift_allocObject();
}

uint64_t sub_2703B2C78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CECE0, &qword_2705DC1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705DC130;
  *(inited + 32) = 0x6F69746341797542;
  *(inited + 40) = 0xE90000000000006ELL;
  v1 = type metadata accessor for BuyAction(0);
  OUTLINED_FUNCTION_11_0();
  v4 = sub_2703B4CF4(v2, v3, &unk_2705DF660);
  *(inited + 48) = v1;
  *(inited + 56) = v4;
  OUTLINED_FUNCTION_26_0();
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = v5;
  v6 = type metadata accessor for AuthenticateAction(0);
  v7 = sub_2703B4CF4(&qword_2807CF500, type metadata accessor for AuthenticateAction, &unk_2705DDE14);
  *(inited + 80) = v6;
  *(inited + 88) = v7;
  strcpy((inited + 96), "DialogAction");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v8 = type metadata accessor for DialogAction(0);
  v9 = sub_2703B4CF4(&qword_2807CF510, type metadata accessor for DialogAction, &unk_2705E5CD4);
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  OUTLINED_FUNCTION_26_0();
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = v10;
  v11 = type metadata accessor for EngagementTaskAction(0);
  v12 = sub_2703B4CF4(&qword_2807CECE8, type metadata accessor for EngagementTaskAction, &unk_2705E8678);
  *(inited + 144) = v11;
  *(inited + 152) = v12;
  *(inited + 160) = 0x69746341776F6C46;
  *(inited + 168) = 0xEA00000000006E6FLL;
  v13 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_2_1();
  v16 = sub_2703B4CF4(v14, v15, &unk_2705E9B1C);
  *(inited + 176) = v13;
  *(inited + 184) = v16;
  OUTLINED_FUNCTION_26_0();
  *(inited + 192) = 0xD000000000000012;
  *(inited + 200) = v17;
  v18 = type metadata accessor for PromptNotificationAction(0);
  OUTLINED_FUNCTION_15_0();
  v21 = sub_2703B4CF4(v19, v20, &unk_270602E14);
  *(inited + 208) = v18;
  *(inited + 216) = v21;
  *(inited + 224) = 0x6974634174697845;
  *(inited + 232) = 0xEA00000000006E6FLL;
  v22 = type metadata accessor for ExitAction(0);
  OUTLINED_FUNCTION_13_0();
  v25 = sub_2703B4CF4(v23, v24, &unk_2705E8A98);
  *(inited + 240) = v22;
  *(inited + 248) = v25;
  OUTLINED_FUNCTION_26_0();
  *(inited + 256) = 0xD00000000000001CLL;
  *(inited + 264) = v26;
  v27 = type metadata accessor for DestinationReplacementAction(0);
  OUTLINED_FUNCTION_12_0();
  v30 = sub_2703B4CF4(v28, v29, &unk_2705E5388);
  *(inited + 272) = v27;
  *(inited + 280) = v30;
  strcpy((inited + 288), "FlowBackAction");
  *(inited + 303) = -18;
  v31 = sub_2705D6E74();
  v32 = MEMORY[0x277D223D8];
  *(inited + 304) = v31;
  *(inited + 312) = v32;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x8000000270613320;
  updated = type metadata accessor for UpdateStateAction(0);
  v34 = sub_2703B4CF4(&qword_2807CECF0, type metadata accessor for UpdateStateAction, &unk_27060A514);
  *(inited + 336) = updated;
  *(inited + 344) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CECF8, &qword_2705DC1D0);
  return sub_2705D7494();
}

unint64_t sub_2703B3030()
{
  v0 = sub_2703B2C78();
  v1 = sub_2705D6D34();
  v2 = sub_2703B52D0(v1, v0);
  v3 = sub_2703B5354(v2);

  return v3;
}

uint64_t sub_2703B30A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v98 = a2;
  v89 = a3;
  v4 = sub_2705D6484();
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2705D67B4();
  v85 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED00, &qword_2705DC1D8);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5020, &qword_2705DC1E0);
  v86 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED08, &unk_2705DC1E8);
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v87 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v80 - v18;
  v104 = sub_2705D6654();
  v97 = *(v104 - 8);
  v20 = MEMORY[0x28223BE20](v104);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v80 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v96 = &v80 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - v28;
  v30 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x277D21B38], MEMORY[0x277D83A88]);
  if (v30)
  {
    v33 = v30;
    v91 = v31;
    v92 = v32;
    v34 = v98;
    __swift_project_boxed_opaque_existential_1(v98, *(v98 + 24));
    sub_2705D8464();
    sub_2705D6634();
    sub_2705D6624();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED18, &qword_2705DC1F8);
    sub_2705D6664();
    v35 = v94;
    v36 = *(v93 + 1);
    v36(v19, v94);
    if (!v100)
    {
      v37 = sub_2703B4F68();
      v100 = v90;
      v101 = v37;
      v38 = v87;
      sub_2705D6624();
      sub_2705D6604();
      v36(v38, v35);
      v39 = v97;
      v40 = v104;
      (*(v97 + 8))(v29, v104);
      (*(v39 + 32))(v29, v96, v40);
    }

    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v41 = v96;
    v42 = v97;
    v43 = v104;
    (*(v97 + 16))(v96, v29, v104);
    MEMORY[0x2743A38C0](v41);
    sub_2705D8474();

    *&v102 = v33;
    *(&v102 + 1) = v91;
    v103 = v92;
    __swift_allocate_boxed_opaque_existential_1Tm(&v100);
    v44 = v95;
    sub_2705D79E4();
    if (v44)
    {
      (*(v42 + 8))(v29, v43);
      return __swift_deallocate_boxed_opaque_existential_2(&v100);
    }

    v98 = v102;
    v64 = v102;
    v65 = __swift_project_boxed_opaque_existential_1(&v100, v102);
    v66 = v89;
    *(v89 + 24) = v98;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v66);
    (*(*(v64 - 8) + 16))(boxed_opaque_existential_1Tm, v65, v64);
    (*(v42 + 8))(v29, v43);
    return __swift_destroy_boxed_opaque_existential_1(&v100);
  }

  v46 = v91;
  v87 = v12;
  v93 = v22;
  v94 = v25;
  v47 = v92;
  v48 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x277D21B38], MEMORY[0x277D21F48]);
  if (v48)
  {
    v81 = v49;
    v82 = v50;
    v83 = v48;
    __swift_project_boxed_opaque_existential_1(v98, *(v98 + 24));
    sub_2705D8464();
    v51 = v94;
    sub_2705D6634();
    v52 = v14;
    sub_2705D6614();
    v53 = v47;
    sub_2705D6664();
    v54 = *(v86 + 8);
    v55 = v9;
    v54(v52, v9);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v53);
    sub_2703B4DEC(v46);
    if (EnumTagSinglePayload == 1)
    {
      sub_2703B4F68();
      v57 = v84;
      sub_2705D67C4();
      v58 = v87;
      sub_2705D6614();
      v59 = v96;
      sub_2705D6604();
      v54(v58, v55);
      (*(v85 + 8))(v57, v53);
      v60 = v97;
      v61 = v104;
      (*(v97 + 8))(v94, v104);
      v62 = v59;
      v51 = v94;
      (*(v60 + 32))(v94, v62, v61);
    }

    sub_2703B4E54(v98, v99);
    v63 = v95;
    sub_2705D63F4();
    if (v63)
    {
      return (*(v97 + 8))(v51, v104);
    }

    v72 = v97;
    v73 = v51;
    v74 = v51;
    v75 = v104;
    (*(v97 + 16))(v93, v73, v104);
    *&v102 = v83;
    *(&v102 + 1) = v81;
    v103 = v82;
    __swift_allocate_boxed_opaque_existential_1Tm(&v100);
    sub_2705D6A34();
    v98 = v102;
    v76 = v102;
    v77 = __swift_project_boxed_opaque_existential_1(&v100, v102);
    v78 = v89;
    *(v89 + 24) = v98;
    v79 = __swift_allocate_boxed_opaque_existential_1Tm(v78);
    (*(*(v76 - 8) + 16))(v79, v77, v76);
    (*(v72 + 8))(v74, v75);
    return __swift_destroy_boxed_opaque_existential_1(&v100);
  }

  v68 = sub_2705D7D84();
  swift_allocError();
  v70 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
  *v70 = a1;
  __swift_project_boxed_opaque_existential_1(v98, *(v98 + 24));
  sub_2705D8434();
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_2705D7D04();

  v100 = 60;
  v101 = 0xE100000000000000;
  v71 = sub_2705D8504();
  MEMORY[0x2743A3A90](v71);

  MEMORY[0x2743A3A90](0xD000000000000012, 0x8000000270613340);
  sub_2705D7D44();
  (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D84160], v68);
  return swift_willThrow();
}

void sub_2703B3B04(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v160 = a2;
  v4 = type metadata accessor for OpenURLActionModel(0);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v152 - v9;
  v11 = type metadata accessor for FlowActionModel.ReplaceFlowOptions(0);
  v12 = OUTLINED_FUNCTION_23_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v159 = v14 - v13;
  v15 = type metadata accessor for FlowActionModel.PushFlowOptions(0);
  v16 = OUTLINED_FUNCTION_23_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for FlowActionModel.PresentFlowOptions(0);
  v21 = OUTLINED_FUNCTION_23_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_0();
  v24 = (v23 - v22);
  v25 = sub_2705D6774();
  v26 = OUTLINED_FUNCTION_23_0(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for FlowActionModel.FlowType(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = v29 - v28;
  type metadata accessor for FlowActionModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_0();
  v34 = (v33 - v32);
  v35 = *a1;
  switch(v35 >> 61)
  {
    case 1uLL:
      memcpy(__dst, ((v35 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x79uLL);
      v84 = type metadata accessor for DelegateAction(0);
      OUTLINED_FUNCTION_9_0(v84);
      v85 = sub_2703B4CF4(&qword_2807CECA0, type metadata accessor for DelegateAction, &unk_2705E493C);
      v86 = OUTLINED_FUNCTION_24_0(v85);
      v87 = *(&__dst[0] + 1);
      *v86 = *&__dst[0];
      v86[1] = v87;
      v88 = __dst[1];
      v89 = __dst[2];
      *(v86 + 1) = __dst[1];
      *(v86 + 32) = v89;

      sub_2703B49F0(__dst, v162);
      sub_2703AE9E8(v88, *(&v88 + 1), v89);
      sub_2705D6764();
      if (BYTE8(__dst[7]) == 254)
      {
        OUTLINED_FUNCTION_5_0();
      }

      else
      {
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_25_0();
        if (v2)
        {

          OUTLINED_FUNCTION_5_0();
        }

        OUTLINED_FUNCTION_16_0();
      }

      if (BYTE8(__dst[5]) == 254)
      {
        v112 = OUTLINED_FUNCTION_6_0();
        sub_2703B4A4C(v112);
        return;
      }

      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_27_0();
      if (v2)
      {

        v113 = OUTLINED_FUNCTION_6_0();
        sub_2703B4A4C(v113);
      }

      else
      {
        sub_2703B4A4C(__dst);
      }

      goto LABEL_37;
    case 2uLL:
      v64 = v34;
      v65 = swift_projectBox();
      sub_2703B4B04(v65, v64, type metadata accessor for FlowActionModel);
      v158 = v64;
      sub_2703B4B04(v64, v30, type metadata accessor for FlowActionModel.FlowType);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_2703B4BD4(v30, v24, type metadata accessor for FlowActionModel.PresentFlowOptions);
          v128 = type metadata accessor for FlowAction(0);
          OUTLINED_FUNCTION_9_0(v128);
          OUTLINED_FUNCTION_2_1();
          v131 = sub_2703B4CF4(v129, v130, &unk_2705E9B1C);
          v70 = OUTLINED_FUNCTION_24_0(v131);
          sub_2705D6764();
          OUTLINED_FUNCTION_1_2();
          sub_2703B4B04(v24, v70 + v132, v133);
          v73 = sub_2705D6BE4();
          v75 = v134;
          sub_2703B4C34(v24, type metadata accessor for FlowActionModel.PresentFlowOptions);
          OUTLINED_FUNCTION_0_1();
          sub_2703B4C34(v158, v135);
          v77 = 0x746E6573657270;
          v78 = 0xE700000000000000;
          goto LABEL_47;
        case 2u:
          sub_2703B4BD4(v30, v159, type metadata accessor for FlowActionModel.ReplaceFlowOptions);
          v122 = type metadata accessor for DestinationReplacementAction(0);
          OUTLINED_FUNCTION_9_0(v122);
          OUTLINED_FUNCTION_12_0();
          v125 = sub_2703B4CF4(v123, v124, &unk_2705E5388);
          v126 = OUTLINED_FUNCTION_24_0(v125);
          sub_2705D6764();
          OUTLINED_FUNCTION_17_1();
          if (v121)
          {
            OUTLINED_FUNCTION_22_0();
          }

          else
          {
            OUTLINED_FUNCTION_21_0(v127);
            OUTLINED_FUNCTION_19_0();
            v141 = v164;
            sub_2703B3B04(v162, __dst);
            v24 = v141;
            if (v141)
            {

              memset(__dst, 0, 40);
              OUTLINED_FUNCTION_3_2();
              v24 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_3_2();
            }
          }

          OUTLINED_FUNCTION_17_1();
          if (v121)
          {
            v162[4] = 0;
            OUTLINED_FUNCTION_28_0();
          }

          else
          {
            OUTLINED_FUNCTION_20_0(v145);
            OUTLINED_FUNCTION_19_0();
            sub_2703B3B04(v161, v162);
            if (v24)
            {

              OUTLINED_FUNCTION_28_0();
              v162[4] = 0;
            }

            OUTLINED_FUNCTION_3_2();
          }

          OUTLINED_FUNCTION_1_2();
          v147 = v159;
          sub_2703B4B04(v159, v126 + v146, v148);
          OUTLINED_FUNCTION_7_0(v64[5]);
          sub_2703B4B64(__dst, v149);
          OUTLINED_FUNCTION_7_0(v64[6]);
          sub_2703B4B64(v162, v150);
          sub_2703B4C34(v147, type metadata accessor for FlowActionModel.ReplaceFlowOptions);
          goto LABEL_74;
        case 3u:
          sub_2705D6764();
          sub_2705D6E54();
          goto LABEL_49;
        case 4u:
          v116 = type metadata accessor for ExitAction(0);
          OUTLINED_FUNCTION_9_0(v116);
          OUTLINED_FUNCTION_13_0();
          v119 = sub_2703B4CF4(v117, v118, &unk_2705E8A98);
          OUTLINED_FUNCTION_24_0(v119);
          sub_2705D6764();
          OUTLINED_FUNCTION_17_1();
          if (v121)
          {
            OUTLINED_FUNCTION_22_0();
          }

          else
          {
            OUTLINED_FUNCTION_21_0(v120);
            OUTLINED_FUNCTION_19_0();
            v140 = v164;
            sub_2703B3B04(v162, __dst);
            v24 = v140;
            if (v140)
            {

              memset(__dst, 0, 40);
              OUTLINED_FUNCTION_3_2();
              v24 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_3_2();
            }
          }

          OUTLINED_FUNCTION_17_1();
          if (v121)
          {
            v162[4] = 0;
            OUTLINED_FUNCTION_28_0();
          }

          else
          {
            OUTLINED_FUNCTION_20_0(v142);
            OUTLINED_FUNCTION_19_0();
            sub_2703B3B04(v161, v162);
            if (v24)
            {

              OUTLINED_FUNCTION_28_0();
              v162[4] = 0;
            }

            OUTLINED_FUNCTION_3_2();
          }

          OUTLINED_FUNCTION_7_0(v64[5]);
          sub_2703B4B64(__dst, v143);
          OUTLINED_FUNCTION_7_0(v64[6]);
          sub_2703B4B64(v162, v144);
LABEL_74:
          OUTLINED_FUNCTION_0_1();
          sub_2703B4C34(v158, v151);
          return;
        case 5u:
          sub_2705D6764();
          sub_2705D6E64();
LABEL_49:
          v137 = sub_2705D6E74();
          v138 = MEMORY[0x277D223D8];
          v139 = v160;
          v160[3] = v137;
          v139[4] = v138;
          __swift_allocate_boxed_opaque_existential_1Tm(v139);
          sub_2705D6E44();
          OUTLINED_FUNCTION_0_1();
          v83 = v158;
          goto LABEL_50;
        default:
          sub_2703B4BD4(v30, v19, type metadata accessor for FlowActionModel.PushFlowOptions);
          v66 = type metadata accessor for FlowAction(0);
          OUTLINED_FUNCTION_9_0(v66);
          OUTLINED_FUNCTION_2_1();
          v69 = sub_2703B4CF4(v67, v68, &unk_2705E9B1C);
          v70 = OUTLINED_FUNCTION_24_0(v69);
          sub_2705D6764();
          OUTLINED_FUNCTION_1_2();
          sub_2703B4B04(v19, v70 + v71, v72);
          v73 = sub_2705D6BF4();
          v75 = v74;
          sub_2703B4C34(v19, type metadata accessor for FlowActionModel.PushFlowOptions);
          OUTLINED_FUNCTION_0_1();
          sub_2703B4C34(v158, v76);
          v77 = 1752397168;
          v78 = 0xE400000000000000;
LABEL_47:
          *v70 = v77;
          v70[1] = v78;
          v136 = (v70 + v64[7]);
          *v136 = v73;
          v136[1] = v75;
          return;
      }

    case 3uLL:
      v79 = swift_projectBox();
      sub_2703B4B04(v79, v10, type metadata accessor for OpenURLActionModel);
      sub_2703B4B04(v10, v8, type metadata accessor for OpenURLActionModel);
      v160[3] = type metadata accessor for OpenURLAction(0);
      v80 = sub_2703B4CF4(&qword_2807CECB0, type metadata accessor for OpenURLAction, &unk_2705FDF24);
      v81 = OUTLINED_FUNCTION_24_0(v80);
      sub_2704E192C(v8, v81);
      v82 = type metadata accessor for OpenURLActionModel;
      v83 = v10;
LABEL_50:
      sub_2703B4C34(v83, v82);
      return;
    case 4uLL:
      v41 = v35 & 0x1FFFFFFFFFFFFFFFLL;
      v42 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v156 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v43 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      LODWORD(v157) = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v44 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v45 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v46 = *(v41 + 64);
      v47 = *(v41 + 72);
      v48 = *(v41 + 88);
      v158 = *(v41 + 80);
      v159 = v44;
      v154 = v48;
      v49 = *(v41 + 96);
      v153 = *(v41 + 104);
      v50 = type metadata accessor for PromptNotificationAction(0);
      v51 = v160;
      v160[3] = v50;
      OUTLINED_FUNCTION_15_0();
      v51[4] = sub_2703B4CF4(v52, v53, &unk_270602E14);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v51);
      v55 = v156;
      *boxed_opaque_existential_1Tm = v42;
      boxed_opaque_existential_1Tm[1] = v55;
      boxed_opaque_existential_1Tm[2] = v43;
      *(boxed_opaque_existential_1Tm + 24) = v157;
      v152[1] = v50[7];
      v155 = v43;
      swift_bridgeObjectRetain_n();
      v156 = v46;
      v157 = v45;
      v56 = v46;
      v57 = v47;
      v58 = v47;
      v59 = v158;
      sub_2703B4AA0(v159, v45, v56, v58);
      v60 = v154;
      v160 = v49;
      v61 = v49;
      v62 = v153;
      sub_2703B4AA0(v59, v154, v61, v153);
      sub_2705D6764();
      v63 = boxed_opaque_existential_1Tm + v50[8];
      if (v62 == 254)
      {
        OUTLINED_FUNCTION_5_0();
      }

      else
      {
        *&__dst[0] = v59;
        *(&__dst[0] + 1) = v60;
        v102 = v160;
        *&__dst[1] = v160;
        BYTE8(__dst[1]) = v62;

        sub_2703AE9E8(v60, v102, v62);
        v103 = v164;
        sub_2703B3B04(__dst, v63);
        if (v103)
        {

          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_18_0(v59);
          v164 = 0;
        }

        else
        {
          v164 = 0;
          OUTLINED_FUNCTION_18_0(v59);
        }
      }

      v104 = boxed_opaque_existential_1Tm + v50[9];
      if (v57 == 254)
      {
        OUTLINED_FUNCTION_10_0();

        sub_2703AFC10(v159, v157, v156, 254);
        OUTLINED_FUNCTION_18_0(v158);
      }

      else
      {
        v106 = v156;
        v105 = v157;
        *&__dst[0] = v159;
        *(&__dst[0] + 1) = v157;
        *&__dst[1] = v156;
        BYTE8(__dst[1]) = v57;

        sub_2703AE9E8(v105, v106, v57);
        v107 = v164;
        sub_2703B3B04(__dst, v104);
        if (v107)
        {

          OUTLINED_FUNCTION_10_0();

          v108 = v159;
          v109 = v157;
          OUTLINED_FUNCTION_34(v159, v157);
          OUTLINED_FUNCTION_18_0(v158);
          OUTLINED_FUNCTION_34(v108, v109);
        }

        else
        {

          v110 = v159;
          v111 = v157;
          OUTLINED_FUNCTION_34(v159, v157);
          OUTLINED_FUNCTION_18_0(v158);
          OUTLINED_FUNCTION_34(v110, v111);
        }
      }

      return;
    case 5uLL:
      memcpy(__dst, ((v35 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x81uLL);
      v90 = type metadata accessor for RecordMessageEventAction(0);
      v91 = v160;
      v160[3] = v90;
      v159 = v90;
      OUTLINED_FUNCTION_14_0();
      v91[4] = sub_2703B4CF4(v92, v93, &unk_2706043A4);
      v94 = __swift_allocate_boxed_opaque_existential_1Tm(v91);
      v94[6] = 0;
      v94[7] = 0;
      *(v94 + 64) = -1;
      sub_2703B4928(__dst, v162);
      sub_2705D6764();
      v95 = *(&__dst[0] + 1);
      v96 = __dst[1];
      v97 = *&__dst[2];
      v98 = BYTE8(__dst[2]);
      *v94 = *&__dst[0];
      v94[1] = v95;
      *(v94 + 1) = v96;
      v94[4] = v97;
      *(v94 + 40) = v98;
      v99 = __dst[3];
      v100 = v94[7];
      v160 = v94[6];
      v158 = v100;
      LOBYTE(v91) = __dst[4];
      *(v94 + 3) = __dst[3];
      v101 = *(v94 + 64);
      *(v94 + 64) = v91;

      sub_2703B4984(*(&v96 + 1), v97, v98);
      sub_2703AE9E8(v99, *(&v99 + 1), v91);
      sub_2703AE980(v160, v158, v101);
      if (LOBYTE(__dst[6]) == 254)
      {
        OUTLINED_FUNCTION_5_0();
      }

      else
      {
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_25_0();
        if (v96)
        {

          OUTLINED_FUNCTION_5_0();
        }

        OUTLINED_FUNCTION_16_0();
      }

      if (LOBYTE(__dst[8]) == 254)
      {
        v114 = OUTLINED_FUNCTION_6_0();
        sub_2703B499C(v114);
      }

      else
      {
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_27_0();
        if (v96)
        {

          v115 = OUTLINED_FUNCTION_6_0();
          sub_2703B499C(v115);
        }

        else
        {
          sub_2703B499C(__dst);
        }

LABEL_37:
        OUTLINED_FUNCTION_30_0();
      }

      return;
    default:
      memcpy(__dst, (v35 + 16), 0x80uLL);
      memcpy(v162, (v35 + 16), 0x80uLL);
      v36 = type metadata accessor for BuyAction(0);
      v37 = v160;
      v160[3] = v36;
      OUTLINED_FUNCTION_11_0();
      v37[4] = sub_2703B4CF4(v38, v39, &unk_2705DF660);
      v40 = __swift_allocate_boxed_opaque_existential_1Tm(v37);
      sub_2703AE65C(__dst, v161);
      sub_2703C44A0(v162, v40);
      return;
  }
}

uint64_t sub_2703B4984(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_2703B4AA0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 254)
  {

    sub_2703AE9E8(a2, a3, a4);
  }
}

uint64_t sub_2703B4B04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2703B4B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF480, &unk_2705DC040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703B4BD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2703B4C34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2703B4CA0()
{
  result = qword_2807CECD8;
  if (!qword_2807CECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CECD8);
  }

  return result;
}

uint64_t sub_2703B4CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2703B4DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED00, &qword_2705DC1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2703B4E54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2743A5470);
  }

  return result;
}

unint64_t sub_2703B4F68()
{
  result = qword_2807CED10;
  if (!qword_2807CED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CED10);
  }

  return result;
}

void sub_2703B4FBC(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v7 = *(a2 + 8);
  if (v7)
  {
    v31 = *result;
    v8 = *a2;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    if (v6 == 254)
    {
      v13 = 0;
      v14 = 0;
      v15 = -1;
    }

    else
    {
      sub_2703AE9E8(v4, v5, v6);
      v13 = v4;
      v14 = v5;
      v15 = v6;
    }

    v28 = v14;
    v29 = v13;
    v30 = v15;
    v33 = v8;
    v34 = v7;
    v35 = v9;
    v36 = v10;
    v37 = v11;
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v41 = v15;
    v42 = v31;
    v43 = v4;
    v44 = v5;
    v45 = v6;
    v46 = v31;
    v47 = v4;
    v48 = v5;
    v49 = v6;
    v27 = type metadata accessor for RecordMessageEventAction(0);
    *(a3 + 24) = v27;
    OUTLINED_FUNCTION_14_0();
    *(a3 + 32) = sub_2703B4CF4(v16, v17, &unk_2706043A4);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    boxed_opaque_existential_1Tm[6] = 0;
    boxed_opaque_existential_1Tm[7] = 0;
    *(boxed_opaque_existential_1Tm + 64) = -1;
    sub_2703B4AA0(v31, v4, v5, v6);
    sub_2703B4AA0(v31, v4, v5, v6);
    sub_2703B5C40(v8, v7, v9, v10, v11, v12);
    sub_2705D6764();
    *boxed_opaque_existential_1Tm = v8;
    boxed_opaque_existential_1Tm[1] = v7;
    boxed_opaque_existential_1Tm[2] = v9;
    boxed_opaque_existential_1Tm[3] = v10;
    boxed_opaque_existential_1Tm[4] = v11;
    *(boxed_opaque_existential_1Tm + 40) = v12;
    v25 = boxed_opaque_existential_1Tm[7];
    v26 = boxed_opaque_existential_1Tm[6];
    boxed_opaque_existential_1Tm[6] = v29;
    boxed_opaque_existential_1Tm[7] = v28;
    v24 = v5;
    v19 = *(boxed_opaque_existential_1Tm + 64);
    *(boxed_opaque_existential_1Tm + 64) = v30;

    sub_2703B4984(v10, v11, v12);
    sub_2703AE9E8(v29, v28, v30);
    sub_2703AE980(v26, v25, v19);
    v20 = (boxed_opaque_existential_1Tm + *(v27 + 28));
    if (v6 == 254)
    {
      *&v21 = OUTLINED_FUNCTION_10_0();
      v22 = boxed_opaque_existential_1Tm + *(v27 + 32);
      *(v22 + 4) = 0;
      *v22 = v21;
      *(v22 + 1) = v21;
      sub_2703B499C(&v33);
    }

    else
    {
      OUTLINED_FUNCTION_31();
      sub_2703AE9E8(v4, v24, v6);
      sub_2703B3B04(v32, v20);
      OUTLINED_FUNCTION_29_0();
      v23 = (boxed_opaque_existential_1Tm + *(v27 + 32));
      OUTLINED_FUNCTION_31();
      sub_2703AE9E8(v4, v24, v6);
      sub_2703B3B04(v32, v23);
      sub_2703B499C(&v33);
      OUTLINED_FUNCTION_29_0();
    }
  }

  else if (v6 == 254)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v33 = *result;
    v34 = v4;
    v35 = v5;
    LOBYTE(v36) = v6;
    sub_2703B3B04(&v33, a3);
  }
}

uint64_t sub_2703B52D0(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2703B5598(a1, sub_2703B5578, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

unint64_t sub_2703B5354(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED20, &unk_2705DC200);
    v2 = sub_2705D7E94();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CECF8, &qword_2705DC1D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED28, &unk_2705E2DE0);
    swift_dynamicCast();
    result = sub_2703D7318(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      *(v2[7] + 8 * v14) = v21;
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      *(v2[7] + 8 * result) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2703B5578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

uint64_t sub_2703B5598(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v38 = a4;
      v12 = v11;
LABEL_11:
      v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
      v15 = *(a1 + 56);
      v16 = (*(a1 + 48) + v14);
      v17 = v16[1];
      v43[0] = *v16;
      v43[1] = v17;
      v44 = *(v15 + v14);

      a2(&v40, v43);

      v18 = v40;
      v19 = v41;
      v37 = v42;
      v20 = *v45;
      v22 = sub_2703D7318(v40, v41);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((v38 & 1) == 0)
        {
          sub_2703B5834();
        }
      }

      else
      {
        sub_2703B5998(v25, v38 & 1);
        v27 = sub_2703D7318(v18, v19);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_27;
        }

        v22 = v27;
      }

      v9 &= v9 - 1;
      v29 = *v45;
      if (v26)
      {
        v39 = *(v29[7] + 16 * v22);

        *(v29[7] + 16 * v22) = v39;
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (v29[6] + 16 * v22);
        *v30 = v18;
        v30[1] = v19;
        *(v29[7] + 16 * v22) = v37;
        v31 = v29[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v29[2] = v33;
      }

      a4 = 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        sub_2703B5C38(a1);
      }

      v9 = *(v6 + 8 * v12);
      ++v13;
      if (v9)
      {
        v38 = a4;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2705D82D4();
  __break(1u);
  return result;
}

void *sub_2703B5834()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED30, &unk_2705DC210);
  v2 = *v0;
  v3 = sub_2705D7E74();
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
        v21 = *(*(v2 + 56) + 16 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 16 * v17) = v21;
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

uint64_t sub_2703B5998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED30, &unk_2705DC210);
  v32 = v4;
  result = sub_2705D7E84();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v33 = *(*(v5 + 56) + 16 * v18);
    if ((v32 & 1) == 0)
    {
    }

    sub_2705D83B4();
    sub_2705D7634();
    result = sub_2705D8414();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v7 + 48) + 16 * v25);
    *v30 = v20;
    v30[1] = v21;
    *(*(v7 + 56) + 16 * v25) = v33;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_2703B5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2)
  {

    sub_2703B4984(a4, a5, a6);
  }
}

void OUTLINED_FUNCTION_3_2()
{

  sub_2703AFC10(v2, v3, v1, v0);
}

double OUTLINED_FUNCTION_5_0()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v1 - 224;
}

double OUTLINED_FUNCTION_7_0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

double OUTLINED_FUNCTION_10_0()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_16_0()
{

  sub_2703AFC10(v2, v3, v1, v0);
}

void OUTLINED_FUNCTION_18_0(uint64_t a1)
{
  v5 = *(v1 + 72);

  sub_2703AFC10(a1, v3, v5, v2);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return sub_2703AE9E8(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_20_0@<X0>(uint64_t *a1@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  *(v1 + 80) = *a1;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 104) = v2;
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(uint64_t *a1@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  *(v1 + 208) = *a1;
  *(v1 + 216) = v4;
  *(v1 + 224) = v5;
  *(v1 + 232) = v2;
}

double OUTLINED_FUNCTION_22_0()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_24_0(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm(v1);
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  sub_2703AE9E8(v4, v3, v1);

  return sub_2703B3B04((v0 + 208), v2);
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  sub_2703AE9E8(v3, v1, v2);

  return sub_2703B3B04((v0 + 208), v4);
}

double OUTLINED_FUNCTION_28_0()
{
  result = 0.0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return result;
}

void OUTLINED_FUNCTION_29_0()
{

  sub_2703AFC10(v3, v2, v1, v0);
}

void OUTLINED_FUNCTION_30_0()
{

  sub_2703AFC10(v1, v3, v0, v2);
}

uint64_t OUTLINED_FUNCTION_31()
{
}

uint64_t OUTLINED_FUNCTION_32()
{
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;
}

uint64_t OUTLINED_FUNCTION_33()
{
  *(v0 + 208) = v2;
  *(v0 + 216) = v4;
  *(v0 + 224) = v1;
  *(v0 + 232) = v3;
}

void OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2)
{

  sub_2703AFC10(a1, a2, v2, v3);
}

uint64_t ActionResultHandler.onActionResult.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActionResultHandler.__allocating_init(onActionResult:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ActionResultHandler.init(onActionResult:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ActionResultHandler.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t DelegateActionResult.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DelegateActionResult.kind.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DelegateActionResult.params.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_2(v2, v3, *(v1 + 32), a1);
}

uint64_t DelegateActionResult.params.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE980(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t BuyActionResult.context.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_2(v2, v3, *(v1 + 24), a1);
}

uint64_t type metadata accessor for ActionResultHandler.Result(uint64_t a1)
{
  result = qword_2807CED38;
  if (!qword_2807CED38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2703B62DC(uint64_t a1)
{
  result = type metadata accessor for PresentationRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2703B6364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2703B63A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2703B63F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2703B6438(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 AdaptiveImageModel.init(defaultArtwork:darkArtwork:)@<Q0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = *(a2 + 80);
  if (v6)
  {
    v14 = *a2;
    v15 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v11 = *(a2 + 56);
    v10 = *(a2 + 64);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = *&__dst[72];
    v6 = *&__dst[80];
    v11 = *&__dst[56];
    v10 = *&__dst[64];
    v7 = *&__dst[32];
    v8 = *&__dst[40];
    v9 = __dst[48];
    v14 = *__dst;
    v15 = *&__dst[16];
    sub_2703B656C(__dst, v16);
  }

  memcpy(a3, __src, 0x58uLL);
  result = v14;
  *(a3 + 104) = v15;
  *(a3 + 88) = v14;
  *(a3 + 120) = v7;
  *(a3 + 128) = v8;
  *(a3 + 136) = v9;
  *(a3 + 144) = v11;
  *(a3 + 152) = v10;
  *(a3 + 160) = v12;
  *(a3 + 168) = v6;
  return result;
}

uint64_t sub_2703B65C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x41746C7561666564 && a2 == 0xEE006B726F777472;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x777472416B726164 && a2 == 0xEB000000006B726FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2703B66DC(char a1)
{
  sub_2705D83B4();
  MEMORY[0x2743A47E0](a1 & 1);
  return sub_2705D8414();
}

uint64_t sub_2703B6724(char a1)
{
  if (a1)
  {
    return 0x777472416B726164;
  }

  else
  {
    return 0x41746C7561666564;
  }
}

uint64_t sub_2703B6794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703B65C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703B67BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2703B669C();
  *a1 = result;
  return result;
}

uint64_t sub_2703B67E4(uint64_t a1)
{
  v2 = sub_2703B6A70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703B6820(uint64_t a1)
{
  v2 = sub_2703B6A70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdaptiveImageModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED48, &qword_2705DC5D0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8 - 8];
  memcpy(v16, v1, sizeof(v16));
  memcpy(__dst, (v1 + 88), 0x58uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703B656C(v16, v15);
  sub_2703B6A70();
  sub_2705D84C4();
  memcpy(v15, v16, sizeof(v15));
  __dst[111] = 0;
  sub_2703B6AC4();
  OUTLINED_FUNCTION_3_3(v15);
  memcpy(v14, v15, sizeof(v14));
  sub_2703B6B18(v14);
  if (!v2)
  {
    memcpy(v13, __dst, sizeof(v13));
    __dst[110] = 1;
    sub_2703B656C(__dst, v12);
    OUTLINED_FUNCTION_3_3(v13);
    memcpy(v12, v13, sizeof(v12));
    sub_2703B6B18(v12);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_2703B6A70()
{
  result = qword_2807CED50;
  if (!qword_2807CED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CED50);
  }

  return result;
}

unint64_t sub_2703B6AC4()
{
  result = qword_2807CED58;
  if (!qword_2807CED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CED58);
  }

  return result;
}

uint64_t AdaptiveImageModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CED60, &qword_2705DC5D8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703B6A70();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13[199] = 0;
  sub_2703B6DA0();
  OUTLINED_FUNCTION_1_3(&type metadata for ArtworkModel);
  memcpy(v13, v12, 0x58uLL);
  v13[198] = 1;
  OUTLINED_FUNCTION_1_3(&type metadata for ArtworkModel);
  v5 = OUTLINED_FUNCTION_0_3();
  v6(v5);
  memcpy(&v13[88], v11, 0x58uLL);
  memcpy(v9, v13, sizeof(v9));
  memcpy(a2, v13, 0xB0uLL);
  sub_2703B6DF4(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v10, v13, sizeof(v10));
  return sub_2703B6E2C(v10);
}

unint64_t sub_2703B6DA0()
{
  result = qword_2807CED68;
  if (!qword_2807CED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CED68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit10ColorModelVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703B6EB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2703B6EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AdaptiveImageModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703B70C4);
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

unint64_t sub_2703B710C()
{
  result = qword_2807CED70;
  if (!qword_2807CED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CED70);
  }

  return result;
}

unint64_t sub_2703B7164()
{
  result = qword_2807CED78;
  if (!qword_2807CED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CED78);
  }

  return result;
}

unint64_t sub_2703B71BC()
{
  result = qword_2807CED80;
  if (!qword_2807CED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CED80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return sub_2705D8084();
}

uint64_t sub_2703B7264()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2705D4C94();
}

uint64_t sub_2703B72DC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2703B4E54(a1, v3);

  sub_2705D4CA4();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2703B735C(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19UnifiedMessagingKit21AnyComponentViewModel_reducer);
  *v3 = 0;
  v3[1] = 0;
  sub_2703B4E54(a1, v6);
  swift_beginAccess();
  sub_2703B4E54(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0, &qword_2705DC8B8);
  sub_2705D4C74();
  __swift_destroy_boxed_opaque_existential_1(v6);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2703B740C()
{
  OUTLINED_FUNCTION_2_2();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  sub_2705D78A4();
  v1[21] = sub_2705D7894();
  v6 = sub_2705D7844();
  v1[22] = v6;
  v1[23] = v5;

  return MEMORY[0x2822009F8](sub_2703B74A4, v6, v5);
}

uint64_t sub_2703B74A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2705D4C94();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0, &qword_2705DC8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDC0, &unk_2705E28A0);
  if (swift_dynamicCast())
  {
    sub_2703B291C((v0 + 96), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = (*(v2 + 8))(v1, v2);
    *(v0 + 192) = v3;
    v4 = v3[2];
    *(v0 + 200) = v4;
    if (v4)
    {
      *(v0 + 208) = 0;
      v5 = *(v0 + 152);
      v6 = v3[4];
      *(v0 + 216) = v6;
      v7 = v3[5];
      *(v0 + 224) = v7;
      v8 = v3[6];
      *(v0 + 232) = v8;
      v9 = swift_allocObject();
      *(v0 + 240) = v9;
      swift_weakInit();
      v10 = swift_allocObject();
      *(v0 + 248) = v10;
      v10[2] = v9;
      v10[3] = v6;
      v10[4] = v7;
      v10[5] = v8;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      return MEMORY[0x2822009F8](sub_2703B7724, v5, 0);
    }

    v11 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);

    v14 = (v11 + OBJC_IVAR____TtC19UnifiedMessagingKit21AnyComponentViewModel_reducer);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    *v14 = v13;
    v14[1] = v12;
    sub_2703B8280(v15, v16);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_2703B8298(v0 + 96);
  }

  OUTLINED_FUNCTION_1_4();

  return v17();
}

uint64_t sub_2703B7724()
{
  sub_27041D65C(v0[28], v0[29], sub_2703B8380, v0[31]);

  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x2822009F8](sub_2703B77E0, v1, v2);
}

uint64_t sub_2703B77E0()
{
  v1 = v0[26] + 1;
  if (v1 == v0[25])
  {
    v2 = v0[20];
    v4 = v0[17];
    v3 = v0[18];

    v5 = (v2 + OBJC_IVAR____TtC19UnifiedMessagingKit21AnyComponentViewModel_reducer);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    *v5 = v4;
    v5[1] = v3;
    sub_2703B8280(v6, v7);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_1_4();

    return v8();
  }

  else
  {
    v0[26] = v1;
    v10 = v0[19];
    v11 = (v0[24] + 24 * v1);
    v12 = v11[4];
    v0[27] = v12;
    v13 = v11[5];
    v0[28] = v13;
    v14 = v11[6];
    v0[29] = v14;
    v15 = swift_allocObject();
    v0[30] = v15;
    swift_weakInit();
    v16 = swift_allocObject();
    v0[31] = v16;
    v16[2] = v15;
    v16[3] = v12;
    v16[4] = v13;
    v16[5] = v14;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    return MEMORY[0x2822009F8](sub_2703B7724, v10, 0);
  }
}

uint64_t sub_2703B7980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2705D78A4();

  v14 = sub_2705D7894();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a2;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;
  sub_270482490();
}

uint64_t sub_2703B7AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  sub_2705D78A4();
  v8[10] = sub_2705D7894();
  v10 = sub_2705D7844();
  v8[11] = v10;
  v8[12] = v9;

  return MEMORY[0x2822009F8](sub_2703B7B60, v10, v9);
}

uint64_t sub_2703B7B60()
{
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_2703B7C54;

    return sub_2703B7DF0();
  }

  else
  {

    OUTLINED_FUNCTION_0_4();

    return v4();
  }
}

uint64_t sub_2703B7C54()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2703B7D98, v3, v2);
}

uint64_t sub_2703B7D98()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_0_4();

  return v0();
}

uint64_t sub_2703B7DF0()
{
  OUTLINED_FUNCTION_2_2();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  sub_2705D78A4();
  v1[15] = sub_2705D7894();
  v6 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_2703B7E88, v6, v5);
}

uint64_t sub_2703B7E88()
{
  v1 = v0[11];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14] + OBJC_IVAR____TtC19UnifiedMessagingKit21AnyComponentViewModel_reducer;
    v4 = v0[11] + 32;
    do
    {
      sub_2703B4E54(v4, (v0 + 2));
      swift_beginAccess();
      v5 = *v3;
      if (*v3)
      {
        v11 = v0[12];
        v12 = v0[13];
        v6 = *(v3 + 8);
        swift_endAccess();
        swift_getKeyPath();
        swift_getKeyPath();

        v7 = sub_2705D4C84();
        v5(v8, v0 + 2, v11, v12);
        sub_2703B8280(v5, v6);
        v7(v0 + 7, 0);

        __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 2);
        swift_endAccess();
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_1_4();

  return v9();
}

uint64_t sub_2703B8018()
{
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit21AnyComponentViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB8, &qword_2705DC910);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2703B8280(*(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit21AnyComponentViewModel_reducer), *(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit21AnyComponentViewModel_reducer + 8));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for AnyComponentViewModel(uint64_t a1)
{
  result = qword_2807CED98;
  if (!qword_2807CED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2703B8128(uint64_t a1)
{
  sub_2703B81C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2703B81C0(uint64_t a1)
{
  if (!qword_2807CEDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CEDB0, &qword_2705DC8B8);
    v1 = sub_2705D4CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_2807CEDA8);
    }
  }
}

uint64_t sub_2703B8230@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2705D4C34();
  *a1 = result;
  return result;
}

uint64_t sub_2703B8280(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2703B8298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDC8, &unk_2705DC970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2703B8300()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2703B8338()
{

  return swift_deallocObject();
}

uint64_t sub_2703B838C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2703B83E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2703B84C0;

  return sub_2703B7AC0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2703B84C0()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t ArtworkModel.accessibilityText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArtworkModel.accessibilityText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArtworkModel.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_2703B8688(v2, v3, v4, v5, v6);
}

uint64_t sub_2703B8688(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2703B86A0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2703B86A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

double ArtworkModel.backgroundColor.setter()
{
  sub_2703B8720(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  *&result = OUTLINED_FUNCTION_2_3().n128_u64[0];
  return result;
}

uint64_t sub_2703B8720(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2703B8738(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2703B8738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t ArtworkModel.URL.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ArtworkModel.URL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

unint64_t sub_2703B8890(uint64_t a1, uint64_t a2)
{
  v2 = sub_2705D7EB4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2703B88DC(char a1)
{
  result = 0x726F6C6F436762;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6874646977;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_2703B89A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2703B8890(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2703B89D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2703B88DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2703B8A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703B8890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703B8A3C(uint64_t a1)
{
  v2 = sub_2703B8DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703B8A78(uint64_t a1)
{
  v2 = sub_2703B8DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

double ArtworkModel.init(height:width:URL:accessibilityText:backgroundColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *(a5 + 56) = a6;
  *(a5 + 64) = a7;
  *(a5 + 72) = a1;
  *(a5 + 80) = a2;
  *a5 = a3;
  *(a5 + 8) = a4;
  v7 = OUTLINED_FUNCTION_0_5();
  sub_2703B8720(v7, v8, v9, v10, v11);
  *&result = OUTLINED_FUNCTION_2_3().n128_u64[0];
  return result;
}

double ArtworkModel.init(height:width:URL:backgroundColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 56) = a4;
  *(a3 + 64) = a5;
  *(a3 + 72) = a1;
  *(a3 + 80) = a2;
  v5 = OUTLINED_FUNCTION_0_5();
  sub_2703B8720(v5, v6, v7, v8, v9);
  *&result = OUTLINED_FUNCTION_2_3().n128_u64[0];
  return result;
}

uint64_t ArtworkModel.init(height:width:URL:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = -1;
  *(a3 + 56) = a4;
  *(a3 + 64) = a5;
  *(a3 + 72) = result;
  *(a3 + 80) = a2;
  return result;
}

uint64_t ArtworkModel.init(width:height:URL:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = -1;
  *(a3 + 56) = a5;
  *(a3 + 64) = a4;
  *(a3 + 72) = result;
  *(a3 + 80) = a2;
  return result;
}

uint64_t ArtworkModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD8, &qword_2705DC9A0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v8;
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v28 = *(v1 + 48);
  v11 = *(v1 + 80);
  v18[2] = *(v1 + 72);
  v19 = v9;
  v18[1] = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_2703B8DC8();
  sub_2705D84C4();
  LOBYTE(v23) = 0;
  v16 = v22;
  sub_2705D7FF4();
  if (!v16)
  {
    v23 = v21;
    v24 = v20;
    v25 = v10;
    v26 = v19;
    v27 = v28;
    v29 = 1;
    sub_2703B8688(v21, v20, v10, v19, v28);
    sub_2703B8E1C();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8024();
    sub_2703B8720(v23, v24, v25, v26, v27);
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_6_1();
    sub_2705D8054();
    LOBYTE(v23) = 3;
    OUTLINED_FUNCTION_6_1();
    sub_2705D8054();
    LOBYTE(v23) = 4;
    OUTLINED_FUNCTION_6_1();
    sub_2705D8034();
  }

  return (*(v4 + 8))(v7, v15);
}

unint64_t sub_2703B8DC8()
{
  result = qword_2807CEDE0;
  if (!qword_2807CEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEDE0);
  }

  return result;
}

unint64_t sub_2703B8E1C()
{
  result = qword_2807CEDE8;
  if (!qword_2807CEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEDE8);
  }

  return result;
}

uint64_t ArtworkModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDF0, &qword_2705DC9A8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2703B8DC8();
  sub_2705D8484();
  if (v2)
  {
    OUTLINED_FUNCTION_5_1();
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_2703B8720(v12, v5, v10, v11, 255);
  }

  else
  {
    LOBYTE(v40) = 0;
    OUTLINED_FUNCTION_1_5();
    v13 = sub_2705D7F04();
    v38 = v14;
    LOBYTE(__src[0]) = 1;
    sub_2703B91D0();
    sub_2705D7F44();
    v35 = v13;
    v34 = a2;
    v15 = v40;
    v36 = v41;
    v16 = v43;
    v37 = v42;
    v17 = v44;
    v18 = OUTLINED_FUNCTION_0_5();
    sub_2703B8720(v18, v19, v20, v21, v22);
    LOBYTE(v40) = 2;
    OUTLINED_FUNCTION_1_5();
    sub_2705D7F74();
    v24 = v23;
    LOBYTE(v40) = 3;
    OUTLINED_FUNCTION_1_5();
    sub_2705D7F74();
    v26 = v25;
    v51 = 4;
    v27 = sub_2705D7F54();
    v28 = v10;
    v30 = v29;
    (*(v7 + 8))(v28, v5);
    __src[0] = v35;
    __src[1] = v38;
    __src[2] = v15;
    v31 = v36;
    v32 = v37;
    __src[3] = v36;
    __src[4] = v37;
    __src[5] = v16;
    LOBYTE(__src[6]) = v17;
    __src[7] = v24;
    __src[8] = v26;
    __src[9] = v27;
    __src[10] = v30;
    memcpy(v34, __src, 0x58uLL);
    sub_2703B656C(__src, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v35;
    v41 = v38;
    v42 = v15;
    v43 = v31;
    v44 = v32;
    v45 = v16;
    v46 = v17;
    v47 = v24;
    v48 = v26;
    v49 = v27;
    v50 = v30;
    return sub_2703B6B18(&v40);
  }
}

unint64_t sub_2703B91D0()
{
  result = qword_2807CEDF8;
  if (!qword_2807CEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEDF8);
  }

  return result;
}

uint64_t sub_2703B925C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2703B929C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ArtworkModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703B9454);
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

unint64_t sub_2703B9490()
{
  result = qword_2807CEE00;
  if (!qword_2807CEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE00);
  }

  return result;
}

unint64_t sub_2703B94E8()
{
  result = qword_2807CEE08;
  if (!qword_2807CEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE08);
  }

  return result;
}

unint64_t sub_2703B9540()
{
  result = qword_2807CEE10;
  if (!qword_2807CEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE10);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_2_3()
{
  result = *v0;
  v4 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_2703B9604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697470616461 && a2 == 0xED00006567616D49;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D49656C646E7562 && a2 == 0xEB00000000656761;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x67616D496E6F6369 && a2 == 0xE900000000000065;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69736E6F70736572 && a2 == 0xEF6567616D496576;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D496D6574737973 && a2 == 0xEB00000000656761)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2703B97D0(char a1)
{
  result = 0x6576697470616461;
  switch(a1)
  {
    case 1:
      v3 = 0x656C646E7562;
      goto LABEL_4;
    case 2:
      result = 0x67616D496E6F6369;
      break;
    case 3:
      result = 0x69736E6F70736572;
      break;
    case 4:
      v3 = 0x6D6574737973;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D49000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2703B989C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEEC0, &qword_2705DD588);
  OUTLINED_FUNCTION_0();
  v57 = v3;
  v58 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_0();
  v56 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEEC8, &qword_2705DD590);
  OUTLINED_FUNCTION_0();
  v54 = v7;
  v55 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v53 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEED0, &qword_2705DD598);
  OUTLINED_FUNCTION_0();
  v51 = v11;
  v52 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEED8, &qword_2705DD5A0);
  OUTLINED_FUNCTION_0();
  v49 = v16;
  v50 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEEE0, &qword_2705DD5A8);
  OUTLINED_FUNCTION_0();
  v48 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEEE8, &qword_2705DD5B0);
  OUTLINED_FUNCTION_0();
  v60 = v26;
  v61 = v25;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703BB2A4();
  sub_2705D84C4();
  memcpy(v63, v59, 0x160uLL);
  LODWORD(a1) = sub_2703BB658(v63);
  v28 = sub_2703BB26C(v63);
  v29 = v28;
  switch(a1)
  {
    case 1:
      v44 = *v28;
      v45 = v28[1];
      LOBYTE(v62[0]) = 1;
      sub_2703BB508();
      OUTLINED_FUNCTION_7_1(&type metadata for AssetModel.Content.BundleImageCodingKeys);
      v62[0] = v44;
      v62[1] = v45;
      sub_2703BB760();
      v32 = v50;
      sub_2705D8084();
      v33 = v49;
      goto LABEL_7;
    case 2:
      v34 = *v28;
      v35 = v28[1];
      LOBYTE(v62[0]) = 2;
      sub_2703BB448();
      v36 = v61;
      sub_2705D7FE4();
      v62[0] = v34;
      v62[1] = v35;
      sub_2703BB70C();
      v37 = v52;
      sub_2705D8084();
      (*(v51 + 8))(v14, v37);
      v38 = OUTLINED_FUNCTION_8_0();
      v40 = v36;
      return v39(v38, v40);
    case 3:
      LOBYTE(v62[0]) = 3;
      sub_2703BB3A0();
      v41 = v53;
      v42 = v61;
      sub_2705D7FE4();
      memcpy(v62, v29, sizeof(v62));
      sub_2703BB6B8();
      v43 = v55;
      sub_2705D8084();
      (*(v54 + 8))(v41, v43);
      v38 = OUTLINED_FUNCTION_8_0();
      v40 = v42;
      return v39(v38, v40);
    case 4:
      v30 = *v28;
      v31 = v28[1];
      LOBYTE(v62[0]) = 4;
      sub_2703BB2F8();
      v19 = v56;
      OUTLINED_FUNCTION_7_1(&type metadata for AssetModel.Content.SystemImageCodingKeys);
      v62[0] = v30;
      v62[1] = v31;
      sub_2703BB664();
      v32 = v58;
      sub_2705D8084();
      v33 = v57;
LABEL_7:
      (*(v33 + 8))(v19, v32);
      goto LABEL_8;
    default:
      LOBYTE(v62[0]) = 0;
      sub_2703BB5B0();
      OUTLINED_FUNCTION_7_1(&type metadata for AssetModel.Content.AdaptiveImageCodingKeys);
      memcpy(v62, v29, 0xB0uLL);
      sub_2703BB7B4();
      sub_2705D8084();
      (*(v48 + 8))(v24, v20);
LABEL_8:
      v38 = OUTLINED_FUNCTION_8_0();
      v40 = v14;
      return v39(v38, v40);
  }
}

uint64_t sub_2703B9E9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v80 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEE38, &qword_2705DD550);
  OUTLINED_FUNCTION_0();
  v83 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_0();
  v84 = v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEE40, &qword_2705DD558);
  OUTLINED_FUNCTION_0();
  v77 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v82 = v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEE48, &qword_2705DD560);
  OUTLINED_FUNCTION_0();
  v75 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  v81 = v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEE50, &qword_2705DD568);
  OUTLINED_FUNCTION_0();
  v74 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEE58, &qword_2705DD570);
  OUTLINED_FUNCTION_0();
  v73 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEE60, &unk_2705DD578);
  OUTLINED_FUNCTION_0();
  v86 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = v71 - v24;
  v26 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2703BB2A4();
  v27 = v91;
  sub_2705D8484();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v71[1] = v16;
  v71[2] = v20;
  v72 = v15;
  v28 = v85;
  v91 = v21;
  v29 = sub_2705D7FB4();
  sub_27042C9F0(v29, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_7;
  }

  v71[0] = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2703BA804);
  }

  v33 = *(v30 + v31);
  sub_27042C9E4(v31 + 1);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_7:
    v47 = sub_2705D7D84();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v49 = &type metadata for AssetModel.Content;
    v50 = v91;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v86 + 8))(v25, v50);
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v38 = v86;
  v39 = v71[0];
  v41 = v83;
  v40 = v84;
  switch(v33)
  {
    case 1:
      v89[0] = 1;
      sub_2703BB508();
      v60 = v72;
      v61 = v91;
      sub_2705D7ED4();
      if (v39)
      {
        (*(v38 + 8))(v25, v61);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v87);
      }

      sub_2703BB55C();
      v62 = v76;
      sub_2705D7FA4();
      v63 = (v74 + 8);
      v71[0] = 0;
      swift_unknownObjectRelease();
      (*v63)(v60, v62);
      (*(v38 + 8))(v25, v91);
      v70 = OUTLINED_FUNCTION_9_1();
      sub_2703BAC14(v70);
      memcpy(v90, v89, sizeof(v90));
      v42 = v87;
      goto LABEL_17;
    case 2:
      v89[0] = 2;
      sub_2703BB448();
      OUTLINED_FUNCTION_1_6(&type metadata for AssetModel.Content.IconImageCodingKeys, v89);
      v42 = v87;
      sub_2703BB49C();
      OUTLINED_FUNCTION_6_2(&type metadata for IconImageModel);
      OUTLINED_FUNCTION_5_2();
      swift_unknownObjectRelease();
      v55 = OUTLINED_FUNCTION_4_1();
      v56(v55);
      v57 = OUTLINED_FUNCTION_3_5();
      v58(v57);
      v59 = OUTLINED_FUNCTION_9_1();
      sub_2703BB4F0(v59);
      goto LABEL_15;
    case 3:
      v89[0] = 3;
      sub_2703BB3A0();
      OUTLINED_FUNCTION_1_6(&type metadata for AssetModel.Content.ResponsiveImageCodingKeys, v89);
      v42 = v87;
      sub_2703BB3F4();
      OUTLINED_FUNCTION_6_2(&type metadata for ResponsiveImageModel);
      OUTLINED_FUNCTION_5_2();
      swift_unknownObjectRelease();
      v65 = OUTLINED_FUNCTION_4_1();
      v66(v65);
      v67 = OUTLINED_FUNCTION_3_5();
      v68(v67);
      memcpy(v88, v89, sizeof(v88));
      sub_2703BACA4(v88);
      v69 = v88;
      goto LABEL_16;
    case 4:
      v89[0] = 4;
      sub_2703BB2F8();
      OUTLINED_FUNCTION_1_6(&type metadata for AssetModel.Content.SystemImageCodingKeys, v89);
      v52 = v40;
      v42 = v87;
      sub_2703BB34C();
      sub_2705D7FA4();
      v53 = (v41 + 8);
      v54 = (v86 + 8);
      v71[0] = 0;
      swift_unknownObjectRelease();
      (*v53)(v52, v28);
      (*v54)(v25, v38);
      v64 = OUTLINED_FUNCTION_9_1();
      sub_2703BAD8C(v64);
      goto LABEL_15;
    default:
      v89[0] = 0;
      sub_2703BB5B0();
      OUTLINED_FUNCTION_1_6(&type metadata for AssetModel.Content.AdaptiveImageCodingKeys, v89);
      v42 = v87;
      sub_2703BB604();
      OUTLINED_FUNCTION_6_2(&type metadata for AdaptiveImageModel);
      OUTLINED_FUNCTION_5_2();
      swift_unknownObjectRelease();
      v43 = OUTLINED_FUNCTION_4_1();
      v44(v43);
      v45 = OUTLINED_FUNCTION_3_5();
      v46(v45);
      memcpy(v89, v88, 0xB0uLL);
      sub_2703BABE8(v89);
LABEL_15:
      v69 = v89;
LABEL_16:
      memcpy(v90, v69, sizeof(v90));
LABEL_17:
      memcpy(v80, v90, 0x160uLL);
      result = __swift_destroy_boxed_opaque_existential_1(v42);
      break;
  }

  return result;
}

uint64_t sub_2703BA818(uint64_t a1)
{
  v2 = sub_2703BB5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BA854(uint64_t a1)
{
  v2 = sub_2703BB5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703BA890(uint64_t a1)
{
  v2 = sub_2703BB508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BA8CC(uint64_t a1)
{
  v2 = sub_2703BB508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703BA910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703B9604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703BA938@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2703B97C8();
  *a1 = result;
  return result;
}

uint64_t sub_2703BA960(uint64_t a1)
{
  v2 = sub_2703BB2A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BA99C(uint64_t a1)
{
  v2 = sub_2703BB2A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703BA9D8(uint64_t a1)
{
  v2 = sub_2703BB448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BAA14(uint64_t a1)
{
  v2 = sub_2703BB448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703BAA50(uint64_t a1)
{
  v2 = sub_2703BB3A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BAA8C(uint64_t a1)
{
  v2 = sub_2703BB3A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703BAAC8(uint64_t a1)
{
  v2 = sub_2703BB2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BAB04(uint64_t a1)
{
  v2 = sub_2703BB2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AssetModel.adaptiveImage(model:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, 0xB0uLL);
  sub_2703BABE8(__srca);
  memcpy(a2, __srca, 0x160uLL);
  return sub_2703B6DF4(__dst, &v5);
}

uint64_t sub_2703BABE8(uint64_t result)
{
  v1 = *(result + 136);
  *(result + 48) = *(result + 48);
  *(result + 136) = v1;
  return result;
}

uint64_t sub_2703BAC14(uint64_t result)
{
  v1 = *(result + 136) | 0x2000000000000000;
  *(result + 48) = *(result + 48);
  *(result + 136) = v1;
  return result;
}

uint64_t static AssetModel.responsiveImage(model:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_2703BACA4(__srca);
  memcpy(a2, __srca, 0x160uLL);
  return sub_2703BACBC(__dst, &v5);
}

uint64_t sub_2703BACA4(uint64_t result)
{
  v1 = *(result + 136) | 0x6000000000000000;
  *(result + 48) = *(result + 48);
  *(result + 136) = v1;
  return result;
}

uint64_t sub_2703BAD30@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  a2(v6);
  memcpy(a3, v6, 0x160uLL);
}

uint64_t sub_2703BAD8C(uint64_t result)
{
  v1 = *(result + 136) | 0x8000000000000000;
  *(result + 48) = *(result + 48);
  *(result + 136) = v1;
  return result;
}

unint64_t sub_2703BADA8()
{
  result = qword_2807CEE18;
  if (!qword_2807CEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE18);
  }

  return result;
}

unint64_t sub_2703BAE00()
{
  result = qword_2807CEE20;
  if (!qword_2807CEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE20);
  }

  return result;
}

unint64_t sub_2703BAE54(uint64_t a1)
{
  *(a1 + 8) = sub_2703BAE84();
  result = sub_2703BAED8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2703BAE84()
{
  result = qword_2807CEE28;
  if (!qword_2807CEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE28);
  }

  return result;
}

unint64_t sub_2703BAED8()
{
  result = qword_2807CEE30;
  if (!qword_2807CEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE30);
  }

  return result;
}

void *sub_2703BAF2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2705D4444();
  if (!v5)
  {
    goto LABEL_11;
  }

  if (v4 == 0x6D696D6574737973 && v5 == 0xEB00000000656761)
  {
  }

  else
  {
    v7 = sub_2705D8134();

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = sub_2705D4424();
  if (!v9)
  {
LABEL_11:
    v11 = sub_2705D4394();
    v13 = v12;
    sub_2705D4484();
    OUTLINED_FUNCTION_11_1();
    (*(v14 + 8))(a1);
    v16[0] = v11;
    v16[1] = v13;
    sub_2703BB4F0(v16);
    goto LABEL_12;
  }

  strcpy(__dst, "systemimage://");
  HIBYTE(__dst[1]) = -18;
  MEMORY[0x2743A3A90](v8);

  sub_2705D4484();
  OUTLINED_FUNCTION_11_1();
  (*(v10 + 8))(a1);
  v16[0] = __dst[0];
  v16[1] = __dst[1];
  sub_2703BAD8C(v16);
LABEL_12:
  memcpy(__dst, v16, sizeof(__dst));
  memcpy(v16, __dst, sizeof(v16));
  CGSizeMake();
  return memcpy(a2, v16, 0x160uLL);
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit18AdaptiveImageModelVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2703BB170(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 49);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_2703BB1B8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 344) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 352) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 8;
      bzero((a1 + 56), 0x128uLL);
      return;
    }

    *(a1 + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_2703BB27C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136) | (a2 << 61);
  *(result + 48) = *(result + 48);
  *(result + 136) = v2;
  return result;
}

unint64_t sub_2703BB2A4()
{
  result = qword_2807CEE68;
  if (!qword_2807CEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE68);
  }

  return result;
}

unint64_t sub_2703BB2F8()
{
  result = qword_2807CEE70;
  if (!qword_2807CEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE70);
  }

  return result;
}

unint64_t sub_2703BB34C()
{
  result = qword_2807CEE78;
  if (!qword_2807CEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE78);
  }

  return result;
}

unint64_t sub_2703BB3A0()
{
  result = qword_2807CEE80;
  if (!qword_2807CEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE80);
  }

  return result;
}

unint64_t sub_2703BB3F4()
{
  result = qword_2807CEE88;
  if (!qword_2807CEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE88);
  }

  return result;
}

unint64_t sub_2703BB448()
{
  result = qword_2807CEE90;
  if (!qword_2807CEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE90);
  }

  return result;
}

unint64_t sub_2703BB49C()
{
  result = qword_2807CEE98;
  if (!qword_2807CEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEE98);
  }

  return result;
}

uint64_t sub_2703BB4F0(uint64_t result)
{
  v1 = *(result + 136) | 0x4000000000000000;
  *(result + 48) = *(result + 48);
  *(result + 136) = v1;
  return result;
}

unint64_t sub_2703BB508()
{
  result = qword_2807CEEA0;
  if (!qword_2807CEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEEA0);
  }

  return result;
}

unint64_t sub_2703BB55C()
{
  result = qword_2807CEEA8;
  if (!qword_2807CEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEEA8);
  }

  return result;
}

unint64_t sub_2703BB5B0()
{
  result = qword_2807CEEB0;
  if (!qword_2807CEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEEB0);
  }

  return result;
}

unint64_t sub_2703BB604()
{
  result = qword_2807CEEB8;
  if (!qword_2807CEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEEB8);
  }

  return result;
}

unint64_t sub_2703BB664()
{
  result = qword_2807CEEF0;
  if (!qword_2807CEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEEF0);
  }

  return result;
}

unint64_t sub_2703BB6B8()
{
  result = qword_2807CEEF8;
  if (!qword_2807CEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEEF8);
  }

  return result;
}

unint64_t sub_2703BB70C()
{
  result = qword_2807CEF00;
  if (!qword_2807CEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF00);
  }

  return result;
}

unint64_t sub_2703BB760()
{
  result = qword_2807CEF08;
  if (!qword_2807CEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF08);
  }

  return result;
}

unint64_t sub_2703BB7B4()
{
  result = qword_2807CEF10;
  if (!qword_2807CEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetModel.Content.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703BB8D4);
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

_BYTE *sub_2703BB950(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2703BB9ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2703BBA28()
{
  result = qword_2807CEF18;
  if (!qword_2807CEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF18);
  }

  return result;
}

unint64_t sub_2703BBA80()
{
  result = qword_2807CEF20;
  if (!qword_2807CEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF20);
  }

  return result;
}

unint64_t sub_2703BBAD8()
{
  result = qword_2807CEF28;
  if (!qword_2807CEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF28);
  }

  return result;
}

unint64_t sub_2703BBB30()
{
  result = qword_2807CEF30;
  if (!qword_2807CEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF30);
  }

  return result;
}

unint64_t sub_2703BBB88()
{
  result = qword_2807CEF38;
  if (!qword_2807CEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF38);
  }

  return result;
}

unint64_t sub_2703BBBE0()
{
  result = qword_2807CEF40;
  if (!qword_2807CEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF40);
  }

  return result;
}

unint64_t sub_2703BBC38()
{
  result = qword_2807CEF48;
  if (!qword_2807CEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF48);
  }

  return result;
}

unint64_t sub_2703BBC90()
{
  result = qword_2807CEF50;
  if (!qword_2807CEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF50);
  }

  return result;
}

unint64_t sub_2703BBCE8()
{
  result = qword_2807CEF58;
  if (!qword_2807CEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF58);
  }

  return result;
}

unint64_t sub_2703BBD40()
{
  result = qword_2807CEF60;
  if (!qword_2807CEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF60);
  }

  return result;
}

unint64_t sub_2703BBD98()
{
  result = qword_2807CEF68;
  if (!qword_2807CEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF68);
  }

  return result;
}

unint64_t sub_2703BBDF0()
{
  result = qword_2807CEF70;
  if (!qword_2807CEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF70);
  }

  return result;
}

unint64_t sub_2703BBE48()
{
  result = qword_2807CEF78;
  if (!qword_2807CEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF78);
  }

  return result;
}

unint64_t sub_2703BBEA0()
{
  result = qword_2807CEF80;
  if (!qword_2807CEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF80);
  }

  return result;
}

unint64_t sub_2703BBEF8()
{
  result = qword_2807CEF88;
  if (!qword_2807CEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF88);
  }

  return result;
}

unint64_t sub_2703BBF50()
{
  result = qword_2807CEF90;
  if (!qword_2807CEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF90);
  }

  return result;
}

unint64_t sub_2703BBFA8()
{
  result = qword_2807CEF98;
  if (!qword_2807CEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEF98);
  }

  return result;
}

unint64_t sub_2703BC000()
{
  result = qword_2807CEFA0;
  if (!qword_2807CEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEFA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2)
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1)
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return sub_2705D7FE4();
}

void *OUTLINED_FUNCTION_9_1()
{
  v1 = v0[20];
  v0[63] = v0[19];
  v0[64] = v1;
  return v0 + 63;
}

UnifiedMessagingKit::AsyncMessageProvider __swiftcall AsyncMessageProvider.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFA8, &qword_2705DDCA0);
  result.routes._rawValue = sub_2705D7494();
  v1->routes._rawValue = result.routes._rawValue;
  return result;
}

uint64_t AsyncMessageProvider.addDestinationFor(for:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  v7 = OUTLINED_FUNCTION_13_1();
  result = sub_2703BC2EC(v7, v8, a1, a2, v9);
  *v4 = v11;
  return result;
}

uint64_t sub_2703BC20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_6(a1, a2, a3);
  OUTLINED_FUNCTION_0_6();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFD0, &qword_2705DDD08);
  OUTLINED_FUNCTION_4_2();
  if (sub_2705D7E04())
  {
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_2_4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v3;
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_6_3();
    sub_2703BCD68(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_15_1();
  }
}

uint64_t sub_2703BC2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_2703D7318(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF000, &qword_2705DDD38);
  if ((sub_2705D7E04() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_2703D7318(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_2703BCDB0(v14, a3, a4, a1, a2, v18);
  }
}

uint64_t sub_2703BC440(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2703BC480(uint64_t result, int a2, int a3)
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

void sub_2703BC4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_1();
  a23 = v27;
  a24 = v28;
  v31 = OUTLINED_FUNCTION_1_7(v29, v30);
  sub_2703D7390(v31);
  OUTLINED_FUNCTION_0_6();
  if (v34)
  {
    __break(1u);
LABEL_11:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  v35 = v32;
  v36 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFB8, &qword_2705DDCF0);
  OUTLINED_FUNCTION_5_3();
  if (sub_2705D7E04())
  {
    sub_2703D7390(v26);
    OUTLINED_FUNCTION_2_4();
    if (!v38)
    {
      goto LABEL_11;
    }

    v35 = v37;
  }

  v39 = *v25;
  if (v36)
  {
    *(v39[7] + 8 * v35) = v24;
  }

  else
  {
    sub_2703BD1EC(v26, &a10);
    sub_2703BCDFC(v35, &a10, v24, v39);
  }

  OUTLINED_FUNCTION_8_1();
}

void sub_2703BC598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_1();
  a23 = v27;
  a24 = v28;
  v31 = OUTLINED_FUNCTION_1_7(v29, v30);
  sub_2703D7390(v31);
  OUTLINED_FUNCTION_0_6();
  if (v34)
  {
    __break(1u);
LABEL_12:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  v35 = v32;
  v36 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF010, &qword_2705DDDF8);
  OUTLINED_FUNCTION_5_3();
  if (sub_2705D7E04())
  {
    v37 = OUTLINED_FUNCTION_12_1();
    sub_2703D7390(v37);
    OUTLINED_FUNCTION_2_4();
    if (!v39)
    {
      goto LABEL_12;
    }

    v35 = v38;
  }

  v40 = *v25;
  if (v36)
  {
    *(v40[7] + 8 * v35) = v24;
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    sub_2703BD1EC(v26, &a10);
    sub_2703BCDFC(v35, &a10, v24, v40);
    OUTLINED_FUNCTION_8_1();
  }
}

uint64_t sub_2703BC684(uint64_t a1, uint64_t a2)
{
  v5 = sub_2705D45C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2703D7418(a2);
  OUTLINED_FUNCTION_0_6();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF0, &qword_2705DDD28);
  OUTLINED_FUNCTION_4_2();
  if ((sub_2705D7E04() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = OUTLINED_FUNCTION_12_1();
  v15 = sub_2703D7418(v14);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v2;
  if (v13)
  {
    v18 = v17[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8, &qword_2705DDD30);
    OUTLINED_FUNCTION_14();
    v20 = OUTLINED_FUNCTION_9_2(v18 + *(v19 + 72) * v12);

    return v21(v20);
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    return sub_2703BCE54(v12, v8, a1, v17);
  }
}

void sub_2703BC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_1();
  a23 = v27;
  a24 = v28;
  v31 = OUTLINED_FUNCTION_1_7(v29, v30);
  sub_2703D749C(v31);
  OUTLINED_FUNCTION_0_6();
  if (v34)
  {
    __break(1u);
LABEL_12:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  v35 = v32;
  v36 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE0, &qword_2705F4140);
  OUTLINED_FUNCTION_5_3();
  if (sub_2705D7E04())
  {
    v37 = OUTLINED_FUNCTION_12_1();
    sub_2703D749C(v37);
    OUTLINED_FUNCTION_2_4();
    if (!v39)
    {
      goto LABEL_12;
    }

    v35 = v38;
  }

  if (v36)
  {
    v40 = *(*v25 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8, &qword_2705DDD20);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_9_2(v40 + *(v41 + 72) * v35);
    OUTLINED_FUNCTION_8_1();

    v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_13_1();
    sub_2703BCF54(v50, v51, v24, v52);
    sub_2703BD0C8(v26, &a9);
    OUTLINED_FUNCTION_8_1();
  }
}

void sub_2703BC978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_1();
  a23 = v26;
  a24 = v27;
  v30 = OUTLINED_FUNCTION_1_7(v28, v29);
  sub_2703D749C(v30);
  OUTLINED_FUNCTION_0_6();
  if (v32)
  {
    __break(1u);
LABEL_11:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  v33 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFB0, &unk_2705F4120);
  OUTLINED_FUNCTION_5_3();
  if (sub_2705D7E04())
  {
    v34 = OUTLINED_FUNCTION_12_1();
    sub_2703D749C(v34);
    OUTLINED_FUNCTION_2_4();
    if (!v35)
    {
      goto LABEL_11;
    }
  }

  if (v33)
  {
    type metadata accessor for MessageState(0);
    OUTLINED_FUNCTION_8_1();

    sub_2703BD124(v36, v37);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_13_1();
    sub_2703BD020(v39, v40, v24, v41);
    sub_2703BD0C8(v25, &a9);
    OUTLINED_FUNCTION_8_1();
  }
}

uint64_t sub_2703BCA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_6(a1, a2, a3);
  OUTLINED_FUNCTION_0_6();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFC8, &qword_2705DDD00);
  OUTLINED_FUNCTION_4_2();
  if (sub_2705D7E04())
  {
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_2_4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v3;
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_6_3();
    sub_2703BD344(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_15_1();
  }
}

uint64_t sub_2703BCB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2703D7318(a2, a3);
  OUTLINED_FUNCTION_0_6();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFD8, &unk_2705DDD10);
  OUTLINED_FUNCTION_4_2();
  if (sub_2705D7E04())
  {
    v12 = OUTLINED_FUNCTION_13_1();
    v14 = sub_2703D7318(v12, v13);
    if ((v11 & 1) == (v15 & 1))
    {
      v10 = v14;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

LABEL_5:
  v16 = *v3;
  if (v11)
  {
    v17 = v16[7];
    sub_2705D4BE4();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_9_2(v17 + *(v18 + 72) * v10);
    OUTLINED_FUNCTION_15_1();

    __asm { BRAA            X3, X16 }
  }

  sub_2703BD248(v10, a2, a3, a1, v16);
  OUTLINED_FUNCTION_15_1();
}

void sub_2703BCC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_6(a1, a2, a3);
  OUTLINED_FUNCTION_0_6();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFC0, &qword_2705DDCF8);
  OUTLINED_FUNCTION_4_2();
  if (sub_2705D7E04())
  {
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_2_4();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v3;
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_6_3();
    sub_2703BD344(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_15_1();
  }
}

unint64_t sub_2703BCD68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_2703BCDB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_2703BCDFC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2703BCE54(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2705D45C4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8, &qword_2705DDD30);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2703BCF54(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a4[6] + 48 * a1);
  v8 = a2[1];
  *v7 = *a2;
  v7[1] = v8;
  *(v7 + 25) = *(a2 + 25);
  v9 = a4[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8, &qword_2705DDD20);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_2703BD020(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a4[6] + 48 * a1);
  v8 = a2[1];
  *v7 = *a2;
  v7[1] = v8;
  *(v7 + 25) = *(a2 + 25);
  v9 = a4[7];
  v10 = type metadata accessor for MessageState(0);
  result = sub_2703BD188(a3, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_2703BD124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703BD188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703BD248(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2705D4BE4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2703BD2F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_7_2(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 136 * v6), v8, 0x81uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_2703BD344(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_7_2(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AsyncMessageProvider.ProviderError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2703BD410);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2703BD44C()
{
  result = qword_2807CF008;
  if (!qword_2807CF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF008);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2703D7318(a2, a3);
}

unint64_t OUTLINED_FUNCTION_7_2(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

unint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_2703D7318(v1, v0);
}

uint64_t sub_2703BD60C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2705D6774();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2703BD6A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2705D6774();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticateAction(uint64_t a1)
{
  result = qword_2807CF018;
  if (!qword_2807CF018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2703BD774(uint64_t a1)
{
  result = sub_2703BD810();
  if (v2 <= 0x3F)
  {
    result = sub_2703BD854();
    if (v3 <= 0x3F)
    {
      result = sub_2705D6774();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2703BD810()
{
  result = qword_2807CF028;
  if (!qword_2807CF028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807CF028);
  }

  return result;
}

unint64_t sub_2703BD854()
{
  result = qword_2807CF030;
  if (!qword_2807CF030)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2807CF030);
  }

  return result;
}

uint64_t sub_2703BD89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2705D6774();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2703BD910(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2703BD950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2703BD9A0()
{
  result = qword_2807CF500;
  if (!qword_2807CF500)
  {
    type metadata accessor for AuthenticateAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF500);
  }

  return result;
}

uint64_t sub_2703BD9F8(void *a1, uint64_t a2, void (*a3)(void, void, void))
{
  v5 = sub_2705D6784();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(*a1, a1[1], a1[2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038, &unk_2705E0130);
  (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
  return sub_2705D70C4();
}

uint64_t sub_2703BDB08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B72616D64726F77 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2703BDBCC(char a1)
{
  if (a1)
  {
    return 0x6B72616D64726F77;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_2703BDC00(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2703BDC88(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF090, &qword_2705DE8E8);
  OUTLINED_FUNCTION_0();
  v25 = v3;
  v26 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF098, &qword_2705DE8F0);
  OUTLINED_FUNCTION_0();
  v23 = v8;
  v24 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0A0, &qword_2705DE8F8);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703BEAF0();
  sub_2705D84C4();
  memcpy(v29, v27, 0x160uLL);
  LODWORD(a1) = sub_2703BEBEC(v29);
  v18 = (v14 + 8);
  v19 = sub_2703BEAB0(v29);
  if (a1 == 1)
  {
    v28[0] = 1;
    sub_2703BEB44();
    OUTLINED_FUNCTION_3_7();
    sub_2705D7FE4();
    v20 = v26;
    sub_2705D8034();
    (*(v25 + 8))(v6, v20);
  }

  else
  {
    v28[0] = 0;
    sub_2703BEB98();
    OUTLINED_FUNCTION_3_7();
    sub_2705D7FE4();
    memcpy(v28, v19, sizeof(v28));
    sub_2703BAED8();
    v21 = v24;
    sub_2705D8084();
    (*(v23 + 8))(v11, v21);
  }

  return (*v18)(v17, v12);
}

uint64_t sub_2703BDF84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF060, &qword_2705DE8C8);
  OUTLINED_FUNCTION_0();
  v51 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF068, &qword_2705DE8D0);
  OUTLINED_FUNCTION_0();
  v50 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v45[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF070, &unk_2705DE8D8);
  OUTLINED_FUNCTION_0();
  v52 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-v13];
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2703BEAF0();
  v16 = v58;
  sub_2705D8484();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v58 = v9;
  v48 = v5;
  v17 = sub_2705D7FB4();
  result = sub_27042C9F0(v17, 0);
  v22 = v10;
  if (v20 == v21 >> 1)
  {
LABEL_8:
    v28 = sub_2705D7D84();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v30 = &type metadata for BrandingModel.Content;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v14, v22);
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v47 = 0;
  if (v20 >= (v21 >> 1))
  {
    __break(1u);
    return result;
  }

  v46 = *(v19 + v20);
  v23 = sub_27042C9E4(v20 + 1);
  v25 = v24;
  v27 = v26;
  swift_unknownObjectRelease();
  if (v25 != v27 >> 1)
  {
    v22 = v10;
    goto LABEL_8;
  }

  if (v46)
  {
    LOBYTE(v56[0]) = 1;
    sub_2703BEB44();
    OUTLINED_FUNCTION_5_4(&type metadata for BrandingModel.Content.WordmarkCodingKeys, v56);
    v58 = v23;
    v32 = sub_2705D7F54();
    v50 = v33;
    v47 = 0;
    v37 = v32;
    swift_unknownObjectRelease();
    v38 = OUTLINED_FUNCTION_4_3();
    v39(v38);
    v40 = OUTLINED_FUNCTION_2_5();
    v41(v40);
    v56[0] = v37;
    v56[1] = v50;
    sub_2703BE884(v56);
    v42 = v56;
  }

  else
  {
    LOBYTE(v56[0]) = 0;
    sub_2703BEB98();
    v31 = v58;
    OUTLINED_FUNCTION_5_4(&type metadata for BrandingModel.Content.AssetCodingKeys, v56);
    sub_2703BAE84();
    v34 = v48;
    OUTLINED_FUNCTION_3_7();
    sub_2705D7FA4();
    v35 = v31;
    v36 = (v50 + 8);
    v47 = 0;
    swift_unknownObjectRelease();
    (*v36)(v35, v34);
    v43 = OUTLINED_FUNCTION_2_5();
    v44(v43);
    memcpy(v55, v56, sizeof(v55));
    sub_2703BE7B8(v55);
    v42 = v55;
  }

  memcpy(v57, v42, sizeof(v57));
  memcpy(v49, v57, 0x160uLL);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}
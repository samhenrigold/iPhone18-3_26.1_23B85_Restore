uint64_t sub_216A0AE3C(uint64_t a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC90, &qword_217034F50);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_21700DCA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageRenderMetricsViewModifier(0);
  sub_216C0C998();
  v11 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {

    sub_21700ED94();
    v12 = sub_217009C34();
    v15 = v2;
    v13 = v12;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v11, 0);
    (*(v3 + 8))(v5, v15);
  }

  sub_21700DC94();
  sub_21700DD74();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_216A0B0AC(uint64_t a1, uint64_t a2)
{
  v32 = sub_21700DD44();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C394();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700DD54();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700C3A4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D7EF58])
  {
    goto LABEL_2;
  }

  if (v17 == *MEMORY[0x277D7EF48])
  {
    (*(v13 + 96))(v16, v12);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCB0, qword_217034FC0);
    v22 = v30;
    v21 = v31;
    v23 = (*(v30 + 32))(v8, &v16[*(v20 + 48)], v31);
    sub_216A0B908(v23);
    v24 = swift_allocError();
    (*(v22 + 16))(v25, v8, v21);
    *v5 = v24;
    v5[8] = 1;
    v26 = v32;
    (*(v3 + 104))(v5, *MEMORY[0x277D22278], v32);
    sub_21700DD84();
    (*(v3 + 8))(v5, v26);
    return (*(v22 + 8))(v8, v21);
  }

  else
  {
    if (v17 == *MEMORY[0x277D7EF60])
    {
LABEL_2:
      *v5 = 1;
      v18 = v32;
      (*(v3 + 104))(v5, *MEMORY[0x277D22288], v32);
      sub_21700DD84();
      return (*(v3 + 8))(v5, v18);
    }

    if (v17 == *MEMORY[0x277D7EF50])
    {
      *v11 = 1;
      v27 = v29;
      (*(v29 + 104))(v11, *MEMORY[0x277D22298], v9);
      sub_21700DD94();
      return (*(v27 + 8))(v11, v9);
    }

    else
    {
      *v5 = 1;
      v28 = v32;
      (*(v3 + 104))(v5, *MEMORY[0x277D22288], v32);
      sub_21700DD84();
      (*(v3 + 8))(v5, v28);
      return (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t sub_216A0B584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0B5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0B67C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PageRenderMetricsViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_216A0B6F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PageRenderMetricsViewModifier(0);

  return sub_216A0B0AC(a1, a2);
}

uint64_t sub_216A0B7B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_216A0B83C()
{
  result = qword_280E2A8A0;
  if (!qword_280E2A8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFCA0, &qword_217034FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A8A0);
  }

  return result;
}

uint64_t sub_216A0B8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC98, &qword_217034FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A0B908(double a1)
{
  result = qword_27CABFCB8;
  if (!qword_27CABFCB8)
  {
    sub_21700C394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCB8);
  }

  return result;
}

uint64_t sub_216A0B99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v51 - v6;
  v62 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v58 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v56 = v9;
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - v11;
  v12 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v55 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v65 = v20;
  v66 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v59 = v22;
  MEMORY[0x28223BE20](v23);
  v24 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v60 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  sub_21700CE04();
  v29 = *(v14 + 16);
  v29(v19, a2, v12);
  v30 = v64;
  sub_21700D224();
  if (v30)
  {
    (*(v14 + 8))(a2, v12);
    return (*(v66 + 8))(v67, v65);
  }

  else
  {
    v52 = v29;
    v53 = v24;
    v54 = v14;
    v64 = v12;
    (*(v60 + 32))(v63, v28, v24);
    v32 = v59;
    sub_21700CE04();
    v33 = v61;
    sub_21700CD74();
    v34 = v65;
    v35 = v66 + 8;
    v36 = *(v66 + 8);
    v36(v32, v65);
    if (__swift_getEnumTagSinglePayload(v33, 1, v62) == 1)
    {
      v37 = v34;
      sub_216A0BF90(v61);
      v38 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      v40 = v39;
      v41 = type metadata accessor for ApproveAllFollowRequestsAction(0);
      *v40 = 0xD000000000000010;
      v40[1] = 0x8000000217085C70;
      v40[2] = v41;
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D22530], v38);
      swift_willThrow();
      v42 = OUTLINED_FUNCTION_2_74();
      v43(v42, v64);
      v36(v67, v37);
      return (*(v60 + 8))(v63, v53);
    }

    else
    {
      v66 = v35;
      v45 = v57;
      v44 = v58;
      v46 = v62;
      (*(v58 + 32))(v57, v61, v62);
      (*(v44 + 16))(v56, v45, v46);
      v47 = v64;
      v52(v55, a2, v64);
      sub_216A0BFF8();
      v48 = sub_21700E934();
      v49 = OUTLINED_FUNCTION_2_74();
      v50(v49, v47);
      v36(v67, v65);
      (*(v44 + 8))(v45, v62);
      result = type metadata accessor for ApproveAllFollowRequestsAction(0);
      *(v63 + *(result + 20)) = v48;
    }
  }

  return result;
}

uint64_t sub_216A0BF90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A0BFF8()
{
  result = qword_27CABFCC0;
  if (!qword_27CABFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InlineUpsell.AssetName(_BYTE *result, int a2, int a3)
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

uint64_t sub_216A0C148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v42 = v6;
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v41 = *(v11 + 8);
  v41(v17, v9);
  if (v21)
  {
    v44 = v19;
    v45 = v21;
    sub_21700F364();
    sub_21700D7A4();
    sub_21700CE04();
    (*(v42 + 16))(v8, v46, v43);
    v22 = type metadata accessor for InlineUpsell(0);
    OUTLINED_FUNCTION_2_75();
    sub_21700D734();
    OUTLINED_FUNCTION_4_62(1819568500);
    sub_21700CDB4();
    v23 = OUTLINED_FUNCTION_0_112();
    v24 = v41;
    (v41)(v23);
    v25 = (a3 + v22[6]);
    *v25 = v14;
    v25[1] = v8;
    sub_21700CE04();
    sub_21700CDB4();
    v26 = OUTLINED_FUNCTION_0_112();
    v24(v26);
    v27 = (a3 + v22[7]);
    *v27 = v14;
    v27[1] = v8;
    sub_21700CE04();
    sub_21700CDB4();
    v28 = OUTLINED_FUNCTION_0_112();
    v24(v28);
    v29 = (a3 + v22[8]);
    *v29 = v14;
    v29[1] = v8;
    OUTLINED_FUNCTION_4_62(1969710451);
    v30 = v46;
    sub_21700D2E4();
    v31 = OUTLINED_FUNCTION_19();
    v24(v31);
    sub_21700CE04();
    OUTLINED_FUNCTION_2_75();
    sub_21700D2E4();
    v32 = OUTLINED_FUNCTION_19();
    v24(v32);
    sub_21700CE04();
    OUTLINED_FUNCTION_2_75();
    sub_21700D2E4();
    v33 = OUTLINED_FUNCTION_19();
    v24(v33);
    sub_21700CE04();
    sub_216A0C854();
    sub_21700CD14();
    (*(v42 + 8))(v30, v43);
    (v24)(v18, v9);
    v34 = OUTLINED_FUNCTION_19();
    result = (v24)(v34);
    *(a3 + v22[12]) = v44;
  }

  else
  {
    v36 = sub_21700E2E4();
    sub_216A0C80C(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v38 = v37;
    v39 = type metadata accessor for InlineUpsell(0);
    *v38 = 25705;
    v38[1] = 0xE200000000000000;
    v38[2] = v39;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v42 + 8))(v46, v43);
    return (v41)(v18, v9);
  }

  return result;
}

BOOL sub_216A0C65C(uint64_t a1)
{
  v1 = sub_21700F5E4();

  return v1 != 0;
}

BOOL sub_216A0C6CC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216A0C65C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216A0C724()
{
  result = qword_27CABFCC8;
  if (!qword_27CABFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCC8);
  }

  return result;
}

uint64_t sub_216A0C80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216A0C854()
{
  result = qword_27CABFCD0;
  if (!qword_27CABFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCD0);
  }

  return result;
}

uint64_t sub_216A0C8A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI31CollaborationMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_216A0C9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_216A0CAC4(a1, a2, a3, &v13 - v7);
  v9 = sub_21678C1C4();
  sub_216697664(v8, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v9;
  v11 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v11;
}

uint64_t sub_216A0CAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v97 = a2;
  v7 = sub_2170075A4();
  v99 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v96 = v8;
  v98 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_21700C924();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CollaborationAction(0);
  v92 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v95 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v10;
  MEMORY[0x28223BE20](v11);
  v89 = &v72 - v12;
  v87 = sub_21700CFB4();
  v13 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217005EF4();
  v78 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21700D704();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v82 = sub_21700D284();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_216A0D6CC(a1))
  {
    v75 = v7;
    v76 = a4;
    v77 = v4;
    v74 = a1;
    v73 = sub_21700C7C4();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v32 = (v79 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v33 = v32[1];
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = *v32;
    *(inited + 56) = v33;
    *(inited + 72) = v34;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v34;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 0x7473696C79616C70;
    *(inited + 104) = 0xE800000000000000;
    sub_21700DF14();
    v35 = sub_21700E384();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v15);
    sub_21700D6F4();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v102 = v35;
    sub_2166EF9C4(&v102, v101);
    v36 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v36;
    sub_2166EF9D4();
    v37 = v100;
    v103 = v34;
    *&v102 = 0x726F62616C6C6F63;
    *(&v102 + 1) = 0xEB00000000657461;
    sub_2166EF9C4(&v102, v101);
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v37;
    sub_2166EF9D4();
    v38 = v100;
    v103 = v34;
    *&v102 = 0xD000000000000010;
    *(&v102 + 1) = 0x80000002170801D0;
    sub_2166EF9C4(&v102, v101);
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v38;
    sub_2166EF9D4();
    v39 = v100;
    sub_216681B04(v27, v24, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v15) == 1)
    {
      sub_216697664(v24, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v79 = v30;
      v42 = v78;
      (*(v78 + 32))(v17, v24, v15);
      v43 = sub_217005DE4();
      v103 = v34;
      *&v102 = v43;
      *(&v102 + 1) = v44;
      sub_2166EF9C4(&v102, v101);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v39;
      sub_2166EF9D4();
      v39 = v100;
      (*(v42 + 8))(v17, v15);
      v30 = v79;
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v45 = sub_21700CF84();
    v46 = __swift_project_value_buffer(v45, qword_280E73DB0);
    v47 = v86;
    MEMORY[0x21CE9DD70](v73, v30, 0x6E6F74747562, 0xE600000000000000, v39, v46);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v48 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_217013DA0;
    v50 = v49 + v48;
    v51 = v87;
    (*(v13 + 16))(v50, v47, v87);
    v52 = v84;
    v53 = v85;
    (*(v84 + 16))(v83, v21, v85);
    v54 = v80;
    sub_21700D244();
    (*(v13 + 8))(v47, v51);
    (*(v52 + 8))(v21, v53);
    sub_216697664(v27, &qword_27CABA820, &unk_217018CE0);
    v55 = v91;
    v56 = *(v91 + 16);
    v57 = v90;
    v58 = v74;
    v59 = v94;
    v56(v90, v74, v94);
    v60 = v89;
    (*(v81 + 32))(v89, v54, v82);
    v61 = *(v88 + 20);
    (*(v55 + 32))(v60 + v61, v57, v59);
    __swift_storeEnumTagSinglePayload(v60 + v61, 0, 1, v59);
    v62 = v76;
    v56(v76, v58, v59);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v63 = v95;
    sub_216A0DE7C(v60, v95);
    v64 = v99;
    v65 = v98;
    v66 = v75;
    (*(v99 + 16))(v98, v97, v75);
    v67 = (*(v92 + 80) + 24) & ~*(v92 + 80);
    v68 = (v93 + *(v64 + 80) + v67) & ~*(v64 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v77;
    sub_216A0DE7C(v63, v69 + v67);
    (*(v64 + 32))(v69 + v68, v65, v66);
    v70 = type metadata accessor for MenuAction(0);
    v71 = (v62 + *(v70 + 20));
    *v71 = sub_216A0DEE0;
    v71[1] = v69;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v70);
  }

  else
  {
    v40 = type metadata accessor for MenuAction(0);

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v40);
  }
}

uint64_t sub_216A0D6CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA780, &qword_217021038);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_21700C6E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v11 = v17;
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  if ((sub_216A0DAD4() & 1) == 0)
  {
    if (qword_280E464C0 != -1)
    {
      swift_once();
    }

    if ((sub_2166C129C() & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_21700C6F4();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {

      sub_216697664(v3, &qword_27CABA780, &qword_217021038);
      return 0;
    }

    (*(v5 + 32))(v10, v3, v4);
    sub_21700C6D4();
    sub_216A0E014(&qword_27CABA790, MEMORY[0x277D2B310], MEMORY[0x277D2B318]);
    v15 = sub_21700F1F4();
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
    if ((v15 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_2166B90EC();
  if ((v12 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  sub_2166C0578(&v17);

  if (v18)
  {
    v13 = v19;
    sub_216697664(&v17, &qword_27CAC5980, &qword_217035260);
    if (v13 != 2 && (v13 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_216A0D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for CollaborationAction(0);
  v6[4] = sub_216A0E014(&qword_280E3E2D8, type metadata accessor for CollaborationAction, &unk_217034234);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_216A0DFB0(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216A0DAD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCD8, &qword_217035268);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE0, qword_217035270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_21700C694();
  v9 = sub_21700C684();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_216697664(v2, &qword_27CABFCD8, &qword_217035268);
    v10 = sub_21700C654();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  sub_21700C674();
  (*(*(v9 - 8) + 8))(v2, v9);
  v11 = sub_21700C654();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    goto LABEL_13;
  }

  sub_216681B04(v8, v5, &qword_27CABFCE0, qword_217035270);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(v5, v11);
  if (v13 != *MEMORY[0x277D2B2D8] && v13 != *MEMORY[0x277D2B2E0] && v13 != *MEMORY[0x277D2B2E8])
  {
    (*(v12 + 8))(v5, v11);
    goto LABEL_13;
  }

  v16 = 1;
LABEL_14:
  sub_216697664(v8, &qword_27CABFCE0, qword_217035270);
  return v16;
}

uint64_t sub_216A0DD5C()
{

  v1 = OBJC_IVAR____TtC7MusicUI31CollaborationMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for CollaborationMenuActionProvider(uint64_t a1)
{
  result = qword_280E30558;
  if (!qword_280E30558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A0DE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0DEE0()
{
  v1 = *(type metadata accessor for CollaborationAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2170075A4() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_216A0D9F8(v5, v0 + v2, v6);
}

uint64_t sub_216A0DFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0E014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A0E134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-v9];
  v11 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = type metadata accessor for PageMappedItemsStore();
  v17 = OUTLINED_FUNCTION_28_7(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  *(v17 + 16) = sub_21700E384();
  v18 = type metadata accessor for JSReplayPage(0);
  v28 = a1;
  v29 = a2;
  v30 = v17;
  sub_216CC9FAC();
  v20 = v19;
  sub_216681B04(v4 + *(v18 + 24), v10, &qword_27CAB6BF0, &unk_217015620);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216697664(v10, &qword_27CAB6BF0, &unk_217015620);
    v21 = 0;
  }

  else
  {
    sub_216A0F158(v10, v15, type metadata accessor for Page.Header);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A0, &unk_217060FA0);
    sub_216CCCA0C();
    v21 = v22;
    sub_216A0F1B8(v15, type metadata accessor for Page.Header);
  }

  v23 = type metadata accessor for MappedReplayPage(0);
  v24 = *(v23 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  result = (*(v25 + 16))(&a3[v24], v4);
  *a3 = v20;
  *(a3 + 1) = v17;
  *&a3[*(v23 + 28)] = v21;
  return result;
}

uint64_t sub_216A0E3A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD48, &qword_2170354C0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD40, &qword_2170354B8);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E450@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD20, &qword_217035408);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E4A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD50, &qword_2170354C8);
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216A0E4EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD28, &unk_217035410);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_216A0E64C(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_27CABFD00, type metadata accessor for MappedReplayPage, &unk_2170352F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E6A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A0E70C(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_27CABFD08, type metadata accessor for MappedReplayPage, &unk_217035310);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_216A0E7D0(uint64_t a1)
{
  result = sub_216A0E6A4(qword_280E3FFC0, type metadata accessor for MappedCatalogPage, &unk_217035338);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E870(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_280E3FFB8, type metadata accessor for MappedCatalogPage, &unk_217035360);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E910(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_27CABFD10, type metadata accessor for MappedSearchPage, &unk_2170353B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E988(uint64_t a1)
{
  result = sub_216A0E6A4(qword_280E40DB8, type metadata accessor for MappedSearchPage, &unk_2170353D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E9E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00, &unk_217048F10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = _s7SectionVMa(0);
  sub_2168C4AF4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CABBB00, &unk_217048F10);
    v14 = type metadata accessor for MappedSection(0);
    v15 = a3;
    v16 = 1;
  }

  else
  {
    sub_216A0F158(v7, v12, type metadata accessor for MappedSection.Content);
    v17 = a1[1];
    v32 = *a1;
    sub_21700DF14();
    v18 = sub_216C2750C();
    v30 = v19;
    v31 = v18;
    v20 = v13[6];
    v21 = type metadata accessor for MappedSection(0);
    sub_216681B04(a1 + v20, a3 + v21[6], &qword_27CABDCC0, &qword_217031290);
    sub_2169728B8(v12, a3 + v21[7]);
    HIDWORD(v29) = *(a1 + v13[7]);
    sub_216681B04(a1 + v13[5], a3 + v21[9], &qword_27CAB6D58, &unk_217014E30);
    sub_216681B04(a1 + v13[12], a3 + v21[10], &qword_27CABFD18, &qword_217035400);
    v22 = *(a1 + v13[11]);
    v23 = sub_216970CA0();
    sub_216A0F1B8(v12, type metadata accessor for MappedSection.Content);
    v24 = *(v23 + 16);

    v25 = *(a1 + v13[8]);
    v26 = v31;
    *a3 = v32;
    a3[1] = v17;
    v27 = v30;
    a3[2] = v26;
    a3[3] = v27;
    *(a3 + v21[8]) = WORD2(v29);
    *(a3 + v21[11]) = v22;
    *(a3 + v21[12]) = v24;
    *(a3 + v21[13]) = v25;
    v15 = a3;
    v16 = 0;
    v14 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

uint64_t sub_216A0EC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = type metadata accessor for PageMappedItemsStore();
  v17 = OUTLINED_FUNCTION_28_7(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  *(v17 + 16) = sub_21700E384();
  v18 = type metadata accessor for Page(0);
  v29 = a1;
  v30 = a2;
  v31 = v17;
  sub_216CC9FAC();
  v20 = v19;
  sub_216681B04(v4 + v18[5], v10, &qword_27CAB6BF0, &unk_217015620);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216697664(v10, &qword_27CAB6BF0, &unk_217015620);
    v21 = 0;
  }

  else
  {
    sub_216A0F158(v10, v15, type metadata accessor for Page.Header);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A0, &unk_217060FA0);
    sub_216CCCA0C();
    v21 = v22;
    sub_216A0F1B8(v15, type metadata accessor for Page.Header);
  }

  v23 = v18[6];
  v24 = type metadata accessor for MappedCatalogPage(0);
  sub_216681B04(v4 + v23, &a3[v24[5]], &qword_27CAB7A28, &unk_2170352A0);
  v25 = v24[8];
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v26 + 16))(&a3[v25], v4);
  result = sub_216681B04(v4 + v18[9], &a3[v24[9]], &qword_27CABFCE8, &unk_21705EC50);
  *a3 = v21;
  *&a3[v24[6]] = v20;
  *&a3[v24[7]] = v17;
  return result;
}

double sub_216A0EF4C()
{
  v2 = OUTLINED_FUNCTION_10_46();
  v3 = OUTLINED_FUNCTION_28_7(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  *(v3 + 16) = sub_21700E384();
  v4 = type metadata accessor for JSSearchPage(0);
  sub_216CC9FAC();
  v6 = v5;
  v7 = *(v1 + *(v4 + 28));
  v8 = *(type metadata accessor for MappedSearchPage(0) + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v9 + 16))(&v0[v8], v1);
  *v0 = 0;
  *(v0 + 1) = v6;
  *(v0 + 2) = v7;
  *(v0 + 3) = v3;
  sub_21700DF14();
  return result;
}

uint64_t sub_216A0F05C()
{
  v2 = OUTLINED_FUNCTION_10_46();
  v3 = OUTLINED_FUNCTION_28_7(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  *(v3 + 16) = sub_21700E384();
  sub_216CC9FAC();
  v5 = v4;
  v6 = *(type metadata accessor for JSSearchResultsPage(0) + 32);
  v7 = type metadata accessor for MappedSearchResultsPage(0);
  sub_216681B04(v1 + v6, v0 + v7[6], &qword_27CABFD58, &unk_2170354D0);
  LOBYTE(v6) = *(v1 + 16);
  result = sub_216EC58B8(v0 + v7[8]);
  *v0 = v5;
  v0[1] = v3;
  *(v0 + v7[7]) = v6;
  return result;
}

uint64_t sub_216A0F158(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A0F1B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216A0F240(uint64_t a1)
{
  sub_21668A338(319, &qword_280E45790, &qword_27CABD4A0, &unk_217060FA0);
  if (v1 <= 0x3F)
  {
    sub_2166D1580(319, &qword_280E29FC8, type metadata accessor for MappedSection, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_216A0F354();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PageMappedItemsStore();
        if (v4 <= 0x3F)
        {
          sub_21700D194();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216A0F354()
{
  if (!qword_280E29F68)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F68);
    }
  }
}

void sub_216A0F3CC(uint64_t a1)
{
  sub_2166D1580(319, &qword_280E29FC8, type metadata accessor for MappedSection, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PageMappedItemsStore();
    if (v2 <= 0x3F)
    {
      sub_21700D194();
      if (v3 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E45790, &qword_27CABD4A0, &unk_217060FA0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216A0F510(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_280E37DD8, type metadata accessor for MappedSearchResultsPage, &unk_217035470);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0F588(uint64_t a1)
{
  result = sub_216A0E6A4(qword_280E37DE0, type metadata accessor for MappedSearchResultsPage, &unk_21703548C);
  *(a1 + 8) = result;
  return result;
}

void sub_216A0F60C(uint64_t a1)
{
  sub_2166D1580(319, &qword_280E29FC8, type metadata accessor for MappedSection, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PageMappedItemsStore();
    if (v2 <= 0x3F)
    {
      sub_2166D1580(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21700D194();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for UploadedVideoContextMenu(uint64_t a1)
{
  result = qword_280E35D78;
  if (!qword_280E35D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A0F7C8(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_2167B84AC(319);
    if (v2 <= 0x3F)
    {
      sub_2167EE974(319);
      if (v3 <= 0x3F)
      {
        sub_2170070F4();
        if (v4 <= 0x3F)
        {
          type metadata accessor for MenuConfiguration(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216A0F8B0()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for UploadedVideoContextMenu(0);
    v6 = *(v5 + 28);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F50(v0 + v6, v4, v0 + *(v5 + 32));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_216942CA4(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216A0FA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
  __swift_allocate_value_buffer(v0, qword_27CB22950);
  __swift_project_value_buffer(v0, qword_27CB22950);
  return sub_217007C14();
}

_BYTE *storeEnumTagSinglePayload for SwiftMusicInterval(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A0FBC0()
{
  result = qword_27CABFD60;
  if (!qword_27CABFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD60);
  }

  return result;
}

uint64_t sub_216A0FC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for BlockUserAction(0);
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for BlockUserAction(0);
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t sub_216A10034(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_216A10074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216A10280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEE00444972616559;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

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

uint64_t sub_216A10358(char a1)
{
  if (a1)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_216A103A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFDB0, &qword_217035980);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_216A11460();
  OUTLINED_FUNCTION_16_34(&type metadata for ReplaySelectYearAction.CodingKeys, v10, v9);
  OUTLINED_FUNCTION_9_47();
  if (!v1)
  {
    type metadata accessor for ReplaySelectYearAction(0);
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_0_113();
    v13 = sub_216A11418(v11, v12, MEMORY[0x277D21C90]);
    OUTLINED_FUNCTION_8_46(v13);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216A104EC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_37(a1);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFDA0, &qword_217035978);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_13_33();
  type metadata accessor for ReplaySelectYearAction(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v10 = sub_216A11460();
  OUTLINED_FUNCTION_11_42(&type metadata for ReplaySelectYearAction.CodingKeys, v11, v10);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  v12 = OUTLINED_FUNCTION_6_52();
  OUTLINED_FUNCTION_12_40(v12, v13);
  OUTLINED_FUNCTION_0_113();
  v16 = sub_216A11418(v14, v15, MEMORY[0x277D21C98]);
  OUTLINED_FUNCTION_5_58(v16);
  v17 = OUTLINED_FUNCTION_3_4();
  v18(v17);
  v19 = OUTLINED_FUNCTION_7_55();
  v20(v19);
  sub_216A114B4(v9, v22, type metadata accessor for ReplaySelectYearAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return sub_216A11514(v9, type metadata accessor for ReplaySelectYearAction);
}

uint64_t sub_216A10744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A10280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216A1076C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_21_32();
  *a1 = result;
  return result;
}

uint64_t sub_216A10794(uint64_t a1)
{
  v2 = sub_216A11460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A107D0(uint64_t a1)
{
  v2 = sub_216A11460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A10854(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  sub_21700EA34();
  v3[37] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A108F0, v5, v4);
}

uint64_t sub_216A108F0()
{
  v1 = v0[35];

  *(swift_task_alloc() + 16) = v1;
  sub_216C2E88C();

  if (v0[19])
  {
    memcpy(v0 + 2, v0 + 18, 0x80uLL);
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v3 = v0[36];
    if (IsReduceMotionEnabled)
    {
      sub_216880D18((v0 + 2), (v0 + 18));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8, &qword_217020F20);
      sub_21700B0D4();
    }

    else
    {
      sub_21700B414();
      sub_217008244();
      sub_217008224();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = v0 + 2;
      sub_217008A84();
    }

    v6 = v0[34];
    v7 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 104))(v6, v7);
    sub_216880DBC((v0 + 2));
    OUTLINED_FUNCTION_3();
  }

  else
  {
    sub_216697664((v0 + 18), &qword_27CABA690, &qword_217020E30);
    sub_216A11354();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_3();
  }

  return v4();
}

uint64_t sub_216A10B08(uint64_t a1, void *a2)
{
  if (*(a1 + 96) == *a2 && *(a1 + 104) == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_216A10B60(uint64_t a1, uint64_t a2)
{
  sub_216880D18(a2, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8, &qword_217020F20);
  return sub_21700B0D4();
}

uint64_t sub_216A10BC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7449646F69726570 && a2 == 0xEC00000044496D65;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

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

uint64_t sub_216A10C94(char a1)
{
  if (a1)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x7449646F69726570;
  }
}

uint64_t sub_216A10CE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD90, &qword_217035970);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_216A113C4();
  OUTLINED_FUNCTION_16_34(&type metadata for ReplaySelectPeriodAction.CodingKeys, v10, v9);
  OUTLINED_FUNCTION_9_47();
  if (!v1)
  {
    type metadata accessor for ReplaySelectPeriodAction(0);
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_0_113();
    v13 = sub_216A11418(v11, v12, MEMORY[0x277D21C90]);
    OUTLINED_FUNCTION_8_46(v13);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216A10E24@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_37(a1);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD78, &qword_217035968);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_13_33();
  type metadata accessor for ReplaySelectPeriodAction(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v10 = sub_216A113C4();
  OUTLINED_FUNCTION_11_42(&type metadata for ReplaySelectPeriodAction.CodingKeys, v11, v10);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  v12 = OUTLINED_FUNCTION_6_52();
  OUTLINED_FUNCTION_12_40(v12, v13);
  OUTLINED_FUNCTION_0_113();
  v16 = sub_216A11418(v14, v15, MEMORY[0x277D21C98]);
  OUTLINED_FUNCTION_5_58(v16);
  v17 = OUTLINED_FUNCTION_3_4();
  v18(v17);
  v19 = OUTLINED_FUNCTION_7_55();
  v20(v19);
  sub_216A114B4(v9, v22, type metadata accessor for ReplaySelectPeriodAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return sub_216A11514(v9, type metadata accessor for ReplaySelectPeriodAction);
}

uint64_t sub_216A11074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_36(v1);

  return sub_216A10854(v2, v3);
}

uint64_t sub_216A1111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A10BC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216A11144(uint64_t a1)
{
  v2 = sub_216A113C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A11180(uint64_t a1)
{
  v2 = sub_216A113C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A111BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

unint64_t sub_216A11270(uint64_t a1)
{
  result = sub_216A11298();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A11298()
{
  result = qword_27CABFD68;
  if (!qword_27CABFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD68);
  }

  return result;
}

unint64_t sub_216A11354()
{
  result = qword_27CABFD70;
  if (!qword_27CABFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD70);
  }

  return result;
}

unint64_t sub_216A113C4()
{
  result = qword_27CABFD80;
  if (!qword_27CABFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD80);
  }

  return result;
}

uint64_t sub_216A11418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216A11460()
{
  result = qword_27CABFDA8;
  if (!qword_27CABFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDA8);
  }

  return result;
}

uint64_t sub_216A114B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A11514(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A11574(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_216A115B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_216A1163C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A1172C()
{
  result = qword_27CABFDB8;
  if (!qword_27CABFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDB8);
  }

  return result;
}

unint64_t sub_216A11784()
{
  result = qword_27CABFDC0;
  if (!qword_27CABFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDC0);
  }

  return result;
}

unint64_t sub_216A117DC()
{
  result = qword_27CABFDC8;
  if (!qword_27CABFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDC8);
  }

  return result;
}

uint64_t sub_216A11830(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  sub_21700EA34();
  v3[33] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A118CC, v5, v4);
}

uint64_t sub_216A118CC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);

  sub_216BF47DC(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *v2, v2[1], (v0 + 128));
  if (*(v0 + 136))
  {
    memcpy((v0 + 16), (v0 + 128), 0x70uLL);
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v4 = *(v0 + 256);
    if (IsReduceMotionEnabled)
    {
      sub_216970008(v0 + 16, v0 + 128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98, &unk_21702DAD0);
      sub_21700B0D4();
    }

    else
    {
      sub_21700B414();
      sub_217008244();
      sub_217008224();
      v6 = swift_task_alloc();
      *(v6 + 16) = v4;
      *(v6 + 24) = v0 + 16;
      sub_217008A84();
    }

    v7 = *(v0 + 240);
    v8 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v9 + 104))(v7, v8);
    sub_216970064(v0 + 16);
    OUTLINED_FUNCTION_3();
  }

  else
  {
    sub_216697664(v0 + 128, &qword_27CABA698, &qword_217020E70);
    sub_216A11DE0();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_3();
  }

  return v5();
}

uint64_t sub_216A11AB8(uint64_t a1, uint64_t a2)
{
  sub_216970008(a2, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98, &unk_21702DAD0);
  return sub_21700B0D4();
}

uint64_t sub_216A11B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_36(v1);

  return sub_216A11830(v2, v3);
}

unint64_t sub_216A11BB8(uint64_t a1)
{
  result = sub_216A11BE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A11BE0()
{
  result = qword_27CABFDD0;
  if (!qword_27CABFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDD0);
  }

  return result;
}

unint64_t sub_216A11C84()
{
  result = qword_27CABFDD8;
  if (!qword_27CABFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDD8);
  }

  return result;
}

unint64_t sub_216A11CDC()
{
  result = qword_27CABFDE0;
  if (!qword_27CABFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDE0);
  }

  return result;
}

unint64_t sub_216A11D34()
{
  result = qword_27CABFDE8;
  if (!qword_27CABFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDE8);
  }

  return result;
}

unint64_t sub_216A11D8C()
{
  result = qword_27CABFDF0;
  if (!qword_27CABFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDF0);
  }

  return result;
}

unint64_t sub_216A11DE0()
{
  result = qword_27CABFDF8;
  if (!qword_27CABFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDF8);
  }

  return result;
}

_BYTE *sub_216A11E50(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A11F00()
{
  result = qword_27CABFE00;
  if (!qword_27CABFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE00);
  }

  return result;
}

_BYTE *_s9SizeClassOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216A1204C(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 <= 1194.0)
  {
    return 4;
  }

  if (a1 <= 1500.0)
  {
    return 5;
  }

  if (a1 > 2500.0)
  {
    return 7;
  }

  return 6;
}

BOOL sub_216A120F8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 0xEu)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_217035F00[a2];
  }

  if (a1 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217035F00[a1];
  }

  return v2 >= v3;
}

uint64_t sub_216A12228@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_21700E574();
  OUTLINED_FUNCTION_1();
  v52 = v5;
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v51 = v7 - v6;
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v55 = v9;
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v54 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  MusicStackAuthority.featureNames.getter();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E8, &unk_21701D740);
  sub_21700D4B4();
  v57 = a2;
  if (!v59)
  {
    sub_2166997CC(&v58, &qword_27CABFE08, &unk_217036060);
    goto LABEL_21;
  }

  sub_2166A0F18(&v58, v60);
  v21 = v61;
  v22 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v24 = (*(v22 + 8))(v21, v22);
  v25 = v23;
  v26 = v20[2];
  if (v26 && (v20[4] == v24 ? (v27 = v20[5] == v23) : (v27 = 0), v27 || (sub_21700F7D4() & 1) != 0))
  {
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v58 = v20;
    if (!isUniquelyReferenced_nonNull_native || v26 >= v20[3] >> 1)
    {
      sub_21693776C();
      v20 = v29;
      *&v58 = v29;
    }

    sub_216A12FA0(0, 0, 1, v24, v25);
  }

  v30 = v61;
  v31 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  result = (*(v31 + 16))(v30, v31);
  if (!v33)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
LABEL_21:
    v60[0] = v20;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    sub_216856418();
    v39 = sub_21700E454();
    v41 = v40;

    v42 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21700CE54();
    sub_21700D274();
    (*(v14 + 8))(v18, v54);
    sub_21700D6C4();
    v44 = v43;
    (*(v55 + 8))(v12, v56);
    if (v44)
    {
      sub_21700E564();
      v45 = sub_21700E524();
      v47 = v46;

      (*(v52 + 8))(v51, v53);
      if (v47 >> 60 != 15)
      {

LABEL_26:
        *v57 = v39;
        v57[1] = v41;
        v57[2] = v45;
        v57[3] = v47;
        return __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }
    }

    else
    {
      v45 = 0;
      v47 = 0xF000000000000000;
    }

    v48 = sub_216936F7C();
    v50 = v49;

    sub_21677A510(v45, v47);

    v45 = v48;
    v47 = v50;
    goto LABEL_26;
  }

  v34 = v20[2];
  if (v34)
  {
    v35 = result;
    v36 = v33;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v58 = v20;
    if (!v37 || v34 >= v20[3] >> 1)
    {
      sub_21693776C();
      v20 = v38;
      *&v58 = v38;
    }

    sub_216A12FA0(1, 1, 1, v35, v36);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_216A12718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21700CE54();
  sub_21700D274();
  (*(v12 + 8))(v16, v10);
  v17 = sub_21700D6C4();
  v19 = v18;
  (*(v5 + 8))(v9, v3);
  if (!v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E8, &unk_21701D740);
    sub_21700D4B4();
    if (!v40)
    {
      sub_2166997CC(&v39, &qword_27CABFE08, &unk_217036060);
      v26 = MEMORY[0x277D84F90];
      goto LABEL_9;
    }

    sub_2166A0F18(&v39, v41);
    v20 = v42;
    v21 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    sub_21693776C();
    v26 = v25;
    *&v39 = v25;
    sub_216A12FA0(0, 0, 1, v22, v24);
    v27 = v42;
    v28 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v29 = (*(v28 + 16))(v27, v28);
    if (!v30)
    {
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
LABEL_9:
      v41[0] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
      sub_216856418();
      v17 = sub_21700E454();
      v19 = v33;

      goto LABEL_10;
    }

    v32 = *(v26 + 16);
    if (v32)
    {
      v27 = v29;
      v31 = v30;
      *&v39 = v26;
      if (v32 < *(v26 + 24) >> 1)
      {
LABEL_6:
        sub_216A12FA0(1, 1, 1, v27, v31);
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v35 = v31;
    sub_21693776C();
    v31 = v35;
    v26 = v36;
    *&v39 = v36;
    goto LABEL_6;
  }

LABEL_10:

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = xmmword_217029BA0;
  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_216A12A9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for GoToArtistContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_7();
  v11 = (v10 - v9);
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  sub_21697A49C(a1, v14 - v13);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
      OUTLINED_FUNCTION_5_31(v25);
      goto LABEL_16;
    case 3:
      result = OUTLINED_FUNCTION_4_63();
      v17 = 37;
      goto LABEL_21;
    case 4:
LABEL_16:
      sub_216A12F10(v15, v11, type metadata accessor for ContentDescriptor);
      sub_216A12F70(v11, a2);
      v26 = type metadata accessor for ContentDescriptor;
      v27 = v11;
      goto LABEL_35;
    case 5:
      sub_216A12F10(v15, v7, type metadata accessor for GoToArtistContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = 22;
      }

      else
      {
        v28 = 0;
      }

      *a2 = v28;
      v26 = type metadata accessor for GoToArtistContext;
      v27 = v7;
      goto LABEL_35;
    case 6:
      *a2 = 0;
      sub_21700C084();
      goto LABEL_29;
    case 7:
      v18 = 44;
      goto LABEL_33;
    case 8:
      v18 = 46;
      goto LABEL_33;
    case 9:
      v18 = 47;
      goto LABEL_33;
    case 10:
      v18 = 1;
      goto LABEL_33;
    case 11:
      v18 = 7;
      goto LABEL_33;
    case 12:
    case 18:
    case 20:
      v18 = 48;
      goto LABEL_33;
    case 13:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0);
      OUTLINED_FUNCTION_5_31(v23);
      *a2 = 0;
      goto LABEL_14;
    case 14:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000);
      OUTLINED_FUNCTION_5_31(v29);
      *a2 = 26;
      goto LABEL_27;
    case 15:
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80) + 48);
      *a2 = 26;
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v21 + 8))(v15 + v20);
      v22 = type metadata accessor for ContentDescriptor;
      goto LABEL_34;
    case 16:
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050) + 48);
      *a2 = 0;
      sub_2166997CC(v15 + v24, &qword_27CAB6AE8, qword_217014050);
LABEL_14:
      sub_21700C1E4();
      goto LABEL_29;
    case 17:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0) + 48);
      *a2 = 26;
      sub_2166997CC(v15 + v19, qword_27CAB6AF0, &unk_21701D840);
LABEL_27:
      sub_21700C924();
LABEL_29:
      OUTLINED_FUNCTION_9_0();
      return (*(v30 + 8))(v15);
    case 19:
      v17 = 24;
      goto LABEL_21;
    case 21:
      v18 = 50;
      goto LABEL_33;
    case 22:
    case 23:
    case 25:
    case 26:
      result = OUTLINED_FUNCTION_4_63();
      goto LABEL_3;
    case 24:

      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
      *a2 = 48;
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      return (*(v32 + 8))(v15 + v31);
    case 27:
      v17 = 8;
      goto LABEL_21;
    case 28:
    case 29:
    case 30:
LABEL_3:
      v17 = 48;
      goto LABEL_21;
    case 31:
    case 32:
      v17 = 33;
LABEL_21:
      *a2 = v17;
      break;
    default:
      v18 = 4;
LABEL_33:
      *a2 = v18;
      v22 = type metadata accessor for FlowAction.Destination;
LABEL_34:
      v26 = v22;
      v27 = v15;
LABEL_35:
      result = sub_216A12EBC(v27, v26);
      break;
  }

  return result;
}

uint64_t sub_216A12EBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A12F10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *sub_216A12F70@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result - 4 > 0x12)
  {
    v2 = 9;
  }

  else
  {
    v2 = byte_217036072[(*result - 4)];
  }

  *a2 = v2;
  return result;
}

void sub_216A12FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_21677589C((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {
      sub_21700DF14();
      __break(1u);
    }
  }
}

void sub_216A130BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *v7;
  v13 = *(sub_21700C4B4() - 8);
  v14 = *(v13 + 72);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v17 = v16 + v14 * a1;
  swift_arrayDestroy();
  v18 = __OFSUB__(a3, v15);
  v19 = a3 - v15;
  if (v18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = *(v12 + 16);
  if (__OFSUB__(v20, a2))
  {
    goto LABEL_16;
  }

  sub_216939710(v16 + v14 * a2, v20 - a2, v17 + v14 * a3);
  v21 = *(v12 + 16);
  v18 = __OFADD__(v21, v19);
  v22 = v21 + v19;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v12 + 16) = v22;
LABEL_7:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        swift_arrayInitWithCopy();
        goto LABEL_11;
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_11:

  swift_unknownObjectRelease();
}

uint64_t sub_216A13250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170093C4();
  sub_216A1337C(a1, &v10);
  v9 = v10;
  v5 = v11;
  v6 = v12;
  v12 = sub_2170067A4();
  v13 = sub_2166D2A28(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(&v10);
  sub_216CCB56C();
  sub_2167B7D58(&v10, a2 + 72);
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D2A28(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *(a2 + 56) = sub_217008CF4();
  *(a2 + 64) = v7;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v9;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v10);
}

uint64_t sub_216A1337C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TVMovieDescription(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_retain_n();
  sub_216DE9DB8();
  sub_216681B64(&v7[*(v5 + 36)], v13, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A1354C(v7);
  v8 = v14;
  sub_21669987C(v13, &qword_27CAB6DB0, &qword_217016C00);
  if (v8)
  {

    v10 = 0x4038000000000000;
  }

  else
  {

    v10 = 0;
    v9 = 0;
  }

  *a2 = a1;
  a2[1] = v10;
  a2[2] = 0;
  a2[3] = v9;
}

unint64_t sub_216A134D0(uint64_t a1)
{
  result = sub_216A134F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A134F8()
{
  result = qword_280E38AE8[0];
  if (!qword_280E38AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E38AE8);
  }

  return result;
}

uint64_t sub_216A1354C(uint64_t a1)
{
  v2 = type metadata accessor for TVMovieDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_216A135A8@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_216A1363C((a2 + 24));
  v3 = sub_217009D44();
  *(a2 + 96) = swift_getKeyPath();
  *(a2 + 104) = v3;
  sub_21700B3C4();
  sub_2170083C4();
  *(a2 + 112) = v5;
  *(a2 + 128) = v6;
  result = *&v7;
  *(a2 + 144) = v7;
  return result;
}

uint64_t sub_216A1363C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TVMovieDescription(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12[3] = v5;
  v12[4] = sub_2166D2A28(&qword_27CABFE30, type metadata accessor for TVMovieDescription, &unk_2170658C0);
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_216DE9DB8();
  sub_216DE9DB8();
  v6 = &v4[*(v2 + 24)];
  v8 = *v6;
  v7 = v6[1];
  sub_21700DF14();
  sub_216A1354C(v4);
  if (v7)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  sub_216905714(v12, v11);
  sub_216905714(v11, a1);
  a1[5] = v8;
  a1[6] = v7;
  a1[7] = 0;
  a1[8] = v9;
  sub_2167770D0(v8, v7, 0, v9);
  sub_2169056C0(v12);
  sub_2167C4DF0(v8, v7, 0, v9);
  return sub_2169056C0(v11);
}

uint64_t sub_216A137A0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE38, &qword_217036268);
  sub_216A138A8((a2 + *(v3 + 44)));
  sub_21700B3C4();
  sub_2170083C4();
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE40, &qword_217036270) + 36));
  *v4 = v8;
  v4[1] = v9;
  v4[2] = v10;
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE48, &qword_2170362A8) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  LODWORD(KeyPath) = sub_217009834();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE50, &qword_2170362B0);
  *(a2 + *(result + 36)) = KeyPath;
  return result;
}

uint64_t sub_216A138A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE58, &qword_2170362B8);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE60, &qword_2170362C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for TVMovieDescription(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_216DE9DB8();
  v17 = &v16[*(v11 + 44)];
  v18 = v17[1];
  v32 = *v17;
  sub_21700DF14();
  sub_216A1354C(v16);
  v19 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  sub_216DE9DB8();
  v21 = *&v13[*(v11 + 40)];
  sub_21700DF14();
  sub_216A1354C(v13);
  if (v21)
  {
    v33 = v21;
    v28 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    v29 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE70, &qword_2170362F8);
    sub_2166D9530(&qword_27CAB8D88, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83980]);
    sub_216A13F34();
    v22 = v30;
    v2 = v29;
    sub_21700B154();
    (*(v31 + 32))(v9, v22, v2);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v23, 1, v2);
  if (v18)
  {
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = 0;
  }

  if (v18)
  {
    v25 = v32;
  }

  else
  {
    v25 = 0;
  }

  sub_216681B64(v9, v6, &qword_27CABFE60, &qword_2170362C0);
  *a1 = v25;
  a1[1] = v18;
  a1[2] = 0;
  a1[3] = v24;
  a1[4] = KeyPath;
  a1[5] = v19;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE68, &unk_2170362C8);
  sub_216681B64(v6, a1 + *(v26 + 48), &qword_27CABFE60, &qword_2170362C0);
  sub_2167770D0(v25, v18, 0, v24);

  sub_21669987C(v9, &qword_27CABFE60, &qword_2170362C0);
  sub_21669987C(v6, &qword_27CABFE60, &qword_2170362C0);
  sub_2167C4DF0(v25, v18, 0, v24);
}

__n128 sub_216A13C94@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v22 = *a1;
  sub_21700DF14();
  v21 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v5 = sub_217009C84();
  v6 = sub_21700AD34();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE70, &qword_2170362F8) + 36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v9 = (v7 + *(v8 + 36));
  v10 = *(sub_217008B44() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_217009294();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #2.0 }

  *v9 = _Q0;
  *v7 = 0x3FF0000000000000;
  *(v7 + 8) = 0;
  *(v7 + 16) = v6;
  v18 = v7 + *(v8 + 40);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *a2 = v22;
  *(a2 + 8) = v3;
  v19 = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  *(a2 + 24) = v19;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v21;
  *(a2 + 48) = v5;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + 56) = result;
  *(a2 + 72) = result;
  *(a2 + 88) = 0;
  return result;
}

unint64_t sub_216A13E44()
{
  result = qword_27CABFE10;
  if (!qword_27CABFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE18, &qword_217036188);
    sub_2166D9530(&qword_27CABFE20, &qword_27CABFE28, qword_217036190, MEMORY[0x277CE1198]);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE10);
  }

  return result;
}

unint64_t sub_216A13F34()
{
  result = qword_27CABFE78;
  if (!qword_27CABFE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE70, &qword_2170362F8);
    sub_216A13FEC();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE78);
  }

  return result;
}

unint64_t sub_216A13FEC()
{
  result = qword_27CABFE80;
  if (!qword_27CABFE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE88, &qword_217036300);
    sub_2167C4CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE80);
  }

  return result;
}

unint64_t sub_216A14078()
{
  result = qword_27CABFE90;
  if (!qword_27CABFE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE98, &qword_217036338);
    sub_216A14104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE90);
  }

  return result;
}

unint64_t sub_216A14104()
{
  result = qword_27CABFEA0;
  if (!qword_27CABFEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFEA8, &qword_217036340);
    sub_2166D9530(&qword_27CABFEB0, &qword_27CABFEB8, &qword_217036348, MEMORY[0x277CE1138]);
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFEA0);
  }

  return result;
}

unint64_t sub_216A141E8()
{
  result = qword_27CABFEC0;
  if (!qword_27CABFEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE50, &qword_2170362B0);
    sub_216A142A0();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870, qword_217036360, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFEC0);
  }

  return result;
}

unint64_t sub_216A142A0()
{
  result = qword_27CABFEC8;
  if (!qword_27CABFEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE48, &qword_2170362A8);
    sub_216A14358();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFEC8);
  }

  return result;
}

unint64_t sub_216A14358()
{
  result = qword_27CABFED0;
  if (!qword_27CABFED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFE40, &qword_217036270);
    sub_2166D9530(&qword_27CABFED8, &qword_27CABFEE0, &unk_217036350, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFED0);
  }

  return result;
}

uint64_t sub_216A14454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v26 = *(v10 + 24);
  v27 = v11;
  v13 = type metadata accessor for LibraryPinAction(0, v11, v26, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  (*(v14 + 16))(&v25 - v17, a1, v13, v16);
  (*(v7 + 16))(v9, v4, a3);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = v27;
  *(v22 + 24) = v23;
  (*(v14 + 32))(v22 + v19, v18, v13);
  *(v22 + v20) = v28;
  (*(v7 + 32))(v22 + v21, v9, a3);

  return sub_216ECDBF4(&unk_2170363F8, v22);
}

uint64_t sub_216A14684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v6[14] = swift_task_alloc();
  v6[15] = *(a5 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v10 = type metadata accessor for LibraryPinActionType(0, a5, a6, v9);
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A147FC, 0, 0);
}

uint64_t sub_216A147FC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[15];
  (*(v0[19] + 16))(v0[20], v0[9], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v1 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v3(v0[16], v0[20], v0[12]);
    sub_21700BE44();
    v0[27] = sub_21700BE34();
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_216A15028;
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];

    return MEMORY[0x28218A6C0](v5, v6, v7);
  }

  else
  {
    v8 = v0[14];
    v9 = v0[10];
    v3(v0[17], v0[20], v0[12]);
    v10 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;

    sub_21677BBA0();

    v12 = type metadata accessor for MusicPinsCoordinatorWrapper();
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_216A14A28;

    return MEMORY[0x28217F228](v0 + 7, v12, v12);
  }
}

uint64_t sub_216A14A28()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A14B24()
{
  OUTLINED_FUNCTION_93();
  sub_216A16C08(v0[7] + 16, (v0 + 2));

  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    v14 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_216A14CCC;
    v4 = OUTLINED_FUNCTION_116();

    return v14(v4);
  }

  else
  {
    sub_216697664((v0 + 2), &qword_27CAB6A60, &unk_217013DC0);
    v6 = swift_task_alloc();
    OUTLINED_FUNCTION_14_36(v6, v7, v8, v9);
    v0[7] = v10;
    v11 = OUTLINED_FUNCTION_1_96();

    return sub_216A15648(v11, v12, v13);
  }
}

uint64_t sub_216A14CCC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A14DB4()
{
  OUTLINED_FUNCTION_31();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_14_36(v2, v3, v4, v5);
  *v0 = v6;
  v7 = OUTLINED_FUNCTION_1_96();

  return sub_216A15648(v7, v8, v9);
}

uint64_t sub_216A14E30()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A14F2C()
{
  OUTLINED_FUNCTION_93();
  sub_216A15F80(1);
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  OUTLINED_FUNCTION_13_34();
  v3 = *(v0 + 64);
  v4 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 104))(v3, v4);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216A15028()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A15140()
{
  OUTLINED_FUNCTION_93();
  type metadata accessor for LibraryPinActionImplementation(0, v0[12], v0[13], v1);
  sub_216A15F80(0);
  v2 = OUTLINED_FUNCTION_116();
  v3(v2);
  OUTLINED_FUNCTION_13_34();
  v4 = v0[8];
  v5 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v6 + 104))(v4, v5);

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216A15248()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_15_37();
  v1(v0);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A152D8()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_15_37();
  v1(v0);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A15368()
{
  OUTLINED_FUNCTION_31();
  (*(v0[15] + 8))(v0[16], v0[12]);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A15400()
{
  v1 = type metadata accessor for UnifiedMessages.Coordinator(0);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_216A154B0;

  return MEMORY[0x28217F210](v0 + 16, v1, v1);
}

uint64_t sub_216A154B0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A155B4()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = v1;
  if (!v1)
  {
    return OUTLINED_FUNCTION_4_64();
  }

  *(v0 + 40) = 0;
  return MEMORY[0x2822009F8](sub_216A155E0, v1, 0);
}

uint64_t sub_216A155E0()
{
  OUTLINED_FUNCTION_33();
  sub_2169FCA1C((v0 + 40));
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A15648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_21700BB04();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_217006AD4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A15768, 0, 0);
}

uint64_t sub_216A15768()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[12];
  v2 = v0[5];
  sub_21700BE44();
  v0[13] = sub_21700BE34();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_216A1600C(v1);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_216A15844;
  v6 = v0[12];
  v7 = v0[3];

  return MEMORY[0x28218A6A0](v7, v6, v3, v4);
}

uint64_t sub_216A15844()
{
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[15] = v0;

  v6 = v2[11];
  v7 = v2[10];
  if (v0)
  {
    (*(v6 + 8))(v2[12], v7);

    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    (*(v6 + 8))(v2[12], v7);

    v11 = v5[1];

    return v11();
  }
}

uint64_t sub_216A15A24()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 64) + 88))(*(v0 + 72), *(v0 + 56));
    *(v0 + 144) = v3;
    if (v3 == *MEMORY[0x277D2AEF0])
    {

      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_216679000, v4, v5, "Can't pin because user reached max number of pins", v6, 2u);
        MEMORY[0x21CEA1440](v6, -1, -1);
      }

      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_216A15D1C;
      v9 = *(v0 + 24);
      v8 = *(v0 + 32);

      return sub_216A16080(v9, v8);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  v11 = *(v0 + 120);

  v12 = v11;
  v13 = sub_217007C84();
  v14 = sub_21700ED84();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 120);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v15;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_216679000, v13, v14, "Can't pin. Received an error=%@", v16, 0xCu);
    sub_216697664(v17, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v20();
}

uint64_t sub_216A15D1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A15E18()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_216A16C78(&qword_27CABFEE8, MEMORY[0x277D2AEF8], MEMORY[0x277D2AF00]);
  swift_allocError();
  (*(v3 + 104))(v4, v1, v2);
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216A15F10()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v1();
}

void sub_216A15F80(char a1)
{
  v2 = 8;
  if (a1)
  {
    v2 = 0;
  }

  v3 = *(v1 + v2);
  v4 = [objc_opt_self() defaultCenter];
  [v4 postNotificationName:v3 object:0];
}

uint64_t sub_216A1600C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2A768];
  v3 = sub_217006AD4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_216A16080(uint64_t a1, uint64_t a2)
{
  v2[30] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_21700D2A4();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = type metadata accessor for PresentAlertAction(0);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  v2[42] = swift_task_alloc();
  v6 = sub_217006224();
  v2[43] = v6;
  v2[44] = *(v6 - 8);
  v2[45] = swift_task_alloc();
  sub_21700D284();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A16300, 0, 0);
}

uint64_t sub_216A16300()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  v35 = *(v0 + 344);
  v3 = *(v0 + 336);
  v36 = *(v0 + 328);
  v37 = *(v0 + 320);
  v40 = *(v0 + 264);
  v38 = *(v0 + 256);
  v39 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
  v4 = *(_s6ActionVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217013DA0;
  v7 = sub_216983738(181);
  v9 = v8;
  sub_21700D234();
  v10 = sub_21700D2C4();
  v11 = MEMORY[0x277D21CB8];
  *(v0 + 72) = v10;
  *(v0 + 80) = v11;
  __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  sub_21700D2B4();
  sub_217006214();
  v12 = sub_2170061F4();
  v14 = v13;
  (*(v2 + 8))(v1, v35);
  *(v0 + 16) = v12;
  *(v0 + 24) = v14;
  *(v0 + 32) = v7;
  *(v0 + 40) = v9;
  sub_217007EF4();
  v15 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
  sub_216933210(v3, (v6 + v5));
  sub_216697664(v3, &qword_27CAB70A8, &qword_21701B9E0);
  sub_2167ADC98(v0 + 16);
  sub_21700BE44();
  sub_21700BE34();
  sub_21700BB44();

  v16 = sub_217006934();

  sub_216983738(151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
  inited = swift_initStackObject();
  v18 = MEMORY[0x277D83B88];
  *(inited + 16) = xmmword_217013DA0;
  v19 = MEMORY[0x277D83C10];
  *(inited + 56) = v18;
  *(inited + 64) = v19;
  *(inited + 32) = v16;
  sub_216983808(17, inited);
  v20 = OUTLINED_FUNCTION_116();
  sub_216933384(v20, v21, v6, v22, v23, v24);
  sub_21700D234();
  v25 = v36 + *(v37 + 20);
  v26 = *(v0 + 160);
  v27 = *(v0 + 176);
  *(v25 + 32) = *(v0 + 192);
  *v25 = v26;
  *(v25 + 16) = v27;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  *(v0 + 224) = v37;
  *(v0 + 232) = sub_216A16C78(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 200));
  sub_216A16CC0(v36, boxed_opaque_existential_1);
  (*(v38 + 104))(v40, *MEMORY[0x277D21E18], v39);
  v29 = swift_task_alloc();
  *(v0 + 376) = v29;
  *v29 = v0;
  v29[1] = sub_216A166D0;
  v30 = *(v0 + 288);
  v31 = *(v0 + 296);
  v32 = *(v0 + 264);
  v33 = *(v0 + 240);

  return MEMORY[0x28217F468](v30, v0 + 200, v32, v33, v31);
}

uint64_t sub_216A166D0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[33];
  v7 = v5[32];
  v8 = v5[31];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[48] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[35] + 8))(v3[36], v3[34]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 25);
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216A16850()
{
  v1 = OUTLINED_FUNCTION_8_47();
  v2(v1);
  sub_216A16D24(v0);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A16910()
{
  v2 = OUTLINED_FUNCTION_8_47();
  v3(v2);
  sub_216A16D24(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216A169DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = *(type metadata accessor for LibraryPinAction(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(type metadata accessor for LibraryPinActionImplementation(0, v9, v8, v13) - 8);
  v15 = (v12 + *(v14 + 80) + 8) & ~*(v14 + 80);
  v16 = *(v4 + v12);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_2166AB4A4;

  return sub_216A14684(a1, v4 + v11, v16, v4 + v15, v9, v8);
}

uint64_t sub_216A16B58()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216A15400();
}

uint64_t sub_216A16C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A60, &unk_217013DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A16C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A16CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentAlertAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A16D24(uint64_t a1)
{
  v2 = type metadata accessor for PresentAlertAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A16D80(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216A16DD4(char a1)
{
  if (a1)
  {
    return 6448503;
  }

  else
  {
    return 0x63696D616E7964;
  }
}

uint64_t sub_216A16E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216A16D80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216A16E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216A16DD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216A16F34()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABFEF0);
  __swift_project_value_buffer(v0, qword_27CABFEF0);
  return sub_217007C94();
}

_BYTE *storeEnumTagSinglePayload for MarketingSheetKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_217005EF4();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_217005EF4();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216A1721C(uint64_t a1)
{
  result = sub_217005EF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_216A172C8(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v7 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2166F1DCC();
    a2(0);
    v10 = sub_217005DE4();
    v11 = MEMORY[0x277D837D0];
    v23 = MEMORY[0x277D837D0];
    v21 = v10;
    v22 = v12;
    v13 = a1;
    v14 = sub_2166F1E10(&v21, a1);
    sub_2166F1F64(v14, 7107189, 0xE300000000000000);
    v15 = *v3 == 0;
    v16 = 6448503;
    if (!*v3)
    {
      v16 = 0x63696D616E7964;
    }

    v17 = 0xE700000000000000;
    v23 = v11;
    if (!v15)
    {
      v17 = 0xE300000000000000;
    }

    v21 = v16;
    v22 = v17;
    v18 = v13;
    v19 = sub_2166F1E10(&v21, a1);
    sub_2166F1F64(v19, 0x6E694B7465656873, 0xE900000000000064);
    v20 = MEMORY[0x277D225C8];
    a3[3] = v9;
    a3[4] = v20;
    *a3 = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216A17458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A174A0(uint64_t a1)
{
  *(a1 + 8) = sub_216A17458(&qword_27CABFF28, type metadata accessor for MarketingSheetDidDisappearIntent, &unk_2170366CC);
  result = sub_216A17458(&qword_27CABFF30, type metadata accessor for MarketingSheetDidDisappearIntent, &unk_2170364A4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A17528()
{
  result = qword_27CABFF38;
  if (!qword_27CABFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF38);
  }

  return result;
}

uint64_t sub_216A1757C(uint64_t a1)
{
  *(a1 + 8) = sub_216A17458(&qword_27CABFF40, type metadata accessor for MarketingSheetDidAppearIntent, &unk_21703667C);
  result = sub_216A17458(&qword_27CABFF48, type metadata accessor for MarketingSheetDidAppearIntent, &unk_21703660C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A17600()
{
  result = qword_27CABFF50;
  if (!qword_27CABFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF50);
  }

  return result;
}

uint64_t type metadata accessor for InsettableConcentricRectangle(uint64_t a1)
{
  result = qword_280E31838;
  if (!qword_280E31838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A176D4(uint64_t a1)
{
  result = sub_217009384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216A1774C()
{
  result = qword_27CABFF58;
  if (!qword_27CABFF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFF60, &qword_217036750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF58);
  }

  return result;
}

double sub_216A177B0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_216A17B70(v2, a1);
  v5 = *(type metadata accessor for InsettableConcentricRectangle(0) + 20);
  result = *(a1 + v5) + a2;
  *(a1 + v5) = result;
  return result;
}

double sub_216A17800@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = type metadata accessor for InsettableConcentricRectangle(0);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v12 = *(v5 + *(v11 + 20));
  CGRectInset(v17, v12, v12);
  sub_217009364();
  result = *&v14;
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  return result;
}

double sub_216A17890@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_216A17800(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_216A178DC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_216A17950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A17BD4(&qword_280E31870, &unk_2170367F8);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_216A179D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216A17BD4(&qword_280E31870, &unk_2170367F8);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_216A17A50(uint64_t a1)
{
  v2 = sub_216A17BD4(&qword_280E31870, &unk_2170367F8);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_216A17B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsettableConcentricRectangle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A17BD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InsettableConcentricRectangle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_216A17C24()
{
  OUTLINED_FUNCTION_22_3();
  v20 = v0;
  v23 = v1;
  v3 = v2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v19 = (v8 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v21 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  v22 = v3;
  sub_21700CE04();
  v17 = *(v6 + 16);
  v17(v12, v23, v4);
  v18 = v20;
  sub_216A1883C();
  if (v18)
  {
    (*(v6 + 8))(v23, v4);
    (*(v14 + 8))(v22, v21);
  }

  else
  {
    v20 = v14;
    sub_21700CE04();
    v17(v19, v23, v4);
    sub_216A1883C();
    (*(v6 + 8))(v23, v4);
    (*(v20 + 8))(v22, v21);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216A17ED8()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v19 = v0;
  v3 = v2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_21700CE04();
  (*(v6 + 16))(v10, v1, v4);
  sub_216A19F3C();
  sub_21700E944();
  sub_21700CE04();
  sub_21700CDB4();
  (*(v6 + 8))(v19, v4);
  v18 = *(v13 + 8);
  v18(v3, v11);
  v18(v17, v11);
  OUTLINED_FUNCTION_21_4();
}

void sub_216A180CC()
{
  OUTLINED_FUNCTION_22_3();
  v88 = v0;
  v94 = v1;
  v3 = v2;
  v90 = v4;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v92 = v6;
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v87 = v8 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF90, &unk_217036AA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v85 = (v83 - v10);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v86 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v84 = v83 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v83 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v83 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v83 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v83 - v29;
  v96 = v3;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v34 = *(v13 + 8);
  v95 = v11;
  v100 = v34;
  v34(v30, v11);
  if (!v33)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    v59 = sub_216A19D78(v57, v58, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v59);
    *v60 = 25705;
    v60[1] = 0xE200000000000000;
    v60[2] = &unk_282922EF0;
    OUTLINED_FUNCTION_50();
    (*(v61 + 104))();
    swift_willThrow();
    v62 = OUTLINED_FUNCTION_10_47();
    v63(v62);
    v65 = v95;
    v64 = v96;
LABEL_8:
    v100(v64, v65);
    goto LABEL_12;
  }

  v91 = v33;
  sub_21700CE04();
  v35 = sub_21700CDB4();
  v37 = v36;
  v38 = v95;
  v100(v27, v95);
  if (!v37)
  {

    sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    v68 = sub_216A19D78(v66, v67, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v68);
    *v69 = 0x656C746974;
    v69[1] = 0xE500000000000000;
    v69[2] = &unk_282922EF0;
    OUTLINED_FUNCTION_50();
    (*(v70 + 104))();
    swift_willThrow();
    v71 = OUTLINED_FUNCTION_10_47();
    v72(v71);
    v64 = v96;
    v65 = v38;
    goto LABEL_8;
  }

  v39 = v37;
  v41 = v90;
  v40 = v91;
  *(v90 + 96) = v31;
  *(v41 + 104) = v40;
  *v41 = v35;
  *(v41 + 8) = v39;
  v83[1] = v39;
  sub_21700CE04();
  sub_21700CE04();
  v42 = sub_21700CDB4();
  v44 = v43;
  v100(v21, v38);
  if (v44)
  {
    v45 = v89;
    v46 = v85;
    (*(v13 + 32))(v85 + *(v89 + 36), v24, v38);
    *v46 = v42;
    v46[1] = v44;
    *(&v98 + 1) = v45;
    v99 = sub_216A19BD8();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v97);
    sub_216A19C3C(v46, boxed_opaque_existential_1);
    v48 = v98;
    *(v41 + 16) = v97;
    *(v41 + 32) = v48;
    *(v41 + 48) = v99;
    v49 = v84;
    v50 = v96;
    sub_21700CE04();
    v51 = v94;
    sub_21700D2E4();
    v100(v49, v38);
    sub_21700CE04();
    v53 = v92;
    v52 = v93;
    (*(v92 + 16))(v87, v51, v93);
    v54 = v88;
    sub_216A17C24();
    if (!v54)
    {
      v81 = v55;
      v82 = v56;
      (*(v53 + 8))(v51, v52);
      v100(v50, v95);
      *(v41 + 112) = v81;
      *(v41 + 120) = v82;
      goto LABEL_12;
    }

    (*(v53 + 8))(v51, v52);
    v100(v50, v95);

    sub_2166997CC(v41 + 16, &qword_27CABFFC8, &unk_217036C40);
    sub_2166997CC(v41 + 56, &qword_27CAB6DB0, &qword_217016C00);
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    v75 = sub_216A19D78(v73, v74, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v75);
    *v76 = 0x646E696B24;
    v77 = v89;
    v76[1] = 0xE500000000000000;
    v76[2] = v77;
    OUTLINED_FUNCTION_50();
    (*(v78 + 104))();
    swift_willThrow();
    v100(v24, v38);
    v79 = OUTLINED_FUNCTION_10_47();
    v80(v79);
    v100(v96, v38);
  }

LABEL_12:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A18804(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

void sub_216A1883C()
{
  OUTLINED_FUNCTION_22_3();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  sub_21700CE04();
  sub_21700CD74();
  v21 = *(v9 + 8);
  v21(v13, v7);
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    sub_2166997CC(v6, &qword_27CAB78D0, &unk_21701A800);
    v22 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_114();
    v25 = sub_216A19D78(v23, v24, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v22, v25);
    *v26 = 0x73726F6C6F63;
    v26[1] = 0xE600000000000000;
    v26[2] = &unk_282922DF0;
    OUTLINED_FUNCTION_50();
    (*(v27 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v28 + 8))(v31);
    v21(v3, v7);
  }

  else
  {
    (*(v16 + 32))(v20, v6, v14);
    sub_21700E2A4();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v29 + 8))(v31);
    v21(v3, v7);
    (*(v16 + 8))(v20, v14);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A18BF4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21700CDB4();
  if (v4)
  {
    result = sub_216A18D00(v3, v4);
    *a2 = result;
  }

  else
  {
    v6 = sub_21700E2E4();
    sub_216A19D78(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v7 = MEMORY[0x277D84F90];
    *v8 = 0x73726F6C6F63;
    v8[1] = 0xE600000000000000;
    v8[2] = &unk_282922DF0;
    v8[3] = v7;
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D22540], v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_216A18D00(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_21700AC64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  sub_21700DF14();
  v8 = sub_21700E6E4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    __break(1u);
  }

  result = sub_216CE0D98(a1, a2);
  if (v11)
  {

    sub_216A19CF0(1);
    a1 = v14;
    a2 = v15;
LABEL_7:
    v13 = 0;
    sub_216A19CAC();
    v12 = sub_2169130B0(a1, a2);
    [v12 scanHexLongLong_];

    (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
    return sub_21700AD44();
  }

  __break(1u);
  return result;
}

uint64_t sub_216A18EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CEA0720](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 8;

      sub_21700ACB4();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_216A18F58(uint64_t a1)
{
  sub_21700F8F4();
  sub_216E257A8(v3, a1);
  return sub_21700F944();
}

uint64_t sub_216A18FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_216E20D68(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_216E20D68(a2, a4);
}

uint64_t sub_216A18FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_216E257A8(a1, a2);

  return sub_216E257A8(a1, a3);
}

uint64_t sub_216A19038(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  sub_216E257A8(v5, a1);
  sub_216E257A8(v5, a2);
  return sub_21700F944();
}

uint64_t sub_216A19090()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

void sub_216A190D4(void *a1@<X8>)
{
  sub_216A1883C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_216A19110(uint64_t a1)
{
  v2 = *v1;
  sub_21700F8F4();
  sub_216E257A8(v4, v2);
  return sub_21700F944();
}

void sub_216A19160(void *a1@<X8>)
{
  sub_216A17C24();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_216A1919C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_21700F8F4();
  sub_216E257A8(v5, v2);
  sub_216E257A8(v5, v3);
  return sub_21700F944();
}

unint64_t sub_216A19204()
{
  result = qword_27CABFF70;
  if (!qword_27CABFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF70);
  }

  return result;
}

uint64_t sub_216A192C4(uint64_t a1)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

void sub_216A19304(void *a1@<X8>)
{
  sub_216A17ED8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

void sub_216A19334()
{
  OUTLINED_FUNCTION_22_3();
  v58 = v0;
  v2 = v1;
  v62 = v3;
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v55 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v57 = v8 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF90, &unk_217036AA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v56 = (&v50 - v10);
  v11 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = type metadata accessor for ReplayYearGradient(0);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_77();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v50 - v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v26 = type metadata accessor for ReplayYearListItem(0);
  v27 = v26;
  v28 = (v2 + v26[5]);
  v29 = v28[1];
  if (!v29)
  {
    v38 = sub_2167880BC();
    OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v38);
    v37 = xmmword_217014E10;
    goto LABEL_7;
  }

  v53 = v4;
  v30 = (v2 + v26[6]);
  v31 = v30[1];
  if (!v31)
  {
    v39 = sub_2167880BC();
    OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v39);
    v37 = xmmword_21701C090;
    goto LABEL_7;
  }

  v32 = *v28;
  v33 = *v30;
  v51 = v32;
  v52 = v33;
  sub_216A19AB0(v2 + v26[7], v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v11);
  sub_2166997CC(v25, &qword_27CABFF98, &unk_217049930);
  if (EnumTagSinglePayload == 1)
  {
    v35 = sub_2167880BC();
    OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v35);
    v37 = xmmword_217036890;
LABEL_7:
    *v36 = v37;
    *(v36 + 16) = v27;
    swift_willThrow();
    OUTLINED_FUNCTION_2_76();
    goto LABEL_8;
  }

  v40 = v52;
  *(v62 + 96) = v51;
  *(v62 + 104) = v29;
  *v62 = v40;
  *(v62 + 8) = v31;
  sub_21700DF14();
  sub_21700DF14();
  sub_216F471A4(v22);
  sub_216A19B20(v22, v19);
  v41 = sub_21700DF14();
  v42 = sub_216A19838(v41);
  v43 = sub_21700DF14();
  v52 = sub_216A19838(v43);
  sub_216A19B84(v19, type metadata accessor for ReplayYearGradient);
  sub_216A19B84(v22, type metadata accessor for ReplayYearGradient);
  v51 = v42;
  *(v62 + 112) = v42;
  *(v62 + 120) = v52;
  sub_216F46D78();
  sub_216B3B364(v62 + 56);
  sub_216A19B84(v15, type metadata accessor for AnyAction);
  v45 = v56;
  v44 = v57;
  *v56 = 0x65746E496B636F4DLL;
  *(v45 + 8) = 0xEA0000000000746ELL;
  v46 = v58;
  sub_21700CD04();
  if (v46)
  {
    OUTLINED_FUNCTION_2_76();

    sub_2166997CC(v62 + 56, &qword_27CAB6DB0, &qword_217016C00);
  }

  else
  {
    v47 = v54;
    (*(v55 + 32))(v45 + *(v54 + 36), v44, v53);
    *(&v60 + 1) = v47;
    v61 = sub_216A19BD8();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
    sub_216A19C3C(v45, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_2_76();
    v49 = v60;
    *(v62 + 16) = v59;
    *(v62 + 32) = v49;
    *(v62 + 48) = v61;
  }

LABEL_8:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A197C4(void *a1)
{
  v2 = sub_21700DF14();
  v3 = sub_216A19838(v2);
  v4 = sub_21700DF14();
  sub_216A19838(v4);
  sub_216A19B84(a1, type metadata accessor for ReplayYearGradient);
  return v3;
}

uint64_t sub_216A19838(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  v5 = result + 40;
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v7 = v6 + 2;
    v9 = *(v6 - 1);
    v8 = *v6;
    sub_21700DF14();
    result = sub_216A18D00(v9, v8);
    v6 = v7;
    if (result)
    {
      MEMORY[0x21CE9F610]();
      if (*(v10 + 16) >= *(v10 + 24) >> 1)
      {
        sub_21700E874();
      }

      result = sub_21700E8C4();
      v3 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216A19930@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216A197C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_216A19A34(uint64_t a1)
{
  result = sub_216A19A5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A19A5C()
{
  result = qword_27CABFF88;
  if (!qword_27CABFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFF88);
  }

  return result;
}

uint64_t sub_216A19AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A19B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayYearGradient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A19B84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216A19BD8()
{
  result = qword_27CABFFA0;
  if (!qword_27CABFFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFF90, &unk_217036AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFA0);
  }

  return result;
}

uint64_t sub_216A19C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF90, &unk_217036AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A19CAC()
{
  result = qword_27CABFFA8;
  if (!qword_27CABFFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABFFA8);
  }

  return result;
}

uint64_t sub_216A19CF0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_21700E644();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t sub_216A19D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A19DE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_216A19E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216A19E90()
{
  result = qword_27CABFFB0;
  if (!qword_27CABFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFB0);
  }

  return result;
}

unint64_t sub_216A19EE8()
{
  result = qword_27CABFFB8;
  if (!qword_27CABFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFB8);
  }

  return result;
}

unint64_t sub_216A19F3C()
{
  result = qword_27CABFFC0;
  if (!qword_27CABFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFC0);
  }

  return result;
}

uint64_t sub_216A19FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for PresentationItem.Destination(0, a5, a6, a4);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_21700EA34();
  v6[9] = sub_21700EA24();
  v9 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A1A0B8, v9, v8);
}

uint64_t sub_216A1A0B8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[3];

  v7 = (v6 + *(type metadata accessor for PresentConfirmationDialogAction(0) + 20));
  v8 = v7[1];
  v10 = v7[2];
  v9 = v7[3];
  v11 = v7[4];
  *v1 = *v7;
  v1[1] = v8;
  v1[2] = v10;
  v1[3] = v9;
  v1[4] = v11;
  v1[5] = v4;
  swift_storeEnumTagMultiPayload();
  sub_21700DF14();

  sub_21700DF14();
  sub_21700DF14();
  sub_216AF424C();
  (*(v3 + 8))(v1, v2);
  v12 = *MEMORY[0x277D21CA8];
  v13 = sub_21700D2A4();
  (*(*(v13 - 8) + 104))(v5, v12, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_216A1A218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *v11 = v5;
  v11[1] = sub_2166DFAC0;

  return sub_216A19FB8(a1, a2, a3, v10, v12, v13);
}

uint64_t sub_216A1A2E0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A1A320()
{
  result = qword_280E30130[0];
  if (!qword_280E30130[0])
  {
    type metadata accessor for PresentConfirmationDialogAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30130);
  }

  return result;
}

uint64_t sub_216A1A378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

void *sub_216A1A3E4()
{
  sub_217006E44();
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = sub_217006BA4();
  return v0;
}

uint64_t sub_216A1A420()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_26(v1, v2, v3, v4, v5, v6);
  v0[3] = v7;
  v0[4] = v8;
  v9 = sub_217006B94();
  v0[7] = v9;
  OUTLINED_FUNCTION_2(v9);
  v0[8] = v10;
  v0[9] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8, &qword_217036E38);
  OUTLINED_FUNCTION_36(v11);
  v0[10] = OUTLINED_FUNCTION_80();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE8, &qword_217036E58);
  OUTLINED_FUNCTION_36(v12);
  v0[11] = OUTLINED_FUNCTION_80();
  v13 = sub_21700F164();
  OUTLINED_FUNCTION_36(v13);
  v14 = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_30(v14);
  v15 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_216A1A54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = v12[14];
  v14 = v12[4];
  v15 = v12[3];
  sub_217006CC4();
  sub_216A1DB44(v14, v14);
  v16 = *(v14 - 8);
  swift_allocObject();
  v17 = sub_21700E854();
  (*(v16 + 16))(v18, v15, v14);
  v12[2] = sub_216A3FD4C(v17, v14);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  sub_217006874();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_21700E984();
  swift_getWitnessTable();
  v12[17] = sub_217006C54();
  if (v13 == 1)
  {
    sub_217006C34();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    sub_217006C34();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v26 = OUTLINED_FUNCTION_5_59();
  v27(v26);
  v28 = OUTLINED_FUNCTION_7_56();
  v29(v28);
  v30 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v30, v31, v32);
  sub_217006C04();
  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_29_25(v33);
  *v34 = v35;
  v34[1] = sub_216A1A7C8;
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x282189B38](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_216A1A7C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1A8C0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1A948()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1A9D4()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 56) = v6;
  *(v1 + 64) = v0;
  *(v1 + 40) = v2;
  *(v1 + 48) = v7;
  *(v1 + 24) = v8;
  *(v1 + 32) = v9;
  *(v1 + 16) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE8, &qword_217036E58);
  OUTLINED_FUNCTION_36(v11);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  v12 = sub_21700F164();
  OUTLINED_FUNCTION_36(v12);
  *(v1 + 80) = OUTLINED_FUNCTION_80();
  *(v1 + 88) = *(v3 - 8);
  *(v1 + 96) = OUTLINED_FUNCTION_80();
  v13 = v5[1];
  *(v1 + 104) = *v5;
  *(v1 + 120) = v13;
  v14 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_216A1AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[10];
  v39 = v12[14];
  v17 = v12[4];
  v16 = v12[5];
  v19 = v12[2];
  v18 = v12[3];
  sub_217006CC4();
  (*(v14 + 16))(v13, v18, v16);
  (*(*(v17 - 8) + 16))(v15, v19, v17);
  v20 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  sub_217006874();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v12[17] = sub_217006C54();
  if (v39 == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v27 = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_29_25(v27);
  *v28 = v29;
  v30 = OUTLINED_FUNCTION_11_43(v28);

  return MEMORY[0x282189B38](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_216A1ACA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1AD9C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_29();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1AE14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_29();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1AE90()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 96) = v6;
  *(v1 + 104) = v0;
  *(v1 + 80) = v2;
  *(v1 + 88) = v7;
  *(v1 + 64) = v8;
  *(v1 + 72) = v9;
  *(v1 + 56) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE8, &qword_217036E58);
  OUTLINED_FUNCTION_36(v11);
  *(v1 + 112) = OUTLINED_FUNCTION_80();
  *(v1 + 120) = *(v3 - 8);
  *(v1 + 128) = OUTLINED_FUNCTION_80();
  v12 = v5[1];
  *(v1 + 136) = *v5;
  *(v1 + 152) = v12;
  v13 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216A1AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[15];
  v13 = v12[16];
  v15 = v12[11];
  v35 = v12[18];
  v17 = v12[9];
  v16 = v12[10];
  v19 = v12[7];
  v18 = v12[8];
  sub_217006CC4();
  (*(v14 + 16))(v13, v18, v16);
  v12[5] = v17;
  v12[6] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 2);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
  sub_217006874();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v12[21] = sub_217006CB4();
  if (v35 == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v25 = swift_task_alloc();
  v12[22] = v25;
  *v25 = v12;
  v26 = OUTLINED_FUNCTION_11_43(v25);

  return MEMORY[0x282189B38](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_216A1B130()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1B228()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1B298()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1B30C()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v0;
  v7 = sub_217006B94();
  *(v1 + 40) = v7;
  OUTLINED_FUNCTION_2(v7);
  *(v1 + 48) = v8;
  *(v1 + 56) = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8, &qword_217036E38);
  OUTLINED_FUNCTION_36(v9);
  *(v1 + 64) = OUTLINED_FUNCTION_80();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  OUTLINED_FUNCTION_36(v10);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  *(v1 + 136) = *v5;
  v11 = v3[1];
  *(v1 + 80) = *v3;
  *(v1 + 96) = v11;
  v12 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216A1B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v13 = v12[3];
  sub_217006CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0, qword_217041EC0);
  v14 = sub_2170067A4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_217013DA0;
  (*(v15 + 16))(v17 + v16, v13, v14);
  v12[2] = v17;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38, &unk_217015A70);
  sub_21677A45C();
  v12[14] = sub_217006C64();
  if (v12[11] == 1)
  {
    sub_217006C34();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    v22 = v12[12];
    v21 = v12[13];
    sub_21700DF14();
    sub_217006C34();
    sub_21677A3F0(v22, v21);
  }

  sub_217006C44();
  v23 = OUTLINED_FUNCTION_5_59();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_56();
  v26(v25);
  v27 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v27, v28, v29);
  sub_217006C04();
  v30 = swift_task_alloc();
  v12[15] = v30;
  *v30 = v12;
  v30[1] = sub_216A1B6E8;
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189B38](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_216A1B6E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1B7E0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1B860()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1B8E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_26(v4, v5, v6, v7, v8, v9);
  *(v2 + 24) = v10;
  *(v2 + 32) = v11;
  *(v2 + 16) = v12;
  v13 = sub_217006B94();
  *(v2 + 56) = v13;
  OUTLINED_FUNCTION_2(v13);
  *(v2 + 64) = v14;
  *(v2 + 72) = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8, &qword_217036E38);
  OUTLINED_FUNCTION_36(v15);
  *(v2 + 80) = OUTLINED_FUNCTION_80();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  OUTLINED_FUNCTION_36(v16);
  *(v2 + 88) = OUTLINED_FUNCTION_80();
  *(v2 + 96) = *(v1 - 8);
  *(v2 + 104) = OUTLINED_FUNCTION_80();
  *(v2 + 168) = *v0;
  v17 = v3[1];
  *(v2 + 112) = *v3;
  *(v2 + 128) = v17;
  v18 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_216A1BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_115_1();
  v14 = v12[12];
  v13 = v12[13];
  v15 = v12[11];
  v16 = v12[4];
  v18 = v12[2];
  v17 = v12[3];
  sub_217006CC4();
  (*(v14 + 16))(v13, v17, v16);
  v19 = sub_2170067A4();
  (*(*(v19 - 8) + 16))(v15, v18, v19);
  v20 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_28_26();
  v12[18] = sub_217006C64();
  if (v12[15] == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    v24 = v12[16];
    v23 = v12[17];
    sub_21700DF14();
    sub_217006C34();
    sub_21677A3F0(v24, v23);
  }

  sub_217006C44();
  v25 = OUTLINED_FUNCTION_5_59();
  v26(v25);
  v27 = OUTLINED_FUNCTION_7_56();
  v28(v27);
  v29 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v29, v30, v31);
  sub_217006C04();
  v32 = swift_task_alloc();
  v12[19] = v32;
  *v32 = v12;
  v33 = OUTLINED_FUNCTION_11_43(v32);

  return MEMORY[0x282189B38](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_216A1BCA0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1BD98()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1BE24()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1BEB0()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 48) = *(v6 - 8);
  *(v1 + 56) = OUTLINED_FUNCTION_80();
  v7 = v3[1];
  *(v1 + 64) = *v3;
  *(v1 + 80) = v7;
  v8 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A1BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v13 = v12[9];
  v15 = v12[6];
  v14 = v12[7];
  v16 = v12[3];
  v17 = v12[2];
  sub_217006CC4();
  (*(v15 + 16))(v14, v17, v16);
  v12[12] = sub_217006C14();
  if (v13 == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_25_27();
  }

  sub_217006C44();
  v18 = swift_task_alloc();
  v12[13] = v18;
  *v18 = v12;
  OUTLINED_FUNCTION_11_43(v18);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189B38](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_216A1C084()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1C17C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1C1E0()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1C248()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v1[4] = v4;
  v1[5] = v0;
  v1[2] = v5;
  v1[3] = v2;
  v6 = sub_217006B94();
  v1[6] = v6;
  OUTLINED_FUNCTION_2(v6);
  v1[7] = v7;
  v1[8] = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFD8, &qword_217036E38);
  OUTLINED_FUNCTION_36(v8);
  v1[9] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  OUTLINED_FUNCTION_36(v9);
  v1[10] = OUTLINED_FUNCTION_80();
  v1[11] = *(v3 - 8);
  v10 = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_30(v10);
  v11 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216A1C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[3];
  v16 = v12[2];
  sub_217006CC4();
  (*(v14 + 16))(v13, v16, v15);
  sub_2170067A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_28_26();
  v12[17] = sub_217006C64();
  if (v12[14] == 1)
  {
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_17_38();
  }

  else
  {
    v22 = v12[15];
    v21 = v12[16];
    sub_21700DF14();
    sub_217006C34();
    sub_21677A3F0(v22, v21);
  }

  sub_217006C44();
  v23 = OUTLINED_FUNCTION_5_59();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_56();
  v26(v25);
  v27 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_35_22(v27, v28, v29);
  sub_217006C04();
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_29_25(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_11_43(v31);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189B38](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_216A1C5A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A1C69C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_29();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A1C720()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1C7D4()
{
  OUTLINED_FUNCTION_31();
  sub_216A1DAF0();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1C854()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 48) = v6;
  *(v1 + 56) = v0;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  v11 = sub_217006C24();
  *(v1 + 64) = v11;
  OUTLINED_FUNCTION_2(v11);
  *(v1 + 72) = v12;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 176) = *v5;
  v13 = v3[1];
  *(v1 + 96) = *v3;
  *(v1 + 112) = v13;
  v14 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_216A1C934()
{
  OUTLINED_FUNCTION_82_0();
  v0[16] = sub_217006D64();
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = OUTLINED_FUNCTION_5_59();
  v6(v5);
  v7 = OUTLINED_FUNCTION_7_56();
  v8(v7);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_27_25();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_25_27();
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[13];
  }

  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v2;
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_216A1CA74;
  OUTLINED_FUNCTION_21_33(v0[2]);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189BC0]();
}

uint64_t sub_216A1CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_69_0();
  v15 = v14;
  v36 = v14[19];
  v16 = v14[18];
  v17 = v14[17];
  v18 = v14[11];
  v19 = v14[9];
  v20 = v14[8];
  v21 = *v13;
  OUTLINED_FUNCTION_28();
  *v22 = v21;
  v15[21] = v12;

  (*(v19 + 8))(v18, v20);
  sub_21677A510(v17, v16);

  if (v12)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    OUTLINED_FUNCTION_31_29();
    OUTLINED_FUNCTION_7_3();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
  }
}

uint64_t sub_216A1CC74()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1CCD8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  *(v1 + 32) = v6;
  *(v1 + 40) = v0;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  v9 = sub_217006C24();
  *(v1 + 48) = v9;
  OUTLINED_FUNCTION_2(v9);
  *(v1 + 56) = v10;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 160) = *v5;
  v11 = v3[1];
  *(v1 + 80) = *v3;
  *(v1 + 96) = v11;
  v12 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216A1CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v10[14] = sub_217006D64();
  v11 = v10[11];
  v13 = v10[8];
  v12 = v10[9];
  v14 = v10[6];
  v15 = OUTLINED_FUNCTION_5_59();
  v16(v15);
  v17 = OUTLINED_FUNCTION_7_56();
  v18(v17);
  if (v11 == 1)
  {
    OUTLINED_FUNCTION_27_25();
  }

  else
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_25_27();
    v12 = v10[12];
    v13 = v10[13];
    v14 = v10[11];
  }

  v10[16] = v13;
  v10[17] = v14;
  v10[15] = v12;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_29_25(v19);
  *v20 = v21;
  v20[1] = sub_216A1CEDC;
  OUTLINED_FUNCTION_21_33(v10[2]);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282189BC8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_216A1CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_69_0();
  v15 = v14;
  v36 = v14[17];
  v16 = v14[16];
  v17 = v14[15];
  v18 = v14[9];
  v19 = v14[7];
  v20 = v14[6];
  v21 = *v13;
  OUTLINED_FUNCTION_28();
  *v22 = v21;
  v15[19] = v12;

  (*(v19 + 8))(v18, v20);
  sub_21677A510(v17, v16);

  if (v12)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    OUTLINED_FUNCTION_31_29();
    OUTLINED_FUNCTION_7_3();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
  }
}

uint64_t sub_216A1D0DC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A1D164()
{
  sub_21667E91C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_216A1D18C()
{
  sub_216A1D164();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216A1D1E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1A420();
}

uint64_t sub_216A1D2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1A9D4();
}

uint64_t sub_216A1D390()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1AE90();
}

uint64_t sub_216A1D474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1B30C();
}

uint64_t sub_216A1D524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1B8E0();
}

uint64_t sub_216A1D5FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1C248();
}

uint64_t sub_216A1D6C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1BEB0();
}

uint64_t sub_216A1D784()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216A1C7AC();
}

uint64_t sub_216A1D810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1C854();
}

uint64_t sub_216A1D8F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216A1CCD8();
}

uint64_t sub_216A1D9EC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_2167759F4(v2, *(v1 + 24));
  return v2;
}

uint64_t sub_216A1DA40(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_21667E91C(v6, v7);
}

unint64_t sub_216A1DAF0()
{
  result = qword_27CABFFD0;
  if (!qword_27CABFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFD0);
  }

  return result;
}

uint64_t sub_216A1DB44(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  }

  else
  {

    return sub_21700F794();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for MusicKitPlayer.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A1DC90()
{
  result = qword_27CABFFF0;
  if (!qword_27CABFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFFF0);
  }

  return result;
}

uint64_t sub_216A1DCE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC7MusicUI28LibraryPinMenuActionProvider_actionDispatcher, v6, v3);
  return v1;
}

uint64_t sub_216A1DDF8()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700C1E4();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, v9, 0xE500000000000000, v10, v11);
  v12 = OUTLINED_FUNCTION_4_65();
  v13(v12);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v20 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = OUTLINED_FUNCTION_8_48();
  a7(v12);
  v13 = sub_21678C1C4();
  sub_216697664(v11, &qword_27CAB6DF0, &unk_2170152D0);
  v14 = OUTLINED_FUNCTION_8_48();
  v20(v14);
  v15 = sub_21678C1C4();
  sub_216697664(v11, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v17 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v17;
}

uint64_t sub_216A1E070()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700BA44();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, v9, 0xEA00000000006F65, v10, v11);
  v12 = OUTLINED_FUNCTION_4_65();
  v13(v12);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1E198()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700C924();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, v9, 0xE800000000000000, v10, v11);
  v12 = OUTLINED_FUNCTION_4_65();
  v13(v12);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1E2BC()
{
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_97();
  sub_21700C084();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_104_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_60();
  sub_216A1DF18(v5, v6, v7, v8, 1735290739, 0xE400000000000000, v9, v10);
  v11 = OUTLINED_FUNCTION_4_65();
  v12(v11);
  return OUTLINED_FUNCTION_9_48();
}

uint64_t sub_216A1E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0058, &qword_217036FB8);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020, &qword_217036F90);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700C1E4(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820, &unk_217018CE0);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0060, &unk_217036FC0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0058, &qword_217036FB8);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0058, &qword_217036FB8);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25CB0;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A1F278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0040, &qword_217036FA8);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020, &qword_217036F90);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700BA44(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820, &unk_217018CE0);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0048, &qword_217036FB0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0040, &qword_217036FA8);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0040, &qword_217036FA8);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25BA8;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A20118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0028, &qword_217036F98);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020, &qword_217036F90);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700C924(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820, &unk_217018CE0);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0030, &qword_217036FA0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0028, &qword_217036F98);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0028, &qword_217036F98);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25B8C;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A20FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v108 = a3;
  v105 = a2;
  v114 = a1;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFF8, &unk_217036F60);
  v104 = *(v102 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v86 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v83 - v21;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700BE24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0020, &qword_217036F90);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v83 - v29;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v31 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v31 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_2170067F4(), v32 = sub_21700C084(), sub_21700BC04(), , (*(v24 + 8))(v26, v23), v33 = (*(v28 + 88))(v30, v27), v34 = *MEMORY[0x277D2B048], (*(v28 + 8))(v30, v27), v33 == v34))
  {
    v83 = sub_21700B934();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v38 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v39 = v38[1];
    v40 = MEMORY[0x277D837D0];
    *(inited + 48) = *v38;
    *(inited + 56) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = 1684957547;
    v41 = 0xE400000000000000;
    *(inited + 120) = v40;
    v42 = v88;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v91;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v91);
    v45 = v94;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v40;
    *&v118 = 7235952;
    *(&v118 + 1) = 0xE300000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v48 = v116;
    v49 = 1701998445;
    switch(v90)
    {
      case 1:
        v41 = 0xE500000000000000;
        v49 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v41 = 0xE500000000000000;
        v49 = 0x636972796CLL;
        break;
      case 4:
        v49 = 0xD000000000000010;
        v41 = 0x80000002170801D0;
        break;
      case 5:
        v41 = 0x80000002170801F0;
        v49 = 0xD000000000000012;
        break;
      case 6:
        v41 = 0xE900000000000075;
        v49 = 0x6E654D6570697773;
        break;
      case 7:
        v41 = 0x8000000217080210;
        v49 = 0xD000000000000015;
        break;
      default:
        v41 = 0xE800000000000000;
        v49 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v40;
    *&v118 = v49;
    *(&v118 + 1) = v41;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v48;
    sub_2166EF9D4();
    v52 = v116;
    sub_216A25C64(v113, v19, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v44);
    v84 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v19, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v54 = v86;
      v55 = v40;
      v56 = v85;
      (*(v86 + 32))(v85, v19, v44);
      v57 = sub_217005DE4();
      v119 = v55;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v52;
      sub_2166EF9D4();
      v52 = v116;
      (*(v54 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v99;
    MEMORY[0x21CE9DD70](v83, v36, 0x6E6F74747562, 0xE600000000000000, v52, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v100;
    v63 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v101;
    (*(v62 + 16))(v65, v61, v101);
    v67 = v97;
    v68 = v98;
    (*(v97 + 16))(v93, v45, v98);
    v69 = v92;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v113, &qword_27CABA820, &unk_217018CE0);
    v70 = v103;
    (*(*(v84 - 8) + 16))(v103, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0010, &unk_217036F80);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(&v70[*(v102 + 36)], v69, v96);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v105, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CABFFF8, &unk_217036F60);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CABFFF8, &unk_217036F60);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25B70;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v50 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v50);
  }
}

uint64_t sub_216A21E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0058, &qword_217036FB8);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000, &unk_217036F70);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700C1E4(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820, &unk_217018CE0);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0060, &unk_217036FC0);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0058, &qword_217036FB8);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0058, &qword_217036FB8);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DB8;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A22CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0040, &qword_217036FA8);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000, &unk_217036F70);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700BA44(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820, &unk_217018CE0);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0048, &qword_217036FB0);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0040, &qword_217036FA8);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0040, &qword_217036FA8);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DB4;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A23B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0028, &qword_217036F98);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000, &unk_217036F70);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700C924(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820, &unk_217018CE0);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0030, &qword_217036FA0);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CAC0028, &qword_217036F98);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CAC0028, &qword_217036F98);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DB0;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A24A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v108 = a3;
  v113 = a2;
  v115 = a8;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v9;
  v109 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFF8, &unk_217036F60);
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v12;
  v102 = sub_21700CFB4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_217005EF4();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21700D704();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v83 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BB14();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0000, &unk_217036F70);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v119 = &unk_28293ABD8;
  v120 = sub_216A25B1C();
  v32 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  if ((v32 & 1) != 0 && (sub_21700BE44(), sub_21700BE34(), sub_217006804(), v85 = sub_21700C084(), sub_21700BC04(), , (*(v25 + 8))(v27, v24), v33 = (*(v29 + 88))(v31, v28), v34 = *MEMORY[0x277D2B048], (*(v29 + 8))(v31, v28), v33 == v34))
  {
    v35 = a1;
    v84 = sub_217006AB4();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = (v88 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v40 = v39[1];
    v41 = MEMORY[0x277D837D0];
    *(inited + 48) = *v39;
    *(inited + 56) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v41;
    v42 = v89;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v42;
    *(inited + 104) = v90;
    sub_21700DF14();
    sub_21700DF14();
    v43 = sub_21700E384();
    v44 = v92;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v92);
    v45 = v95;
    sub_21700D6F4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v118 = v43;
    sub_2166EF9C4(&v118, &v117);
    v46 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    sub_2166EF9D4();
    v47 = v116;
    v119 = v41;
    v48 = 0xE500000000000000;
    *&v118 = 0x6E69706E75;
    *(&v118 + 1) = 0xE500000000000000;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v47;
    sub_2166EF9D4();
    v49 = v116;
    v50 = 0x79726F7473;
    v51 = v91;
    v91 = v35;
    switch(v51)
    {
      case 1:
        break;
      case 2:
        v48 = 0xE400000000000000;
        v50 = 1701998445;
        break;
      case 3:
        v50 = 0x636972796CLL;
        break;
      case 4:
        v50 = 0xD000000000000010;
        v48 = 0x80000002170801D0;
        break;
      case 5:
        v48 = 0x80000002170801F0;
        v50 = 0xD000000000000012;
        break;
      case 6:
        v48 = 0xE900000000000075;
        v50 = 0x6E654D6570697773;
        break;
      case 7:
        v48 = 0x8000000217080210;
        v50 = 0xD000000000000015;
        break;
      default:
        v48 = 0xE800000000000000;
        v50 = 0x6472616F6279656BLL;
        break;
    }

    v119 = v41;
    *&v118 = v50;
    *(&v118 + 1) = v48;
    sub_2166EF9C4(&v118, &v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116 = v49;
    sub_2166EF9D4();
    v54 = v116;
    sub_216A25C64(v114, v20, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
    {
      sub_216697664(v20, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v87;
      v56 = v86;
      (*(v87 + 32))(v86, v20, v44);
      v57 = sub_217005DE4();
      v119 = v41;
      *&v118 = v57;
      *(&v118 + 1) = v58;
      sub_2166EF9C4(&v118, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v54;
      sub_2166EF9D4();
      v54 = v116;
      (*(v55 + 8))(v56, v44);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v59 = sub_21700CF84();
    v60 = __swift_project_value_buffer(v59, qword_280E73DB0);
    v61 = v100;
    MEMORY[0x21CE9DD70](v84, v37, 0x6E6F74747562, 0xE600000000000000, v54, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v62 = v101;
    v63 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_217013DA0;
    v65 = v64 + v63;
    v66 = v102;
    (*(v62 + 16))(v65, v61, v102);
    v67 = v98;
    v68 = v99;
    (*(v98 + 16))(v94, v45, v99);
    v69 = v93;
    sub_21700D244();
    (*(v62 + 8))(v61, v66);
    (*(v67 + 8))(v45, v68);
    sub_216697664(v114, &qword_27CABA820, &unk_217018CE0);
    v70 = v104;
    (*(*(v85 - 8) + 16))(v104, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0010, &unk_217036F80);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 32))(&v70[*(v103 + 36)], v69, v97);
    v71 = sub_217006AC4();
    v72 = v115;
    (*(*(v71 - 8) + 16))(v115, v113, v71);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v73 = v70;
    v74 = v106;
    sub_216A25BC4(v73, v106, &qword_27CABFFF8, &unk_217036F60);
    v75 = v110;
    v76 = v109;
    v77 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v78 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v79 = (v10 + *(v75 + 80) + v78) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v112;
    sub_216A25BC4(v74, v80 + v78, &qword_27CABFFF8, &unk_217036F60);
    (*(v75 + 32))(v80 + v79, v76, v77);
    v81 = type metadata accessor for MenuAction(0);
    v82 = (v72 + *(v81 + 20));
    *v82 = sub_216A25DAC;
    v82[1] = v80;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v81);
  }

  else
  {
    v52 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v115, 1, 1, v52);
  }
}

uint64_t sub_216A258B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12[4] = sub_216A25C10(a6, a4, a5);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_216A25C64(a2, boxed_opaque_existential_1, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_216A25990()
{

  v1 = OBJC_IVAR____TtC7MusicUI28LibraryPinMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for LibraryPinMenuActionProvider(uint64_t a1)
{
  result = qword_280E322F0;
  if (!qword_280E322F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216A25B1C()
{
  result = qword_27CAC0008;
  if (!qword_27CAC0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0008);
  }

  return result;
}

uint64_t sub_216A25BC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_20(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_216A25C10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_216A25C64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_20(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_216A25CCC(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_2170075A4() - 8);
  return sub_216A258B8(*(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2, a3);
}

uint64_t View.musicClickMetrics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicClickMetricsModifier(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A25ECC(a1, v8);
  sub_2167B0CCC(v8, v11);
  MEMORY[0x21CE9B900](v11, a2, v9, a3);
  return sub_216A25F30(v11);
}

uint64_t sub_216A25ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMetrics.ClickFields(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A25F30(uint64_t a1)
{
  v2 = type metadata accessor for MusicClickMetricsModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A25F8C()
{
  result = qword_27CAC0070;
  if (!qword_27CAC0070)
  {
    type metadata accessor for MusicClickMetricsModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0070);
  }

  return result;
}

uint64_t sub_216A25FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216A2607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13(v10);
  sub_2166C24DC(v8, a3, a4);
  v14 = *(v6 + 8);
  v14(v8, a3);
  sub_2166C24DC(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t sub_216A261D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216A26578(v2 + 16, v9);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 8))(a1, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_21669987C(v9, &qword_27CAB9450, &qword_21701D5D8);
    v8 = sub_217005774();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

uint64_t sub_216A2629C()
{
  sub_21669987C(v0 + 16, &qword_27CAB9450, &qword_21701D5D8);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216A262E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_216A26324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216A2639C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0078, &qword_2170371C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  if (*v0)
  {

    sub_216A261D4((v0 + 2), v3);

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0080, &unk_2170371C8);
    v5 = sub_216A26514();
    MEMORY[0x21CE9B050](v3, v4, v5);
    return sub_21669987C(v3, &qword_27CAC0078, &qword_2170371C0);
  }

  else
  {
    type metadata accessor for MusicEntityAnnotationWrapper();
    sub_216A264C0();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

unint64_t sub_216A264C0()
{
  result = qword_280E46810;
  if (!qword_280E46810)
  {
    type metadata accessor for MusicEntityAnnotationWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46810);
  }

  return result;
}

unint64_t sub_216A26514()
{
  result = qword_280E2A880;
  if (!qword_280E2A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0080, &unk_2170371C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A880);
  }

  return result;
}

uint64_t sub_216A26578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9450, &qword_21701D5D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A26610@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v54 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  sub_21700D7A4();
  sub_21700CE04();
  v51 = v6;
  v19 = v6 + 16;
  v20 = *(v6 + 16);
  v21 = a1;
  v53 = v4;
  v48 = v20;
  v49 = v19;
  v20(v9, v57, v4);
  v22 = v54;
  v50 = v9;
  sub_21700D734();
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = *(v12 + 8);
  v52 = v12 + 8;
  v26(v15, v10);
  if (v25)
  {
    v27 = type metadata accessor for ListSection(0);
    v55 = v23;
    v56 = v25;
    sub_21700F364();
    OUTLINED_FUNCTION_0_115(0x64616568u);
    v28 = sub_21700CDB4();
    v30 = v29;
    v26(v18, v10);
    v31 = (v22 + v27[6]);
    *v31 = v28;
    v31[1] = v30;
    OUTLINED_FUNCTION_0_115(0x746F6F66u);
    v32 = sub_21700CDB4();
    v34 = v33;
    v46 = v26;
    v47 = v10;
    v26(v18, v10);
    v35 = (v22 + v27[7]);
    *v35 = v32;
    v35[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0090, &qword_2170372B8);
    sub_21700CE04();
    v36 = v50;
    v37 = v57;
    v38 = v48;
    v48(v50, v57, v53);
    sub_216A26BA0();
    sub_21700D734();
    v39 = v55;
    if (v55)
    {
      (*(v51 + 8))(v37, v53);
    }

    else
    {
      sub_21700CE04();
      v45 = v53;
      v38(v36, v37, v53);
      type metadata accessor for ListLockup(0);
      sub_216A26C54(&unk_27CAC00A0, type metadata accessor for ListLockup, &unk_2170255FC);
      v39 = sub_21700E944();
      (*(v51 + 8))(v37, v45);
    }

    result = v46(v21, v47);
    *(v54 + v27[8]) = v39;
  }

  else
  {
    v40 = sub_21700E2E4();
    sub_216A26C54(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v42 = v41;
    v43 = type metadata accessor for ListSection(0);
    *v42 = 25705;
    v42[1] = 0xE200000000000000;
    v42[2] = v43;
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v51 + 8))(v57, v53);
    v26(v21, v10);
    return sub_2167B0250(v22);
  }

  return result;
}

unint64_t sub_216A26BA0()
{
  result = qword_27CAC0098;
  if (!qword_27CAC0098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0090, &qword_2170372B8);
    sub_216A26C54(&unk_27CAC00A0, type metadata accessor for ListLockup, &unk_2170255FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0098);
  }

  return result;
}

uint64_t sub_216A26C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A26C9C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;

  v15[0] = sub_216A28288(a1, a2);
  v15[1] = v9;
  v15[2] = v10;
  v11 = *(v8 + 96);
  v14[0] = *(v8 + 80);
  v14[1] = v11;
  v12 = type metadata accessor for NestedPresentationModifier(0, v14);
  MEMORY[0x21CE9B900](v15, a3, v12, a4);
}

uint64_t sub_216A26D78(void *a1)
{
  swift_getWitnessTable();

  return sub_217008684();
}

uint64_t sub_216A26DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for PresentationItem(0, a5, a7, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130E30](a2, a3, v9, WitnessTable);
}

uint64_t sub_216A26E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v135 = a4;
  v136 = a5;
  v129 = a2;
  v130 = a3;
  v107 = a1;
  v118 = a9;
  v146 = a5;
  v147 = a6;
  v132 = a7;
  v133 = a6;
  v148 = a7;
  v149 = a8;
  v131 = a8;
  type metadata accessor for NestedPresentationModifier(255, &v146);
  swift_getWitnessTable();
  v13 = sub_2170097A4();
  v15 = type metadata accessor for PresentationItem(255, a6, a8, v14);
  v146 = a5;
  v147 = a6;
  v148 = a7;
  v149 = a8;
  v16 = type metadata accessor for PresentationView(255, &v146);
  v17 = v13;
  WitnessTable = swift_getWitnessTable();
  v19 = v15;
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v146 = v17;
  v147 = v19;
  v22 = v17;
  v103 = v17;
  v104 = WitnessTable;
  v23 = v19;
  v148 = v16;
  v149 = WitnessTable;
  v125 = v16;
  v24 = WitnessTable;
  v150 = v20;
  v151 = v21;
  v25 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v108 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v120 = v102 - v27;
  v146 = v22;
  v147 = v23;
  v148 = v16;
  v149 = v24;
  v150 = v20;
  v151 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v146 = OpaqueTypeMetadata2;
  v147 = v23;
  v29 = OpaqueTypeMetadata2;
  v105 = OpaqueTypeConformance2;
  v106 = OpaqueTypeMetadata2;
  v30 = v23;
  v148 = v16;
  v149 = OpaqueTypeConformance2;
  v31 = OpaqueTypeConformance2;
  v150 = v20;
  v151 = v25;
  v119 = v20;
  v32 = swift_getOpaqueTypeMetadata2();
  v110 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v121 = v102 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
  v146 = v29;
  v147 = v30;
  v35 = v125;
  v148 = v125;
  v149 = v31;
  v150 = v20;
  v151 = v25;
  v36 = v25;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_2167B2E14();
  v39 = sub_2167C4D74();
  v146 = v32;
  v147 = MEMORY[0x277D837D0];
  v148 = v35;
  v149 = v34;
  v150 = v30;
  v151 = v37;
  v152 = v38;
  v153 = v36;
  v40 = v36;
  v154 = v39;
  v41 = swift_getOpaqueTypeMetadata2();
  v116 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v123 = v102 - v42;
  v111 = v32;
  v146 = v32;
  v43 = v125;
  v147 = MEMORY[0x277D837D0];
  v148 = v125;
  v149 = v34;
  v150 = v30;
  v126 = v30;
  v109 = v37;
  v151 = v37;
  v152 = v38;
  v134 = v40;
  v153 = v40;
  v154 = v39;
  v44 = swift_getOpaqueTypeConformance2();
  v117 = v41;
  v146 = v41;
  v147 = MEMORY[0x277D837D0];
  v148 = v43;
  v124 = v34;
  v149 = v34;
  v150 = v30;
  v122 = v44;
  v151 = v44;
  v152 = v38;
  v127 = v39;
  v128 = v38;
  v153 = v40;
  v154 = v39;
  v45 = swift_getOpaqueTypeMetadata2();
  v114 = *(v45 - 8);
  v115 = v45;
  MEMORY[0x28223BE20](v45);
  v112 = v102 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v113 = v102 - v48;
  v50 = v129;
  v49 = v130;
  v51 = v136;
  v53 = v132;
  v52 = v133;
  v54 = v131;
  sub_216A26DF8(v129, v130, v135, v136, v133, v132, v131);
  v141 = v51;
  v142 = v52;
  v143 = v53;
  v144 = v54;
  v55 = v54;
  swift_getKeyPath();
  v102[3] = swift_getWitnessTable();
  sub_2170086A4();

  v102[0] = v147;
  v102[1] = v146;
  v102[2] = v148;
  v158 = v146;
  v159 = v147;
  v160 = v148;
  v56 = swift_allocObject();
  v57 = v136;
  v56[2] = v136;
  v56[3] = v52;
  v58 = v52;
  v56[4] = v53;
  v56[5] = v55;
  v56[6] = v50;
  v56[7] = v49;
  v59 = v135;
  v56[8] = v135;
  v60 = swift_allocObject();
  v60[2] = v57;
  v60[3] = v58;
  v60[4] = v53;
  v60[5] = v55;
  v61 = v55;
  v62 = v50;
  v60[6] = v50;
  v60[7] = v49;
  v63 = v49;
  v60[8] = v59;
  v64 = v62;
  swift_retain_n();
  swift_retain_n();
  swift_checkMetadataState();
  v126 = swift_checkMetadataState();
  v125 = swift_checkMetadataState();
  sub_21700A9F4();

  v65 = v64;
  v66 = v64;
  v67 = v136;
  v68 = v133;
  sub_216A26DF8(v66, v63, v59, v136, v133, v53, v55);
  v137 = v67;
  v138 = v68;
  v139 = v53;
  v140 = v55;
  swift_getKeyPath();
  sub_2170086A4();

  v103 = v147;
  v104 = v146;
  v107 = v148;
  v158 = v146;
  v159 = v147;
  v160 = v148;
  v69 = swift_allocObject();
  v69[2] = v67;
  v69[3] = v68;
  v69[4] = v53;
  v69[5] = v55;
  v69[6] = v65;
  v69[7] = v63;
  v70 = v63;
  v71 = v135;
  v69[8] = v135;
  v72 = swift_allocObject();
  v72[2] = v67;
  v72[3] = v68;
  v72[4] = v53;
  v72[5] = v61;
  v72[6] = v65;
  v72[7] = v70;
  v72[8] = v71;
  swift_retain_n();
  swift_retain_n();
  v73 = v120;
  v74 = v106;
  sub_21700A5C4();

  (v108[1])(v73, v74);

  if (!sub_216AF4554() || (sub_216A5D3A8(v75, v155), , !v156) || (v76 = v155[0], v77 = v155[1], v162 = v156, sub_21669987C(&v162, &qword_27CAB6BA0, qword_217037400), v163 = v157, sub_21669987C(&v163, &qword_27CABAA40, &unk_217014260), !v77))
  {

    v76 = 0;
    v77 = 0xE000000000000000;
  }

  v120 = v77;
  v146 = v76;
  v147 = v77;
  v107 = sub_216A27D4C(v129, v130, v135, v136, v133, v132, v131, &unk_282923458, &unk_282923480, sub_216A284BC, sub_216A28558);
  LODWORD(v106) = v78;
  v119 = sub_216AF4554();
  v108 = v102;
  v158 = v119;
  MEMORY[0x28223BE20](v119);
  MEMORY[0x28223BE20](v79);
  v80 = v111;
  v81 = v121;
  sub_21700A9A4();

  (*(v110 + 8))(v81, v80);
  if (!sub_216AF457C() || (sub_216A5D3A8(v82, &v158), , !v160) || (v83 = v158, v84 = v159, v164 = v160, sub_21669987C(&v164, &qword_27CAB6BA0, qword_217037400), v165 = v161, sub_21669987C(&v165, &qword_27CABAA40, &unk_217014260), !v84))
  {

    v83 = 0;
    v84 = 0xE000000000000000;
  }

  v146 = v83;
  v147 = v84;
  v85 = sub_216A27D4C(v129, v130, v135, v136, v133, v132, v131, &unk_282923408, &unk_282923430, sub_216A2848C, sub_216A284A4);
  v120 = v86;
  v121 = v85;
  LODWORD(v111) = v87;
  LODWORD(v110) = sub_216A27E68();
  v88 = sub_216AF457C();
  v119 = v88;

  v109 = v102;
  v145 = v88;
  MEMORY[0x28223BE20](v89);
  MEMORY[0x28223BE20](v90);
  v91 = v126;
  v92 = v124;
  v93 = v125;
  v94 = v117;
  v95 = v112;
  v96 = v123;
  sub_21700A6C4();

  (*(v116 + 8))(v96, v94);
  v146 = v94;
  v147 = MEMORY[0x277D837D0];
  v148 = v93;
  v149 = v92;
  v150 = v91;
  v151 = v122;
  v152 = v128;
  v153 = v134;
  v154 = v127;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = v113;
  v99 = v115;
  sub_2166C24DC(v95, v115, v97);
  v100 = *(v114 + 8);
  v100(v95, v99);
  sub_2166C24DC(v98, v99, v97);
  return (v100)(v98, v99);
}
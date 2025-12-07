uint64_t sub_22318BC38(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819242356 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22318BCC0(uint64_t a1)
{
  v2 = sub_2230DFC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BCFC(uint64_t a1)
{
  v2 = sub_2230DFC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318BC38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22318BD68(uint64_t a1)
{
  v2 = sub_22318E3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BDA4(uint64_t a1)
{
  v2 = sub_22318E3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BDE0(uint64_t a1)
{
  v2 = sub_22318E4F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BE1C(uint64_t a1)
{
  v2 = sub_22318E4F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BE58(uint64_t a1)
{
  v2 = sub_22318E4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BE94(uint64_t a1)
{
  v2 = sub_22318E4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BED0(uint64_t a1)
{
  v2 = sub_22318E450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BF0C(uint64_t a1)
{
  v2 = sub_22318E450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BF48(uint64_t a1)
{
  v2 = sub_2230DFCF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BF84(uint64_t a1)
{
  v2 = sub_2230DFCF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BFC0(uint64_t a1)
{
  v2 = sub_22318E3A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BFFC(uint64_t a1)
{
  v2 = sub_22318E3A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C038(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000223224560 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000026 && 0x8000000223224580 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000023 && 0x80000002232245D0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22318C198(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_22318C23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318C038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318C264(uint64_t a1)
{
  v2 = sub_22318E5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C2A0(uint64_t a1)
{
  v2 = sub_22318E5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C2DC(uint64_t a1)
{
  v2 = sub_22318E69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C318(uint64_t a1)
{
  v2 = sub_22318E69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C354(uint64_t a1)
{
  v2 = sub_22318E6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C390(uint64_t a1)
{
  v2 = sub_22318E6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C3CC(uint64_t a1)
{
  v2 = sub_22318E744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C408(uint64_t a1)
{
  v2 = sub_22318E744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C444(uint64_t a1)
{
  v2 = sub_22318E648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C480(uint64_t a1)
{
  v2 = sub_22318E648();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.PrescribedGenAITool.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AD0, &qword_223214A60);
  OUTLINED_FUNCTION_9();
  v28 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AD8, &qword_223214A68);
  OUTLINED_FUNCTION_9();
  v26 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AE0, &qword_223214A70);
  OUTLINED_FUNCTION_9();
  v24 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_3();
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AE8, &qword_223214A78);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_11();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AF0, &qword_223214A80);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40_2();
  v18 = *v0;
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E5F4();
  sub_2232007A4();
  switch(v18)
  {
    case 1:
      OUTLINED_FUNCTION_29_4();
      sub_22318E6F0();
      v21 = v23;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v22 = v24;
      goto LABEL_6;
    case 2:
      sub_22318E69C();
      v21 = v25;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v22 = v26;
      goto LABEL_6;
    case 3:
      sub_22318E648();
      v21 = v27;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v22 = v28;
LABEL_6:
      v20 = *(v22 + 8);
      v19 = v21;
      break;
    default:
      sub_22318E744();
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v19 = OUTLINED_FUNCTION_29_6();
      break;
  }

  v20(v19);
  (*(v16 + 8))(v1, v14);
  OUTLINED_FUNCTION_9_0();
}

uint64_t RequestSummary.PrescribedGenAITool.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void RequestSummary.PrescribedGenAITool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v59 = v27;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B20, &qword_223214A88);
  OUTLINED_FUNCTION_9();
  v58 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_3();
  v61 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B28, &qword_223214A90);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B30, &qword_223214A98);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B38, &qword_223214AA0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_11();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B40, &qword_223214AA8);
  OUTLINED_FUNCTION_9();
  v60 = v36;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(v26, v26[3]);
  sub_22318E5F4();
  OUTLINED_FUNCTION_33_4();
  sub_223200794();
  if (v23)
  {
    goto LABEL_8;
  }

  v63 = v26;
  v38 = v24;
  v39 = sub_223200594();
  sub_2230E0B80(v39, 0);
  if (v41 == v40 >> 1)
  {
LABEL_7:
    sub_2232003A4();
    swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v55 = &type metadata for RequestSummary.PrescribedGenAITool;
    v56 = sub_223200484();
    OUTLINED_FUNCTION_48(v56);
    OUTLINED_FUNCTION_5_0();
    (*(v57 + 104))(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v60 + 8))(v38, v35);
    v26 = v63;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_9:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  OUTLINED_FUNCTION_32();
  if (v45 < (v44 >> 1))
  {
    v46 = *(v43 + v42);
    sub_2230E0B40(v42 + 1);
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      switch(v46)
      {
        case 1:
          OUTLINED_FUNCTION_29_4();
          sub_22318E6F0();
          OUTLINED_FUNCTION_13_7();
          sub_223200474();
          swift_unknownObjectRelease();
          goto LABEL_13;
        case 2:
          sub_22318E69C();
          OUTLINED_FUNCTION_13_7();
          sub_223200474();
          swift_unknownObjectRelease();
LABEL_13:
          v51 = OUTLINED_FUNCTION_42_2();
          goto LABEL_14;
        case 3:
          sub_22318E648();
          sub_223200474();
          swift_unknownObjectRelease();
          (*(v58 + 8))(v61, v62);
          goto LABEL_15;
        default:
          sub_22318E744();
          OUTLINED_FUNCTION_13_7();
          sub_223200474();
          swift_unknownObjectRelease();
          v51 = OUTLINED_FUNCTION_42_2();
          v53 = v33;
LABEL_14:
          v52(v51, v53);
LABEL_15:
          (*(v60 + 8))(v38, v35);
          *v59 = v46;
          __swift_destroy_boxed_opaque_existential_1(v63);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

BOOL static RequestSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v83 = a1[3];
  v84 = a1[2];
  v5 = a1[5];
  v82 = a1[4];
  v6 = *(a1 + 4);
  v104 = *(a1 + 3);
  v105 = v6;
  v7 = *(a1 + 6);
  v106 = *(a1 + 5);
  v107 = v7;
  v81 = *(a1 + 56);
  v79 = a1[15];
  memcpy(__dst, a1 + 16, sizeof(__dst));
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = *(a2 + 4);
  v109 = *(a2 + 3);
  v110 = v14;
  v15 = *(a2 + 6);
  v111 = *(a2 + 5);
  v112 = v15;
  v80 = *(a2 + 56);
  v78 = a2[15];
  memcpy(v113, a2 + 16, 0x41uLL);
  if (v3 != v8 || v4 != v9)
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_17_8();
    if ((sub_2232006B4() & 1) == 0)
    {
      return 0;
    }
  }

  *__src = v84;
  *&__src[8] = v83;
  *&__src[16] = v82;
  *&__src[24] = v5;
  *&v88[0] = v10;
  *(&v88[0] + 1) = v11;
  *&v88[1] = v12;
  *(&v88[1] + 1) = v13;
  v17 = OUTLINED_FUNCTION_61_1();
  sub_2230E3DD8(v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_60();
  sub_2230E3DD8(v21, v22, v23, v24);
  v25 = static RequestSummary.UserInput.== infix(_:_:)(__src, v88);
  v26 = OUTLINED_FUNCTION_60();
  sub_22318DFEC(v26, v27);
  v28 = OUTLINED_FUNCTION_61_1();
  sub_22318DFEC(v28, v29);
  if (!v25)
  {
    return 0;
  }

  *__src = v104;
  *&__src[16] = v105;
  *&__src[32] = v106;
  *&__src[48] = v107;
  v88[0] = v109;
  v88[1] = v110;
  v88[2] = v111;
  v88[3] = v112;
  v30 = static RequestSummary.SystemResponse.== infix(_:_:)(__src, v88);
  v102[0] = v88[0];
  v102[1] = v88[1];
  v102[2] = v88[2];
  v102[3] = v88[3];
  sub_2230E582C(&v104, v87);
  sub_2230E582C(&v109, v87);
  sub_22318E27C(v102);
  v103[0] = *__src;
  v103[1] = *&__src[16];
  v103[2] = *&__src[32];
  v103[3] = *&__src[48];
  sub_22318E27C(v103);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  *__src = v81;
  LOWORD(v88[0]) = v80;
  if ((static RequestSummary.ExecutionSource.== infix(_:_:)(__src, v88) & 1) == 0)
  {
    return 0;
  }

  if (v79)
  {
    if (!v78)
    {
      return 0;
    }

    type metadata accessor for RequestConjunctionInfo();
    v31 = v78;
    v32 = v79;
    v33 = sub_2232002B4();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  v99 = *__dst;
  v100 = *&__dst[16];
  v97 = *&__dst[48];
  *&v96[7] = v113[0];
  v34 = *&__dst[40];
  v101 = *&__dst[32];
  v98 = __dst[64];
  *&v96[23] = v113[1];
  v35 = *(&v113[2] + 1);
  *&v96[39] = *&v113[2];
  v95 = v113[4];
  v94 = v113[3];
  if ((*&__dst[40] & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    if ((*(&v113[2] + 1) & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      OUTLINED_FUNCTION_25_3(__dst);
      OUTLINED_FUNCTION_17_8();
      sub_2230E3D68(v36, v37, v38, v39);
      OUTLINED_FUNCTION_17_8();
      sub_2230E3D68(v40, v41, v42, v43);
      sub_2230E3C4C(__src, &qword_27D057DC8, &qword_22320E730);
      return 1;
    }

    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v56, v57, v58, v59);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v60, v61, v62, v63);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_25_3(__dst);
  memcpy(v88, __src, 0x41uLL);
  if ((v35 & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    memcpy(v87, __src, 0x41uLL);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v44, v45, v46, v47);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v48, v49, v50, v51);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v52, v53, v54, v55);
    sub_2230E6410(v87);
LABEL_20:
    *__src = v99;
    *&__src[16] = v100;
    *&__src[32] = v101;
    *&__src[40] = v34;
    *&__src[48] = v97;
    __src[64] = v98;
    *&__src[65] = *v96;
    *v90 = *&v96[16];
    *&v90[15] = *&v96[31];
    v91 = v35;
    v93 = v95;
    v92 = v94;
    sub_2230E3C4C(__src, &qword_27D059B48, &qword_223214AB0);
    return 0;
  }

  v87[0] = v113[0];
  v87[1] = v113[1];
  v87[3] = v113[3];
  LOBYTE(v87[4]) = v113[4];
  *&v87[2] = *&v113[2];
  *(&v87[2] + 1) = v35;
  OUTLINED_FUNCTION_17_8();
  sub_2230E3D68(v65, v66, v67, v68);
  OUTLINED_FUNCTION_17_8();
  sub_2230E3D68(v69, v70, v71, v72);
  OUTLINED_FUNCTION_17_8();
  sub_2230E3D68(v73, v74, v75, v76);
  v77 = static NLRoutingDecisionMessage.RoutingDecision.== infix(_:_:)(v88, v87);
  memcpy(v85, v87, 0x41uLL);
  sub_2230E6410(v85);
  memcpy(v86, v88, 0x41uLL);
  sub_2230E6410(v86);
  v87[0] = v99;
  v87[1] = v100;
  *&v87[2] = v101;
  *(&v87[2] + 1) = v34;
  v87[3] = v97;
  LOBYTE(v87[4]) = v98;
  sub_2230E3C4C(v87, &qword_27D057DC8, &qword_22320E730);
  return (v77 & 1) != 0;
}

uint64_t sub_22318D3A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x75706E4972657375 && a2 == 0xE900000000000074;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65526D6574737973 && a2 == 0xEE0065736E6F7073;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69747563657865 && a2 == 0xEF656372756F536ELL;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74636E756A6E6F63 && a2 == 0xEF6F666E496E6F69;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x44676E6974756F72 && a2 == 0xEF6E6F6973696365)
          {

            return 5;
          }

          else
          {
            v11 = sub_2232006B4();

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

uint64_t sub_22318D5B4(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x75706E4972657375;
      break;
    case 2:
      result = 0x65526D6574737973;
      break;
    case 3:
      result = 0x6F69747563657865;
      break;
    case 4:
      result = 0x74636E756A6E6F63;
      break;
    case 5:
      result = 0x44676E6974756F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22318D6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318D3A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318D6CC(uint64_t a1)
{
  v2 = sub_22318E798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318D708(uint64_t a1)
{
  v2 = sub_22318E798();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B50, &qword_223214AB8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = *v0;
  v11 = v0[3];
  v25 = v0[2];
  v26 = v10;
  v12 = v0[5];
  v23 = v0[4];
  v24 = v11;
  v22 = v12;
  v13 = *(v0 + 4);
  v35 = *(v0 + 3);
  v36 = v13;
  v14 = *(v0 + 6);
  v37 = *(v0 + 5);
  v38 = v14;
  v21 = *(v0 + 56);
  v20 = v0[15];
  memcpy(v39, v0 + 16, 0x41uLL);
  v15 = v3[3];
  v16 = v3;
  v17 = v4;
  OUTLINED_FUNCTION_29(v16, v15);
  sub_22318E798();
  sub_2232007A4();
  LOBYTE(v28[0]) = 0;
  sub_2232005F4();
  if (v1)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v18 = v21;
    v19 = v20;
    v28[0] = v25;
    v28[1] = v24;
    v28[2] = v23;
    v28[3] = v22;
    v27[0] = 1;
    sub_2230E3DD8(v25, v24, v23, v22);
    sub_22318E7EC();
    OUTLINED_FUNCTION_37_4();
    sub_223200654();
    sub_22318DFEC(v28[0], v28[1]);
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v30 = 2;
    sub_2230E582C(&v35, v28);
    sub_22318E840();
    sub_223200654();
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_22318E27C(v29);
    LOWORD(v28[0]) = v18;
    v27[0] = 3;
    sub_2230E2D70();
    OUTLINED_FUNCTION_37_4();
    sub_223200654();
    v28[0] = v19;
    v27[0] = 4;
    type metadata accessor for RequestConjunctionInfo();
    sub_22318E93C(&qword_27D059B70, &protocol conformance descriptor for RequestConjunctionInfo);
    OUTLINED_FUNCTION_37_4();
    sub_2232005E4();
    memcpy(v28, v39, 0x41uLL);
    v27[71] = 5;
    sub_2230E3D68(v39, v27, &qword_27D057DC8, &qword_22320E730);
    sub_2230E6F8C();
    sub_2232005E4();
    memcpy(v27, v28, 0x41uLL);
    sub_2230E3C4C(v27, &qword_27D057DC8, &qword_22320E730);
    (*(v6 + 8))(v9, v17);
  }

  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B78, &qword_223214AC0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_22318E798();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v18) = 0;
    OUTLINED_FUNCTION_20_11();
    v6 = sub_2232004F4();
    v16 = v7;
    sub_22318E894();
    OUTLINED_FUNCTION_6_20();
    sub_223200554();
    v12 = v19;
    v13 = v20;
    v14 = v21;
    v15 = v18;
    v33[71] = 2;
    sub_22318E8E8();
    OUTLINED_FUNCTION_6_20();
    sub_223200554();
    v41 = v34;
    v42 = v35;
    v43 = v36;
    v44 = v37;
    sub_223105D70();
    OUTLINED_FUNCTION_6_20();
    sub_223200554();
    v8 = v18;
    type metadata accessor for RequestConjunctionInfo();
    v17[0] = 4;
    sub_22318E93C(&qword_27D059B90, &protocol conformance descriptor for RequestConjunctionInfo);
    OUTLINED_FUNCTION_20_11();
    sub_2232004C4();
    v9 = v18;
    v32[79] = 5;
    sub_22311D8D0();
    OUTLINED_FUNCTION_6_20();
    sub_2232004C4();
    v10 = OUTLINED_FUNCTION_12_12();
    v11(v10);
    memcpy(v38, v33, sizeof(v38));
    *v17 = v6;
    *&v17[8] = v16;
    *&v17[16] = v15;
    *&v17[24] = v12;
    *&v17[32] = v13;
    *&v17[40] = v14;
    *&v17[48] = v41;
    *&v17[64] = v42;
    *&v17[80] = v43;
    *&v17[96] = v44;
    *&v17[112] = v8;
    *&v17[114] = v39;
    *&v17[118] = v40;
    *&v17[120] = v9;
    memcpy(&v17[128], v33, 0x41uLL);
    memcpy(v4, v17, 0xC1uLL);
    sub_22318E980(v17, &v18);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v18 = v6;
    v19 = v16;
    v20 = v15;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v41;
    v25 = v42;
    v26 = v43;
    v27 = v44;
    v28 = v8;
    v29 = v39;
    v30 = v40;
    v31 = v9;
    memcpy(v32, v38, 0x41uLL);
    sub_22318E9B8(&v18);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22318DFEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22318E030()
{
  result = qword_27D059988;
  if (!qword_27D059988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059988);
  }

  return result;
}

unint64_t sub_22318E084()
{
  result = qword_27D059990;
  if (!qword_27D059990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059990);
  }

  return result;
}

unint64_t sub_22318E0D8()
{
  result = qword_27D059998;
  if (!qword_27D059998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059998);
  }

  return result;
}

unint64_t sub_22318E12C()
{
  result = qword_27D0599A0;
  if (!qword_27D0599A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599A0);
  }

  return result;
}

unint64_t sub_22318E180()
{
  result = qword_27D0599C0;
  if (!qword_27D0599C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599C0);
  }

  return result;
}

unint64_t sub_22318E1D4()
{
  result = qword_27D0599D8;
  if (!qword_27D0599D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599D8);
  }

  return result;
}

unint64_t sub_22318E228()
{
  result = qword_27D0599F0;
  if (!qword_27D0599F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599F0);
  }

  return result;
}

unint64_t sub_22318E2AC()
{
  result = qword_27D059A08;
  if (!qword_27D059A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A08);
  }

  return result;
}

unint64_t sub_22318E300()
{
  result = qword_27D059A10;
  if (!qword_27D059A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A10);
  }

  return result;
}

unint64_t sub_22318E354()
{
  result = qword_27D059A20;
  if (!qword_27D059A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A20);
  }

  return result;
}

unint64_t sub_22318E3A8()
{
  result = qword_27D059A60;
  if (!qword_27D059A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A60);
  }

  return result;
}

unint64_t sub_22318E3FC()
{
  result = qword_27D059A68;
  if (!qword_27D059A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A68);
  }

  return result;
}

unint64_t sub_22318E450()
{
  result = qword_27D059A70;
  if (!qword_27D059A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A70);
  }

  return result;
}

unint64_t sub_22318E4A4()
{
  result = qword_27D059A78;
  if (!qword_27D059A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A78);
  }

  return result;
}

unint64_t sub_22318E4F8()
{
  result = qword_27D059A80;
  if (!qword_27D059A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A80);
  }

  return result;
}

unint64_t sub_22318E54C()
{
  result = qword_27D059A88;
  if (!qword_27D059A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A88);
  }

  return result;
}

unint64_t sub_22318E5A0()
{
  result = qword_27D059AC8;
  if (!qword_27D059AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059AC8);
  }

  return result;
}

unint64_t sub_22318E5F4()
{
  result = qword_27D059AF8;
  if (!qword_27D059AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059AF8);
  }

  return result;
}

unint64_t sub_22318E648()
{
  result = qword_27D059B00;
  if (!qword_27D059B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B00);
  }

  return result;
}

unint64_t sub_22318E69C()
{
  result = qword_27D059B08;
  if (!qword_27D059B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B08);
  }

  return result;
}

unint64_t sub_22318E6F0()
{
  result = qword_27D059B10;
  if (!qword_27D059B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B10);
  }

  return result;
}

unint64_t sub_22318E744()
{
  result = qword_27D059B18;
  if (!qword_27D059B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B18);
  }

  return result;
}

unint64_t sub_22318E798()
{
  result = qword_27D059B58;
  if (!qword_27D059B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B58);
  }

  return result;
}

unint64_t sub_22318E7EC()
{
  result = qword_27D059B60;
  if (!qword_27D059B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B60);
  }

  return result;
}

unint64_t sub_22318E840()
{
  result = qword_27D059B68;
  if (!qword_27D059B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B68);
  }

  return result;
}

unint64_t sub_22318E894()
{
  result = qword_27D059B80;
  if (!qword_27D059B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B80);
  }

  return result;
}

unint64_t sub_22318E8E8()
{
  result = qword_27D059B88;
  if (!qword_27D059B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B88);
  }

  return result;
}

uint64_t sub_22318E93C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RequestConjunctionInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22318E9EC()
{
  result = qword_27D059B98;
  if (!qword_27D059B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B98);
  }

  return result;
}

uint64_t sub_22318EA40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 193))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22318EA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestSummary.ExecutionSource.IntelligenceFlow(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestSummary.ExecutionSource.IntelligenceFlow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22318EDB0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22318EE8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22318EF68(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_47_0();
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

  return OUTLINED_FUNCTION_44(a1);
}

_BYTE *sub_22318EFB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22318F060()
{
  result = qword_27D059BA0;
  if (!qword_27D059BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BA0);
  }

  return result;
}

unint64_t sub_22318F0B8()
{
  result = qword_27D059BA8;
  if (!qword_27D059BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BA8);
  }

  return result;
}

unint64_t sub_22318F110()
{
  result = qword_27D059BB0;
  if (!qword_27D059BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BB0);
  }

  return result;
}

unint64_t sub_22318F168()
{
  result = qword_27D059BB8;
  if (!qword_27D059BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BB8);
  }

  return result;
}

unint64_t sub_22318F1C0()
{
  result = qword_27D059BC0;
  if (!qword_27D059BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BC0);
  }

  return result;
}

unint64_t sub_22318F218()
{
  result = qword_27D059BC8;
  if (!qword_27D059BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BC8);
  }

  return result;
}

unint64_t sub_22318F270()
{
  result = qword_27D059BD0;
  if (!qword_27D059BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BD0);
  }

  return result;
}

unint64_t sub_22318F2C8()
{
  result = qword_27D059BD8;
  if (!qword_27D059BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BD8);
  }

  return result;
}

unint64_t sub_22318F320()
{
  result = qword_27D059BE0;
  if (!qword_27D059BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BE0);
  }

  return result;
}

unint64_t sub_22318F378()
{
  result = qword_27D059BE8;
  if (!qword_27D059BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BE8);
  }

  return result;
}

unint64_t sub_22318F3D0()
{
  result = qword_27D059BF0;
  if (!qword_27D059BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BF0);
  }

  return result;
}

unint64_t sub_22318F428()
{
  result = qword_27D059BF8;
  if (!qword_27D059BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BF8);
  }

  return result;
}

unint64_t sub_22318F480()
{
  result = qword_27D059C00;
  if (!qword_27D059C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C00);
  }

  return result;
}

unint64_t sub_22318F4D8()
{
  result = qword_27D059C08;
  if (!qword_27D059C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C08);
  }

  return result;
}

unint64_t sub_22318F530()
{
  result = qword_27D059C10;
  if (!qword_27D059C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C10);
  }

  return result;
}

unint64_t sub_22318F588()
{
  result = qword_27D059C18;
  if (!qword_27D059C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C18);
  }

  return result;
}

unint64_t sub_22318F5E0()
{
  result = qword_27D059C20;
  if (!qword_27D059C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C20);
  }

  return result;
}

unint64_t sub_22318F638()
{
  result = qword_27D059C28;
  if (!qword_27D059C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C28);
  }

  return result;
}

unint64_t sub_22318F690()
{
  result = qword_27D059C30;
  if (!qword_27D059C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C30);
  }

  return result;
}

unint64_t sub_22318F6E8()
{
  result = qword_27D059C38;
  if (!qword_27D059C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C38);
  }

  return result;
}

unint64_t sub_22318F740()
{
  result = qword_27D059C40;
  if (!qword_27D059C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C40);
  }

  return result;
}

unint64_t sub_22318F798()
{
  result = qword_27D059C48;
  if (!qword_27D059C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C48);
  }

  return result;
}

unint64_t sub_22318F7F0()
{
  result = qword_280FCE810;
  if (!qword_280FCE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE810);
  }

  return result;
}

unint64_t sub_22318F848()
{
  result = qword_280FCE818;
  if (!qword_280FCE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE818);
  }

  return result;
}

unint64_t sub_22318F8A0()
{
  result = qword_280FCE7A0;
  if (!qword_280FCE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7A0);
  }

  return result;
}

unint64_t sub_22318F8F8()
{
  result = qword_280FCE7A8;
  if (!qword_280FCE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7A8);
  }

  return result;
}

unint64_t sub_22318F950()
{
  result = qword_280FCE7D0;
  if (!qword_280FCE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7D0);
  }

  return result;
}

unint64_t sub_22318F9A8()
{
  result = qword_280FCE7D8;
  if (!qword_280FCE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7D8);
  }

  return result;
}

unint64_t sub_22318FA00()
{
  result = qword_280FCE7B0;
  if (!qword_280FCE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7B0);
  }

  return result;
}

unint64_t sub_22318FA58()
{
  result = qword_280FCE7B8;
  if (!qword_280FCE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7B8);
  }

  return result;
}

unint64_t sub_22318FAB0()
{
  result = qword_280FCE7E0;
  if (!qword_280FCE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7E0);
  }

  return result;
}

unint64_t sub_22318FB08()
{
  result = qword_280FCE7E8;
  if (!qword_280FCE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7E8);
  }

  return result;
}

unint64_t sub_22318FB60()
{
  result = qword_280FCE7C0;
  if (!qword_280FCE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7C0);
  }

  return result;
}

unint64_t sub_22318FBB8()
{
  result = qword_280FCE7C8;
  if (!qword_280FCE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7C8);
  }

  return result;
}

unint64_t sub_22318FC10()
{
  result = qword_280FCE7F0;
  if (!qword_280FCE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7F0);
  }

  return result;
}

unint64_t sub_22318FC68()
{
  result = qword_280FCE7F8;
  if (!qword_280FCE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7F8);
  }

  return result;
}

unint64_t sub_22318FCC0()
{
  result = qword_27D059C50;
  if (!qword_27D059C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C50);
  }

  return result;
}

unint64_t sub_22318FD18()
{
  result = qword_27D059C58;
  if (!qword_27D059C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C58);
  }

  return result;
}

unint64_t sub_22318FD70()
{
  result = qword_27D059C60;
  if (!qword_27D059C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C60);
  }

  return result;
}

unint64_t sub_22318FDC8()
{
  result = qword_27D059C68;
  if (!qword_27D059C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C68);
  }

  return result;
}

unint64_t sub_22318FE20()
{
  result = qword_27D059C70;
  if (!qword_27D059C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C70);
  }

  return result;
}

unint64_t sub_22318FE78()
{
  result = qword_27D059C78;
  if (!qword_27D059C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C78);
  }

  return result;
}

unint64_t sub_22318FED0()
{
  result = qword_27D059C80;
  if (!qword_27D059C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C80);
  }

  return result;
}

unint64_t sub_22318FF28()
{
  result = qword_27D059C88;
  if (!qword_27D059C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C88);
  }

  return result;
}

unint64_t sub_22318FF80()
{
  result = qword_27D059C90;
  if (!qword_27D059C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C90);
  }

  return result;
}

unint64_t sub_22318FFD8()
{
  result = qword_27D059C98;
  if (!qword_27D059C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C98);
  }

  return result;
}

unint64_t sub_223190030()
{
  result = qword_27D059CA0;
  if (!qword_27D059CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CA0);
  }

  return result;
}

unint64_t sub_223190088()
{
  result = qword_27D059CA8;
  if (!qword_27D059CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CA8);
  }

  return result;
}

unint64_t sub_2231900DC()
{
  result = qword_27D059CB0;
  if (!qword_27D059CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CB0);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_46_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x223DD6780);
}

void OUTLINED_FUNCTION_62_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

SiriMessageTypes::RequestType_optional __swiftcall RequestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2231902DC()
{
  result = qword_27D059CB8;
  if (!qword_27D059CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CB8);
  }

  return result;
}

id ResultCandidateRequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v64 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v60 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v62 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v61 = v16 - v15;
  v17 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v21 = (v20 - v19);
  *v21 = 15;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v22 = v18[8];
  __swift_storeEnumTagSinglePayload(v20 - v19 + v22, 1, 1, v12);
  v23 = &v21[v18[9]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v21[v18[10]];
  *v24 = 0;
  v24[1] = 0;
  a1(v21);
  v25 = *v21;
  if (v25 == 15)
  {
    goto LABEL_14;
  }

  v26 = *(v21 + 2);
  if (!v26)
  {
    goto LABEL_14;
  }

  v59 = *(v21 + 1);
  sub_2230D1480(&v21[v22], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2230D69D4(v11);
LABEL_14:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v42 = sub_223200014();
    __swift_project_value_buffer(v42, qword_280FCE830);
    v43 = sub_223200004();
    v44 = sub_223200254();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65[0] = v46;
      *v45 = 136446210;
      v47 = sub_2230F7898(ObjectType);
      v49 = sub_2231A5D38(v47, v48, v65);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2230CE000, v43, v44, "Could not build %{public}s: Builder has missing required fields", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x223DD6780](v46, -1, -1);
      MEMORY[0x223DD6780](v45, -1, -1);
    }

    sub_223191210(v21);
LABEL_19:
    type metadata accessor for ResultCandidateRequestMessageBase(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v58 = v26;
  v28 = v61;
  v27 = v62;
  (*(v62 + 32))(v61, v11, v12);
  v29 = *(v23 + 1);
  if (!v29 || (v30 = v24[1]) == 0)
  {
    (*(v27 + 8))(v28, v12);
    goto LABEL_14;
  }

  v65[0] = *v24;
  v65[1] = v30;
  sub_2231FFC74();
  sub_2230D1D30();
  v31 = sub_2232002E4();
  v33 = v32;
  v34 = (*(v60 + 8))(v8, v3);
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v51 = sub_223200014();
    __swift_project_value_buffer(v51, qword_280FCE830);
    v52 = sub_223200004();
    v53 = sub_223200254();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v62;
    if (v54)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2230CE000, v52, v53, "resultCandidateId is empty, can't create message", v56, 2u);
      MEMORY[0x223DD6780](v56, -1, -1);
    }

    sub_223191210(v21);
    (*(v55 + 8))(v61, v12);
    goto LABEL_19;
  }

  v36 = (v64 + OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId);
  *v36 = v31;
  v36[1] = v33;
  MEMORY[0x28223BE20](v34);
  *(&v57 - 48) = v25;
  v37 = v58;
  *(&v57 - 5) = v59;
  *(&v57 - 4) = v37;
  v38 = v61;
  *(&v57 - 3) = v61;
  *(&v57 - 2) = v39;
  *(&v57 - 1) = v29;
  v40 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v41 = v40;
  sub_223191210(v21);
  if (v40)
  {
  }

  (*(v62 + 8))(v38, v12);
  return v40;
}

void *ResultCandidateRequestMessageBase.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CC0, &qword_223216658);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231912E4();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResultCandidateRequestMessageBase(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_223190B78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CC8, &qword_223216660);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231912E4();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_223190CC8(uint64_t a1)
{
  v2 = sub_2231912E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223190D04(uint64_t a1)
{
  v2 = sub_2231912E4();

  return MEMORY[0x2821FE720](a1, v2);
}

id ResultCandidateRequestMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ResultCandidateRequestMessageBase.init(build:)(v1);
}

uint64_t sub_223190E58()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ResultCandidateRequestMessageBase(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0x3A644963723C202CLL, 0xE900000000000020);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t ResultCandidateRequestMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ResultCandidateRequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResultCandidateRequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ResultCandidateRequestMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_17() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ResultCandidateRequestMessageBase.Builder.requestId.getter()
{
  type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResultCandidateRequestMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultCandidateRequestMessageBase.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResultCandidateRequestMessageBase.Builder.resultCandidateId.getter()
{
  type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResultCandidateRequestMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultCandidateRequestMessageBase.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_223191210(uint64_t a1)
{
  v2 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ResultCandidateRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResultCandidateRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231912E4()
{
  result = qword_280FCC850;
  if (!qword_280FCC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC850);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResultCandidateRequestMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223191488()
{
  result = qword_27D059CD0;
  if (!qword_27D059CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CD0);
  }

  return result;
}

unint64_t sub_2231914E0()
{
  result = qword_280FCC840;
  if (!qword_280FCC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC840);
  }

  return result;
}

unint64_t sub_223191538()
{
  result = qword_280FCC848;
  if (!qword_280FCC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC848);
  }

  return result;
}

void *sub_223191678(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = ResultSelectedMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id sub_2231916F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ResultSelectedMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v53 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v49 = v7;
  MEMORY[0x28223BE20](v8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  v51 = v6;
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v13[v17] = 2;
  v18 = &v13[v11[12]];
  *v18 = 0;
  v18[8] = 1;
  a1(v13);
  v19 = *v13;
  if (v19 == 15)
  {
    goto LABEL_10;
  }

  v20 = *(v13 + 2);
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  v22 = v51;
  if (__swift_getEnumTagSinglePayload(v5, 1, v51) == 1)
  {
    sub_2230D69D4(v5);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v27 = sub_223200014();
    __swift_project_value_buffer(v27, qword_280FCE830);
    v28 = sub_223200004();
    v29 = sub_223200254();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v54 = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898(ObjectType);
      v34 = sub_2231A5D38(v32, v33, &v54);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_223191C7C(v13);
    type metadata accessor for ResultSelectedMessageBase(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v47 = v21;
  v48 = v20;
  v23 = v49;
  v24 = v50;
  v25 = (*(v49 + 32))(v50, v5, v22);
  if (!*(v15 + 1))
  {
    (*(v23 + 8))(v24, v22);
    goto LABEL_10;
  }

  if (!*(v16 + 1) || (v26 = v13[v17], v26 == 2))
  {
    (*(v23 + 8))(v50, v22);
    goto LABEL_10;
  }

  v37 = v53;
  *(v53 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_isMitigated) = v26 & 1;
  v38 = v18[8];
  v39 = v37 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode;
  *v39 = *v18;
  *(v39 + 8) = v38;
  MEMORY[0x28223BE20](v25);
  *(&v47 - 64) = v19;
  v40 = v48;
  *(&v47 - 7) = v47;
  *(&v47 - 6) = v40;
  v41 = v50;
  *(&v47 - 5) = v50;
  *(&v47 - 4) = v42;
  *(&v47 - 3) = v43;
  *(&v47 - 2) = v44;
  *(&v47 - 1) = v45;
  v35 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v46 = v35;
  sub_223191C7C(v13);
  if (v35)
  {
  }

  (*(v49 + 8))(v41, v51);
  return v35;
}

uint64_t sub_223191C7C(uint64_t a1)
{
  v2 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ResultSelectedMessageBase.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CE8, &qword_223216868);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231927C8();
  sub_223200794();
  if (v2)
  {
    v7 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResultSelectedMessageBase(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_isMitigated) = sub_223200504() & 1;
    LOBYTE(v13[0]) = 1;
    OUTLINED_FUNCTION_0();
    v5 = sub_2232004B4();
    v9 = v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode;
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5;
    }

    *v9 = v10;
    *(v9 + 8) = v6 & 1;
    sub_2230F7158(a1, v13);
    v7 = ResultCandidateRequestMessageBase.init(from:)(v13);
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_223191F2C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CF0, &qword_223216870);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231927C8();
  sub_2232007A4();
  v13 = 0;
  sub_223200604();
  if (!v2)
  {
    if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode + 8) & 1) == 0)
    {
      v12 = 1;
      sub_223200634();
    }

    sub_223190B78(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_2231920EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61676974694D7369 && a2 == 0xEB00000000646574;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEC00000065646F4DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231921BC(char a1)
{
  if (a1)
  {
    return 0x746E696F70646E65;
  }

  else
  {
    return 0x61676974694D7369;
  }
}

uint64_t sub_22319220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231920EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223192234(uint64_t a1)
{
  v2 = sub_2231927C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223192270(uint64_t a1)
{
  v2 = sub_2231927C8();

  return MEMORY[0x2821FE720](a1, v2);
}

id ResultSelectedMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ResultSelectedMessageBase.init(build:)(v1);
}

uint64_t ResultSelectedMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ResultSelectedMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ResultSelectedMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_25() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ResultSelectedMessageBase.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 28));

  return v1;
}

uint64_t ResultSelectedMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 32));

  return v1;
}

uint64_t ResultSelectedMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.endpointMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

id ResultSelectedMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResultSelectedMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231927C8()
{
  result = qword_280FCDD90;
  if (!qword_280FCDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDD90);
  }

  return result;
}

uint64_t sub_2231928C4(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22314ED48(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_22314ED48(319, &qword_280FCA3D8, type metadata accessor for AFEndpointMode);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for ResultSelectedMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223192B00()
{
  result = qword_27D059CF8;
  if (!qword_27D059CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CF8);
  }

  return result;
}

unint64_t sub_223192B58()
{
  result = qword_280FCDD80;
  if (!qword_280FCDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDD80);
  }

  return result;
}

unint64_t sub_223192BB0()
{
  result = qword_280FCDD88;
  if (!qword_280FCDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDD88);
  }

  return result;
}

uint64_t sub_223192C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554786966657270 && a2 == 0xEA00000000007478;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5478696674736F70 && a2 == 0xEB00000000747865;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64657463656C6573 && a2 == 0xEC00000074786554)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_223192D34(char a1)
{
  if (!a1)
  {
    return 0x6554786966657270;
  }

  if (a1 == 1)
  {
    return 0x5478696674736F70;
  }

  return 0x64657463656C6573;
}

uint64_t sub_223192DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223192C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223192DD0(uint64_t a1)
{
  v2 = sub_223193F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223192E0C(uint64_t a1)
{
  v2 = sub_223193F58();

  return MEMORY[0x2821FE720](a1, v2);
}

id ResumeDictationRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ResumeDictationRequestMessage.init(build:)(v1);
}

id ResumeDictationRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v53 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v51 = v7;
  MEMORY[0x28223BE20](v8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[v11[11]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v13[v11[12]];
  *v18 = 0;
  *(v18 + 1) = 0;
  a1(v13);
  v19 = *v13;
  if (v19 == 15)
  {
    goto LABEL_13;
  }

  v20 = *(v13 + 2);
  if (!v20)
  {
    goto LABEL_13;
  }

  v49 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898(ObjectType);
      v45 = sub_2231A5D38(v43, v44, &v54);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_223193404(v13);
    type metadata accessor for ResumeDictationRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v48 = v20;
  v22 = v50;
  v21 = v51;
  (*(v51 + 32))(v50, v5, v6);
  if (!*(v15 + 1) || (v23 = *(v16 + 1)) == 0 || (v24 = *(v17 + 1)) == 0 || (v25 = *(v18 + 1)) == 0)
  {
    (*(v21 + 8))(v22, v6);
    goto LABEL_13;
  }

  ObjectType = &v47;
  v26 = *v17;
  v27 = *v18;
  v28 = v22;
  v29 = v53;
  v30 = (v53 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText);
  *v30 = *v16;
  v30[1] = v23;
  v31 = (v29 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText);
  *v31 = v26;
  v31[1] = v24;
  v32 = (v29 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText);
  *v32 = v27;
  v32[1] = v25;
  MEMORY[0x28223BE20](v23);
  *(&v47 - 48) = v19;
  v33 = v48;
  *(&v47 - 5) = v49;
  *(&v47 - 4) = v33;
  *(&v47 - 3) = v28;
  *(&v47 - 2) = v34;
  *(&v47 - 1) = v35;

  v36 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v37 = v36;
  sub_223193404(v13);
  if (v36)
  {
  }

  (*(v51 + 8))(v28, v6);
  return v36;
}

uint64_t sub_223193404(uint64_t a1)
{
  v2 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ResumeDictationRequestMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D00, &qword_223216A38);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223193F58();
  sub_223200794();
  if (v2)
  {
    v15 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResumeDictationRequestMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_2();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText);
    *v7 = v5;
    v7[1] = v8;
    v9 = OUTLINED_FUNCTION_5_2();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText);
    *v10 = v9;
    v10[1] = v11;
    LOBYTE(v18[0]) = 2;
    v12 = OUTLINED_FUNCTION_5_2();
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText);
    *v13 = v12;
    v13[1] = v14;
    sub_2230F7158(a1, v18);
    v15 = RequestMessageBase.init(from:)(v18);
    v16 = OUTLINED_FUNCTION_2();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_223193778(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D10, &qword_223216A40);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223193F58();
  sub_2232007A4();
  v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText);
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText + 8);
  v20 = 0;
  OUTLINED_FUNCTION_8_18(v10, v11, &v20);
  if (!v2)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText);
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText + 8);
    v19 = 1;
    OUTLINED_FUNCTION_8_18(v12, v13, &v19);
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText);
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText + 8);
    v18 = 2;
    OUTLINED_FUNCTION_8_18(v14, v15, &v18);
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t ResumeDictationRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResumeDictationRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ResumeDictationRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_21() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ResumeDictationRequestMessage.Builder.requestId.getter()
{
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.prefixText.getter()
{
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.prefixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.postfixText.getter()
{
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.postfixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.selectedText.getter()
{
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.selectedText.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_223193D40()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ResumeDictationRequestMessage(0);
  v1 = objc_msgSendSuper2(&v4, sel_description);
  v2 = sub_2232000C4();

  return v2;
}

id sub_223193DC4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t sub_223193E64()
{
}

id ResumeDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResumeDictationRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223193F58()
{
  result = qword_27D059D08;
  if (!qword_27D059D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D08);
  }

  return result;
}

uint64_t sub_223194050(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for ResumeDictationRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_223194210()
{
  result = qword_27D059D28;
  if (!qword_27D059D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D28);
  }

  return result;
}

unint64_t sub_223194268()
{
  result = qword_27D059D30;
  if (!qword_27D059D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D30);
  }

  return result;
}

unint64_t sub_2231942C0()
{
  result = qword_27D059D38;
  if (!qword_27D059D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D38);
  }

  return result;
}

id RewrittenUtteranceCandidateMessage.originalUserInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput + 8);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_223194344(v2, v3, v4);
}

id sub_223194344(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t RewrittenUtteranceCandidateMessage.siriXRedirectContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_22311ACA4(v3, v4, v5);
}

uint64_t RewrittenUtteranceCandidateMessage.RewriteReason.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_223200464();

  *a3 = v4 != 0;
  return result;
}

id RewrittenUtteranceCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RewrittenUtteranceCandidateMessage.init(build:)(v1);
}

id RewrittenUtteranceCandidateMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v6[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  OUTLINED_FUNCTION_10_15(v6[9]);
  OUTLINED_FUNCTION_10_15(v6[10]);
  OUTLINED_FUNCTION_10_15(v6[11]);
  OUTLINED_FUNCTION_10_15(v6[12]);
  OUTLINED_FUNCTION_10_15(v6[13]);
  v11 = &v8[v6[14]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = -1;
  v8[v6[15]] = 1;
  v8[v6[16]] = 1;
  v12 = &v8[v6[17]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -1;
  v13 = v6[18];
  v8[v13] = 1;
  a1(v8);
  v14 = v12[16];
  if (v14 == 255 || (v8[v13] & 1) != 0)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446210;
      v20 = sub_2230F7898(ObjectType);
      v22 = sub_2231A5D38(v20, v21, &v34);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing required fields", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DD6780](v19, -1, -1);
      MEMORY[0x223DD6780](v18, -1, -1);
    }

    sub_2231947E0(v8);
    type metadata accessor for RewrittenUtteranceCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v24 = *v12;
    v25 = *(v12 + 1);
    v26 = v2 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput;
    *v26 = *v12;
    *(v26 + 1) = v25;
    v26[16] = v14 & 1;
    v27 = *v11;
    v28 = *(v11 + 1);
    v29 = v2 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext;
    *v29 = *v11;
    *(v29 + 1) = v28;
    v30 = v11[16];
    v29[16] = v30;
    sub_223194344(v24, v25, v14 & 1);
    sub_223195A48(v24, v25, v14);
    sub_22311ACA4(v27, v28, v30);
    v23 = sub_2231DE764(v2, v8);
    v31 = v23;
    sub_223195A60(v24, v25, v14);
    if (v23)
    {
    }

    sub_2231947E0(v8);
  }

  return v23;
}

uint64_t sub_2231947E0(uint64_t a1)
{
  v2 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22319485C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v8 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  v9 = v8[6];
  v10 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  sub_2230DAEC8(a2 + v9, a1 + v10[6]);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_2_31();

  *v3 = v2;
  v3[1] = v9;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_2_31();

  *v3 = v2;
  v3[1] = v9;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_2_31();

  *v3 = v2;
  v3[1] = v9;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_2_31();

  *v3 = v2;
  v3[1] = v9;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_2_31();

  *v3 = v2;
  v3[1] = v9;
  *(a1 + v10[12]) = *(a2 + v8[13]);
  *(a1 + v10[13]) = *(a2 + v8[14]);
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.sessionId.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_13_11() + 24);

  return sub_2230D1480(v2, v0);
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_22() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.tcuId.getter()
{
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_13_11() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.utterance.getter()
{
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.siriXRedirectContext.getter()
{
  v0 = OUTLINED_FUNCTION_13_11();
  v1 = OUTLINED_FUNCTION_9_23(*(v0 + 48));

  return sub_22311ACA4(v1, v2, v3);
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.siriXRedirectContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0) + 48);
  result = sub_22311BC80(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correctionOutcome.getter()
{
  result = OUTLINED_FUNCTION_13_11();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correctionOutcome.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correction.getter()
{
  result = OUTLINED_FUNCTION_13_11();
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

id RewrittenUtteranceCandidateMessage.Builder.originalUserInput.getter()
{
  v0 = OUTLINED_FUNCTION_13_11();
  v1 = OUTLINED_FUNCTION_9_23(*(v0 + 60));

  return sub_223195A48(v1, v2, v3);
}

void RewrittenUtteranceCandidateMessage.Builder.originalUserInput.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0) + 60);
  sub_223195A60(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.rewriteReason.getter()
{
  result = OUTLINED_FUNCTION_13_11();
  *v0 = *(v1 + *(result + 64));
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.rewriteReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t sub_2231951A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000223224FF0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5265746972776572 && a2 == 0xED00006E6F736165;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000223220F90 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2231952CC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x5265746972776572;
  }

  return 0xD000000000000014;
}

uint64_t sub_223195344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231951A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319536C(uint64_t a1)
{
  v2 = sub_223195A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231953A8(uint64_t a1)
{
  v2 = sub_223195A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RewrittenUtteranceCandidateMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D40, &qword_223216BE8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223195A88();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v19 = 0;
    sub_223195ADC();
    OUTLINED_FUNCTION_4_29();
    sub_223200554();
    OUTLINED_FUNCTION_16_10(v18);
    LOBYTE(v17[0]) = 1;
    sub_2232004F4();
    v11 = sub_223200464();

    if (!v11)
    {
      v19 = 2;
      sub_22311BCAC();
      OUTLINED_FUNCTION_4_29();
      sub_2232004C4();
      OUTLINED_FUNCTION_16_10(v18);
      sub_2230F7158(a1, v17);
      v6 = TextBasedTRPCandidateMessage.init(from:)(v17);
      v15 = OUTLINED_FUNCTION_2();
      v16(v15);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v6;
    }

    sub_2230F9E38();
    swift_allocError();
    *v12 = 0xD00000000000001CLL;
    *(v12 + 8) = 0x8000000223224F50;
    *(v12 + 16) = 0;
    swift_willThrow();
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    v6 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_3_26(v3 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput);
    sub_223195A78(v7, v8, v9);
  }

  type metadata accessor for RewrittenUtteranceCandidateMessage(0);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_223195744(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D50, &qword_223216BF0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223195A88();
  sub_2232007A4();
  v16 = OUTLINED_FUNCTION_3_26(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput);
  v17 = v10;
  v18 = v11;
  v19 = 0;
  sub_223194344(v16, v10, v11);
  sub_223195B30();
  OUTLINED_FUNCTION_12_13();
  sub_223200654();
  sub_223195A78(v16, v17, v18);
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_2232005F4();
    v16 = OUTLINED_FUNCTION_3_26(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext);
    v17 = v12;
    v18 = v13;
    v19 = 2;
    sub_22311ACA4(v16, v12, v13);
    sub_22311BD00();
    OUTLINED_FUNCTION_12_13();
    sub_2232005E4();
    sub_22311BC80(v16, v17, v18);
    sub_2231DF660(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_223195974()
{
  v1 = OUTLINED_FUNCTION_3_26(v0 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput);
  sub_223195A78(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_3_26(v0 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext);

  return sub_22311BC80(v4, v5, v6);
}

id RewrittenUtteranceCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RewrittenUtteranceCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_223195A48(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_223194344(result, a2, a3 & 1);
  }

  return result;
}

void sub_223195A60(void *result, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_223195A78(result, a2, a3 & 1);
  }
}

void sub_223195A78(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_223195A88()
{
  result = qword_280FCBFA0;
  if (!qword_280FCBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBFA0);
  }

  return result;
}

unint64_t sub_223195ADC()
{
  result = qword_27D059D48;
  if (!qword_27D059D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D48);
  }

  return result;
}

unint64_t sub_223195B30()
{
  result = qword_280FCB250;
  if (!qword_280FCB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB250);
  }

  return result;
}

unint64_t sub_223195B88()
{
  result = qword_27D059D58;
  if (!qword_27D059D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RewrittenUtteranceCandidateMessage.RewriteReason(_BYTE *result, int a2, int a3)
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

uint64_t sub_223195D40(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCB350, &type metadata for SiriXRedirectContext);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCD5C0, &type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCD538, &type metadata for NLRoutingDecisionMessage.CorrectionOutcome);
            v2 = v13;
            if (v14 <= 0x3F)
            {
              sub_2230D525C(319, &qword_280FCB248, &type metadata for SiriUserInput);
              v2 = v15;
              if (v16 <= 0x3F)
              {
                sub_2230D525C(319, &qword_280FCBF88, &type metadata for RewrittenUtteranceCandidateMessage.RewriteReason);
                v2 = v17;
                if (v18 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for RewrittenUtteranceCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_223195FFC()
{
  result = qword_27D059D60;
  if (!qword_27D059D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D60);
  }

  return result;
}

unint64_t sub_223196054()
{
  result = qword_280FCBF90;
  if (!qword_280FCBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBF90);
  }

  return result;
}

unint64_t sub_2231960AC()
{
  result = qword_280FCBF98;
  if (!qword_280FCBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBF98);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_16_10@<Q0>(unsigned __int8 a1@<W8>)
{
  v4 = (v2 + v1);
  result = *(v3 - 128);
  *v4 = result;
  v4[1].n128_u8[0] = a1;
  return result;
}

void *RootRequestCompletedMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t RootRequestCompletedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RootRequestCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootRequestCompletedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootRequestCompletedMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RootRequestCompletedMessage.Builder(0) + 28));

  return v1;
}

id RootRequestCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootRequestCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id RootRequestSummaryMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootRequestSummaryMessage.init(build:)(v1);
}

id RootRequestSummaryMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for RootRequestSummaryMessage.Builder(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0;
  v7[8] = 15;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v8 = *(v5 + 36);
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[*(v5 + 40)];
  *v10 = 0;
  *(v10 + 1) = 0;
  a1(v7);
  v11 = *v7;
  if (*v7)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RootRequestSummaryMessage_turnSummaries) = v11;
    MEMORY[0x28223BE20](v11);
    *(&v22 - 2) = v7;

    v12 = RequestMessageBase.init(build:)(sub_223197D3C);
    sub_22319679C(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v13 = sub_223200014();
    __swift_project_value_buffer(v13, qword_280FCE830);
    v14 = sub_223200004();
    v15 = sub_223200254();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v18 = sub_2230F7898(ObjectType);
      v20 = sub_2231A5D38(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2230CE000, v14, v15, "Could not build %{public}s: Builder has missing required fields", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_22319679C(v7);
    type metadata accessor for RootRequestSummaryMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

uint64_t sub_22319679C(uint64_t a1)
{
  v2 = type metadata accessor for RootRequestSummaryMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223196818(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for RootRequestSummaryMessage.Builder(0);
  v7 = *(v6 + 28);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 32));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_223196930()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for RootRequestSummaryMessage(0);
  v1 = objc_msgSendSuper2(&v7, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v8 = v2;
  v9 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000012, 0x8000000223225090);
  v5 = MEMORY[0x223DD5B40](*&v0[OBJC_IVAR____TtC16SiriMessageTypes25RootRequestSummaryMessage_turnSummaries], &type metadata for TurnSummary);
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](4073769, 0xE300000000000000);
  return v8;
}

uint64_t RootRequestSummaryMessage.Builder.turnSummaries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RootRequestSummaryMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t RootRequestSummaryMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootRequestSummaryMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t RootRequestSummaryMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RootRequestSummaryMessage.Builder(0) + 28);

  return sub_2230D4E04(a1, v3);
}

uint64_t RootRequestSummaryMessage.Builder.requestId.getter()
{
  type metadata accessor for RootRequestSummaryMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootRequestSummaryMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootRequestSummaryMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_223196CC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D6D75536E727574 && a2 == 0xED00007365697261)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223196D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223196CC4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223196D98(uint64_t a1)
{
  v2 = sub_223197D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223196DD4(uint64_t a1)
{
  v2 = sub_223197D44();

  return MEMORY[0x2821FE720](a1, v2);
}

void RootRequestSummaryMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D68, &qword_223216F08);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223197D44();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for RootRequestSummaryMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D78, &qword_223216F10);
    sub_223197DEC(&qword_27D059D80, sub_223197D98, MEMORY[0x277D83978]);
    sub_223200554();
    *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RootRequestSummaryMessage_turnSummaries) = v7[0];
    sub_2230F7158(v3, v7);
    RequestMessageBase.init(from:)(v7);
    v5 = OUTLINED_FUNCTION_2();
    v6(v5);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223197098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D90, &qword_223216F18);
  OUTLINED_FUNCTION_9();
  v26 = v25;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_223197D44();
  sub_2232007A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D78, &qword_223216F10);
  sub_223197DEC(&qword_27D059D98, sub_223197E64, MEMORY[0x277D83948]);
  sub_223200654();
  if (!v20)
  {
    sub_2230D77A8(v23);
  }

  (*(v26 + 8))(v21, v24);
  OUTLINED_FUNCTION_9_0();
}

id RootRequestSummaryMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootRequestSummaryMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TurnSummary.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  a1(&v14);
  v3 = v15;
  v4 = v16;
  if (v15)
  {
    if (v16)
    {
      *a2 = v14;
      a2[1] = v3;
      a2[2] = v4;
      return;
    }
  }

  else
  {
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_280FCA778);
  }

  v5 = sub_223200014();
  __swift_project_value_buffer(v5, qword_280FCE830);
  v6 = sub_223200004();
  v7 = sub_223200254();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DA8, &qword_223216F20);
    v10 = sub_223200104();
    v12 = sub_2231A5D38(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2230CE000, v6, v7, "Could not build %{public}s: Builder has missing required fields", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t TurnSummary.Builder.executedQuery.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TurnSummary.Builder.addViewsList.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void TurnSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DB0, &qword_223216F28);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_223197EB8();
  sub_223200794();
  if (!v20)
  {
    LOBYTE(v43[0]) = 0;
    v26 = sub_2232004F4();
    v28 = v27;
    LOBYTE(a10) = 1;
    sub_2230FB7A0();
    sub_223200554();
    v39 = v26;
    v40 = v24;
    v30 = v43[0];
    v29 = v43[1];
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C8, &qword_223214510);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_223214360;
    *(v31 + 32) = sub_2230FB7F4(0, &qword_27D0598D0, 0x277CBEA60);
    *(v31 + 40) = sub_2230FB7F4(0, &qword_27D059088, 0x277D479E8);
    v42 = v29;
    sub_223200274();
    v41 = v30;

    if (v43[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DC0, &qword_223216F30);
      v32 = v39;
      v33 = v40;
      if (swift_dynamicCast())
      {
        v34 = a10;
        sub_2230D94DC(v41, v42);
LABEL_11:
        v37 = OUTLINED_FUNCTION_1_24();
        v38(v37);
        *v33 = v32;
        v33[1] = v28;
        v33[2] = v34;

        __swift_destroy_boxed_opaque_existential_1(v22);

        goto LABEL_4;
      }

      v35 = v41;
      v36 = v29;
    }

    else
    {
      sub_22318118C(v43);
      v33 = v40;
      v35 = v30;
      v36 = v29;
      v32 = v39;
    }

    sub_2230D94DC(v35, v36);
    v34 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
LABEL_4:
  OUTLINED_FUNCTION_9_0();
}

void TurnSummary.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v20 = v1;
  v3 = v2;
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DC8, &qword_223216F38);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v19 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223197EB8();
  sub_2232007A4();
  LOBYTE(v22[0]) = 0;
  v10 = v20;
  sub_2232005F4();
  if (!v10)
  {
    v11 = objc_opt_self();
    sub_2230FB7F4(0, &qword_27D059088, 0x277D479E8);
    v12 = sub_2232001C4();
    v22[0] = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v22];

    v14 = v22[0];
    if (v13)
    {
      v15 = sub_2231FFD24();
      v17 = v16;

      v22[0] = v15;
      v22[1] = v17;
      v21 = 1;
      sub_2230D7754();
      sub_223200654();
      (*(v6 + 8))(v9, v4);
      sub_2230D94DC(v15, v17);
      goto LABEL_5;
    }

    v18 = v14;
    sub_2231FFD04();

    swift_willThrow();
  }

  (*(v6 + 8))(v9, v4);
LABEL_5:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223197AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747563657865 && a2 == 0xED00007972657551;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7377656956646461 && a2 == 0xEC0000007473694CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223197BA4(char a1)
{
  if (a1)
  {
    return 0x7377656956646461;
  }

  else
  {
    return 0x6465747563657865;
  }
}

uint64_t sub_223197BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223197AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223197C20(uint64_t a1)
{
  v2 = sub_223197EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223197C5C(uint64_t a1)
{
  v2 = sub_223197EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static TurnSummary.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_2_1();

  return sub_22315F180(v3, v4);
}

unint64_t sub_223197D44()
{
  result = qword_27D059D70;
  if (!qword_27D059D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D70);
  }

  return result;
}

unint64_t sub_223197D98()
{
  result = qword_27D059D88;
  if (!qword_27D059D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D88);
  }

  return result;
}

uint64_t sub_223197DEC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059D78, &qword_223216F10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223197E64()
{
  result = qword_27D059DA0;
  if (!qword_27D059DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059DA0);
  }

  return result;
}

unint64_t sub_223197EB8()
{
  result = qword_27D059DB8;
  if (!qword_27D059DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059DB8);
  }

  return result;
}

uint64_t sub_223197FB0(uint64_t a1)
{
  sub_2231980A0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2230F6D30(319);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2231980A0(uint64_t a1)
{
  if (!qword_27D059DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059D78, &qword_223216F10);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D059DF0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TurnSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RootRequestSummaryMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231982B0()
{
  result = qword_27D059DF8;
  if (!qword_27D059DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059DF8);
  }

  return result;
}

unint64_t sub_223198308()
{
  result = qword_27D059E00;
  if (!qword_27D059E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E00);
  }

  return result;
}

unint64_t sub_223198360()
{
  result = qword_27D059E08;
  if (!qword_27D059E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E08);
  }

  return result;
}

unint64_t sub_2231983B8()
{
  result = qword_27D059E10;
  if (!qword_27D059E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E10);
  }

  return result;
}

unint64_t sub_223198410()
{
  result = qword_27D059E18;
  if (!qword_27D059E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E18);
  }

  return result;
}

unint64_t sub_223198468()
{
  result = qword_27D059E20;
  if (!qword_27D059E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E20);
  }

  return result;
}

uint64_t sub_22319850C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x495052547473616CLL && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223222870 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231985E4(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x495052547473616CLL;
  }
}

uint64_t sub_22319862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319850C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223198654(uint64_t a1)
{
  v2 = sub_223199650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223198690(uint64_t a1)
{
  v2 = sub_223199650();

  return MEMORY[0x2821FE720](a1, v2);
}

id RootStoppedListeningForSpeechContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootStoppedListeningForSpeechContinuationMessage.init(build:)(v1);
}

id RootStoppedListeningForSpeechContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v46 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v44 = v7;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v13[v17] = 3;
  a1(v13);
  v18 = *v13;
  if (v18 == 15)
  {
    goto LABEL_13;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v33 = sub_223200014();
    __swift_project_value_buffer(v33, qword_280FCE830);
    v34 = sub_223200004();
    v35 = sub_223200254();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136446210;
      v38 = sub_2230F7898(ObjectType);
      v40 = sub_2231A5D38(v38, v39, &v47);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DD6780](v37, -1, -1);
      MEMORY[0x223DD6780](v36, -1, -1);
    }

    sub_223198BB8(v13);
    type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v20;
  v22 = v43;
  v21 = v44;
  (*(v44 + 32))(v43, v5, v6);
  if (!*(v15 + 1) || (v23 = *(v16 + 1)) == 0)
  {
    (*(v21 + 8))(v22, v6);
    goto LABEL_13;
  }

  v24 = *v16;
  v25 = v22;
  v26 = v46;
  v27 = (v46 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId);
  *v27 = v24;
  v27[1] = v23;
  v28 = v13[v17];
  if (v28 == 3)
  {
    LOBYTE(v28) = 1;
  }

  *(v26 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_mitigationDecision) = v28;
  MEMORY[0x28223BE20](v23);
  *(&v42 - 48) = v18;
  *(&v42 - 5) = v42;
  *(&v42 - 4) = v19;
  *(&v42 - 3) = v25;
  *(&v42 - 2) = v29;
  *(&v42 - 1) = v30;

  v31 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v32 = v31;
  sub_223198BB8(v13);
  if (v31)
  {
  }

  (*(v44 + 8))(v25, v6);
  return v31;
}

uint64_t sub_223198BB8(uint64_t a1)
{
  v2 = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootStoppedListeningForSpeechContinuationMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E28, &qword_2232172A8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223199650();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId);
    *v7 = v5;
    v7[1] = v8;
    v13 = 1;
    sub_2231996A4();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_mitigationDecision) = v12[0];
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_223198F08(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E38, &qword_2232172B0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223199650();
  sub_2232007A4();
  v14 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_mitigationDecision);
    v12 = 1;
    sub_2231996F8();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_223199110()
{
  v1 = v0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.requestId.getter()
{
  type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.getter()
{
  type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

id RootStoppedListeningForSpeechContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223199650()
{
  result = qword_280FCB700;
  if (!qword_280FCB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB700);
  }

  return result;
}

unint64_t sub_2231996A4()
{
  result = qword_27D059E30;
  if (!qword_27D059E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E30);
  }

  return result;
}

unint64_t sub_2231996F8()
{
  result = qword_280FCA7A0;
  if (!qword_280FCA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA7A0);
  }

  return result;
}

uint64_t sub_2231997F4(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA790, &type metadata for SpeechDirectednessDecision);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for RootStoppedListeningForSpeechContinuationMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231999DC()
{
  result = qword_27D059E40;
  if (!qword_27D059E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E40);
  }

  return result;
}

unint64_t sub_223199A34()
{
  result = qword_280FCB6F0;
  if (!qword_280FCB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB6F0);
  }

  return result;
}

unint64_t sub_223199A8C()
{
  result = qword_280FCB6F8;
  if (!qword_280FCB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB6F8);
  }

  return result;
}

id RootStoppedListeningForTextContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootStoppedListeningForTextContinuationMessage.init(build:)(v1);
}

id RootStoppedListeningForTextContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a1(v13);
  v17 = *v13;
  if (v17 == 15)
  {
    goto LABEL_12;
  }

  v18 = *(v13 + 2);
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2230D69D4(v2);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898(ObjectType);
      v36 = sub_2231A5D38(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_223199FE4(v13);
    type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v39 = v19;
  v21 = v40;
  v20 = v41;
  (*(v40 + 32))(v41, v2, v6);
  if (!*(v15 + 1))
  {
    (*(v21 + 8))(v20, v6);
    goto LABEL_12;
  }

  v22 = *(v16 + 1);
  if (!v22)
  {
    (*(v21 + 8))(v41, v6);
    goto LABEL_12;
  }

  v23 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId);
  *v23 = *v16;
  v23[1] = v22;
  MEMORY[0x28223BE20](v22);
  *(&v38 - 48) = v17;
  *(&v38 - 5) = v39;
  *(&v38 - 4) = v18;
  v24 = v41;
  *(&v38 - 3) = v41;
  *(&v38 - 2) = v25;
  *(&v38 - 1) = v26;

  v27 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v28 = v27;
  sub_223199FE4(v13);
  if (v27)
  {
  }

  (*(v40 + 8))(v24, v6);
  return v27;
}

uint64_t sub_223199FE4(uint64_t a1)
{
  v2 = type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootStoppedListeningForTextContinuationMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E48, &qword_223217488);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319A9E4();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = RequestMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_22319A2A0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E58, &qword_223217490);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319A9E4();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_22319A450()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_23() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.requestId.getter()
{
  type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.lastTRPId.getter()
{
  type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_22319A818(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x495052547473616CLL && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22319A8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319A818(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22319A8E4(uint64_t a1)
{
  v2 = sub_22319A9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22319A920(uint64_t a1)
{
  v2 = sub_22319A9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

id RootStoppedListeningForTextContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22319A9E4()
{
  result = qword_27D059E50;
  if (!qword_27D059E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RootStoppedListeningForTextContinuationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22319AB88()
{
  result = qword_27D059E80;
  if (!qword_27D059E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E80);
  }

  return result;
}

unint64_t sub_22319ABE0()
{
  result = qword_27D059E88;
  if (!qword_27D059E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E88);
  }

  return result;
}

unint64_t sub_22319AC38()
{
  result = qword_27D059E90;
  if (!qword_27D059E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E90);
  }

  return result;
}

id RootTextBasedTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return RootTextBasedTRPCandidateMessage.init(build:)(v2, v0);
}

id RootTextBasedTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v72 = a1;
  v71 = a2;
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v65 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v68 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v69 = v13 - v12;
  v14 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v18 = (v17 - v16);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  v70 = v9;
  __swift_storeEnumTagSinglePayload(v17 - v16 + v19, 1, 1, v9);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v18[v15[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v18[v15[11]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v18[v15[12]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v18[v15[13]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = v15[14];
  v18[v25] = 1;
  v72(v18);
  if (*v18 == 15 || (v26 = *(v18 + 2)) == 0)
  {
    sub_22319B334(v18);
    goto LABEL_6;
  }

  LODWORD(v71) = *v18;
  v72 = v26;
  v64 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v8);
  v27 = v70;
  if (__swift_getEnumTagSinglePayload(v8, 1, v70) == 1)
  {
    sub_22319B334(v18);
    sub_2230D69D4(v8);
LABEL_6:
    type metadata accessor for RootTextBasedTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v30 = v68;
  (*(v68 + 32))(v69, v8, v27);
  v31 = *(v20 + 1);
  if (!v31 || (v32 = *(v21 + 1)) == 0 || (v33 = *(v24 + 1)) == 0 || !*(v23 + 1))
  {
    sub_22319B334(v18);
    (*(v30 + 8))(v69, v27);
    goto LABEL_6;
  }

  v62 = *(v23 + 1);
  v63 = v32;
  v34 = *v21;
  v60 = *v20;
  v61 = v34;
  v35 = *v23;
  v74 = *v24;
  v75 = v33;

  v36 = v65;
  sub_2231FFC74();
  sub_2230D1D30();
  v37 = sub_2232002E4();
  v39 = v38;
  (*(v66 + 8))(v36, v67);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v47 = sub_223200014();
    __swift_project_value_buffer(v47, qword_280FCE830);
    v48 = sub_223200004();
    v49 = sub_223200254();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v69;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2230CE000, v48, v49, "utterance is empty, can't create message", v52, 2u);
      MEMORY[0x223DD6780](v52, -1, -1);
    }

    sub_22319B334(v18);
    (*(v30 + 8))(v51, v70);
    goto LABEL_6;
  }

  v41 = v37;
  v42 = v73;
  v43 = (v73 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_utterance);
  *v43 = v41;
  v43[1] = v39;
  v44 = *(v22 + 1);
  if (v44)
  {
    v45 = *v22;
    v46 = *(v22 + 1);
  }

  else
  {
    v45 = 0;
    v46 = 0xE000000000000000;
  }

  v53 = v69;
  v54 = (v42 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_tcuId);
  *v54 = v45;
  v54[1] = v46;
  *(v42 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_correctionOutcome) = v18[v25];
  MEMORY[0x28223BE20](v44);
  *(&v60 - 80) = v71;
  v55 = v72;
  *(&v60 - 9) = v64;
  *(&v60 - 8) = v55;
  v57 = v60;
  v56 = v61;
  *(&v60 - 7) = v53;
  *(&v60 - 6) = v57;
  *(&v60 - 5) = v31;
  *(&v60 - 4) = v56;
  v58 = v62;
  *(&v60 - 3) = v63;
  *(&v60 - 2) = v35;
  *(&v60 - 1) = v58;

  v28 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);

  v59 = v28;
  sub_22319B334(v18);
  if (v28)
  {
  }

  (*(v30 + 8))(v53, v70);
  return v28;
}

uint64_t sub_22319B334(uint64_t a1)
{
  v2 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootTextBasedTRPCandidateMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E98, &qword_223217638);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319C150();
  sub_223200794();
  if (v2)
  {
    v12 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RootTextBasedTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_8();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_utterance);
    *v7 = v5;
    v7[1] = v8;
    v9 = OUTLINED_FUNCTION_9_8();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_tcuId);
    *v10 = v9;
    v10[1] = v11;
    LOBYTE(v15[0]) = 2;
    sub_2231659CC();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_correctionOutcome) = 0;
    sub_2230F7158(a1, v15);
    v12 = TRPCandidateRequestMessageBase.init(from:)(v15);
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t sub_22319B6D0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EA8, &qword_223217640);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319C150();
  sub_2232007A4();
  v15 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v14 = 1;
    sub_2232005F4();
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_correctionOutcome);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EB0, &qword_223217648);
    sub_22319C1A4();
    sub_223200654();
    sub_2231E5494(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_24() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.tcuId.getter()
{
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.utterance.getter()
{
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.correctionOutcome.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.correctionOutcome.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t sub_22319BE2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000002232241B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22319BF48(char a1)
{
  if (!a1)
  {
    return 0x636E617265747475;
  }

  if (a1 == 1)
  {
    return 0x6449756374;
  }

  return 0xD000000000000011;
}

uint64_t sub_22319BFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319BE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319BFD4(uint64_t a1)
{
  v2 = sub_22319C150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22319C010(uint64_t a1)
{
  v2 = sub_22319C150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22319C07C()
{
}

id RootTextBasedTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootTextBasedTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22319C150()
{
  result = qword_27D059EA0;
  if (!qword_27D059EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EA0);
  }

  return result;
}

unint64_t sub_22319C1A4()
{
  result = qword_27D059EB8;
  if (!qword_27D059EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059EB0, &qword_223217648);
    sub_223165978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EB8);
  }

  return result;
}

uint64_t sub_22319C2D8(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCD5C0, &type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for RootTextBasedTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22319C4E4()
{
  result = qword_27D059EE0;
  if (!qword_27D059EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EE0);
  }

  return result;
}

unint64_t sub_22319C53C()
{
  result = qword_27D059EE8;
  if (!qword_27D059EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EE8);
  }

  return result;
}

unint64_t sub_22319C594()
{
  result = qword_27D059EF0;
  if (!qword_27D059EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EF0);
  }

  return result;
}

id RootTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootTRPCandidateMessage.init(build:)(v1);
}

id RootTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v47 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_2231FFDA4();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RootTRPCandidateMessage.Builder(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 15;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v12 = v9[8];
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v6);
  v13 = &v11[v9[9]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v11[v9[10]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v9[12];
  *&v11[v16] = 0;
  a1(v11);
  v17 = *v11;
  if (v17 == 15)
  {
    goto LABEL_13;
  }

  v18 = *(v11 + 2);
  if (!v18)
  {
    goto LABEL_13;
  }

  v43 = *(v11 + 1);
  sub_2230D1480(&v11[v12], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v33 = sub_223200004();
    v34 = sub_223200254();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136446210;
      v37 = sub_2230F7898(ObjectType);
      v39 = sub_2231A5D38(v37, v38, &v48);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223DD6780](v36, -1, -1);
      MEMORY[0x223DD6780](v35, -1, -1);
    }

    sub_22319CB00(v11);
    type metadata accessor for RootTRPCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v42 = v18;
  v20 = v44;
  v19 = v45;
  (*(v45 + 32))(v44, v5, v6);
  if (!*(v13 + 1) || !*(v14 + 1) || !*(v15 + 1) || (v21 = *&v11[v16]) == 0)
  {
    (*(v19 + 8))(v20, v6);
    goto LABEL_13;
  }

  v22 = v20;
  *(v47 + OBJC_IVAR____TtC16SiriMessageTypes23RootTRPCandidateMessage_tcuToContextList) = v21;
  MEMORY[0x28223BE20](v21);
  *(&v41 - 80) = v17;
  v23 = v42;
  *(&v41 - 9) = v43;
  *(&v41 - 8) = v23;
  *(&v41 - 7) = v20;
  *(&v41 - 6) = v24;
  *(&v41 - 5) = v26;
  *(&v41 - 4) = v25;
  *(&v41 - 3) = v27;
  *(&v41 - 2) = v28;
  *(&v41 - 1) = v29;

  v30 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v31 = v30;
  sub_22319CB00(v11);
  if (v30)
  {
  }

  (*(v45 + 8))(v22, v6);
  return v30;
}

uint64_t sub_22319CB00(uint64_t a1)
{
  v2 = type metadata accessor for RootTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootTRPCandidateMessage.init(from:)(void *a1)
{
  v2 = v1;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Error: Attempted to serialize an instance of TRPCandidateRequestMessage, which is not currently codable. Conversation Session State will be empty.", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23RootTRPCandidateMessage_tcuToContextList) = MEMORY[0x277D84F90];
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_22319CD58()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for RootTRPCandidateMessage(0);
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232252D0);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes23RootTRPCandidateMessage_tcuToContextList];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EF8, &qword_223217808);
  v7 = MEMORY[0x223DD5B40](v5, v6);
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t RootTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RootTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootTRPCandidateMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 28));

  return v1;
}

uint64_t RootTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t RootTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 32));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 36));

  return v1;
}

uint64_t RootTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.tcuToContextList.getter()
{
  type metadata accessor for RootTRPCandidateMessage.Builder(0);
}

uint64_t RootTRPCandidateMessage.Builder.tcuToContextList.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_32() + 40);

  *(v1 + v2) = v0;
  return result;
}

id RootTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22319D3AC(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_22319D4C4(319);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_22319D4C4(uint64_t a1)
{
  if (!qword_280FCA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059F00, qword_223217870);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA448);
    }
  }
}

id RunPommesRequestMessage.init(build:)(uint64_t (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for RunPommesRequestMessage.Builder(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 15;
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  v8 = *(v5 + 40);
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[*(v5 + 44)];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = a1(v7);
  v12 = *v7;
  if (*v7 && (v13 = *(v7 + 1)) != 0)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_command) = v12;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo) = v13;
    MEMORY[0x28223BE20](v11);
    *(&v30 - 2) = v7;
    v15 = v14;
    v16 = v12;
    v17 = v15;
    v18 = v16;
    v19 = RequestMessageBase.init(build:)(sub_22319E748);
    v20 = v19;

    if (v19)
    {
    }

    sub_22319D8D4(v7);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v21 = sub_223200014();
    __swift_project_value_buffer(v21, qword_280FCE830);
    v22 = sub_223200004();
    v23 = sub_223200254();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136446210;
      v26 = sub_2230F7898(ObjectType);
      v28 = sub_2231A5D38(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2230CE000, v22, v23, "Could not build %{public}s: Builder has missing required fields", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223DD6780](v25, -1, -1);
      MEMORY[0x223DD6780](v24, -1, -1);
    }

    sub_22319D8D4(v7);
    type metadata accessor for RunPommesRequestMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v19;
}

uint64_t sub_22319D8D4(uint64_t a1)
{
  v2 = type metadata accessor for RunPommesRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22319D950(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for RunPommesRequestMessage.Builder(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 36));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

id RunPommesRequestMessage.Builder.command.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *RunPommesRequestMessage.Builder.commandExecutionInfo.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RunPommesRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RunPommesRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RunPommesRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 32);

  return sub_2230D1480(v3, a1);
}

uint64_t RunPommesRequestMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 32);

  return sub_2230D4E04(a1, v3);
}

uint64_t RunPommesRequestMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 36));

  return v1;
}

uint64_t RunPommesRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22319DD48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223222960 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22319DE18(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x646E616D6D6F63;
  }
}

uint64_t sub_22319DE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319DD48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319DE84(uint64_t a1)
{
  v2 = sub_22319E750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22319DEC0(uint64_t a1)
{
  v2 = sub_22319E750();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RunPommesRequestMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F08, &qword_223217898);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319E750();
  sub_223200794();
  v6 = &unk_27D080000;
  if (v2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v24 = v1;
    v27 = 0;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_33(MEMORY[0x277CC9318]);
    v9 = v25;
    v10 = v26;
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D059F18, 0x277D476A0);
    v11 = sub_223200264();
    if (v11)
    {
      *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_command) = v11;
      v27 = 1;
      OUTLINED_FUNCTION_2_33(MEMORY[0x277CC9318]);
      v15 = v25;
      sub_2230FB7F4(0, &qword_280FCA3B8, 0x277CEF210);
      v16 = sub_223200264();
      v23 = v26;
      v6 = &unk_27D080000;
      if (v16)
      {
        *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo) = v16;
        sub_2230F7158(a1, &v25);
        v8 = RequestMessageBase.init(from:)(&v25);
        v21 = OUTLINED_FUNCTION_1_10();
        v22(v21);
        OUTLINED_FUNCTION_5_21();
        sub_2230D94DC(v15, v23);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v8;
      }

      sub_2230F9E38();
      swift_allocError();
      *v18 = 0xD00000000000003ELL;
      *(v18 + 8) = 0x80000002232253B0;
      *(v18 + 16) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_5_21();
      sub_2230D94DC(v15, v23);
      v19 = OUTLINED_FUNCTION_1_10();
      v20(v19);
      v8 = 0;
      v7 = 1;
      v3 = v24;
    }

    else
    {
      sub_2230F9E38();
      swift_allocError();
      *v12 = 0xD000000000000031;
      *(v12 + 8) = 0x8000000223225370;
      *(v12 + 16) = 0;
      swift_willThrow();
      sub_2230D94DC(v9, v10);
      v13 = OUTLINED_FUNCTION_1_10();
      v14(v13);
      v7 = 0;
      v8 = 0;
      v6 = &unk_27D080000;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v7)
  {
  }

  type metadata accessor for RunPommesRequestMessage(0);
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_22319E3BC(void *a1)
{
  v3 = v1;
  v32 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F20, &qword_2232178A0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319E750();
  sub_2232007A4();
  v11 = objc_opt_self();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_command);
  v30 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v30];
  v14 = v30;
  if (!v13)
  {
    v24 = v14;
    sub_2231FFD04();

LABEL_7:
    swift_willThrow();
    return (*(v7 + 8))(v10, v5);
  }

  v28 = v3;
  v15 = sub_2231FFD24();
  v17 = v16;

  v30 = v15;
  v31 = v17;
  v29 = 0;
  sub_2230D7754();
  OUTLINED_FUNCTION_3_27();
  sub_2230D94DC(v30, v31);
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  v18 = *(v28 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo);
  v30 = 0;
  v19 = [v11 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v30];
  v20 = v30;
  if (!v19)
  {
    v26 = v20;
    sub_2231FFD04();

    goto LABEL_7;
  }

  v21 = sub_2231FFD24();
  v23 = v22;

  v30 = v21;
  v31 = v23;
  v29 = 1;
  OUTLINED_FUNCTION_3_27();
  sub_2230D94DC(v30, v31);
  sub_2230D77A8(a1);
  return (*(v7 + 8))(v10, v5);
}

void sub_22319E684()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo);
}

id RunPommesRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunPommesRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22319E750()
{
  result = qword_27D059F10;
  if (!qword_27D059F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F10);
  }

  return result;
}

uint64_t sub_22319E848(uint64_t a1)
{
  sub_22310AA40(319, &qword_27D059F38, &qword_27D059F18, 0x277D476A0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22310AA40(319, &qword_280FCA3B0, &qword_280FCA3B8, 0x277CEF210);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230F6D30(319);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for RunPommesRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22319EA64()
{
  result = qword_27D059F40;
  if (!qword_27D059F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F40);
  }

  return result;
}

unint64_t sub_22319EABC()
{
  result = qword_27D059F48;
  if (!qword_27D059F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F48);
  }

  return result;
}

unint64_t sub_22319EB14()
{
  result = qword_27D059F50;
  if (!qword_27D059F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F50);
  }

  return result;
}

id RunPommesResponseMessage.pommesResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_223171E0C(v2, v3);
}

uint64_t RunPommesResponseMessage.pommesSearchReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason;
  sub_2231FFF44();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id RunPommesResponseMessage.userInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_223194344(v2, v3, v4);
}

uint64_t RunPommesResponseMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId);
  a1[1] = v2;
}

__n128 RunPommesResponseMessage.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes + 16);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes + 20);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes);
  *a1 = result;
  a1[1].n128_u16[2] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t static RunPommesResponseMessage.UserInput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if ((v2 & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      sub_2230FB7F4(0, &qword_27D059F58, 0x277D82BB8);
      v27 = OUTLINED_FUNCTION_24();
      sub_223194344(v27, v28, 0);
      v29 = OUTLINED_FUNCTION_13();
      sub_223194344(v29, v30, 0);
      v5 = sub_2232002B4();
      v31 = OUTLINED_FUNCTION_13();
      sub_223195A78(v31, v32, 0);
      v14 = OUTLINED_FUNCTION_24();
      v16 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((a2[2] & 1) == 0)
  {
LABEL_9:
    v17 = OUTLINED_FUNCTION_24();
    sub_223194344(v17, v18, v3);
    v19 = OUTLINED_FUNCTION_13();
    sub_223194344(v19, v20, v2);
    v21 = OUTLINED_FUNCTION_13();
    sub_223195A78(v21, v22, v2);
    v23 = OUTLINED_FUNCTION_24();
    sub_223195A78(v23, v24, v3);
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v25 = 1;
    v33 = OUTLINED_FUNCTION_4_31();
    sub_223194344(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_4_31();
    sub_223194344(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_4_31();
    sub_223195A78(v39, v40, v41);
    v42 = OUTLINED_FUNCTION_4_31();
    sub_223195A78(v42, v43, v44);
    return v25;
  }

  OUTLINED_FUNCTION_13();
  v5 = sub_2232006B4();
  v6 = OUTLINED_FUNCTION_24();
  sub_223194344(v6, v7, 1);
  v8 = OUTLINED_FUNCTION_4_31();
  sub_223194344(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_4_31();
  sub_223195A78(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_24();
  v16 = 1;
LABEL_12:
  sub_223195A78(v14, v15, v16);
  return v5 & 1;
}

id RunPommesResponseMessage.__allocating_init(build:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_13();
  return RunPommesResponseMessage.init(build:)(v2);
}

id RunPommesResponseMessage.init(build:)(void (*a1)(uint64_t))
{
  v68 = a1;
  v69 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v70 = (&v62 - v3);
  v4 = sub_2231FFF44();
  OUTLINED_FUNCTION_9();
  v65 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v67 = v8 - v7;
  v9 = type metadata accessor for RunPommesResponseMessage.Builder(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v13 = v12 - v11;
  *v13 = 15;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = v10[8];
  v15 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, v15);
  v16 = (v13 + v10[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = v13 + v10[10];
  *v17 = 0;
  *(v17 + 8) = -1;
  v18 = v10[11];
  __swift_storeEnumTagSinglePayload(v13 + v18, 1, 1, v4);
  v19 = v10[12];
  *(v13 + v19) = 0;
  v20 = v13 + v10[13];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = -1;
  v21 = (v13 + v10[14]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v13 + v10[15];
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 20) = 2;
  *(v22 + 16) = 0;
  v68(v13);
  v23 = *(v17 + 8);
  if (v23 != 255)
  {
    v24 = *v17;
    v25 = v70;
    sub_2230D3008(v13 + v18, v70, &qword_27D0591A8, &unk_223211810);
    if (__swift_getEnumTagSinglePayload(v25, 1, v4) == 1)
    {
      sub_2231A1390(v70);
    }

    else
    {
      v26 = v4;
      v27 = v65;
      v28 = v67;
      (*(v65 + 32))(v67, v70, v26);
      v29 = *(v13 + v19);
      if (v29)
      {
        v30 = *(v20 + 16);
        if (v30 != 255)
        {
          v31 = v24;
          v68 = v24;
          v34 = v20;
          v32 = *v20;
          v64 = *(v34 + 8);
          v33 = v64;
          v35 = v27;
          v36 = v69;
          v37 = v69 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult;
          *v37 = v31;
          *(v37 + 8) = v23 & 1;
          v38 = (*(v35 + 16))(v36 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason, v67, v26);
          v70 = &v62;
          *(v36 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_nlResponse) = v29;
          v39 = v36 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput;
          *v39 = v32;
          *(v39 + 8) = v33;
          *(v39 + 16) = v30 & 1;
          v40 = *v21;
          ObjectType = v21[1];
          v41 = ObjectType;
          v42 = (v36 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId);
          *v42 = v40;
          v42[1] = v41;
          LODWORD(v40) = *(v22 + 16);
          LOWORD(v42) = *(v22 + 20);
          v43 = v36 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes;
          *v43 = *v22;
          *(v43 + 20) = v42;
          *(v43 + 16) = v40;
          MEMORY[0x28223BE20](v38);
          *(&v62 - 2) = v13;
          v44 = v29;
          v45 = v68;
          sub_2231741F8(v68, v23);
          v46 = v64;
          sub_223195A48(v32, v64, v30);
          v63 = v44;
          sub_2231741F8(v45, v23);
          v47 = v32;
          v48 = v32;
          v49 = v46;
          sub_223195A48(v47, v46, v30);

          v50 = RequestMessageBase.init(build:)(sub_2231A13F8);
          sub_223195A60(v48, v49, v30);

          sub_223174250(v45, v23);
          (*(v65 + 8))(v67, v26);
          sub_22319F400(v13);
          return v50;
        }

        (*(v27 + 8))(v67, v26);
      }

      else
      {
        (*(v27 + 8))(v28, v26);
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v51 = sub_223200014();
  __swift_project_value_buffer(v51, qword_280FCE830);
  v52 = sub_223200004();
  v53 = sub_223200254();
  v54 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71 = v57;
    *v56 = 136446210;
    v58 = sub_2230F7898(ObjectType);
    v60 = sub_2231A5D38(v58, v59, &v71);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_2230CE000, v52, v53, "Could not build %{public}s: Builder has missing required fields", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x223DD6780](v57, -1, -1);
    MEMORY[0x223DD6780](v56, -1, -1);
  }

  sub_22319F400(v13);
  type metadata accessor for RunPommesResponseMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22319F400(uint64_t a1)
{
  v2 = type metadata accessor for RunPommesResponseMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22319F47C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for RunPommesResponseMessage.Builder(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t RunPommesResponseMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RunPommesResponseMessage.Builder.requestId.getter()
{
  type metadata accessor for RunPommesResponseMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RunPommesResponseMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id RunPommesResponseMessage.Builder.pommesResult.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_25_4() + 32);
  v3 = *v2;
  *v0 = *v2;
  v4 = *(v2 + 8);
  *(v0 + 8) = v4;

  return sub_2231741F8(v3, v4);
}

void RunPommesResponseMessage.Builder.pommesResult.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 32);
  sub_223174250(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

void *RunPommesResponseMessage.Builder.nlResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void RunPommesResponseMessage.Builder.nlResponse.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_6() + 40);

  *(v1 + v2) = v0;
}

id RunPommesResponseMessage.Builder.userInput.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_25_4() + 44);
  v3 = *v2;
  v4 = *(v2 + 8);
  *v0 = *v2;
  *(v0 + 8) = v4;
  v5 = *(v2 + 16);
  *(v0 + 16) = v5;

  return sub_223195A48(v3, v4, v5);
}

void RunPommesResponseMessage.Builder.userInput.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 44);
  sub_223195A60(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t RunPommesResponseMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_25_4() + 48));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t RunPommesResponseMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 48));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

__n128 RunPommesResponseMessage.Builder.selectedUserAttributes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_25_4() + 52));
  v3 = v2[1].n128_u32[0];
  v4 = v2[1].n128_u16[2];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u16[2] = v4;
  v0[1].n128_u32[0] = v3;
  return result;
}

uint64_t RunPommesResponseMessage.Builder.selectedUserAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  result = type metadata accessor for RunPommesResponseMessage.Builder(0);
  v7 = v1 + *(result + 52);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 20) = v5;
  *(v7 + 16) = v4;
  return result;
}

uint64_t sub_22319FC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x655273656D6D6F70 && a2 == 0xEE0065736E6F7073;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x724573656D6D6F70 && a2 == 0xEB00000000726F72;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000223224520 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F707365526C6ELL && a2 == 0xEA00000000006573;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6150686365657073 && a2 == 0xED00006567616B63;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000016 && 0x80000002232213C0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_2232006B4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22319FEAC(char a1)
{
  result = 0x655273656D6D6F70;
  switch(a1)
  {
    case 1:
      result = 0x724573656D6D6F70;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E6F707365526C6ELL;
      break;
    case 4:
      result = 0x6150686365657073;
      break;
    case 5:
      result = 0x636E617265747475;
      break;
    case 6:
      result = 0x644972657375;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22319FFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319FC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319FFF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22319FEA4();
  *a1 = result;
  return result;
}

uint64_t sub_2231A0018(uint64_t a1)
{
  v2 = sub_2231A1400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A0054(uint64_t a1)
{
  v2 = sub_2231A1400();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RunPommesResponseMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v95 - v4;
  sub_2231FFF44();
  OUTLINED_FUNCTION_9();
  v97 = v6;
  v98 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F60, &qword_223217A20);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v100 = a1;
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2231A1400();
  sub_223200794();
  if (v1)
  {
    goto LABEL_3;
  }

  v95 = v10;
  v96 = v13;
  v104 = 0;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_14_9();
  sub_2232004C4();
  v24 = *(&v101 + 1);
  v17 = *(&v101 + 1) >> 60;
  if (*(&v101 + 1) >> 60 == 15)
  {
    v104 = 1;
    sub_223171720();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    v25 = v101;
    if (v101 == 10)
    {
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v26 = sub_223200014();
      __swift_project_value_buffer(v26, qword_280FCE830);
      v19 = sub_223200004();
      sub_223200254();
      v27 = OUTLINED_FUNCTION_13_0();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v96;
      if (v29)
      {
        v31 = OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_22_8(v31);
        OUTLINED_FUNCTION_11_13(&dword_2230CE000, v32, v33, "Unable to deserialize TCU-mapped POMMES result: encoded data contained neither PommesResponse nor PommesError");
        OUTLINED_FUNCTION_16_11();
      }

      v34 = sub_223171774();
      v35 = OUTLINED_FUNCTION_26(&type metadata for PommesError, v34);
      OUTLINED_FUNCTION_9_24(v35, v36);
LABEL_40:
      (*(v30 + 8))(v16, v11);
LABEL_3:
      LODWORD(v20) = 0;
      LODWORD(v21) = 0;
      OUTLINED_FUNCTION_13_12();
      goto LABEL_4;
    }
  }

  else
  {
    v37 = v101;
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2231FFFF4();
    v25 = sub_223200264();
    if (!v25)
    {
      v50 = v37;
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v51 = sub_223200014();
      __swift_project_value_buffer(v51, qword_280FCE830);
      v19 = sub_223200004();
      sub_223200254();
      v52 = OUTLINED_FUNCTION_13_0();
      v54 = os_log_type_enabled(v52, v53);
      v30 = v96;
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_22_8(v55);
        OUTLINED_FUNCTION_11_13(&dword_2230CE000, v56, v57, "Unable to deserialize TCU-mapped POMMES result: encoded PommesResponse data was not unarchivable");
        OUTLINED_FUNCTION_16_11();
      }

      v58 = sub_223171774();
      v59 = OUTLINED_FUNCTION_26(&type metadata for PommesError, v58);
      OUTLINED_FUNCTION_9_24(v59, v60);
      sub_22310A610(v50, v24);
      goto LABEL_40;
    }

    sub_22310A610(v37, v24);
  }

  v38 = v99 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult;
  *v38 = v25;
  *(v38 + 8) = v24 >> 60 == 15;
  LOBYTE(v101) = 2;
  OUTLINED_FUNCTION_14_9();
  sub_223200494();
  if (!v39)
  {
    goto LABEL_30;
  }

  sub_2231FFF24();
  v17 = v97;
  if (__swift_getEnumTagSinglePayload(v5, 1, v97) != 1)
  {
    v61 = v98;
    v21 = v95;
    (*(v98 + 32))(v95, v5, v17);
    v62 = v99;
    (*(v61 + 16))(v99 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason, v21, v17);
    type metadata accessor for NLParseResponse(0);
    v104 = 3;
    sub_2231A1454(&qword_27D0589E8, &protocol conformance descriptor for NLParseResponse);
    OUTLINED_FUNCTION_14_9();
    sub_223200554();
    *(v62 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_nlResponse) = v101;
    v104 = 4;
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    v20 = *(&v101 + 1);
    if (*(&v101 + 1) >> 60 == 15)
    {
      LOBYTE(v101) = 5;
      OUTLINED_FUNCTION_14_9();
      v66 = sub_223200494();
      if (!v65)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v69 = sub_223200014();
        __swift_project_value_buffer(v69, qword_280FCE830);
        v70 = sub_223200004();
        LODWORD(v20) = sub_223200254();
        v71 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_22_8(v73);
          OUTLINED_FUNCTION_11_13(&dword_2230CE000, v74, v75, "Could not deserialize speechPackage from speechPackageData");
          OUTLINED_FUNCTION_16_11();
        }

        v76 = sub_223171774();
        v77 = OUTLINED_FUNCTION_26(&type metadata for PommesError, v76);
        OUTLINED_FUNCTION_9_24(v77, v78);
LABEL_42:
        (*(v98 + 8))(v95, v97);
        v63 = OUTLINED_FUNCTION_1_26();
        v64(v63);
        v19 = 0;
        LODWORD(v17) = 0;
        OUTLINED_FUNCTION_12_14();
        LODWORD(v11) = 1;
        goto LABEL_4;
      }
    }

    else
    {
      v67 = v101;
      sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
      sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
      v68 = sub_223200264();
      v66 = v68;
      if (!v68)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v80 = sub_223200014();
        __swift_project_value_buffer(v80, qword_280FCE830);
        v81 = sub_223200004();
        v82 = sub_223200254();
        v83 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_22_8(v85);
          _os_log_impl(&dword_2230CE000, v81, v82, "Could not deserialize speechPackage from speechPackageData", (v20 >> 60), 2u);
          OUTLINED_FUNCTION_16_11();
        }

        v86 = sub_223171774();
        v87 = OUTLINED_FUNCTION_26(&type metadata for PommesError, v86);
        OUTLINED_FUNCTION_9_24(v87, v88);
        sub_22310A610(v67, v20);
        goto LABEL_42;
      }

      sub_22310A610(v67, v20);
      v65 = 0;
    }

    v79 = v99 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput;
    *v79 = v66;
    *(v79 + 8) = v65;
    *(v79 + 16) = v20 >> 60 == 15;
    v104 = 6;
    sub_2231105AC();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    *(v99 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId) = v101;
    v104 = 7;
    sub_22316A808();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    v89 = v102;
    v90 = v103;
    v91 = v100;
    v92 = v99 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes;
    *v92 = v101;
    *(v92 + 20) = v90;
    *(v92 + 16) = v89;
    sub_2230F7158(v91, &v101);
    v19 = RequestMessageBase.init(from:)(&v101);
    (*(v98 + 8))(v95, v97);
    v93 = OUTLINED_FUNCTION_2_34();
    v94(v93, v11);
    __swift_destroy_boxed_opaque_existential_1(v100);
    return v19;
  }

  sub_2231A1390(v5);
LABEL_30:
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v40 = sub_223200014();
  __swift_project_value_buffer(v40, qword_280FCE830);
  v19 = sub_223200004();
  sub_223200254();
  v41 = OUTLINED_FUNCTION_13_0();
  v43 = os_log_type_enabled(v41, v42);
  v21 = v96;
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_22_8(v44);
    OUTLINED_FUNCTION_11_13(&dword_2230CE000, v45, v46, "Unable to deserialize TCU-mapped POMMES result: encoded data had missing or invalid PommesSearchReason raw value");
    OUTLINED_FUNCTION_16_11();
  }

  v47 = sub_223171774();
  v48 = OUTLINED_FUNCTION_26(&type metadata for PommesError, v47);
  OUTLINED_FUNCTION_9_24(v48, v49);
  (*(v21 + 8))(v16, v11);
  LODWORD(v21) = 0;
  OUTLINED_FUNCTION_13_12();
  LODWORD(v20) = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v100);
  if ((v16 & 1) == 0)
  {
    v22 = v99;
    if (v20)
    {
      sub_223174268(*(v99 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult), *(v99 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8));
    }

    if (v21)
    {
      (*(v98 + 8))(v22 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason, v97);
      if (!v11)
      {
LABEL_9:
        if (!v19)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else if (!v11)
    {
      goto LABEL_9;
    }

    if (!v19)
    {
LABEL_10:
      if (!v17)
      {
LABEL_12:
        type metadata accessor for RunPommesResponseMessage(0);
        swift_deallocPartialClassInstance();
        return v19;
      }

LABEL_11:

      goto LABEL_12;
    }

LABEL_16:
    sub_223195A78(*(v22 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput), *(v22 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8), *(v22 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16));
    if (!v17)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return v19;
}

void sub_2231A0C6C(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F70, &qword_223217A28);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A1400();
  sub_2232007A4();
  v6 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult);
  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8))
  {
    sub_22317180C();
    OUTLINED_FUNCTION_3_28();
    sub_223200654();
    if (v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_self();
    v7 = OUTLINED_FUNCTION_24_4(v6);
    v8 = 0;
    if (!v7)
    {
      v14 = v8;
      sub_2231FFD04();

      swift_willThrow();
      sub_223174268(v6, 0);
      goto LABEL_11;
    }

    v25 = v3;
    v9 = sub_2231FFD24();
    v11 = v10;

    sub_2230D7754();
    OUTLINED_FUNCTION_3_28();
    sub_223200654();
    if (v2)
    {
      v12 = OUTLINED_FUNCTION_7_25();
      v13(v12);
      sub_223174268(v6, 0);
      goto LABEL_7;
    }

    sub_223174268(v6, 0);
    sub_2230D94DC(v9, v11);
    v3 = v25;
  }

  sub_2231FFF34();
  sub_2232005F4();

  type metadata accessor for NLParseResponse(0);
  sub_2231A1454(qword_280FCABC0, &protocol conformance descriptor for NLParseResponse);
  sub_223200654();
  v18 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput);
  v17 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8);
  if (*(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16))
  {

    sub_2232005F4();
    sub_223195A78(v18, v17, 1);
LABEL_19:
    sub_2230D37F0();

    sub_2232005E4();

    sub_22316A85C();
    OUTLINED_FUNCTION_3_28();
    sub_2232005E4();
    sub_2230D77A8(a1);
    goto LABEL_11;
  }

  objc_opt_self();
  v19 = OUTLINED_FUNCTION_24_4(v18);
  v20 = 0;
  if (v19)
  {
    v9 = sub_2231FFD24();
    v11 = v21;

    sub_2230D7754();
    OUTLINED_FUNCTION_3_28();
    sub_223200654();
    if (!v17)
    {
      OUTLINED_FUNCTION_23_4();
      sub_2230D94DC(v9, v11);
      goto LABEL_19;
    }

    v22 = OUTLINED_FUNCTION_7_25();
    v23(v22);
    OUTLINED_FUNCTION_23_4();
LABEL_7:
    sub_2230D94DC(v9, v11);
    return;
  }

  v24 = v20;
  sub_2231FFD04();

  swift_willThrow();
  OUTLINED_FUNCTION_23_4();
LABEL_11:
  v15 = OUTLINED_FUNCTION_7_25();
  v16(v15);
}

uint64_t sub_2231A11EC()
{
  sub_223174268(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8));
  v1 = OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason;
  sub_2231FFF44();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);

  sub_223195A78(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16));
}

id RunPommesResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunPommesResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A1390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231A1400()
{
  result = qword_27D059F68;
  if (!qword_27D059F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F68);
  }

  return result;
}

uint64_t sub_2231A1454(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLParseResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231A14A0(uint64_t a1)
{
  result = sub_2231FFF44();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2231A15D8(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231A17D8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223174580(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2231A17D8(319, qword_280FCA550, MEMORY[0x277D56678]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2231A17D8(319, &qword_27D059F88, type metadata accessor for NLParseResponse);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_2230D525C(319, &qword_27D059F90, &type metadata for RunPommesResponseMessage.UserInput);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  sub_2230D525C(319, &unk_280FCA7A8, &type metadata for SelectedUserAttributes);
                  v2 = v18;
                  if (v19 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_2231A17D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RunPommesResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
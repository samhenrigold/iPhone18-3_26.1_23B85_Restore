uint64_t sub_2173A091C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173A0480(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2173A0948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A0B08(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A0984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A0B08(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_2173A09C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2173A07AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2173A0A44(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  sub_2177531E8();
  if (v3 == 2)
  {
    goto LABEL_7;
  }

  sub_217753208();
  if (v3 == 1)
  {
    goto LABEL_7;
  }

  sub_217753208();
  if (v2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!v3)
  {
LABEL_7:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  return sub_217753238();
}

unint64_t sub_2173A0B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26A90;
  if (!qword_27CB26A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26A90);
  }

  return result;
}

unint64_t sub_2173A0B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26A98;
  if (!qword_27CB26A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26A98);
  }

  return result;
}

unint64_t sub_2173A0BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26AA8;
  if (!qword_27CB26AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26AA8);
  }

  return result;
}

_BYTE *_s8ResponseV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_2173A0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26AB0;
  if (!qword_27CB26AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26AB0);
  }

  return result;
}

unint64_t sub_2173A0D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26AB8;
  if (!qword_27CB26AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26AB8);
  }

  return result;
}

unint64_t sub_2173A0D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26AC0;
  if (!qword_27CB26AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26AC0);
  }

  return result;
}

uint64_t static JSONValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_24;
      }

      v37 = OUTLINED_FUNCTION_6_7();
      sub_21726A608(v37, v38, 1);
      v39 = OUTLINED_FUNCTION_35();
      sub_21726A608(v39, v40, 1);
      v32 = v5 ^ v2 ^ 1;
      return v32 & 1;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_24;
      }

      v28 = OUTLINED_FUNCTION_6_7();
      sub_21726A608(v28, v29, 2);
      v30 = OUTLINED_FUNCTION_35();
      sub_21726A608(v30, v31, 2);
      v32 = v2 == v5;
      return v32 & 1;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_24;
      }

      v33 = OUTLINED_FUNCTION_6_7();
      sub_21726A608(v33, v34, 3);
      v35 = OUTLINED_FUNCTION_35();
      sub_21726A608(v35, v36, 3);
      v32 = *&v2 == *&v5;
      return v32 & 1;
    case 4:
      if (v7 != 4)
      {
        goto LABEL_19;
      }

      v21 = OUTLINED_FUNCTION_35();
      sub_21726A5E0(v21, v22, 4);
      v23 = OUTLINED_FUNCTION_6_7();
      sub_21726A5E0(v23, v24, 4);
      sub_21726F024();
      v9 = v25;
      v26 = OUTLINED_FUNCTION_6_7();
      sub_21726A608(v26, v27, 4);
      v18 = OUTLINED_FUNCTION_35();
      v20 = 4;
      goto LABEL_18;
    case 5:
      if (v7 != 5)
      {
        goto LABEL_19;
      }

      v41 = OUTLINED_FUNCTION_35();
      sub_21726A5E0(v41, v42, 5);
      v43 = OUTLINED_FUNCTION_6_7();
      sub_21726A5E0(v43, v44, 5);
      sub_217261FB0(v2, v5);
      v9 = v45;
      v46 = OUTLINED_FUNCTION_6_7();
      sub_21726A608(v46, v47, 5);
      v18 = OUTLINED_FUNCTION_35();
      v20 = 5;
      goto LABEL_18;
    case 6:
      if (v7 != 6 || (v6 | v5) != 0)
      {
        goto LABEL_24;
      }

      v56 = OUTLINED_FUNCTION_6_7();
      sub_21726A608(v56, v57, 6);
      v58 = 0;
      v59 = 0;
      v60 = 6;
      goto LABEL_28;
    default:
      if (*(a2 + 16))
      {
LABEL_19:
        sub_217751DE8();
LABEL_24:
        v50 = OUTLINED_FUNCTION_35();
        sub_21726A5E0(v50, v51, v7);
        v52 = OUTLINED_FUNCTION_6_7();
        sub_21726A608(v52, v53, v4);
        v54 = OUTLINED_FUNCTION_35();
        sub_21726A608(v54, v55, v7);
        v32 = 0;
        return v32 & 1;
      }

      if (v2 == v5 && v3 == v6)
      {
        sub_21726A5E0(v2, v3, 0);
        v61 = OUTLINED_FUNCTION_5_31();
        sub_21726A5E0(v61, v62, v63);
        v64 = OUTLINED_FUNCTION_5_31();
        sub_21726A608(v64, v65, v66);
        v58 = OUTLINED_FUNCTION_5_31();
LABEL_28:
        sub_21726A608(v58, v59, v60);
        v32 = 1;
        return v32 & 1;
      }

      v9 = sub_217753058();
      v10 = OUTLINED_FUNCTION_35();
      sub_21726A5E0(v10, v11, 0);
      v12 = OUTLINED_FUNCTION_5_31();
      sub_21726A5E0(v12, v13, v14);
      v15 = OUTLINED_FUNCTION_5_31();
      sub_21726A608(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_35();
      v20 = 0;
LABEL_18:
      sub_21726A608(v18, v19, v20);
      return v9 & 1;
  }
}

void JSONValue.hash(into:)(const void *a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      MEMORY[0x21CEA3550](2);
      sub_217753208();
      break;
    case 2:
      MEMORY[0x21CEA3550](3);
      v4 = v2;
      goto LABEL_12;
    case 3:
      MEMORY[0x21CEA3550](4);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

LABEL_12:
      MEMORY[0x21CEA3580](v4);
      break;
    case 4:
      MEMORY[0x21CEA3550](5);

      sub_21728054C();
      break;
    case 5:
      MEMORY[0x21CEA3550](6);

      sub_217265A08(a1, v2);
      break;
    case 6:
      MEMORY[0x21CEA3550](0);
      break;
    default:
      MEMORY[0x21CEA3550](1);

      sub_217751FF8();
      break;
  }
}

uint64_t JSONValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2177531E8();
  JSONValue.hash(into:)(v3);
  return sub_217753238();
}

uint64_t sub_2173A11D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  JSONValue.hash(into:)(v4);
  return sub_217753238();
}

uint64_t JSONValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = 0;
  v104 = 0;
  v5 = -1;
  v105 = -1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_34_2();
  sub_2177532A8();
  if (v2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_22(&v98);
    if (sub_2177530A8())
    {
      sub_2173A4614(0, 0, 255);
      v103 = 0;
      v104 = 0;
      v105 = 6;
    }

    else
    {
      swift_beginAccess();
      OUTLINED_FUNCTION_18_20();
      if (v8)
      {
        OUTLINED_FUNCTION_15_22(&v98);
        OUTLINED_FUNCTION_4_41(MEMORY[0x277D837D0], v9, MEMORY[0x277D83808]);
        v10 = v103;
        v11 = v104;
        v103 = v74;
        v104 = v78;
        v12 = v105;
        v105 = 0;
        sub_2173A4614(v10, v11, v12);
        OUTLINED_FUNCTION_18_20();
        if (v8)
        {
          OUTLINED_FUNCTION_15_22(&v98);
          OUTLINED_FUNCTION_4_41(MEMORY[0x277D839B0], v13, MEMORY[0x277D839D0]);
          v14 = v103;
          v15 = v104;
          v103 = v74;
          v104 = 0;
          v16 = v105;
          v105 = 1;
          sub_2173A4614(v14, v15, v16);
          OUTLINED_FUNCTION_18_20();
          if (v8)
          {
            OUTLINED_FUNCTION_15_22(&v98);
            v18 = OUTLINED_FUNCTION_4_41(MEMORY[0x277D84A28], v17, MEMORY[0x277D84A58]);
            v26 = OUTLINED_FUNCTION_3_37(v18, v19, v20, v21, v22, v23, v24, v25, v74, v78, v82, v86, v90, v94, v98, v99, v100, v101, v102, v103);
            v105 = 2;
            sub_2173A4614(v26, v27, v28);
            OUTLINED_FUNCTION_18_20();
            if (v8)
            {
              OUTLINED_FUNCTION_15_22(&v98);
              v30 = OUTLINED_FUNCTION_4_41(MEMORY[0x277D839F8], v29, MEMORY[0x277D83A30]);
              v38 = OUTLINED_FUNCTION_3_37(v30, v31, v32, v33, v34, v35, v36, v37, v75, v79, v83, v87, v91, v95, v98, v99, v100, v101, v102, v103);
              v105 = 3;
              sub_2173A4614(v38, v39, v40);
              OUTLINED_FUNCTION_18_20();
              if (v8)
              {
                OUTLINED_FUNCTION_15_22(&v98);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AC8, &qword_217765F70);
                OUTLINED_FUNCTION_7_0();
                v43 = sub_2173A46AC(v41, v42);
                v44 = OUTLINED_FUNCTION_17_14(v43);
                v52 = OUTLINED_FUNCTION_3_37(v44, v45, v46, v47, v48, v49, v50, v51, v76, v80, v84, v88, v92, v96, v98, v99, v100, v101, v102, v103);
                v105 = 4;
                sub_2173A4614(v52, v53, v54);
                OUTLINED_FUNCTION_18_20();
                if (v8)
                {
                  OUTLINED_FUNCTION_15_22(&v98);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
                  OUTLINED_FUNCTION_7_0();
                  v58 = sub_2173A4628(v55, v56, v57, MEMORY[0x277D83528]);
                  v59 = OUTLINED_FUNCTION_17_14(v58);
                  v67 = OUTLINED_FUNCTION_3_37(v59, v60, v61, v62, v63, v64, v65, v66, v77, v81, v85, v89, v93, v97, v98, v99, v100, v101, v102, v103);
                  v105 = 5;
                  sub_2173A4614(v67, v68, v69);
                }
              }
            }
          }
        }
      }
    }

    swift_beginAccess();
    v70 = v105;
    if (v105 != 255)
    {
      v72 = v103;
      v71 = v104;
      sub_21726A5E0(v103, v104, v105);
      __swift_destroy_boxed_opaque_existential_1(&v98);
      sub_2173A4614(v103, v104, v105);
      *a2 = v72;
      *(a2 + 8) = v71;
      *(a2 + 16) = v70;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    sub_217752B48();
    swift_allocError();
    sub_217752AF8();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v98);
    v7 = v103;
    v6 = v104;
    v5 = v105;
  }

  sub_2173A4614(v7, v6, v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t JSONValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_34_2();
  v4 = sub_2177532E8();
  switch(v3)
  {
    case 1:
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_2177530C8();
      break;
    case 2:
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_217753108();
      break;
    case 3:
      OUTLINED_FUNCTION_20_20(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19[0], v19[1], v19[2], v20);
      OUTLINED_FUNCTION_32_14();
      sub_2177530D8();
      break;
    case 4:
      OUTLINED_FUNCTION_20_20(v4, v5, v6, v7, v8, v9, v10, v11, v2, v19[0], v19[1], v19[2], v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AC8, &qword_217765F70);
      OUTLINED_FUNCTION_10_20();
      sub_2173A46AC(v12, v13);
      goto LABEL_8;
    case 5:
      OUTLINED_FUNCTION_20_20(v4, v5, v6, v7, v8, v9, v10, v11, v2, v19[0], v19[1], v19[2], v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_10_20();
      sub_2173A4628(v14, v15, v16, MEMORY[0x277D83508]);
LABEL_8:
      sub_2177530F8();
      break;
    case 6:
      OUTLINED_FUNCTION_20_20(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19[0], v19[1], v19[2], v20);
      OUTLINED_FUNCTION_32_14();
      sub_217753118();
      break;
    default:
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      sub_2177530B8();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t JSONValue.description.getter()
{
  v1 = *v0;
  result = 0x534E28206C6C756ELL;
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_29_17();
      if (v1)
      {
        v5 = 1702195828;
      }

      else
      {
        v5 = 0x65736C6166;
      }

      if (v1)
      {
        v6 = 0xE400000000000000;
      }

      else
      {
        v6 = 0xE500000000000000;
      }

      MEMORY[0x21CEA23B0](v5, v6);

      v3 = 0x296C6F6F422820;
      v4 = 0xE700000000000000;
      goto LABEL_15;
    case 2:
      v10 = sub_217752FC8();
      v3 = 0x293436746E492820;
      v4 = 0xE800000000000000;
      goto LABEL_15;
    case 3:
      OUTLINED_FUNCTION_29_17();
      sub_2177525E8();
      v3 = 0x656C62756F442820;
      v4 = 0xE900000000000029;
      goto LABEL_15;
    case 4:
      OUTLINED_FUNCTION_29_17();
      sub_217752AA8();

      v10 = 0xD000000000000010;
      v7 = sub_217752FC8();
      MEMORY[0x21CEA23B0](v7);

      v8 = "[... array with ";
      v3 = 0xD000000000000017;
      goto LABEL_14;
    case 5:
      OUTLINED_FUNCTION_29_17();
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177AC660);
      v9 = sub_217752FC8();
      MEMORY[0x21CEA23B0](v9);

      v8 = "[... dictionary with ";
      v3 = 0xD00000000000001CLL;
LABEL_14:
      v4 = v8 | 0x8000000000000000;
      goto LABEL_15;
    case 6:
      return result;
    default:
      v10 = 34;
      MEMORY[0x21CEA23B0](v1, v0[1]);
      v3 = 0x6E69727453282022;
      v4 = 0xEA00000000002967;
LABEL_15:
      MEMORY[0x21CEA23B0](v3, v4);
      return v10;
  }
}

uint64_t JSONValue.flatten()@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      *(a1 + 24) = MEMORY[0x277D839B0];
      *a1 = result & 1;
      return result;
    case 2:
      v8 = MEMORY[0x277D84A28];
      goto LABEL_8;
    case 3:
      v8 = MEMORY[0x277D839F8];
LABEL_8:
      *(a1 + 24) = v8;
      *a1 = result;
      return result;
    case 4:
      v5 = sub_2173A1C04(result);
      v6 = &qword_27CB26AD8;
      v7 = &qword_217765F80;
      goto LABEL_11;
    case 5:
      v5 = sub_2173A1E08(result);
      v6 = &qword_27CB26AD0;
      v7 = &qword_217765F78;
LABEL_11:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      goto LABEL_13;
    case 6:
      v5 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      result = sub_2173A4720();
LABEL_13:
      *(a1 + 24) = result;
      *a1 = v5;
      break;
    default:
      v4 = *(v1 + 8);
      *(a1 + 24) = MEMORY[0x277D837D0];
      *a1 = result;
      *(a1 + 8) = v4;

      result = sub_217751DE8();
      break;
  }

  return result;
}

uint64_t sub_2173A1C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    sub_217276878(0, v1, 0);
    v2 = v26;
    v4 = (a1 + 48);
    while (2)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      v4 += 24;
      v7 = v8;
      switch(v8)
      {
        case 1:
          v24 = MEMORY[0x277D839B0];
          LOBYTE(v23) = v5 & 1;
          goto LABEL_12;
        case 2:
          v15 = MEMORY[0x277D84A28];
          goto LABEL_8;
        case 3:
          v15 = MEMORY[0x277D839F8];
LABEL_8:
          v24 = v15;
          *&v23 = v5;
          goto LABEL_12;
        case 4:
          v11 = sub_217751DE8();
          v12 = sub_2173A1C04(v11);
          v13 = &qword_27CB26AD8;
          v14 = &qword_217765F80;
          goto LABEL_11;
        case 5:
          v16 = sub_217751DE8();
          v12 = sub_2173A1E08(v16);
          v13 = &qword_27CB26AD0;
          v14 = &qword_217765F78;
LABEL_11:
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
          *&v23 = v12;
          goto LABEL_12;
        case 6:
          v21 = [objc_allocWithZone(MEMORY[0x277CBEB68]) 0x1FB2FAB78];
          v24 = sub_2173A4720();
          *&v23 = v21;
          sub_2172124CC(&v23, v25);
          goto LABEL_13;
        default:
          v24 = MEMORY[0x277D837D0];
          *&v23 = v5;
          *(&v23 + 1) = v6;
          v9 = OUTLINED_FUNCTION_34_2();
          sub_21726A5E0(v9, v10, 0);
          sub_217751DE8();
LABEL_12:
          sub_2172124CC(&v23, v25);
          v17 = OUTLINED_FUNCTION_34_2();
          sub_21726A608(v17, v18, v7);
LABEL_13:
          v26 = v2;
          v20 = *(v2 + 16);
          v19 = *(v2 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_217276878(v19 > 1, v20 + 1, 1);
            v2 = v26;
          }

          *(v2 + 16) = v20 + 1;
          sub_2172124CC(v25, (v2 + 32 * v20 + 32));
          if (!--v1)
          {
            return v2;
          }

          continue;
      }
    }
  }

  return v2;
}

void *sub_2173A1E08(uint64_t a1)
{
  v2 = sub_217751DC8();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v47 = a1;
  sub_217751DE8();
  v8 = 0;
  v46 = v7;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(v47 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(v47 + 56) + 24 * v11;
      v16 = *v15;
      v17 = *(v15 + 8);
      switch(*(v15 + 16))
      {
        case 1:
          v49 = MEMORY[0x277D839B0];
          LOBYTE(v48) = v16 & 1;
          goto LABEL_15;
        case 2:
          v27 = MEMORY[0x277D84A28];
          goto LABEL_13;
        case 3:
          v27 = MEMORY[0x277D839F8];
LABEL_13:
          v49 = v27;
          *&v48 = v16;
LABEL_15:
          sub_217751DE8();
          break;
        case 4:
          sub_217751DE8();
          v20 = OUTLINED_FUNCTION_19_1();
          sub_21726A5E0(v20, v21, 4);
          v22 = v13;
          v23 = sub_2173A1C04(v16);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AD8, &qword_217765F80);
          v24 = OUTLINED_FUNCTION_19_1();
          v26 = 4;
          goto LABEL_17;
        case 5:
          sub_217751DE8();
          v28 = OUTLINED_FUNCTION_19_1();
          sub_21726A5E0(v28, v29, 5);
          v22 = v13;
          v23 = sub_2173A1E08(v16);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AD0, &qword_217765F78);
          v24 = OUTLINED_FUNCTION_19_1();
          v26 = 5;
LABEL_17:
          sub_21726A608(v24, v25, v26);
          *&v48 = v23;
          v13 = v22;
          break;
        case 6:
          v30 = *v12;
          v31 = objc_allocWithZone(MEMORY[0x277CBEB68]);
          sub_217751DE8();
          v32 = [v31 init];
          v49 = sub_2173A4720();
          *&v48 = v32;
          v13 = v30;
          break;
        default:
          v49 = MEMORY[0x277D837D0];
          *&v48 = v16;
          *(&v48 + 1) = v17;
          sub_217751DE8();
          v18 = OUTLINED_FUNCTION_19_1();
          sub_21726A5E0(v18, v19, 0);
          break;
      }

      sub_2172124CC(&v48, v50);
      swift_isUniquelyReferenced_nonNull_native();
      *&v48 = v2;
      v33 = v14;
      v34 = sub_21763246C(v13, v14);
      if (__OFADD__(v2[2], (v35 & 1) == 0))
      {
        break;
      }

      v36 = v34;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AF8, &unk_217766160);
      if (sub_217752CB8())
      {
        v38 = sub_21763246C(v13, v33);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_33;
        }

        v36 = v38;
      }

      if (v37)
      {

        v2 = v48;
        v40 = (*(v48 + 56) + 32 * v36);
        __swift_destroy_boxed_opaque_existential_1(v40);
        sub_2172124CC(v50, v40);
      }

      else
      {
        v2 = v48;
        *(v48 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v41 = (v2[6] + 16 * v36);
        *v41 = v13;
        v41[1] = v33;
        sub_2172124CC(v50, (v2[7] + 32 * v36));
        v42 = v2[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_32;
        }

        v2[2] = v44;
      }

      v8 = v9;
      v7 = v46;
      if (!v6)
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
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_217753178();
  __break(1u);
  return result;
}

void sub_2173A21D4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v153 = a5;
  v150 = a3;
  v151 = a4;
  v154 = a7;
  sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v148 = v12;
  v149 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_31();
  v146 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_80();
  v147 = v15;
  v16 = sub_217752B48();
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_80();
  v156 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AE8, &qword_217766150);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_31();
  v155 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26);
  v28 = &v141 - v27;
  sub_2172A497C(&v167);
  v168 = v28;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v16);
  v165[0] = 46;
  v165[1] = 0xE100000000000000;
  v157[2] = v165;
  sub_217751DE8();
  sub_2176B5914(1, 1, sub_2171F87CC, v157, a1, a2, v29);
  v31 = v30;
  v32 = v7;
  if (v30[2] != 2)
  {

    if (!*(a6 + 16) || (sub_21763246C(a1, a2), (v76 & 1) == 0))
    {
      v89 = OUTLINED_FUNCTION_27_19();
      memcpy(v89, v90, 0x221uLL);
      goto LABEL_17;
    }

    v152 = v18;
    OUTLINED_FUNCTION_11_27();
    v18 = *v77;
    v78 = *(v77 + 8);
    v79 = *(v77 + 16);
    v80 = OUTLINED_FUNCTION_34_2();
    sub_21726A5E0(v80, v81, v79);
    v82 = OUTLINED_FUNCTION_34_2();
    sub_2173A3BC8(v82, v83, v79, v84);
    if (v7)
    {
      sub_2171F06D8(v168, &qword_27CB26AE8, &qword_217766150);
      v85 = OUTLINED_FUNCTION_34_2();
      sub_21726A608(v85, v86, v79);
      return;
    }

    memcpy(v163, v165, 0x221uLL);
    memcpy(v164, v165, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v164) != 1)
    {
      v138 = OUTLINED_FUNCTION_34_2();
      sub_21726A608(v138, v139, v79);
LABEL_30:
      v87 = v166;
      v88 = v165;
      goto LABEL_15;
    }

    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
    v122 = OUTLINED_FUNCTION_25_20(v121);
    v146 = 0;
    v123 = v122;
    *(v122 + 16) = xmmword_2177586E0;
    *(v122 + 56) = &type metadata for DynamicCodingKey;
    *(v122 + 64) = sub_21738B390(v122, v124, v125);
    *(v123 + 32) = a1;
    *(v123 + 40) = a2;
    v158 = 0;
    v159 = 0xE000000000000000;
    sub_217751DE8();
    sub_217752AA8();
    v161 = v158;
    v162 = v159;
    MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177AC710);
    MEMORY[0x21CEA23B0](0x6B726F77747241, 0xE700000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177AC730);
    MEMORY[0x21CEA23B0](v150, v151);
    v126 = OUTLINED_FUNCTION_0_40();
    MEMORY[0x21CEA23B0](v126);
    v158 = v18;
    v159 = v78;
    v160 = v79;
    v127 = JSONValue.description.getter();
    v129 = v128;
    v130 = OUTLINED_FUNCTION_34_2();
    v132 = sub_21726A608(v130, v131, v79);
    MEMORY[0x21CEA23B0](v127, v129, v132);

    OUTLINED_FUNCTION_217_0();
    sub_217752B08();
    v71 = v168;
    sub_2171F06D8(v168, &qword_27CB26AE8, &qword_217766150);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    v134 = OUTLINED_FUNCTION_23_22(*(v133 + 48));
    v135(v134);
    v136 = OUTLINED_FUNCTION_13_20();
    v137(v136);
    OUTLINED_FUNCTION_16_22(v71);
    v119 = v166;
    v120 = v163;
LABEL_26:
    memcpy(v119, v120, 0x221uLL);
    goto LABEL_27;
  }

  v152 = v18;
  v33 = v30[4];
  v34 = v30[5];
  v36 = v30[6];
  v35 = v30[7];
  sub_217751DE8();
  v37 = MEMORY[0x21CEA2320](v33, v34, v36, v35);
  v39 = v38;

  if (!*(a6 + 16) || (sub_21763246C(v37, v39), (v40 & 1) == 0))
  {

    v87 = OUTLINED_FUNCTION_27_19();
LABEL_15:
    memcpy(v87, v88, 0x221uLL);
    v18 = v152;
LABEL_17:
    v91 = v155;
    v71 = v168;
    goto LABEL_18;
  }

  v145 = v37;
  OUTLINED_FUNCTION_11_27();
  v43 = *v41;
  v42 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (v44 != 5)
  {
    v144 = v43;
    v101 = v42;
    v102 = v44;
    sub_21726A5E0(v43, v42, v44);

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
    v18 = OUTLINED_FUNCTION_25_20(v103);
    *(v18 + 16) = xmmword_2177586E0;
    *(v18 + 56) = &type metadata for DynamicCodingKey;
    *(v18 + 64) = sub_21738B390(v18, v104, v105);
    *(v18 + 32) = v145;
    *(v18 + 40) = v39;
    OUTLINED_FUNCTION_30_17();
    sub_217752AA8();
    v164[0] = v165[0];
    v164[1] = v165[1];
    OUTLINED_FUNCTION_12_19();
    MEMORY[0x21CEA23B0](v106 | 0x20, v107 | 0x8000000000000000);
    MEMORY[0x21CEA23B0](v150, v151);
    v108 = OUTLINED_FUNCTION_0_40();
    MEMORY[0x21CEA23B0](v108);
    v109 = v144;
    v165[0] = v144;
    v165[1] = v101;
    LOBYTE(v165[2]) = v102;
    v110 = v102;
    v151 = JSONValue.description.getter();
    v112 = v111;
    v113 = sub_21726A608(v109, v101, v110);
    MEMORY[0x21CEA23B0](v151, v112, v113);

    OUTLINED_FUNCTION_217_0();
    sub_217752B08();
    v71 = v168;
    sub_2171F06D8(v168, &qword_27CB26AE8, &qword_217766150);
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    v115 = OUTLINED_FUNCTION_23_22(*(v114 + 48));
    v116(v115);
    v117 = OUTLINED_FUNCTION_13_20();
    v118(v117);
    OUTLINED_FUNCTION_16_22(v71);
    v119 = OUTLINED_FUNCTION_27_19();
    goto LABEL_26;
  }

  if (v31[2] < 2uLL)
  {
    __break(1u);
    return;
  }

  v45 = v31[8];
  v141 = v31[9];
  v142 = v45;
  v47 = v31[10];
  v46 = v31[11];
  v143 = v42;
  sub_21726A5E0(v43, v42, 5);
  sub_217751DE8();

  v49 = MEMORY[0x21CEA2320](v142, v141, v47, v46, v48);
  v51 = v50;

  sub_2173A21D4(v49, v51, v150, v151, 0, v43, v165);
  if (!v32)
  {

    sub_21726A608(v43, v143, 5);

    goto LABEL_30;
  }

  sub_21726A608(v43, v143, 5);

  v165[0] = v32;
  v52 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  v53 = swift_dynamicCast();
  v54 = v168;
  if (!v53)
  {
    sub_2171F06D8(v168, &qword_27CB26AE8, &qword_217766150);

LABEL_33:

    return;
  }

  v55 = v152;
  v56 = (*(v152 + 88))(v21, v16);
  if (v56 != *MEMORY[0x277D84160])
  {
    sub_2171F06D8(v54, &qword_27CB26AE8, &qword_217766150);

    (*(v55 + 8))(v21, v16, v140);
    goto LABEL_33;
  }

  LODWORD(v151) = v56;

  (*(v55 + 96))(v21, v16);
  v150 = *v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
  v58 = *(v57 + 48);
  v60 = v148;
  v59 = v149;
  v144 = *(v148 + 32);
  v61 = v21 + v58;
  v62 = v147;
  (v144)(v147, v61, v149);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
  v64 = OUTLINED_FUNCTION_25_20(v63);
  *(v64 + 16) = xmmword_2177586E0;
  *(v64 + 56) = &type metadata for DynamicCodingKey;
  *(v64 + 64) = sub_21738B390(v64, v65, v66);
  *(v64 + 32) = v145;
  *(v64 + 40) = v39;
  v164[0] = v64;
  v67 = sub_217752B18();
  sub_217543F4C(v67);
  sub_217752B28();
  v68 = v146;
  sub_217752B08();
  v69 = *(v60 + 8);
  v18 = v60 + 8;
  v69(v62, v59);
  sub_2171F06D8(v168, &qword_27CB26AE8, &qword_217766150);
  v70 = *(v57 + 48);
  v71 = v168;
  *v168 = v150;
  (v144)(v71 + v70, v68, v59);
  v72 = OUTLINED_FUNCTION_13_20();
  v73(v72, v151, v16);
  OUTLINED_FUNCTION_16_22(v71);

  v74 = OUTLINED_FUNCTION_27_19();
  memcpy(v74, v75, 0x221uLL);
LABEL_27:
  v91 = v155;
LABEL_18:
  sub_2173A48D8(v71, v91);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v16);
  v93 = v156;
  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v71, &qword_27CB26AE8, &qword_217766150);
    sub_2171F06D8(v91, &qword_27CB26AE8, &qword_217766150);
    memcpy(v154, v166, 0x221uLL);
  }

  else
  {
    v94 = OUTLINED_FUNCTION_26_17();
    v95(v94);
    if (v153)
    {
      OUTLINED_FUNCTION_30_17();
      sub_217752AA8();
      OUTLINED_FUNCTION_12_19();
      MEMORY[0x21CEA23B0](v96 + 19, v97 | 0x8000000000000000);
      sub_217752C78();
      sub_217751828();
    }

    swift_allocError();
    (*(v18 + 16))(v98, v93, v16);
    swift_willThrow();
    sub_2171F06D8(v166, &qword_27CB24400, &unk_21775E9A0);
    v99 = OUTLINED_FUNCTION_13_2();
    v100(v99);
    sub_2171F06D8(v71, &qword_27CB26AE8, &qword_217766150);
  }
}

void sub_2173A2DC4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void (*a7)(uint64_t, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v178 = a7;
  v179 = a6;
  v180 = a5;
  v176 = a4;
  v175 = a3;
  v14 = sub_217752B48();
  OUTLINED_FUNCTION_0_0();
  v186 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_31();
  v170 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_80();
  v185 = v19;
  v174 = sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v173 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_31();
  v169 = v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_80();
  v172 = v24;
  sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v181 = v26;
  v182 = v25;
  MEMORY[0x28223BE20](v25);
  v28 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v168 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_80();
  v171 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AE8, &qword_217766150);
  MEMORY[0x28223BE20](v34 - 8);
  OUTLINED_FUNCTION_31();
  v184 = v35;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v36);
  v38 = &v168 - v37;
  v183 = a9;
  v39 = a9;
  v40 = a1;
  v177 = a10;
  __swift_storeEnumTagSinglePayload(v39, 1, 1, a10);
  v187 = v38;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v14);
  v192 = 46;
  v193 = 0xE100000000000000;
  v189 = &v192;
  sub_217751DE8();
  v41 = v195;
  sub_2176B5914(1, 1, sub_2172CB708, v188, a1, a2, v42);
  v44 = v43;
  v195 = v41;
  if (v43[2] != 2)
  {

    if (!*(a8 + 16))
    {
      goto LABEL_15;
    }

    sub_21763246C(v40, a2);
    if ((v90 & 1) == 0)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_11_27();
    v92 = *(v91 + 8);
    v94 = *(v91 + 16);
    v192 = *v91;
    v93 = v192;
    v193 = v92;
    v194 = v94;
    sub_21726A5E0(v192, v92, v94);
    v95 = v195;
    (v179)(&v192);
    v195 = v95;
    if (v95)
    {
      sub_2171F06D8(v187, &qword_27CB26AE8, &qword_217766150);
      v96 = OUTLINED_FUNCTION_14_20();
      v97(v96);
      sub_21726A608(v93, v92, v94);
      return;
    }

    v170 = v93;
    v171 = v92;
    LODWORD(v178) = v94;
    v169 = v40;
    v179 = v14;
    v133 = v181;
    v134 = v182;
    v135 = *(v181 + 8);
    v136 = v183;
    v135(v183, v182);
    (*(v133 + 32))(v136, v31, v134);
    (*(v133 + 16))(v28, v136, v134);
    v137 = v177;
    if (__swift_getEnumTagSinglePayload(v28, 1, v177) == 1)
    {
      v138 = OUTLINED_FUNCTION_13_2();
      (v135)(v138);
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
      v140 = OUTLINED_FUNCTION_25_20(v139);
      *(v140 + 16) = xmmword_2177586E0;
      *(v140 + 56) = &type metadata for DynamicCodingKey;
      *(v140 + 64) = sub_21738B390(v140, v141, v142);
      *(v140 + 32) = v169;
      *(v140 + 40) = a2;
      v192 = 0;
      v193 = 0xE000000000000000;
      sub_217751DE8();
      sub_217752AA8();
      v190 = v192;
      v191 = v193;
      MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177AC710);
      v143 = sub_217753348();
      MEMORY[0x21CEA23B0](v143);

      MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177AC730, v144);
      MEMORY[0x21CEA23B0](v175, v176);
      v145 = OUTLINED_FUNCTION_0_40();
      MEMORY[0x21CEA23B0](v145);
      v146 = v170;
      v147 = v171;
      v192 = v170;
      v193 = v171;
      v148 = v178;
      v194 = v178;
      v149 = JSONValue.description.getter();
      v151 = v150;
      v152 = sub_21726A608(v146, v147, v148);
      MEMORY[0x21CEA23B0](v149, v151, v152);

      OUTLINED_FUNCTION_217_0();
      v153 = v172;
      sub_217752B08();
      v85 = v187;
      sub_2171F06D8(v187, &qword_27CB26AE8, &qword_217766150);
      v154 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
      *v85 = v137;
      v155 = OUTLINED_FUNCTION_33_13(v154);
      v156(v155, v153, v174);
      v87 = v186;
      v131 = OUTLINED_FUNCTION_21_17();
      v14 = v179;
      goto LABEL_25;
    }

    sub_21726A608(v170, v171, v178);
    v157 = OUTLINED_FUNCTION_13_2();
    (v135)(v157);
    v14 = v179;
LABEL_15:
    v98 = v185;
    v87 = v186;
    v85 = v187;
    goto LABEL_16;
  }

  v45 = v43[4];
  v46 = v43[5];
  v47 = v43[6];
  v48 = v43[7];
  sub_217751DE8();
  v49 = MEMORY[0x21CEA2320](v45, v46, v47, v48);
  v51 = v50;

  if (!*(a8 + 16) || (sub_21763246C(v49, v51), (v52 & 1) == 0))
  {

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11_27();
  v55 = *v53;
  v54 = *(v53 + 8);
  v56 = *(v53 + 16);
  if (v56 != 5)
  {
    v112 = *v53;
    v113 = *(v53 + 8);
    sub_21726A5E0(*v53, v113, *(v53 + 16));

    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
    v115 = OUTLINED_FUNCTION_25_20(v114);
    *(v115 + 16) = xmmword_2177586E0;
    *(v115 + 56) = &type metadata for DynamicCodingKey;
    *(v115 + 64) = sub_21738B390(v115, v116, v117);
    *(v115 + 32) = v49;
    *(v115 + 40) = v51;
    v192 = 0;
    v193 = 0xE000000000000000;
    sub_217752AA8();
    v190 = v192;
    v191 = v193;
    OUTLINED_FUNCTION_12_19();
    MEMORY[0x21CEA23B0](v118 | 0x20, v119 | 0x8000000000000000);
    MEMORY[0x21CEA23B0](v175, v176);
    v120 = OUTLINED_FUNCTION_0_40();
    MEMORY[0x21CEA23B0](v120);
    v192 = v112;
    v193 = v113;
    v194 = v56;
    v121 = JSONValue.description.getter();
    v123 = v122;
    v124 = OUTLINED_FUNCTION_19_1();
    v126 = sub_21726A608(v124, v125, v56);
    MEMORY[0x21CEA23B0](v121, v123, v126);

    OUTLINED_FUNCTION_217_0();
    v127 = v172;
    sub_217752B08();
    v85 = v187;
    sub_2171F06D8(v187, &qword_27CB26AE8, &qword_217766150);
    v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v85 = v177;
    v129 = OUTLINED_FUNCTION_33_13(v128);
    v130(v129, v127, v174);
    v87 = v186;
    v131 = OUTLINED_FUNCTION_21_17();
LABEL_25:
    v132(v131);
    OUTLINED_FUNCTION_16_22(v85);
    goto LABEL_26;
  }

  if (v44[2] < 2uLL)
  {
    __break(1u);
    return;
  }

  v57 = v44[9];
  v168 = v44[8];
  v58 = v44[10];
  v59 = v44[11];
  sub_21726A5E0(v55, v54, 5);
  sub_217751DE8();

  v61 = MEMORY[0x21CEA2320](v168, v57, v58, v59, v60);
  v63 = v62;
  v64 = v55;

  v65 = v171;
  v66 = v195;
  sub_2173A2DC4(v61, v63, v175, v176, 0, v179, v178, v55, v171, v177);
  v195 = v66;
  if (!v66)
  {
    v158 = v181;
    v159 = v182;
    v160 = v183;
    (*(v181 + 8))(v183, v182);

    sub_21726A608(v64, v54, 5);

    (*(v158 + 32))(v160, v65, v159, v161);
    goto LABEL_15;
  }

  sub_21726A608(v55, v54, 5);

  v192 = v195;
  v67 = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  v68 = v170;
  if (!swift_dynamicCast())
  {

    sub_2171F06D8(v187, &qword_27CB26AE8, &qword_217766150);
    v162 = OUTLINED_FUNCTION_14_20();
    v163(v162);
LABEL_31:

    return;
  }

  v69 = OUTLINED_FUNCTION_154();
  v71 = v70(v69);
  if (v71 != *MEMORY[0x277D84160])
  {

    sub_2171F06D8(v187, &qword_27CB26AE8, &qword_217766150);
    v164 = OUTLINED_FUNCTION_14_20();
    v165(v164);
    v166 = OUTLINED_FUNCTION_154();
    v167(v166);
    goto LABEL_31;
  }

  v72 = v71;

  v73 = OUTLINED_FUNCTION_154();
  v74(v73);
  v195 = *v68;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
  v75 = *(v179 + 48);
  v178 = *(v173 + 32);
  v76 = v174;
  v178(v172, v68 + v75, v174);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
  v78 = OUTLINED_FUNCTION_25_20(v77);
  *(v78 + 16) = xmmword_2177586E0;
  *(v78 + 56) = &type metadata for DynamicCodingKey;
  *(v78 + 64) = sub_21738B390(v78, v79, v80);
  *(v78 + 32) = v49;
  *(v78 + 40) = v51;
  v190 = v78;
  v81 = sub_217752B18();
  sub_217543F4C(v81);
  sub_217752B28();
  v82 = v169;
  sub_217752B08();
  v83 = OUTLINED_FUNCTION_34_2();
  v84(v83);
  v85 = v187;
  sub_2171F06D8(v187, &qword_27CB26AE8, &qword_217766150);
  v86 = *(v179 + 48);
  v87 = v186;
  *v85 = v195;
  v178(v85 + v86, v82, v76);
  v88 = OUTLINED_FUNCTION_21_17();
  v89(v88, v72, v14);
  OUTLINED_FUNCTION_16_22(v85);

  v195 = 0;
LABEL_26:
  v98 = v185;
LABEL_16:
  v99 = v184;
  v100 = OUTLINED_FUNCTION_34_2();
  sub_2173A48D8(v100, v101);
  if (__swift_getEnumTagSinglePayload(v99, 1, v14) == 1)
  {
    sub_2171F06D8(v85, &qword_27CB26AE8, &qword_217766150);
    sub_2171F06D8(v99, &qword_27CB26AE8, &qword_217766150);
  }

  else
  {
    v102 = OUTLINED_FUNCTION_26_17();
    v103(v102);
    if (v180)
    {
      v192 = 0;
      v193 = 0xE000000000000000;
      sub_217752AA8();
      OUTLINED_FUNCTION_12_19();
      MEMORY[0x21CEA23B0](v104 + 19, v105 | 0x8000000000000000);
      sub_217752C78();
      sub_217751828();
    }

    v106 = swift_allocError();
    (*(v87 + 16))(v107, v98, v14);
    v195 = v106;
    swift_willThrow();
    v108 = OUTLINED_FUNCTION_13_2();
    v109(v108);
    sub_2171F06D8(v85, &qword_27CB26AE8, &qword_217766150);
    v110 = OUTLINED_FUNCTION_14_20();
    v111(v110);
  }
}

void *sub_2173A3BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  sub_2172A497C(v28);
  v9 = dynamic_cast_existential_1_conditional(&type metadata for Artwork, &type metadata for Artwork, &protocol descriptor for JSONValueBasedInitializable);
  if (!v9)
  {
    *v27 = a1;
    *&v27[8] = a2;
    v27[16] = a3;
    JSONValue.flatten()(v24);
    if (swift_dynamicCast())
    {
      nullsub_1();
      v16 = v26;
    }

    else
    {
      memcpy(v26, v28, 0x221uLL);
      v16 = v28;
    }

    memcpy(v27, v16, sizeof(v27));
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v27) == 1)
    {
      memcpy(v25, v26, 0x221uLL);
      sub_2171F06D8(v25, &qword_27CB24400, &unk_21775E9A0);
      v18 = v28;
LABEL_14:
      memcpy(v27, v18, sizeof(v27));
      return memcpy(a4, v27, 0x221uLL);
    }

LABEL_13:
    v18 = v26;
    goto LABEL_14;
  }

  v11 = v9;
  v12 = v10;
  v23 = a4;
  v29 = v4;
  v26[0] = a1;
  v26[1] = a2;
  LOBYTE(v26[2]) = a3;
  v21 = *(v10 + 8);
  v22 = &v20;
  v20 = sub_2177528F8();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = &v20 - v14;
  sub_21726A5E0(a1, a2, a3);
  v21(v26, v11, v12);
  if (__swift_getEnumTagSinglePayload(v15, 1, v11) != 1)
  {
    *&v27[24] = v11;
    *&v27[32] = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
    (*(*(v11 - 8) + 32))(boxed_opaque_existential_0, v15, v11);
    sub_2171F3F0C(v27, v25);
    sub_2171F3F0C(v25, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AF0, &qword_217766158);
    if (swift_dynamicCast())
    {
      nullsub_1();
    }

    else
    {
      memcpy(v26, v28, 0x221uLL);
    }

    a4 = v23;
    goto LABEL_13;
  }

  (*(v13 + 8))(v15, v20);
  memcpy(v27, v28, sizeof(v27));
  a4 = v23;
  return memcpy(a4, v27, 0x221uLL);
}

uint64_t sub_2173A3F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2177528F8();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v42 = a3;
  __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  v18 = dynamic_cast_existential_1_conditional(a2, a2, &protocol descriptor for JSONValueBasedInitializable);
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    v45[0] = v15;
    v45[1] = v16;
    v46 = v17;
    v39 = *(v19 + 8);
    v22 = sub_2177528F8();
    v40 = &v37;
    v38 = v22;
    v23 = *(v22 - 8);
    MEMORY[0x28223BE20](v22);
    v25 = &v37 - v24;
    sub_21726A5E0(v15, v16, v17);
    v39(v45, v20, v21);
    if (__swift_getEnumTagSinglePayload(v25, 1, v20) == 1)
    {
      return (*(v23 + 8))(v25, v38);
    }

    else
    {
      v49 = v20;
      v50 = v21;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v47);
      (*(*(v20 - 8) + 32))(boxed_opaque_existential_0, v25, v20);
      v32 = v42;
      v33 = v43;
      v34 = v44;
      (*(v43 + 8))(v42, v44);
      sub_2171F3F0C(&v47, v51);
      sub_2171F3F0C(v51, &v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AF0, &qword_217766158);
      v35 = v41;
      v36 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v35, v36 ^ 1u, 1, a2);
      return (*(v33 + 32))(v32, v35, v34);
    }
  }

  else
  {
    *&v47 = v15;
    *(&v47 + 1) = v16;
    v48 = v17;
    JSONValue.flatten()(v51);
    v27 = swift_dynamicCast();
    v28 = (v43 + 8);
    if (v27)
    {
      __swift_storeEnumTagSinglePayload(v10, 0, 1, a2);
      v29 = v42;
      (*v28)(v42, v44);
      v30 = *(v11 + 32);
      v30(v14, v10, a2);
      v30(v29, v14, a2);
      return __swift_storeEnumTagSinglePayload(v29, 0, 1, a2);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v10, 1, 1, a2);
      return (*v28)(v10, v44);
    }
  }
}

__n128 Dictionary<>.structuredValue<A, B>(for:keyDescription:existingDecoder:configuration:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v13 = a8;
  v14 = a10;
  v15 = a11;
  v16 = a6;
  v17 = a5;
  sub_2173A2DC4(a1, a2, a3, a4, 1, sub_2173A4780, v12, a7, a9, a8);
  return result;
}

uint64_t sub_2173A43D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a6;
  v32 = a4;
  v33 = a3;
  v30 = a8;
  v29 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  sub_217751378();
  swift_allocObject();
  sub_217751368();
  v31 = a5;
  v34 = a7;
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a5, a7, v36);
  v17 = JSONEncoder.dataRequestConfiguration.setter(v36);
  v36[0] = v14;
  v36[1] = v15;
  v37 = v16;
  sub_21733AC44(v17, v18, v19);
  v20 = v38;
  v21 = sub_217751358();
  if (v20)
  {
  }

  v24 = v21;
  v25 = v22;
  v38 = a2;
  v27 = v31;
  v26 = v32;
  if (!v33)
  {
    sub_217751348();
    swift_allocObject();
    sub_217751338();
  }

  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v27, v34, v36);
  JSONDecoder.dataRequestConfiguration.setter(v36);
  sub_217751308();

  sub_217275694(v24, v25);

  v28 = v30;
  (*(v29 + 32))(v30, v12, v26);
  return __swift_storeEnumTagSinglePayload(v28, 0, 1, v26);
}

double sub_2173A4614(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21726A608(a1, a2, a3);
  }

  return result;
}

uint64_t sub_2173A4628(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25590, &qword_21776DFB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2173A46AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26AC8, &qword_217765F70);
    a2();
    OUTLINED_FUNCTION_154();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2173A4720()
{
  result = qword_280BE2210;
  if (!qword_280BE2210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2210);
  }

  return result;
}

unint64_t sub_2173A47A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26AE0;
  if (!qword_27CB26AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26AE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit9JSONValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2173A482C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173A486C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2173A48B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2173A48D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AE8, &qword_217766150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_22(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_20_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v14);
}

MusicKit::FileAsset_optional __swiftcall FileAsset.init(isNonPurgeable:protectionType:audioVariants:isAppleDigitalMaster:)(Swift::Bool_optional isNonPurgeable, MusicKit::FileAsset::ProtectionType_optional protectionType, Swift::OpaquePointer audioVariants, Swift::Bool_optional isAppleDigitalMaster)
{
  if (*protectionType.value == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *protectionType.value;
  }

  *v4 = isNonPurgeable.value | (v5 << 8);
  *(v4 + 8) = audioVariants;
  *(v4 + 16) = isAppleDigitalMaster.value;
  result.value.isAppleDigitalMaster = audioVariants._rawValue;
  result.is_nil = isAppleDigitalMaster.value;
  LOBYTE(result.value.audioVariants._rawValue) = protectionType;
  result.value.isNonPurgeable = isNonPurgeable.value;
  return result;
}

uint64_t static FileAsset.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = a1[16];
  v5 = a2[16];
  if (sub_2172849D0())
  {
    return v4 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173A4ABC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275506E6F4E7369 && a2 == 0xEE00656C62616567;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69746365746F7270 && a2 == 0xEE00657079546E6FLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261566F69647561 && a2 == 0xED000073746E6169;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000002177AB8B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

unint64_t sub_2173A4C34(char a1)
{
  result = 0x7275506E6F4E7369;
  switch(a1)
  {
    case 1:
      result = 0x69746365746F7270;
      break;
    case 2:
      result = 0x7261566F69647561;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173A4D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173A4ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173A4D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A4FB4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A4D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A4FB4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void FileAsset.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B00, &unk_217766170);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = v41 - v32;
  v43 = *(v24 + 1);
  v42 = *(v24 + 8);
  v41[1] = *(v24 + 16);
  v34 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_2173A4FB4(v34, v35, v36);
  sub_2177532F8();
  OUTLINED_FUNCTION_48();
  v37 = sub_217752F58();
  if (!v25)
  {
    v40 = v42;
    sub_2173A5008(v37, v38, v39);
    OUTLINED_FUNCTION_48();
    sub_217752F88();
    v44 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C70, &unk_217759670);
    sub_2173A6218(&qword_27CB26B18, sub_2173A505C, MEMORY[0x277D83948]);
    sub_217752F88();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2173A4FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B08;
  if (!qword_27CB26B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B08);
  }

  return result;
}

unint64_t sub_2173A5008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B10;
  if (!qword_27CB26B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B10);
  }

  return result;
}

unint64_t sub_2173A505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B20;
  if (!qword_27CB26B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B20);
  }

  return result;
}

uint64_t FileAsset.hash(into:)()
{
  v1 = *(v0 + 1);
  sub_217753208();
  MEMORY[0x21CEA3550](v1);
  sub_2172849DC();
  return sub_217753208();
}

uint64_t FileAsset.hashValue.getter()
{
  v1 = *(v0 + 1);
  sub_2177531E8();
  sub_217753208();
  MEMORY[0x21CEA3550](v1);
  sub_2172849DC();
  sub_217753208();
  return sub_217753238();
}

void FileAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12)
{
  OUTLINED_FUNCTION_171();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B28, &qword_217766180);
  OUTLINED_FUNCTION_0_0();
  v19 = v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  v23 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2173A4FB4(v23, v24, v25);
  sub_2177532C8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    OUTLINED_FUNCTION_4_7();
    v26 = sub_217752E78();
    v27 = v26;
    sub_2173A61C4(v26, v28, v29);
    OUTLINED_FUNCTION_4_7();
    sub_217752EA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C70, &unk_217759670);
    sub_2173A6218(&qword_27CB26B38, sub_2173A6290, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_4_7();
    sub_217752EA8();
    HIDWORD(v32) = a12;
    v30 = v33;
    OUTLINED_FUNCTION_4_7();
    v31 = sub_217752E78();
    (*(v19 + 8))(v22, v17);
    *v16 = v27 & 1;
    *(v16 + 1) = BYTE4(v32);
    *(v16 + 8) = v30;
    *(v16 + 16) = v31 & 1;
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173A5408(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

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

uint64_t sub_2173A551C(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x647261646E617473;
  }

  return 0x7069726373627573;
}

uint64_t sub_2173A55B0(uint64_t a1)
{
  sub_2177531E8();
  FileAsset.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2173A5610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2173A5664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173A5408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173A568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A62E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A56C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A62E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173A5704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A63E0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A5740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A63E0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173A577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A638C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A57B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A638C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173A57F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A6338(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A5830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A6338(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void FileAsset.ProtectionType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B48, &qword_217766188);
  OUTLINED_FUNCTION_0_0();
  v64 = v30;
  v65 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v63 = &v57 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B50, &qword_217766190);
  OUTLINED_FUNCTION_0_0();
  v61 = v34;
  v62 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v60 = &v57 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B58, &qword_217766198);
  OUTLINED_FUNCTION_0_0();
  v58 = v38;
  v59 = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  v41 = &v57 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B60, &qword_2177661A0);
  OUTLINED_FUNCTION_0_0();
  v44 = v43;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  v47 = &v57 - v46;
  v48 = *v24;
  v49 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2173A62E4(v49, v50, v51);
  v52 = sub_2177532F8();
  if (v48)
  {
    if (v48 == 1)
    {
      a13 = 1;
      sub_2173A638C(v52, v53, v54);
      v41 = v60;
      OUTLINED_FUNCTION_2_27(&type metadata for FileAsset.ProtectionType.StandardCodingKeys, &a13);
      v56 = v61;
      v55 = v62;
    }

    else
    {
      a14 = 2;
      sub_2173A6338(v52, v53, v54);
      v41 = v63;
      OUTLINED_FUNCTION_2_27(&type metadata for FileAsset.ProtectionType.SubscriptionCodingKeys, &a14);
      v56 = v64;
      v55 = v65;
    }
  }

  else
  {
    a12 = 0;
    sub_2173A63E0(v52, v53, v54);
    OUTLINED_FUNCTION_2_27(&type metadata for FileAsset.ProtectionType.NoneCodingKeys, &a12);
    v56 = v58;
    v55 = v59;
  }

  (*(v56 + 8))(v41, v55);
  (*(v44 + 8))(v47, v42);
  OUTLINED_FUNCTION_170();
}

uint64_t FileAsset.ProtectionType.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

void FileAsset.ProtectionType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v25;
  a24 = v26;
  v92 = v24;
  v28 = v27;
  v87 = v29;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B88, &qword_2177661A8);
  OUTLINED_FUNCTION_0_0();
  v88 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v90 = &v79 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B90, &qword_2177661B0);
  OUTLINED_FUNCTION_0_0();
  v85 = v34;
  v86 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = &v79 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26B98, &qword_2177661B8);
  OUTLINED_FUNCTION_0_0();
  v84 = v39;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v42 = &v79 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26BA0, &unk_2177661C0);
  OUTLINED_FUNCTION_0_0();
  v89 = v44;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  v47 = &v79 - v46;
  v48 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2173A62E4(v48, v49, v50);
  v51 = v92;
  sub_2177532C8();
  if (v51)
  {
    goto LABEL_10;
  }

  v81 = v38;
  v82 = v42;
  v83 = v37;
  v53 = v90;
  v52 = v91;
  v92 = v28;
  sub_217752EB8();
  sub_21733CF68();
  if (v55 == v56 >> 1)
  {
    goto LABEL_9;
  }

  v80 = 0;
  if (v55 < (v56 >> 1))
  {
    LODWORD(v57) = *(v54 + v55);
    sub_21733CF64();
    v59 = v58;
    v61 = v60;
    v62 = swift_unknownObjectRelease();
    v65 = v59 == v61 >> 1;
    v66 = v88;
    if (v65)
    {
      if (v57)
      {
        if (v57 == 1)
        {
          a13 = 1;
          sub_2173A638C(v62, v63, v64);
          v67 = v83;
          OUTLINED_FUNCTION_4_29(&type metadata for FileAsset.ProtectionType.StandardCodingKeys, &a13);
          v68 = v87;
          v69 = v43;
          v70 = v89;
          swift_unknownObjectRelease();
          (*(v85 + 8))(v67, v86);
          (*(v70 + 8))(v47, v69);
        }

        else
        {
          LODWORD(v86) = v57;
          a14 = 2;
          sub_2173A6338(v62, v63, v64);
          v75 = v80;
          sub_217752DE8();
          v68 = v87;
          v57 = v43;
          v76 = v89;
          if (v75)
          {
            (*(v89 + 8))(v47, v57);
            swift_unknownObjectRelease();
            v28 = v92;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v66 + 8))(v53, v52);
          (*(v76 + 8))(v47, v57);
          LOBYTE(v57) = v86;
        }
      }

      else
      {
        a12 = 0;
        sub_2173A63E0(v62, v63, v64);
        v74 = v82;
        OUTLINED_FUNCTION_4_29(&type metadata for FileAsset.ProtectionType.NoneCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v84 + 8))(v74, v81);
        v77 = OUTLINED_FUNCTION_3_1();
        v78(v77);
        v68 = v87;
      }

      *v68 = v57;
      __swift_destroy_boxed_opaque_existential_1(v92);
      goto LABEL_11;
    }

LABEL_9:
    v71 = sub_217752B48();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v73 = &type metadata for FileAsset.ProtectionType;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D84160], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v89 + 8))(v47, v43);
    v28 = v92;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_170();
    return;
  }

  __break(1u);
}

unint64_t sub_2173A61C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B30;
  if (!qword_27CB26B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B30);
  }

  return result;
}

uint64_t sub_2173A6218(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C70, &unk_217759670);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2173A6290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B40;
  if (!qword_27CB26B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B40);
  }

  return result;
}

unint64_t sub_2173A62E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B68;
  if (!qword_27CB26B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B68);
  }

  return result;
}

unint64_t sub_2173A6338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B70;
  if (!qword_27CB26B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B70);
  }

  return result;
}

unint64_t sub_2173A638C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B78;
  if (!qword_27CB26B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B78);
  }

  return result;
}

unint64_t sub_2173A63E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26B80;
  if (!qword_27CB26B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26B80);
  }

  return result;
}

unint64_t sub_2173A6438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BA8;
  if (!qword_27CB26BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BA8);
  }

  return result;
}

unint64_t sub_2173A6490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BB0;
  if (!qword_27CB26BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BB0);
  }

  return result;
}

uint64_t sub_2173A64E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2173A6524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2173A6584(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FileAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173A6770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BB8;
  if (!qword_27CB26BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BB8);
  }

  return result;
}

unint64_t sub_2173A67C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BC0;
  if (!qword_27CB26BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BC0);
  }

  return result;
}

unint64_t sub_2173A6820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BC8;
  if (!qword_27CB26BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BC8);
  }

  return result;
}

unint64_t sub_2173A6878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BD0;
  if (!qword_27CB26BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BD0);
  }

  return result;
}

unint64_t sub_2173A68D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BD8;
  if (!qword_27CB26BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BD8);
  }

  return result;
}

unint64_t sub_2173A6928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BE0;
  if (!qword_27CB26BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BE0);
  }

  return result;
}

unint64_t sub_2173A6980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BE8;
  if (!qword_27CB26BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BE8);
  }

  return result;
}

unint64_t sub_2173A69D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BF0;
  if (!qword_27CB26BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BF0);
  }

  return result;
}

unint64_t sub_2173A6A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26BF8;
  if (!qword_27CB26BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26BF8);
  }

  return result;
}

unint64_t sub_2173A6A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C00;
  if (!qword_27CB26C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C00);
  }

  return result;
}

unint64_t sub_2173A6AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C08;
  if (!qword_27CB26C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C08);
  }

  return result;
}

unint64_t sub_2173A6B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C10;
  if (!qword_27CB26C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C10);
  }

  return result;
}

void static MusicPropertySource.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F00, &qword_217766810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  *(inited + 32) = 0;
  sub_2172AFF04(1, 2, 1, inited);
  *(v1 + 16) = 2;
  *(v1 + 33) = 1;
}

uint64_t sub_2173A6C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F6C61746163 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_2173A6D18(char a1)
{
  if (a1)
  {
    return 0x7972617262696CLL;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t sub_2173A6D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A7810(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A6D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A7810(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173A6DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173A6C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173A6DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A7768(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A6E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A7768(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173A6E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A77BC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A6EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A77BC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MusicPropertySource.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26C18, &qword_217766818);
  OUTLINED_FUNCTION_0_0();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26C20, &qword_217766820);
  OUTLINED_FUNCTION_0_0();
  v28 = v8;
  v29 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26C28, &qword_217766828);
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = *v1;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173A7768(v19, v20, v21);
  v22 = sub_2177532F8();
  v25 = (v14 + 8);
  if (v18)
  {
    v34 = 1;
    sub_2173A77BC(v22, v23, v24);
    v26 = v30;
    sub_217752EE8();
    (*(v31 + 8))(v26, v32);
  }

  else
  {
    v33 = 0;
    sub_2173A7810(v22, v23, v24);
    sub_217752EE8();
    (*(v28 + 8))(v11, v29);
  }

  return (*v25)(v17, v12);
}

uint64_t MusicPropertySource.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t MusicPropertySource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v47 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26C48, &qword_217766830);
  OUTLINED_FUNCTION_0_0();
  v46 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26C50, &qword_217766838);
  OUTLINED_FUNCTION_0_0();
  v45 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26C58, &unk_217766840);
  OUTLINED_FUNCTION_0_0();
  v48 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173A7768(v17, v18, v19);
  v20 = v50;
  sub_2177532C8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v7;
  v44 = v11;
  v50 = a1;
  v21 = v49;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v24 == v25 >> 1)
  {
    v49 = result;
LABEL_9:
    v38 = sub_217752B48();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v40 = &type metadata for MusicPropertySource;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v16, v12);
    a1 = v50;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42[1] = 0;
  if (v24 >= (v25 >> 1))
  {
    __break(1u);
  }

  else
  {
    v26 = *(v23 + v24);
    v27 = sub_21733CF64();
    v29 = v28;
    v31 = v30;
    v32 = swift_unknownObjectRelease();
    if (v29 != v31 >> 1)
    {
      v49 = v27;
      goto LABEL_9;
    }

    v51 = v26;
    if (v26)
    {
      v53 = 1;
      sub_2173A77BC(v32, v33, v34);
      v35 = v6;
      OUTLINED_FUNCTION_195(&type metadata for MusicPropertySource.LibraryCodingKeys, &v53);
      v36 = v47;
      v37 = v48;
      swift_unknownObjectRelease();
      (*(v46 + 8))(v35, v21);
    }

    else
    {
      v52 = 0;
      sub_2173A7810(v32, v33, v34);
      v41 = v44;
      OUTLINED_FUNCTION_195(&type metadata for MusicPropertySource.CatalogCodingKeys, &v52);
      v36 = v47;
      v37 = v48;
      swift_unknownObjectRelease();
      (*(v45 + 8))(v41, v43);
    }

    (*(v37 + 8))(v16, v29);
    *v36 = v51;
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  return result;
}

uint64_t static Array<A>.extendedLibrary.getter()
{
  v0 = type metadata accessor for MusicLibrary();
  v1 = dynamic_cast_existential_1_conditional(v0, v0, &protocol descriptor for ExtendedMusicLibrary);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    sub_2172AFF04(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = v3;
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_2172AFF04(v4 > 1, v5 + 1, 1, v3);
      v2 = v7;
    }

    *(v2 + 16) = v5 + 1;
    *(v2 + v5 + 32) = 1;
  }

  return v2;
}

unint64_t sub_2173A7768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C30;
  if (!qword_27CB26C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C30);
  }

  return result;
}

unint64_t sub_2173A77BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C38;
  if (!qword_27CB26C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C38);
  }

  return result;
}

unint64_t sub_2173A7810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C40;
  if (!qword_27CB26C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C40);
  }

  return result;
}

unint64_t sub_2173A7868()
{
  result = qword_27CB26C60;
  if (!qword_27CB26C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26C68, &qword_217766850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C60);
  }

  return result;
}

unint64_t sub_2173A78D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C70;
  if (!qword_27CB26C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C70);
  }

  return result;
}

_BYTE *sub_2173A7934(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173A7A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C78;
  if (!qword_27CB26C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C78);
  }

  return result;
}

unint64_t sub_2173A7A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C80;
  if (!qword_27CB26C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C80);
  }

  return result;
}

unint64_t sub_2173A7AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C88;
  if (!qword_27CB26C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C88);
  }

  return result;
}

unint64_t sub_2173A7B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C90;
  if (!qword_27CB26C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C90);
  }

  return result;
}

unint64_t sub_2173A7B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26C98;
  if (!qword_27CB26C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26C98);
  }

  return result;
}

unint64_t sub_2173A7BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26CA0;
  if (!qword_27CB26CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26CA0);
  }

  return result;
}

unint64_t sub_2173A7C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26CA8;
  if (!qword_27CB26CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26CA8);
  }

  return result;
}

uint64_t static PartialLibraryPredicateResolver.resolving<A>(keyPath:)(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v6[0] = *(v1 + 96);
  v6[1] = v2;
  OUTLINED_FUNCTION_6_25();
  v6[6] = v3;
  type metadata accessor for LibraryPredicateResolver(0, v6);
  v4 = OUTLINED_FUNCTION_44_1();
  sub_2173A7E8C(v4);
  OUTLINED_FUNCTION_44_1();

  return v1;
}

uint64_t static PartialLibraryPredicateResolver.resolving(keyPath:)()
{
  v4[0] = *(v0 + 96);
  v4[1] = &type metadata for MusicIdentifierSet;
  OUTLINED_FUNCTION_6_25();
  v4[6] = v1;
  type metadata accessor for LibraryPredicateResolver(0, v4);
  v2 = OUTLINED_FUNCTION_44_1();
  sub_2173A7EA4(v2);
  OUTLINED_FUNCTION_44_1();

  return v0;
}

void sub_2173A7DC0()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000057, 0x80000002177AC7C0);
  type metadata accessor for AnyMusicPredicateResolver();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_7_24("Fatal error");
  __break(1u);
}

uint64_t sub_2173A7EBC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_2173A7F10(uint64_t a1)
{
  v2 = *v1;
  v1[2] = a1;
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 208), 1, 1, *(v2 + 152));
  OUTLINED_FUNCTION_0_41();
  v4 = (v1 + *(v3 + 216));
  *v4 = 0;
  v4[1] = 0;
  OUTLINED_FUNCTION_0_41();
  *(v1 + *(v5 + 224)) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t *sub_2173A7F9C(uint64_t a1)
{
  v2 = *v1;
  v1[2] = a1 | 0x8000000000000000;
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 208), 1, 1, *(v2 + 152));
  OUTLINED_FUNCTION_0_41();
  v4 = (v1 + *(v3 + 216));
  *v4 = 0;
  v4[1] = 0;
  OUTLINED_FUNCTION_0_41();
  *(v1 + *(v5 + 224)) = MEMORY[0x277D84F90];
  return v1;
}

void sub_2173A802C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = sub_2177528F8();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v10 = *(v2 + 2);
  if (v10 < 0)
  {
    v18 = *(v4 + 144);
    OUTLINED_FUNCTION_4_42();
    v20 = *(v19 + 80);
    swift_retain_n();
    v21 = v20(v18, v18);
    *v58 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    if (v21)
    {
      v57[0] = v21;
      sub_217752BA8();
      v22 = sub_217751F08();

      if ((v22 & 1) == 0)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_4_42();
      (*(v23 + 88))(v57, &type metadata for MusicIdentifierSet, &type metadata for MusicIdentifierSet);
      memcpy(v58, v57, 0x162uLL);
      if (sub_2173A8AAC(v58) == 1)
      {
        goto LABEL_28;
      }

      memcpy(v56, v58, 0x162uLL);
      if (sub_2173A8AC0(v56) == 1)
      {
        nullsub_1();
        v28 = *v27;
      }

      else
      {
        nullsub_1();
        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EA8, &unk_217766C00);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_2177586E0;
        memcpy((v28 + 32), v30, 0x161uLL);
      }

      v31 = v54;
      swift_beginAccess();
      *(v31 + 32) = v28;
      goto LABEL_35;
    }

LABEL_10:

    return;
  }

  v52 = v7;
  v53 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_42();
  v13 = *(v12 + 80);
  swift_retain_n();
  v55 = v10;
  v14 = v13(AssociatedTypeWitness, AssociatedTypeWitness);
  *v58 = v55;
  if (!v14)
  {
    goto LABEL_10;
  }

  v57[0] = v14;
  sub_217752BA8();
  v15 = sub_217751F08();

  if ((v15 & 1) == 0)
  {
    goto LABEL_28;
  }

  v51 = AssociatedTypeWitness;
  v16 = v52;
  (*(v52 + 16))(v9, &v3[*(*v3 + 208)], v6);
  if (__swift_getEnumTagSinglePayload(v9, 1, v53) != 1)
  {
    v24 = swift_dynamicCast();
    v17 = v54;
    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }

    v25 = v58[0];
    OUTLINED_FUNCTION_4_42();
    OUTLINED_FUNCTION_1_36();
    v26();
    if (v58[8])
    {
      if (v58[8] == 1)
      {
        sub_2173A8AC8(*v58, 1);
        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      if (v58[8] != 2)
      {
        goto LABEL_25;
      }
    }

    if (v25 != (v58[0] & 1))
    {
      goto LABEL_25;
    }

LABEL_22:
    v32 = *(v4 + 184);
    *v58 = *(v4 + 160);
    *&v58[16] = v32;
    type metadata accessor for LibraryRequestConfigurationParameters(0, v58);
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      goto LABEL_25;
    }

    v34 = &v3[*(*v3 + 216)];
    v35 = *v34;
    if (!*v34)
    {
      goto LABEL_25;
    }

    v36 = v33;
    v37 = *(v34 + 1);

    sub_21722063C(v35, v37);
    v35(v36);

    sub_2172202A4(v35, v37);
LABEL_28:

    return;
  }

  (*(v16 + 8))(v9, v6);
  v17 = v54;
LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  OUTLINED_FUNCTION_4_42();
  v39 = *(v38 + 88);
  OUTLINED_FUNCTION_1_36();
  v39();
  if (v58[40] != 255)
  {
    v40 = MusicPredicateValue<A>.libraryFilterValue.getter();
    sub_2172CB34C(v58, qword_27CB26CB8, &unk_217766C20);
    swift_beginAccess();
    sub_2175442F4(v40);
LABEL_27:
    swift_endAccess();
    goto LABEL_28;
  }

  sub_2172CB34C(v58, &qword_27CB26CB0, &unk_217766C10);
  OUTLINED_FUNCTION_1_36();
  v39();
  v41 = *v58;
  v42 = *&v58[8];
  switch(v58[16])
  {
    case 0u:
      goto LABEL_32;
    case 1u:

      v43 = v41;
      goto LABEL_34;
    case 2u:
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C8, &unk_2177589A0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2177586E0;
      *(v43 + 32) = v41;
      *(v43 + 40) = v42;

LABEL_34:
      swift_beginAccess();
      *(v17 + 24) = v43;
LABEL_35:

      return;
  }

  OUTLINED_FUNCTION_1_36();
  v39();
  v44 = *v58;
  v45 = *&v58[8];
  if (!v58[16])
  {
    v46 = 0;
LABEL_40:
    v47 = *&v3[*(*v3 + 224)];
    swift_beginAccess();
    sub_217751DE8();
    sub_21770B834();
    v48 = *(*(v17 + 48) + 16);
    sub_21770BB64(v48);
    v49 = *(v17 + 48);
    *(v49 + 16) = v48 + 1;
    v50 = v49 + 32 * v48;
    *(v50 + 32) = v47;
    *(v50 + 40) = v44;
    *(v50 + 48) = v45;
    *(v50 + 56) = v46;
    *(v17 + 48) = v49;
    goto LABEL_27;
  }

  if (v58[16] == 2)
  {
    v46 = 1;
    goto LABEL_40;
  }

  if (v58[16] != 1)
  {
    *v58 = 0;
    *&v58[8] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000019, 0x80000002177AC820);
    v57[0] = v55;
    sub_217753308();
    sub_217753018();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177AC840);
  }

  OUTLINED_FUNCTION_7_24("Fatal error");
  __break(1u);
}

double sub_2173A88B0()
{

  OUTLINED_FUNCTION_0_41();
  v2 = *(v1 + 208);
  sub_2177528F8();
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_41();
  sub_2172202A4(*(v0 + *(v4 + 216)), *(v0 + *(v4 + 216) + 8));
  OUTLINED_FUNCTION_0_41();
}

char *LibraryPredicateResolver.deinit()
{

  OUTLINED_FUNCTION_0_41();
  v2 = *(v1 + 208);
  sub_2177528F8();
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_41();
  sub_2172202A4(*(v0 + *(v4 + 216)), *(v0 + *(v4 + 216) + 8));
  OUTLINED_FUNCTION_0_41();

  return v0;
}

uint64_t LibraryPredicateResolver.__deallocating_deinit()
{
  LibraryPredicateResolver.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2173A8AAC(uint64_t a1)
{
  v1 = *(a1 + 353);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_2173A8AC8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2173A8ADC(a1, a2);
  }

  return result;
}

double sub_2173A8ADC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_2173A8B90(uint64_t a1)
{
  result = sub_2177528F8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2173A8C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2173A8CA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_2173A8CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2173A8DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26D40;
  if (!qword_27CB26D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26D40);
  }

  return result;
}

uint64_t sub_2173A8DFC(uint64_t *a1, uint64_t a2)
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
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v12 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v7 && v3 == v8;
  if (!v13 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }

LABEL_16:
    if (v6)
    {
      if (!v10)
      {
        return 0;
      }

      v15 = v5 == v11 && v6 == v10;
      if (!v15 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v9 != 2 && ((v9 ^ v4) & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2173A8F0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72617262694C7369 && a2 == 0xE900000000000079;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x49676F6C61746163 && a2 == 0xE900000000000064)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

uint64_t sub_2173A9068(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x72617262694C7369;
      break;
    case 3:
      result = 0x49676F6C61746163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173A90E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26D48, &qword_217766E90);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[3];
  v30 = v1[2];
  v31 = v11;
  v35 = *(v1 + 32);
  v12 = v1[5];
  v28 = v1[6];
  v29 = v12;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173A9890(v13, v14, v15);
  sub_217751DE8();
  v16 = sub_2177532F8();
  v33 = v9;
  v34 = v10;
  v36 = 0;
  sub_2172E1B18(v16, v17, v18);
  OUTLINED_FUNCTION_2_38();
  v19 = v32;
  sub_217752F88();

  if (!v19)
  {
    v25 = v28;
    v24 = v29;
    v33 = v30;
    v34 = v31;
    v36 = 1;
    sub_2173A98E4(v20, v21, v22);
    sub_217751DE8();
    OUTLINED_FUNCTION_2_38();
    sub_217752F88();

    LOBYTE(v33) = 2;
    sub_217752F08();
    v33 = v24;
    v34 = v25;
    v36 = 3;
    OUTLINED_FUNCTION_2_38();
    sub_217752F38();
  }

  return (*(v5 + 8))(v8, v3, v23);
}

uint64_t sub_2173A9304(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  sub_217751FF8();
  sub_217751FF8();
  if (v2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!v3)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2173A93D8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  if (v1 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void sub_2173A94AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26D58, &qword_217766E98);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173A9890(v6, v7, v8);
  v9 = sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2172E1C68(v9, v10, v11);
    OUTLINED_FUNCTION_0_42();
    v12 = sub_217752EA8();
    v18 = v19;
    sub_2173A9B10(v12, v13, v14);
    OUTLINED_FUNCTION_0_42();
    sub_217752EA8();
    v17 = v19;
    LOBYTE(v19) = 2;
    v21 = sub_217752E28();
    OUTLINED_FUNCTION_0_42();
    sub_217752E58();
    v15 = OUTLINED_FUNCTION_1_37();
    v16(v15);
    *a2 = v18;
    *(a2 + 8) = v20;
    *(a2 + 16) = v17;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    *(a2 + 40) = v19;
    *(a2 + 48) = v20;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2173A9754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173A8F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173A977C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A9890(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173A97B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173A9890(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173A9830(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = *(v1 + 40);
  sub_2177531E8();
  sub_2173A9304(v6);
  return sub_217753238();
}

unint64_t sub_2173A9890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7BF0;
  if (!qword_280BE7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7BF0);
  }

  return result;
}

unint64_t sub_2173A98E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26D50;
  if (!qword_27CB26D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26D50);
  }

  return result;
}

void sub_2173A9938(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[3];
  v11 = v1[2];
  v12 = *v1;
  v10 = *(v1 + 32);
  v5 = v1[6];
  v9 = v1[5];
  v6 = v1[9];
  v7 = v1[14];
  if (v1[11])
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C8844();
    sub_217751DE8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C8844();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v6)
  {
LABEL_3:
    sub_217751DE8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C8844();
  }

LABEL_4:
  v8 = v9;
  if (!v5)
  {
    v8 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v3;
  *(a1 + 16) = v11;
  *(a1 + 24) = v4;
  *(a1 + 32) = v10;
  *(a1 + 40) = v8;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
}

unint64_t sub_2173A9B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7DE0;
  if (!qword_280BE7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7DE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPlayParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173A9C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26D60[0];
  if (!qword_27CB26D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB26D60);
  }

  return result;
}

unint64_t sub_2173A9C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7BE0;
  if (!qword_280BE7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7BE0);
  }

  return result;
}

unint64_t sub_2173A9CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7BE8;
  if (!qword_280BE7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7BE8);
  }

  return result;
}

uint64_t AnyLibraryRequestConfigurationParameters.__allocating_init(filteringOptions:)(uint64_t *a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = v3;
  *(result + 32) = v3;
  *(result + 40) = v3;
  *(result + 72) = v3;
  v4 = *a1;
  *(result + 48) = v3;
  *(result + 56) = v4;
  *(result + 64) = *(a1 + 8);
  return result;
}

uint64_t AnyLibraryRequestConfigurationParameters.init(filteringOptions:)(uint64_t *a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  *(v1 + 40) = v2;
  *(v1 + 72) = v2;
  v3 = *a1;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = *(a1 + 8);
  return v1;
}

double sub_2173A9E20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_38(v2 + 16, a2);
  *(v2 + 16) = a1;
}

double sub_2173A9EF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_38(v2 + 24, a2);
  *(v2 + 24) = a1;
}

double sub_2173A9FA4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_38(v2 + 32, a2);
  *(v2 + 32) = a1;
}

double sub_2173AA0EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_38(v2 + 48, a2);
  *(v2 + 48) = a1;
}

uint64_t sub_2173AA16C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_217212418(a1, &v4);
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2173AA1B0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_1_38(v2 + 56, a2);
  *(v2 + 56) = *a1;
  *(v2 + 64) = *(a1 + 8);
  return result;
}

double sub_2173AA28C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_38(v2 + 72, a2);
  *(v2 + 72) = a1;
}

uint64_t AnyLibraryRequestConfigurationParameters.deinit()
{

  return v0;
}

uint64_t AnyLibraryRequestConfigurationParameters.__deallocating_deinit()
{
  AnyLibraryRequestConfigurationParameters.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t MusicRecentlyPlayedResponse.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for MusicItemCollection(0, *(a1 + 16), *(*(a1 + 24) + 8), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

void MusicRecentlyPlayedResponse<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MusicItemCollection(0, *(a2 + 16), *(*(a2 + 24) + 8), a4);

  MusicItemCollection<>.hash(into:)(a1, v5);
}

uint64_t MusicRecentlyPlayedResponse<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  MusicRecentlyPlayedResponse<>.hash(into:)(v6, a1, a2, v4);
  return sub_217753238();
}

uint64_t sub_2173AA960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicRecentlyPlayedResponse<>.hash(into:)(v7, a2, v4, v5);
  return sub_217753238();
}

uint64_t MusicRecentlyPlayedResponse<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  sub_2171FF30C(a1, v24);
  CloudResourceCollection<A>.init(from:)(v24, a2, a4, v10, v11, v12, v13, v14, v23[0], v23[1], v23[2], v23[3], v23[4], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  if (!v5)
  {
    v17 = type metadata accessor for CloudResourceCollection(0, a2, v15, v16);
    v18 = *(v17 - 8);
    (*(v18 + 16))(v24, v25, v17);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    Decoder.dataRequestConfiguration.getter(v19, v20);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = Decoder.sharedRelatedItemStore.getter();
    sub_217640B30(v24, v23, v21, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, x8_0);
    (*(v18 + 8))(v25, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicRecentlyPlayedResponse<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Encoder.dataRequestConfiguration.getter(v7, v8);
  sub_217640CEC(a2, &protocol witness table for AnyMusicDataRequestConfiguration, v20);
  result = sub_21733AB9C(v19);
  if (!v3)
  {
    v12 = type metadata accessor for CloudResourceCollection(0, *(a2 + 16), v10, v11);
    CloudResourceCollection<A>.encode(to:)(a1, v12, a3, v13, v14, v15, v16, v17, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v20[0], v20[1], v20[2], v20[3], v20[4], v20[5]);
    return (*(*(v12 - 8) + 8))(v20, v12);
  }

  return result;
}

unint64_t sub_2173AAC90(Swift::Bool a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  to._countAndFlagsBits = 0;
  to._object = 0xE000000000000000;
  v5 = *(a2 + 16);
  type metadata accessor for MusicItemCollection(0, v5, *(*(a2 + 24) + 8), a4);
  swift_getWitnessTable();
  v6._countAndFlagsBits = 0x736D657469;
  v6._object = 0xE500000000000000;
  RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(v6, a1, &to);
  if (v5 == &type metadata for RecentlyPlayedMusicItem)
  {
    v9 = 0xD000000000000025;
  }

  else
  {
    sub_217752AA8();

    v7 = sub_217753348();
    MEMORY[0x21CEA23B0](v7);

    MEMORY[0x21CEA23B0](10302, 0xE200000000000000, v8);
    v9 = 0xD00000000000001CLL;
  }

  v14 = v9;
  v10 = (to._object >> 56) & 0xF;
  if ((to._object & 0x2000000000000000) == 0)
  {
    v10 = to._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    MEMORY[0x21CEA23B0]();

    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v11);
  }

  else
  {
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v12);
  return v14;
}

uint64_t sub_2173AAE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_2173AAEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = sub_2173AB24C();
  v14 = v10;
  (*(v6 + 16))(v8, v3, a2);
  return sub_2173AB290(v8, &v14, v11, a2, a3);
}

uint64_t sub_2173AAFE8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  switch(result)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v2 = 1;
      goto LABEL_35;
    case 2:
      v2 = 2;
      goto LABEL_35;
    case 3:
      v2 = 3;
      goto LABEL_35;
    case 4:
      v2 = 4;
      goto LABEL_35;
    case 5:
      v2 = 5;
      goto LABEL_35;
    case 6:
      v2 = 6;
      goto LABEL_35;
    case 7:
      v2 = 7;
      goto LABEL_35;
    case 8:
    case 10:
    case 23:
    case 30:
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000002ELL, 0x80000002177ACD60);
      type metadata accessor for MusicKit_SoftLinking_ModelObjectType(0);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177ACD90);
      goto LABEL_37;
    case 9:
      v2 = 8;
      goto LABEL_35;
    case 11:
      v2 = 9;
      goto LABEL_35;
    case 12:
      v2 = 10;
      goto LABEL_35;
    case 13:
      v2 = 11;
      goto LABEL_35;
    case 14:
      v2 = 12;
      goto LABEL_35;
    case 15:
      v2 = 13;
      goto LABEL_35;
    case 16:
      v2 = 14;
      goto LABEL_35;
    case 17:
      v2 = 15;
      goto LABEL_35;
    case 18:
      v2 = 16;
      goto LABEL_35;
    case 19:
      v2 = 17;
      goto LABEL_35;
    case 20:
      v2 = 18;
      goto LABEL_35;
    case 21:
      v2 = 19;
      goto LABEL_35;
    case 22:
      v2 = 20;
      goto LABEL_35;
    case 24:
      v2 = 21;
      goto LABEL_35;
    case 25:
      v2 = 22;
      goto LABEL_35;
    case 26:
      v2 = 23;
      goto LABEL_35;
    case 27:
      v2 = 24;
      goto LABEL_35;
    case 28:
      v2 = 25;
      goto LABEL_35;
    case 29:
      v2 = 26;
      goto LABEL_35;
    case 31:
      v2 = 27;
      goto LABEL_35;
    case 32:
      v2 = 28;
      goto LABEL_35;
    case 33:
      v2 = 29;
      goto LABEL_35;
    case 34:
      v2 = 30;
      goto LABEL_35;
    case 35:
      v2 = 31;
      goto LABEL_35;
    case 36:
      v2 = 32;
      goto LABEL_35;
    case 37:
      v2 = 33;
LABEL_35:
      *a2 = v2;
      break;
    default:
LABEL_37:
      result = sub_217752D08();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_2173AB24C()
{
  result = qword_280BE22D8;
  if (!qword_280BE22D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE22D8);
  }

  return result;
}

id sub_2173AB290(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 32))(v11, v9);
  LOBYTE(v21[0]) = *a2;
  v12 = v21[0];
  (*(a5 + 40))(v21, a4, a5);
  (*(a5 + 32))(v21, a4, a5);
  v13 = sub_21721478C();
  MusicItem.identifierSet.getter(a4, *(a5 + 8), v20);
  v19[7] = v12;
  v14 = sub_2172B7F78(v13);
  memcpy(v21, v20, 0x161uLL);
  sub_217269F50(v21);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_217751D88();
  v17 = [v15 initWithIdentifierSet:v14 modelObjectType:v13 storageDictionary:{v16, }];

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, a4);
  return v17;
}

uint64_t Curator.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26DE8, &qword_2177673D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for CuratorPropertyProvider(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;

  memcpy(v82, a1, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v17 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v18 = v17;
    v19 = sub_217751D98();
  }

  else
  {
    v19 = sub_217751DC8();
  }

  v20 = sub_21729E6F4(v19);

  v21 = sub_217751DE8();
  v73 = v20;
  sub_2173ABEBC(v21, v78);
  v70 = a4;
  v64 = v13;
  if (LOBYTE(v78[0]) == 2 || (v78[0] & 1) != 0)
  {
    if (qword_280BE7E50 != -1)
    {
      swift_once();
    }

    v22 = &qword_280BE7E58;
  }

  else
  {
    if (qword_280BE4BF0 != -1)
    {
      swift_once();
    }

    v22 = &qword_280BE4BF8;
  }

  v23 = *(v22 + 16);
  v25 = *v22;
  v24 = v22[1];
  memcpy(v78, v82, 0x161uLL);
  v76[0] = v25;
  v76[1] = v24;
  LOBYTE(v76[2]) = v23;
  v75[0] = v25;
  v75[1] = v24;
  LOBYTE(v75[2]) = v23;
  swift_bridgeObjectRetain_n();
  v83.value.rawValue._countAndFlagsBits = v76;
  v83.value.rawValue._object = v75;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v77, v83, v84);

  countAndFlagsBits = v77[0].type.rawValue._countAndFlagsBits;
  object = v77[0].type.rawValue._object;
  isLibraryType = v77[0].type.isLibraryType;
  v69 = v77[0].href.value._countAndFlagsBits;
  v71 = v77[0].id.rawValue._object;
  v72 = v77[0].href.value._object;
  v27 = a3;
  sub_21736C814(a3, v77);
  v65 = a2;
  v66 = a3;
  if (!v77[0].type.rawValue._object)
  {
    sub_2171F06D8(v77, &qword_27CB27590, &qword_21776ADF0);
    memset(v78, 0, 40);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v78, 0, 40);
    goto LABEL_20;
  }

  if (!*(&v78[1] + 1))
  {
LABEL_20:
    sub_2171F06D8(v78, &qword_27CB24B68, &qword_217759430);
    goto LABEL_21;
  }

  v28 = object;
  sub_2171F3F0C(v78, v79);
  v29 = v80;
  v30 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    v31 = v64;
    sub_2173AC5B4(v10, v64);
    sub_2173AC4F4(v31, v16);
    memcpy(v78, v82, 0x161uLL);
    v32 = v11[15];
    memcpy(v75, (v31 + v32), 0x161uLL);
    memcpy(v74, (v31 + v32), sizeof(v74));
    sub_217269EF4(v75, v77);
    MusicIdentifierSet.union(_:)();
    memcpy(v76, v74, 0x161uLL);
    sub_217269F50(v76);
    sub_2173AC558(v31);
    sub_217269F50(v82);
    v33 = v11[15];
    memcpy(v78, &v16[v33], 0x161uLL);
    sub_217269F50(v78);
    memcpy(&v16[v33], v77, 0x161uLL);
    v34 = &v16[v11[16]];
    sub_217751DE8();

    *v34 = countAndFlagsBits;
    *(v34 + 1) = v28;
    v34[16] = isLibraryType;
    v35 = &v16[v11[17]];

    v36 = v72;
    *v35 = v69;
    v35[1] = v36;
    __swift_destroy_boxed_opaque_existential_1(v79);
    goto LABEL_26;
  }

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2171F06D8(v10, &qword_27CB26DE8, &qword_2177673D0);
  __swift_destroy_boxed_opaque_existential_1(v79);
  object = v28;
LABEL_21:
  sub_217751DE8();
  v37 = object;
  sub_217751DE8();
  v64 = OUTLINED_FUNCTION_0_43();
  v38 = OUTLINED_FUNCTION_0_43();
  v39 = OUTLINED_FUNCTION_0_43();
  v40 = OUTLINED_FUNCTION_0_43();
  sub_2172A497C(v78);
  memcpy(v16, v78, 0x221uLL);
  *(v16 + 552) = 0u;
  *(v16 + 71) = 1;
  *(v16 + 36) = 0u;
  *(v16 + 37) = 0u;
  *(v16 + 38) = 0u;
  *(v16 + 78) = 0;
  v16[632] = 2;
  memcpy(v16 + 640, v78, 0x221uLL);
  *(v16 + 1192) = 0u;
  v41 = v11[11];
  v42 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v16[v41], 1, 1, v42);
  v43 = &v16[v11[12]];
  *(v43 + 12) = 0;
  *(v43 + 4) = 0u;
  *(v43 + 5) = 0u;
  *(v43 + 2) = 0u;
  *(v43 + 3) = 0u;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *&v16[v11[13]] = 0;
  if (qword_280BE7AA8 != -1)
  {
    swift_once();
  }

  v44 = qword_280C023C8;
  if (qword_280C023C8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v63 = sub_217752D28();
    v45 = v72;

    v71 = v44;
    v44 = v63;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v45 = v72;
  }

  *&v16[v11[14]] = v44;
  v46 = &v16[v11[17]];
  memcpy(&v16[v11[15]], v82, 0x161uLL);
  v47 = &v16[v11[16]];
  *v47 = countAndFlagsBits;
  *(v47 + 1) = v37;
  v47[16] = isLibraryType;
  *v46 = v69;
  v46[1] = v45;
  *&v16[v11[18]] = v64;
  *&v16[v11[19]] = v38;
  *&v16[v11[20]] = v39;
  *&v16[v11[21]] = v40;
  v27 = v66;
LABEL_26:
  if (v16[632] == 2)
  {
    v48 = sub_2172A3848(0, v73);
    if ((v49 & 1) == 0)
    {
      v50 = [objc_opt_self() kindForRawValue_];
      if (v50 == 4)
      {
        v51 = 1;
        goto LABEL_33;
      }

      if (v50 == 1)
      {
        v51 = 0;
LABEL_33:
        v16[632] = v51;
      }
    }
  }

  if (!*(v16 + 150))
  {
    v52 = sub_2172A3830(2, v73);
    if (v53)
    {
      *(v16 + 149) = v52;
      *(v16 + 150) = v53;
    }
  }

  swift_getKeyPath("X\\=e");
  sub_2173AC988(4, v73);
  if (*(&v78[1] + 1))
  {
    v54 = v27;
    v55 = swift_dynamicCast();
    if (v55)
    {
      v56 = v77[0].id.rawValue._countAndFlagsBits;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = v77[0].id.rawValue._object;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v54 = v27;
    sub_2171F06D8(v78, &qword_27CB2AD40, &qword_2177583F0);
    v56 = 0;
    v57 = 0;
  }

  sub_2173AC988(5, v73);
  if (!v75[3])
  {
    sub_2171F06D8(v75, &qword_27CB2AD40, &qword_2177583F0);
    if (v57)
    {
      v60 = 0;
      v59 = 0;
      goto LABEL_57;
    }

LABEL_58:

    v77[0].id = xmmword_2177586D0;
    v77[0].type.rawValue = 0u;
    *&v77[0].type.isLibraryType = 0u;
    *&v77[0].href.value._object = 0u;
    goto LABEL_59;
  }

  v58 = swift_dynamicCast();
  if (v58)
  {
    v59 = *&v78[0];
  }

  else
  {
    v59 = 0;
  }

  if (v58)
  {
    v60 = *(&v78[0] + 1);
  }

  else
  {
    v60 = 0;
  }

  if (v57)
  {
    goto LABEL_57;
  }

  if (!v60)
  {
    goto LABEL_58;
  }

  v60 = *(&v78[0] + 1);
LABEL_57:

  v77[0].id.rawValue._countAndFlagsBits = v56;
  v77[0].id.rawValue._object = v57;
  v77[0].type.rawValue._countAndFlagsBits = v59;
  v77[0].type.rawValue._object = v60;
  *&v77[0].type.isLibraryType = 0u;
  *&v77[0].href.value._object = 0u;
LABEL_59:
  v78[0] = v77[0].id;
  v78[1] = v77[0].type.rawValue;
  v78[2] = *&v77[0].type.isLibraryType;
  v78[3] = *&v77[0].href.value._object;
  sub_2172A54C0();

  sub_2171F06D8(v77, &qword_27CB24B70, &unk_217759460);
  v76[3] = v11;
  v76[4] = &protocol witness table for CuratorPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
  sub_2173AC4F4(v16, boxed_opaque_existential_0);
  Curator.init(propertyProvider:)(v76, v70);
  swift_unknownObjectRelease();
  sub_2171F06D8(v54, &qword_27CB27590, &qword_21776ADF0);
  return sub_2173AC558(v16);
}

void sub_2173ABEBC(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_217632860(0), (v5 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_21721E0AC(*(a1 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = 2;
    goto LABEL_12;
  }

  v6 = [objc_opt_self() kindForRawValue_];
  if (v6 == 4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6 == 1)
  {
    v7 = 0;
  }

LABEL_12:
  *a2 = v7;
}

uint64_t Curator.convertToLegacyModelStorageDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2172A4AA8(a1, a2, a3);
  v89 = sub_217751DC8();
  if (qword_280BE8168 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_280BE8168);
  }

  sub_2176CA2D8(qword_280C02460, v3, v4, v5, v6, v7, v8, v9, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, v85, v86);
  v10 = 1;
  if (v84)
  {
    v10 = 2;
  }

  if (v84 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = objc_opt_self();
  v13 = [v12 rawValueForKind_];
  v14 = MEMORY[0x277D83B88];
  v87 = MEMORY[0x277D83B88];
  v84 = v13;
  sub_21729D33C(&v84, 0, v15, v16, v17, v18, v19, v20, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1));
  if (qword_280BE8158 != -1)
  {
    swift_once();
  }

  v21 = sub_2172A4018();
  if (v22)
  {
    v29 = v21;
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  v31 = MEMORY[0x277D837D0];
  v88[3] = MEMORY[0x277D837D0];
  if (v22)
  {
    v30 = v22;
  }

  v88[0] = v29;
  v88[1] = v30;
  sub_21729D33C(v88, 2, v23, v24, v25, v26, v27, v28, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1));
  if (qword_280BE81A8 != -1)
  {
    swift_once();
  }

  v39 = qword_280C02488;
  sub_2176CA390(qword_280C02488, v32, v33, v34, v35, v36, v37, v38, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84);
  v46 = v85;
  if (v85 == 1 || (v47 = v84, sub_217751DE8(), sub_2171F06D8(&v84, &qword_27CB24B70, &unk_217759460), !v46))
  {
    v81 = 0u;
    v82 = 0u;
  }

  else
  {
    *(&v82 + 1) = v31;
    *&v81 = v47;
    *(&v81 + 1) = v46;
  }

  sub_21729D33C(&v81, 4, v40, v41, v42, v43, v44, v45, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1));
  sub_2176CA390(v39, v48, v49, v50, v51, v52, v53, v54, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84);
  if (v74 == 1 || (v62 = v75, v61 = v76, sub_217751DE8(), sub_2171F06D8(&v73, &qword_27CB24B70, &unk_217759460), !v61))
  {
    v71 = 0u;
    v72 = 0u;
  }

  else
  {
    *(&v72 + 1) = v31;
    *&v71 = v62;
    *(&v71 + 1) = v61;
  }

  sub_21729D33C(&v71, 5, v55, v56, v57, v58, v59, v60, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1));
  v63 = [v12 rawValueForSubKind_];
  sub_21729D33C(&v71, 6, v64, v65, v66, v67, v68, v69, v63, *(&v71 + 1), v72, v14, v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1));
  return v89;
}

Swift::Int __swiftcall Curator.Kind.convertToLegacyModelRawValue()()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = objc_opt_self();

  return [v2 rawValueForKind_];
}

void Curator.LegacyModelCuratorPropertyKey.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 7;
  if (v3 < 7)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t Curator.LegacyModelCuratorPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001ALL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000026;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2173AC3C0@<X0>(unint64_t *a1@<X8>)
{
  result = Curator.LegacyModelCuratorPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MusicKit::Curator::Kind_optional __swiftcall Curator.Kind.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() kindForRawValue_];
  if (v3 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3 == 1)
  {
    v4 = 0;
  }

  *v2 = v4;
  return v3;
}

Swift::Int sub_2173AC4CC@<X0>(Swift::Int *a1@<X8>)
{
  result = Curator.Kind.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t sub_2173AC4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratorPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2173AC558(uint64_t a1)
{
  v2 = type metadata accessor for CuratorPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2173AC5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratorPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2173AC61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8560;
  if (!qword_280BE8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8560);
  }

  return result;
}

unint64_t sub_2173AC670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A4AA8(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_2173AC6A0(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2173AC6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7690;
  if (!qword_280BE7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7690);
  }

  return result;
}

unint64_t sub_2173AC6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26DF0;
  if (!qword_27CB26DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26DF0);
  }

  return result;
}

_BYTE *_s29LegacyModelCuratorPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2173AC840(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2176325CC();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173AC898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21763246C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173AC8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21763246C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  sub_217751DE8();
  return v6;
}

double sub_2173AC948()
{
  OUTLINED_FUNCTION_34_14();
  if (!v1)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  v2 = sub_2176327E4(v0 & 1);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  OUTLINED_FUNCTION_20_21(v2);
  return result;
}

double sub_2173AC9A0()
{
  OUTLINED_FUNCTION_34_14();
  if (!v1)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  v2 = sub_2176326D0(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  OUTLINED_FUNCTION_20_21(v2);
  return result;
}

double sub_2173AC9DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_21763246C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 56 * v6;

    sub_217284130(v8, a4);
  }

  else
  {
    *(a4 + 48) = 0;
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return result;
}

double sub_2173ACA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_26_18();
  }

  v3 = sub_21763246C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  OUTLINED_FUNCTION_20_21(v3);
  return result;
}

double sub_2173ACAA4()
{
  OUTLINED_FUNCTION_34_14();
  if (!v1)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  v2 = v0();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  OUTLINED_FUNCTION_20_21(v2);
  return result;
}

double sub_2173ACAFC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_26_18();
  }

  v1 = sub_217632798();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  OUTLINED_FUNCTION_20_21(v1);
  return result;
}

double sub_2173ACBCC()
{
  OUTLINED_FUNCTION_34_14();
  if (!v1)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  v2 = sub_217632604(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_26_18();
  }

  OUTLINED_FUNCTION_20_21(v2);
  return result;
}

double sub_2173ACC08@<D0>(uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (*(a5 + 16) && (v8 = sub_217632668(), (v9 & 1) != 0))
  {
    v10 = *(a5 + 56) + 48 * v8;

    sub_21733B548(v10, a6);
  }

  else
  {
    result = 0.0;
    a6[1] = 0u;
    a6[2] = 0u;
    *a6 = 0u;
  }

  return result;
}

uint64_t sub_2173ACC74(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_217632AB4();
  if (v2)
  {
    return sub_217751DE8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173ACD04()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_21(*(v0 + 16));
  OUTLINED_FUNCTION_4_44();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_207_0(v2);
  v3 = OUTLINED_FUNCTION_20_6();

  return v5(v3);
}

uint64_t sub_2173ACE04()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_6_26();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  OUTLINED_FUNCTION_27_20();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_132();
  }

  return v5(v4);
}

uint64_t sub_2173ACF08()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_21(*(v0 + 48));
  OUTLINED_FUNCTION_4_44();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_207_0(v2);
  v3 = OUTLINED_FUNCTION_20_6();

  return v5(v3);
}

uint64_t sub_2173AD008()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2173AD128, 0, 0);
  }
}

uint64_t sub_2173AD128()
{
  OUTLINED_FUNCTION_30_0();
  if (qword_280BE8078 != -1)
  {
    swift_once();
  }

  v0 = OUTLINED_FUNCTION_20_6();
  sub_2177188E8(v0, v1);
  OUTLINED_FUNCTION_27_20();
  v2 = OUTLINED_FUNCTION_20_6();

  return v3(v2);
}

uint64_t AnyMusicDataRequestConfiguration.cloudRealm.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_35_12();
  return v2(v1);
}

uint64_t AnyMusicDataRequestConfiguration.performAutomaticLibraryMapping.getter()
{
  OUTLINED_FUNCTION_2_39();
  v0 = OUTLINED_FUNCTION_16_1();
  return v1(v0) & 1;
}

uint64_t static AnyMusicDataRequestConfiguration.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 112);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t AnyMusicDataRequestConfiguration.response(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2173AD2F0()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_21(*(v2 + 32));
  OUTLINED_FUNCTION_4_44();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_2173AD400;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return v8(v5, v6, v0, v1);
}

uint64_t sub_2173AD400()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173AD50C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v5 = a2();
  if (qword_280BE21F8 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_280BE21F8);
  }

  v6 = sub_217752CA8();
  v7 = __swift_project_value_buffer(v6, qword_280C01F58);
  v19 = &type metadata for AnyMusicDataRequestConfiguration;
  *&v18 = swift_allocObject();
  sub_2172CA838(a1, v18 + 16);
  sub_2172124CC(&v18, &v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v5;
  __swift_mutable_project_boxed_opaque_existential_1(&v16, v17);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  sub_2173AFC94(v12, v7, isUniquelyReferenced_nonNull_native, &v15);
  __swift_destroy_boxed_opaque_existential_1(&v16);
  a3(v15);
  return sub_21733AB9C(a1);
}

uint64_t sub_2173AD6B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  if (qword_280BE21F8 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_280BE21F8);
  }

  v3 = sub_217752CA8();
  __swift_project_value_buffer(v3, qword_280C01F58);
  sub_2173ACBCC();

  if (v26)
  {
    OUTLINED_FUNCTION_31_14();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
      OUTLINED_FUNCTION_33_14();
    }
  }

  else
  {
    sub_2171F06D8(&v24, &qword_27CB2AD40, &qword_2177583F0);
    OUTLINED_FUNCTION_33_14();
    v28 = 0;
  }

  v4 = OUTLINED_FUNCTION_31_14();
  v6 = sub_2173AF57C(v4, v5);
  if (v26)
  {
    OUTLINED_FUNCTION_29_18(v6, v7, v8, v9, v10, v11, v12, v13, v14, v19, v20[0], v20[1], v20[2], v21[0], v21[1], v21[2], v22, v23, v15, v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_109(v6, v20);
    v16 = off_280BEBCD0;

    (v16)(v21, v17);

    __swift_project_boxed_opaque_existential_1(v21, v22);
    OUTLINED_FUNCTION_19_12();
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v26)
    {
      sub_2171F06D8(&v24, &qword_27CB26DF8, &unk_217767540);
    }
  }

  return sub_2171F06D8(v27, &qword_27CB26DF8, &unk_217767540);
}

uint64_t MusicDataRequestConfiguration.cloudRealm.getter@<X0>(void *a1@<X8>)
{
  if (qword_27CB23EE8 != -1)
  {
    swift_once();
  }

  v2 = unk_27CB2E3B0;
  v3 = qword_27CB2E3B8;
  v4 = unk_27CB2E3C0;
  v5 = qword_27CB2E3C8;
  *a1 = qword_27CB2E3A8;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  sub_217751DE8();
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t sub_2173AD8E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2173B0710;

  return MusicDataRequestConfiguration.countryCode.getter();
}

uint64_t sub_2173AD96C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2173B0710;

  return static MusicDataRequest.currentCountryCode.getter();
}

uint64_t MusicDataRequestConfiguration.countryCode.getter()
{
  OUTLINED_FUNCTION_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_208(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_207_0(v1);

  return static MusicDataRequest.currentCountryCode.getter();
}

uint64_t MusicDataRequestConfiguration.defaultScheme.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&v4, a1);
  v2 = v4;

  return v2;
}

uint64_t MusicDataRequestConfiguration.defaultHost.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v4, a1);
  v2 = v4[2];

  return v2;
}

uint64_t sub_2173ADB48(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2173B0710;

  return MusicDataRequestConfiguration.languageTag.getter();
}

uint64_t sub_2173ADBEC()
{
  *(v1 + 128) = v0;
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_2173ADC80;

  return static MusicDataRequest.currentCountryCode.getter();
}

uint64_t sub_2173ADC80()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2173ADDA4, 0, 0);
  }
}

uint64_t sub_2173ADDA4()
{
  OUTLINED_FUNCTION_30_0();
  if (qword_280BE3DB8 != -1)
  {
    OUTLINED_FUNCTION_16_23(&qword_280BE3DB8);
  }

  v1 = v0[16];
  v0[14] = &type metadata for MusicDataRequest.BasicConfiguration;
  v0[15] = &protocol witness table for MusicDataRequest.BasicConfiguration;
  v2 = swift_allocObject();
  v0[11] = v2;
  memcpy((v2 + 16), v1, 0x48uLL);
  sub_2173B05C0(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_2173ADEB8;
  v5 = v0[18];
  v4 = v0[19];

  return sub_2176DB4C4(v5, v4, (v0 + 11));
}

uint64_t sub_2173ADEB8()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2173AE01C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 88));
    v7 = OUTLINED_FUNCTION_28_16();

    return v8(v7);
  }
}

uint64_t sub_2173AE01C()
{
  OUTLINED_FUNCTION_10();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t MusicDataRequestConfiguration.languageTag.getter()
{
  OUTLINED_FUNCTION_209();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_4_44();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_8_28(v4);

  return v6(v5);
}

uint64_t sub_2173AE17C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2173AE2A0, 0, 0);
  }
}

uint64_t sub_2173AE2A0()
{
  OUTLINED_FUNCTION_30_0();
  if (qword_280BE3DB8 != -1)
  {
    OUTLINED_FUNCTION_16_23(&qword_280BE3DB8);
  }

  v1 = *(v0 + 72);
  v7 = *(v0 + 56);
  *(v0 + 40) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_2173AE3B0;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  return sub_2176DB4C4(v5, v4, v0 + 16);
}

uint64_t sub_2173AE3B0()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2173AE514, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    v7 = OUTLINED_FUNCTION_28_16();

    return v8(v7);
  }
}

uint64_t sub_2173AE514()
{
  OUTLINED_FUNCTION_10();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173AE5B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2177518A8();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t MusicDataRequestConfiguration.preferredTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2177518A8();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2173AE644(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2172849C8;

  return MusicDataRequestConfiguration.subscription.getter();
}

uint64_t sub_2173AE6DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2172849C8;

  return static MusicSubscription.current.getter(a1);
}

uint64_t MusicDataRequestConfiguration.subscription.getter()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  v3[1] = sub_2172849C8;

  return static MusicSubscription.current.getter(v1);
}

uint64_t MusicDataRequestConfiguration<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  (*(v24 + 16))(v17, a1, a3);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v19 + 32))(v23, v13, a2);
    v25 = sub_217751F08();
    (*(v19 + 8))(v23, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_2173AEA58(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_217751FF8();
  sub_217751FF8();
  sub_21727D208(a1, v3);
  sub_217751FF8();

  return sub_217751FF8();
}

uint64_t MusicDataRequestConfiguration.isFeatureFlagEnabled(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v22 = *a1;
  *v23 = v3;
  *&v23[9] = *(a1 + 25);
  v4 = (*(a3 + 72))(a2, a3);
  if (!v4)
  {
    v10 = OUTLINED_FUNCTION_132();
    v6 = v11(v10);
    if (v6)
    {
      v12 = sub_2176966D0(&v22, v6);

      if (v12)
      {
        v9 = 0;
        return v9 & 1;
      }
    }

LABEL_7:
    v14 = *(&v22 + 1);
    v13 = v22;
    v15 = v23[0];
    v16 = *&v23[8];
    v17 = *&v23[16];
    v18 = v23[24];
    v21[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
    v21[4] = sub_2171FEF88(v6, v7, v8);
    v19 = swift_allocObject();
    v21[0] = v19;
    *(v19 + 16) = v13;
    *(v19 + 24) = v14;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    *(v19 + 48) = v17;
    *(v19 + 56) = v18;
    v9 = sub_217751978();
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v9 & 1;
  }

  v5 = sub_2176966D0(&v22, v4);

  if (!v5)
  {
    goto LABEL_7;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_2173AEC38()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_20_6();
  return v2(v1);
}

uint64_t AnyMusicDataRequestConfiguration.defaultScheme.getter()
{
  OUTLINED_FUNCTION_2_39();
  v0 = OUTLINED_FUNCTION_16_1();
  return v1(v0);
}

uint64_t AnyMusicDataRequestConfiguration.defaultHost.getter()
{
  OUTLINED_FUNCTION_2_39();
  v0 = OUTLINED_FUNCTION_16_1();
  return v1(v0);
}

uint64_t AnyMusicDataRequestConfiguration.specificLibraryDatabaseID.getter()
{
  OUTLINED_FUNCTION_2_39();
  v0 = OUTLINED_FUNCTION_16_1();
  return v1(v0);
}

uint64_t AnyMusicDataRequestConfiguration.performServerItemDatabaseImporting.getter()
{
  OUTLINED_FUNCTION_2_39();
  v0 = OUTLINED_FUNCTION_16_1();
  return v1(v0) & 1;
}

uint64_t AnyMusicDataRequestConfiguration.enabledFeatureFlags.getter()
{
  OUTLINED_FUNCTION_2_39();
  v0 = OUTLINED_FUNCTION_16_1();
  return v1(v0);
}

uint64_t AnyMusicDataRequestConfiguration.disabledFeatureFlags.getter()
{
  OUTLINED_FUNCTION_2_39();
  v0 = OUTLINED_FUNCTION_16_1();
  return v1(v0);
}

uint64_t AnyMusicDataRequestConfiguration.preferredTimeZone.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_35_12();
  return v2(v1);
}

uint64_t AnyMusicDataRequestConfiguration.subscription.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2173AEE60()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_21(*(v2 + 24));
  OUTLINED_FUNCTION_4_44();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_2173AEF70;
  v5 = *(v2 + 16);

  return v7(v5, v0, v1);
}

uint64_t sub_2173AEF70()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t AnyMusicDataRequestConfiguration.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 120))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2173AF0D0(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 120))(v5, v2, v3);
  return sub_217753238();
}

uint64_t sub_2173AF144()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2173AF1D0;

  return AnyMusicDataRequestConfiguration.countryCode.getter();
}

uint64_t sub_2173AF1D0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_6_26();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  OUTLINED_FUNCTION_27_20();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_132();
  }

  return v5(v4);
}

uint64_t sub_2173AF2C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2173B0710;

  return AnyMusicDataRequestConfiguration.languageTag.getter();
}

uint64_t sub_2173AF36C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_217282D8C;

  return AnyMusicDataRequestConfiguration.subscription.getter(a1);
}

uint64_t sub_2173AF404(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2172849C8;

  return AnyMusicDataRequestConfiguration.response(for:)(a1, a2);
}

uint64_t sub_2173AF4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2173AFF1C(a1, a2, a3);

  return MusicDataRequestConfiguration<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_2173AF518()
{
  v0 = sub_217752CA8();
  __swift_allocate_value_buffer(v0, qword_280C01F58);
  v1 = __swift_project_value_buffer(v0, qword_280C01F58);
  return CodingUserInfoKey.init(label:)(0xD000000000000026, 0x80000002177ACDC0, v1);
}

uint64_t sub_2173AF57C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26DF8, &unk_217767540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*JSONDecoder.dataRequestConfiguration.modify())(char **a1, uint64_t a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_32_15(v0);
  JSONDecoder.dataRequestConfiguration.getter();
  return sub_2173AF65C;
}

uint64_t sub_2173AF68C(void (*a1)(void))
{
  if (qword_280BE21F8 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_280BE21F8);
  }

  v2 = sub_217752CA8();
  __swift_project_value_buffer(v2, qword_280C01F58);
  a1();
  sub_2173ACBCC();

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E08, &unk_21776FB50);
    OUTLINED_FUNCTION_31_14();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      OUTLINED_FUNCTION_33_14();
    }
  }

  else
  {
    sub_2171F06D8(&v23, &qword_27CB26E00, &unk_217767590);
    OUTLINED_FUNCTION_33_14();
    v27 = 0;
  }

  v3 = OUTLINED_FUNCTION_31_14();
  v5 = sub_2173AF57C(v3, v4);
  if (v25)
  {
    OUTLINED_FUNCTION_29_18(v5, v6, v7, v8, v9, v10, v11, v12, v13, v18, v19[0], v19[1], v19[2], v20[0], v20[1], v20[2], v21, v22, v14, v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_109(v5, v19);
    v15 = off_280BEBCD0;

    (v15)(v20, v16);

    __swift_project_boxed_opaque_existential_1(v20, v21);
    OUTLINED_FUNCTION_19_12();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v25)
    {
      sub_2171F06D8(&v23, &qword_27CB26DF8, &unk_217767540);
    }
  }

  return sub_2171F06D8(v26, &qword_27CB26DF8, &unk_217767540);
}

void (*JSONEncoder.dataRequestConfiguration.modify())(char **a1, uint64_t a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_32_15(v0);
  JSONEncoder.dataRequestConfiguration.getter();
  return sub_2173AF8B8;
}

void sub_2173AF8D0(char **a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_2172CA838(*a1, (v4 + 40));
    a3(v4 + 40);
    sub_21733AB9C(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t sub_2173AF94C()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_208(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_207_0(v1);

  return v4();
}

uint64_t sub_2173AF9D0()
{
  OUTLINED_FUNCTION_10();
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = OUTLINED_FUNCTION_25_21();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_2173AFA70;

  return v4();
}

uint64_t sub_2173AFA70()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_6_26();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  OUTLINED_FUNCTION_27_20();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_132();
  }

  return v5(v4);
}

uint64_t sub_2173AFB6C()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_25_21();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  v3[1] = sub_2172849C8;

  return v6(v1);
}

uint64_t sub_2173AFBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2173B056C(a1, a2, a3);

  return MusicDataRequestConfiguration<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

_OWORD *sub_2173AFC94(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = sub_217752CA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &type metadata for AnyMusicDataRequestConfiguration;
  v11 = swift_allocObject();
  *&v28 = v11;
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  v13 = *a4;
  v14 = sub_217632604(a2);
  if (__OFADD__(v13[2], (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E20, &qword_217767718);
  if ((sub_217752CB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_217632604(a2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_10:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *a4;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return sub_2172124CC(&v28, v21);
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v29);
    v24 = MEMORY[0x28223BE20](v23);
    v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26, v24);
    sub_2173B061C(v16, v10, v26, v20);
    return __swift_destroy_boxed_opaque_existential_1(&v28);
  }
}

unint64_t sub_2173AFF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26E10;
  if (!qword_27CB26E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E10);
  }

  return result;
}

uint64_t dispatch thunk of MusicDataRequestConfiguration.countryCode.getter()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_4_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_208(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_28(v1);

  return v4(v3);
}

uint64_t sub_2173B007C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_6_26();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_27_20();
  v3 = OUTLINED_FUNCTION_132();

  return v4(v3);
}

uint64_t dispatch thunk of MusicDataRequestConfiguration.languageTag.getter()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_4_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_208(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_28(v1);

  return v4(v3);
}

uint64_t dispatch thunk of MusicDataRequestConfiguration.subscription.getter()
{
  OUTLINED_FUNCTION_209();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v10 = (*(v0 + 96) + **(v0 + 96));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_19(v6);
  *v7 = v8;
  v7[1] = sub_217282D8C;

  return v10(v5, v3, v1);
}

uint64_t dispatch thunk of MusicDataRequestConfiguration.response(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_44();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_19(v9);
  *v10 = v11;
  v10[1] = sub_2172849C8;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_2173B056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26E18;
  if (!qword_27CB26E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E18);
  }

  return result;
}

_OWORD *sub_2173B061C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = &type metadata for AnyMusicDataRequestConfiguration;
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a3 + 32);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_217752CA8();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_2172124CC(&v16, (a4[7] + 32 * a1));
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

uint64_t OUTLINED_FUNCTION_16_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_21(uint64_t a1)
{
  v4 = *(v2 + 56) + 32 * a1;

  return sub_21721E0AC(v4, v1);
}

double OUTLINED_FUNCTION_26_18()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_29_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a18, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a19, __int128 a20, uint64_t a21)
{
  result = a19;
  *v21 = a19;
  *(v21 + 16) = a20;
  *(v21 + 32) = a21;
  return result;
}

void MusicItem.identifierSet.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  (*(v10 + 16))(v9 - v8, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(&v76, v105);
    v11 = v107;
    v12 = v108;
    __swift_project_boxed_opaque_existential_1(v105, v107);
    (*(v12 + 8))(v102, v11, v12);
    v13 = v103;
    v14 = v104;
    __swift_project_boxed_opaque_existential_1(v102, v103);
    (*(v14 + 24))(&v76, v13, v14);
    sub_21729C644(v102);
    v15 = *(&v76 + 1);
    v16 = v76;
    v18 = *(&v77 + 1);
    v17 = v77;
    v75 = v78;
    v69 = v79;
    v70 = v80;
    v67 = v81;
    v68 = v82;
    v65 = v83;
    v66 = v84;
    v63 = v85;
    v64 = v86;
    v61 = v87;
    v62 = v88;
    v59 = v89;
    v60 = v90;
    v57 = v91;
    v58 = v92;
    v19 = v93;
    v20 = v94;
    v21 = v95;
    v73 = v96;
    v71 = v98;
    v72 = v97;
    v55 = v99;
    v56 = v100;
    v22 = v101;
    __swift_destroy_boxed_opaque_existential_1(v105);
    v24 = v55;
    v23 = v56;
    v26 = v57;
    v25 = v58;
    v28 = v59;
    v27 = v60;
    v30 = v61;
    v29 = v62;
    v31 = v63;
    v32 = v64;
    v34 = v65;
    v33 = v66;
    v36 = v67;
    v35 = v68;
    v37 = v69;
    v38 = v70;
LABEL_11:
    *a3 = v16;
    *(a3 + 8) = v15;
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;
    *(a3 + 32) = v75;
    *(a3 + 40) = v37;
    *(a3 + 56) = v38;
    *(a3 + 72) = v36;
    *(a3 + 88) = v35;
    *(a3 + 104) = v34;
    *(a3 + 120) = v33;
    *(a3 + 136) = v31;
    *(a3 + 152) = v32;
    *(a3 + 168) = v30;
    *(a3 + 184) = v29;
    *(a3 + 200) = v28;
    *(a3 + 216) = v27;
    *(a3 + 232) = v26;
    *(a3 + 248) = v25;
    *(a3 + 264) = v19;
    *(a3 + 272) = v20;
    *(a3 + 280) = v21;
    *(a3 + 288) = v73;
    *(a3 + 304) = v72;
    *(a3 + 312) = v71;
    *(a3 + 320) = v24;
    *(a3 + 336) = v23;
    *(a3 + 352) = v22;
    return;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  sub_2173B0C90(&v76);
  v39 = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for MusicItemTypeValueProviding);
  if (v39)
  {
    v41 = v39;
    v74 = v40;
    v42 = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for CloudResourceConvertible);
    if (v42)
    {
      v45 = v42;
      v46 = v43;
      v47 = *(static CloudResourceConvertible.catalogTypes.getter(v42, v43) + 16);

      if (v47 == 1)
      {
        v48 = static CloudResourceConvertible.catalogTypes.getter(v45, v46);
        if (*(v48 + 16))
        {
          v50 = *(v48 + 32);
          v49 = *(v48 + 40);
          v51 = *(v48 + 48);
          sub_217751DE8();

LABEL_10:
          v52.rawValue._countAndFlagsBits = (*(a2 + 8))(a1, a2, v44);
          v105[0] = v50;
          v105[1] = v49;
          v106 = v51;
          v109.value.rawValue._countAndFlagsBits = v105;
          MusicCatalogID.init(value:type:)(v52, v109);
          v15 = *(&v76 + 1);
          v16 = v76;
          v75 = v77;
          (*(v74 + 8))(&v76, v41);
          v73 = v76;
          v71 = *(&v77 + 1);
          v72 = v77;
          sub_217751DE8();

          v20 = 0;
          v37 = 0uLL;
          v22 = 4;
          v21 = &unk_28295B780;
          v38 = 0uLL;
          v36 = 0uLL;
          v35 = 0uLL;
          v34 = 0uLL;
          v33 = 0uLL;
          v19 = MEMORY[0x277D84FA0];
          v31 = 0uLL;
          v17 = v16;
          v32 = 0uLL;
          v18 = v15;
          v30 = 0uLL;
          v29 = 0uLL;
          v28 = 0uLL;
          v27 = 0uLL;
          v26 = 0uLL;
          v25 = 0uLL;
          v24 = 0uLL;
          v23 = 0uLL;
          goto LABEL_11;
        }
      }
    }

    v50 = 0;
    v49 = 0;
    v51 = 0;
    goto LABEL_10;
  }

  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ACE10);
  v53 = sub_217753348();
  MEMORY[0x21CEA23B0](v53);

  MEMORY[0x21CEA23B0](0xD000000000000077, 0x80000002177ACE30, v54);
  OUTLINED_FUNCTION_2_40("Fatal error");
  __break(1u);
}

uint64_t sub_2173B0C90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B68, &qword_217759430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicItem.removingLibraryIdentifiers()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v37 - v9;
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v14 = *(v12 + 16);
  v14(v16 - v15, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_2173B0C90(&v43);
    return (v14)(a2, v2, a1);
  }

  v37[0] = v7;
  sub_2171F3F0C(&v43, v46);
  v17 = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for PropertyProviderBasedInitializable);
  if (!v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    return (v14)(a2, v2, a1);
  }

  v19 = v17;
  v20 = v18;
  v38 = a2;
  v21 = v47;
  v22 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v21, v22);
  v23 = *(&v44 + 1);
  v24 = v45;
  __swift_mutable_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v25 = (*(*(v24 + 8) + 40))(&v39, v23);
  v27 = *(v26 + 136);
  v28 = *(v26 + 144);
  *(v26 + 136) = 0u;
  *(v26 + 152) = 0u;
  v29 = sub_2172B8404(v27, v28);
  v30 = v25(&v39, 0, v29);
  v37[1] = v37;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v31 = *(&v44 + 1);
  v32 = v45;
  v33 = __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v41 = v31;
  v42 = *(v32 + 8);
  v34 = __swift_allocate_boxed_opaque_existential_0(&v39);
  (*(*(v31 - 8) + 16))(v34, v33, v31);
  (*(v20 + 16))(&v39, v19, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a1);
    (*(v12 + 32))(v38, v10, a1);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, a1);
    (*(v37[0] + 8))(v10, v5);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_217752AA8();

    v39 = 0xD00000000000002ELL;
    v40 = 0x80000002177ACEB0;
    v36 = sub_217753348();
    MEMORY[0x21CEA23B0](v36);

    result = OUTLINED_FUNCTION_2_40("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t PropertyProviderBackedItem.staticPropertyProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v5, a1);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 96))(v2, v3);
  return sub_21729C644(v5);
}

uint64_t MusicItem<>.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(v7, *(*a1 + 208), a4, a3);
  AnyPropertyProvider.subscript.getter(a1, a2);
  return sub_21729C644(v7);
}

uint64_t MusicItem<>.value<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v48 = a4;
  v49 = a3;
  v5 = sub_2177528F8();
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = *(a1 + 64);
  v47 = v15;
  v46 = v16;
  if (!v14)
  {
    goto LABEL_7;
  }

  if (v14 == 1)
  {
LABEL_5:
    v17 = OUTLINED_FUNCTION_0_44();
    v18(v17);
    swift_beginAccess();
    v19 = off_280BEBCD0;

    (v19)(v51, v20);

    v21 = v52;
    v22 = v53;
    v23 = __swift_project_boxed_opaque_existential_1(v51, v52);
    v24 = v21;
    v25 = v23;
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v24, v22, v54);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_2_41();
    v26 = OUTLINED_FUNCTION_1_39();
    sub_2174C0F54(v26, v27, v28, v29, v30, v31, v32, v33, v45, v46, v47, v48, v49, *v50, *&v50[8], *&v50[16], v51[0], v51[1], v51[2], v52, v53, *v54);
    OUTLINED_FUNCTION_4_45();
    result = sub_21729C644(v55);
    if (v25)
    {
      return result;
    }

    v7 = v10;
    return (*(v46 + 32))(v48, v7, v47);
  }

  if (*(a1 + 48) == 0)
  {
LABEL_7:
    v35 = OUTLINED_FUNCTION_0_44();
    v36(v35);
    OUTLINED_FUNCTION_5_32();
    v38 = off_280BEBCD0;
    v37 = qword_280BEBCD8;

    (v38)(v51, v39);

    OUTLINED_FUNCTION_3_40();
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_2_41();
    OUTLINED_FUNCTION_1_39();
    sub_2174C0BF8();
    OUTLINED_FUNCTION_4_45();
    result = sub_21729C644(v55);
    if (v37)
    {
      return result;
    }

    v7 = v13;
    return (*(v46 + 32))(v48, v7, v47);
  }

  if (!(*(a1 + 48) ^ 1 | *(a1 + 56)))
  {
    goto LABEL_5;
  }

  v40 = OUTLINED_FUNCTION_0_44();
  v41(v40);
  OUTLINED_FUNCTION_5_32();
  v43 = off_280BEBCD0;
  v42 = qword_280BEBCD8;

  (v43)(v51, v44);

  OUTLINED_FUNCTION_3_40();
  __swift_destroy_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_2_41();
  OUTLINED_FUNCTION_1_39();
  sub_2174C089C();
  OUTLINED_FUNCTION_4_45();
  result = sub_21729C644(v55);
  if (!v42)
  {
    return (*(v46 + 32))(v48, v7, v47);
  }

  return result;
}

uint64_t sub_2173B1614(uint64_t a1)
{
  *(v1 + 32) = 0;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2172C6110;

  return MusicCatalogSearchResponse.libraryMapped(policy:scope:)();
}

uint64_t sub_2173B16C8(uint64_t a1)
{
  *(v1 + 32) = 0;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2173B177C;

  return MusicCatalogSearchSuggestionsResponse.libraryMapped(policy:scope:)();
}

uint64_t sub_2173B177C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_2173B1890(uint64_t a1)
{
  *(v1 + 32) = 0;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2173B177C;

  return MusicPersonalRecommendationsResponse.libraryMapped(policy:scope:)();
}

uint64_t sub_2173B1970(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_2176F78CC();
  OUTLINED_FUNCTION_48_10();
  v7 = sub_2176F8578(v4, v5, v6, a1);
  sub_2172303F0(v9);
  if (v7 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_2173B19F4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_48_10();
  v6 = a3();
  sub_2172303F0(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2173B1A88(uint64_t a1)
{
  v2 = sub_217751428();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2173B8358();
  v11 = MEMORY[0x21CEA2970](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v5, v17, v2);
      sub_2175004C8();
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

void sub_2173B1C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_2172CAE0C(a1, a2, a3);
  v6 = 0;
  v11[2] = MEMORY[0x21CEA2970](v4, &type metadata for MusicItemID, v5);
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    ++v6;
    v10 = *(i - 1);
    v9 = *i;
    sub_217751DE8();
    sub_21750074C(v11, v10, v9);
  }

  __break(1u);
}

uint64_t sub_2173B1CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_2173B80C4(a1, a2, a3);
  v10 = MEMORY[0x21CEA2970](v4, &type metadata for CloudAudioTrait, v5);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {
      sub_217500898(&v9, *(a1 + v7++));
      --v6;
    }

    while (v6);

    return v10;
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
  }

  return v4;
}

void MusicCatalogSearchSuggestionsRequest.init(term:includingTopResultsOfTypes:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a4;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  *(a4 + 56) = 257;
  swift_beginAccess();
  v8 = off_280BEBCD0;

  (v8)(&v30, v9);

  v10 = v32;
  v11 = v33;
  __swift_project_boxed_opaque_existential_1(&v30, v32);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v10, v11, (v7 + 8));
  __swift_destroy_boxed_opaque_existential_1(&v30);
  *v7 = a1;
  v7[1] = a2;
  v12 = &unk_28295F4A0;
  v13 = *(a3 + 16);
  if (!v13)
  {
    v12 = &unk_28295F4C8;
  }

  v7[13] = v12;
  if (v13)
  {
    v28 = v7;
    v29 = MEMORY[0x277D84F90];
    sub_217276E20(0, v13, 0);
    v14 = 0;
    v15 = 32;
    v16 = v29;
    while (v14 < *(a3 + 16))
    {
      if (!dynamic_cast_existential_1_conditional(*(a3 + v15), *(a3 + v15), &protocol descriptor for MusicItemTypeValueProviding))
      {
        goto LABEL_14;
      }

      (*(v17 + 8))(&v30);
      v18 = v30;
      v20 = v31;
      v19 = v32;
      v22 = *(v29 + 16);
      v21 = *(v29 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_57(v21);
        v27 = v25;
        sub_217276E20(v24, v22 + 1, 1);
        v18 = v27;
      }

      *(v29 + 16) = v22 + 1;
      v23 = v29 + 32 * v22;
      *(v23 + 32) = v18;
      ++v14;
      *(v23 + 48) = v20;
      *(v23 + 56) = v19;
      v15 += 16;
      if (v13 == v14)
      {

        v7 = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v26 = sub_217753348();
    MEMORY[0x21CEA23B0](v26);

    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD00000000000002FLL);
    OUTLINED_FUNCTION_42_10();
    sub_217752D08();
    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_12:
    v7[14] = v16;
  }
}

uint64_t MusicCatalogSearchSuggestionsRequest.term.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t MusicCatalogSearchSuggestionsRequest.typesForTopResults.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v23 = MEMORY[0x277D84F90];
  sub_217276E6C(0, v2, 0);
  v4 = 0;
  v3 = v23;
  v5 = v1 + 56;
  while (v4 < *(v1 + 16))
  {
    v6 = dynamic_cast_existential_1_conditional(*(v5 - 24), *(v5 - 24), &protocol descriptor for MusicCatalogSearchable);
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = v6;
    v9 = v7;
    v11 = *(v23 + 16);
    v10 = *(v23 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = OUTLINED_FUNCTION_57(v10);
      sub_217276E6C(v13, v11 + 1, 1);
    }

    *(v23 + 16) = v11 + 1;
    v12 = v23 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    ++v4;
    v5 += 32;
    if (v2 == v4)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
  sub_217751DE8();
  sub_217285954(1);
  v15 = sub_217752918();
  v17 = v16;

  MEMORY[0x21CEA23B0](v15, v17, v18);

  sub_217751DE8();
  v22 = sub_2172857F8(1uLL);
  sub_217285A70(v22, v19, v20);
  sub_217751DE8();
  sub_217752048();

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v21);

  OUTLINED_FUNCTION_44_10();
  MEMORY[0x21CEA23B0](0xD00000000000002BLL);
  OUTLINED_FUNCTION_42_10();
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t MusicCatalogSearchSuggestionsRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicCatalogSearchSuggestionsRequest._suggestionsLimit.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t MusicCatalogSearchSuggestionsRequest._topResultsLimit.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t MusicCatalogSearchSuggestionsRequest.response()()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_14(&unk_217767798);
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_217282D8C;

  return v8(v3, v0 + 64);
}

uint64_t sub_2173B2474()
{
  OUTLINED_FUNCTION_10();
  v1[443] = v0;
  v1[442] = v2;
  v1[441] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[444] = v4;
  *v4 = v5;
  v4[1] = sub_2173B2510;

  return MusicCatalogSearchRequest.catalogResponse()();
}

uint64_t sub_2173B2510()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 3560) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B2608()
{
  OUTLINED_FUNCTION_209();
  sub_2173B8118(*(v0 + 3544), v0 + 3328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E60, &qword_217767A50);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 3488), v0 + 3448);
    __swift_project_boxed_opaque_existential_1((v0 + 3448), *(v0 + 3472));
    OUTLINED_FUNCTION_13_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 3568) = v1;
    *v1 = v2;
    v1[1] = sub_2173B2814;
    OUTLINED_FUNCTION_19_13();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_42(*(v0 + 3536));
    if (v6(v5))
    {
      OUTLINED_FUNCTION_9_14(&unk_217767A58);
      v12 = v7;
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v0 + 3584) = v8;
      *v8 = v9;
      v10 = OUTLINED_FUNCTION_20_22(v8);

      return v12(v10);
    }

    else
    {
      memcpy(*(v0 + 3528), (v0 + 16), 0x450uLL);
      OUTLINED_FUNCTION_0_2();

      return v11();
    }
  }
}

uint64_t sub_2173B2814()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 3576) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B290C()
{
  OUTLINED_FUNCTION_30_0();
  sub_2173B8174(v0 + 16);
  memcpy((v0 + 16), (v0 + 2224), 0x450uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 3448));
  v1 = OUTLINED_FUNCTION_2_42(*(v0 + 3536));
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217767A58);
    v9 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 3584) = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_20_22(v4);

    return v9(v6);
  }

  else
  {
    memcpy(*(v0 + 3528), (v0 + 16), 0x450uLL);
    OUTLINED_FUNCTION_0_2();

    return v8();
  }
}

uint64_t sub_2173B2A04()
{
  OUTLINED_FUNCTION_10();
  sub_2173B8174(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 3448));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173B2A68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 3592) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B2B60()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 3528);
  sub_2173B8174(v0 + 16);
  memcpy(v1, (v0 + 1120), 0x450uLL);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173B2BCC()
{
  OUTLINED_FUNCTION_10();
  sub_2173B8174(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173B2C28(uint64_t a1, uint64_t a2)
{
  v3[92] = v2;
  v3[91] = a2;
  v3[90] = a1;
  v4 = swift_task_alloc();
  v3[93] = v4;
  *v4 = v3;
  v4[1] = sub_2173B2CC8;

  return MusicCatalogSearchSuggestionsRequest.catalogResponse()();
}

uint64_t sub_2173B2CC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B2DC0()
{
  OUTLINED_FUNCTION_209();
  sub_2173B83B0(*(v0 + 736), v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E80, &qword_217767AA0);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 680), v0 + 640);
    __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
    OUTLINED_FUNCTION_13_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 760) = v1;
    *v1 = v2;
    v1[1] = sub_2173B2FCC;
    OUTLINED_FUNCTION_19_13();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_42(*(v0 + 728));
    if (v6(v5))
    {
      OUTLINED_FUNCTION_9_14(&unk_217767AA8);
      v12 = v7;
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v0 + 776) = v8;
      *v8 = v9;
      v10 = OUTLINED_FUNCTION_22_19(v8);

      return v12(v10);
    }

    else
    {
      memcpy(*(v0 + 720), (v0 + 16), 0xA8uLL);
      OUTLINED_FUNCTION_0_2();

      return v11();
    }
  }
}

uint64_t sub_2173B2FCC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 768) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B30C4()
{
  OUTLINED_FUNCTION_30_0();
  sub_2173B83E8(v0 + 16);
  memcpy((v0 + 16), (v0 + 352), 0xA8uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  v1 = OUTLINED_FUNCTION_2_42(*(v0 + 728));
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217767AA8);
    v9 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 776) = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_19(v4);

    return v9(v6);
  }

  else
  {
    memcpy(*(v0 + 720), (v0 + 16), 0xA8uLL);
    OUTLINED_FUNCTION_0_2();

    return v8();
  }
}

uint64_t sub_2173B31BC()
{
  OUTLINED_FUNCTION_10();
  sub_2173B83E8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173B3220()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 784) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B3318()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 720);
  sub_2173B83E8(v0 + 16);
  memcpy(v1, (v0 + 184), 0xA8uLL);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173B3384()
{
  OUTLINED_FUNCTION_10();
  sub_2173B83E8(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173B33E0()
{
  OUTLINED_FUNCTION_10();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  v1[54] = v4;
  OUTLINED_FUNCTION_45_0(v4);
  v1[55] = OUTLINED_FUNCTION_28_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[56] = v5;
  *v5 = v6;
  v5[1] = sub_2173B349C;

  return MusicPersonalRecommendationsRequest.catalogResponse()();
}

uint64_t sub_2173B349C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B3594()
{
  OUTLINED_FUNCTION_209();
  sub_2173B8280(*(v0 + 424), *(v0 + 440), type metadata accessor for MusicPersonalRecommendationsRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E68, &qword_217767A68);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 368), v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
    OUTLINED_FUNCTION_13_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 464) = v1;
    *v1 = v2;
    v1[1] = sub_2173B380C;
    OUTLINED_FUNCTION_19_13();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_42(*(v0 + 416));
    if (v6(v5))
    {
      OUTLINED_FUNCTION_9_14(&unk_217767A70);
      v12 = v7;
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v0 + 480) = v8;
      *v8 = v9;
      v10 = OUTLINED_FUNCTION_21_18(v8);

      return v12(v10);
    }

    else
    {
      memcpy(*(v0 + 408), (v0 + 16), 0x68uLL);

      OUTLINED_FUNCTION_0_2();

      return v11();
    }
  }
}

uint64_t sub_2173B37B0()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2173B380C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 472) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B3904()
{
  OUTLINED_FUNCTION_30_0();
  sub_2173B81C8(v0 + 16);
  memcpy((v0 + 16), (v0 + 224), 0x68uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));
  v1 = OUTLINED_FUNCTION_2_42(*(v0 + 416));
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217767A70);
    v9 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 480) = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_21_18(v4);

    return v9(v6);
  }

  else
  {
    memcpy(*(v0 + 408), (v0 + 16), 0x68uLL);

    OUTLINED_FUNCTION_0_2();

    return v8();
  }
}

uint64_t sub_2173B3A04()
{
  OUTLINED_FUNCTION_10();
  sub_2173B81C8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173B3A70()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B3B68()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 408);
  sub_2173B81C8(v0 + 16);
  memcpy(v1, (v0 + 120), 0x68uLL);

  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173B3BDC()
{
  OUTLINED_FUNCTION_10();
  sub_2173B81C8(v0 + 16);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t MusicCatalogSearchSuggestionsRequest.catalogResponse()()
{
  OUTLINED_FUNCTION_10();
  v1[35] = v2;
  v1[36] = v0;
  v1[37] = sub_2177516D8();
  OUTLINED_FUNCTION_66_3();
  v1[38] = v3;
  v1[39] = OUTLINED_FUNCTION_28_7();
  v1[40] = sub_2177512F8();
  OUTLINED_FUNCTION_66_3();
  v1[41] = v4;
  v1[42] = OUTLINED_FUNCTION_28_7();
  v5 = type metadata accessor for MusicDataRequest(0);
  v1[43] = v5;
  OUTLINED_FUNCTION_45_0(v5);
  v1[44] = OUTLINED_FUNCTION_28_7();
  v6 = type metadata accessor for MusicAPI.Endpoint(0);
  OUTLINED_FUNCTION_45_0(v6);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = sub_217751428();
  OUTLINED_FUNCTION_66_3();
  v1[49] = v7;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2173B3E58()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 392);
  v2 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  *(v0 + 472) = *(v1 + 72);
  *(v0 + 592) = *(v1 + 80);
  v3 = swift_allocObject();
  *(v0 + 480) = v3;
  *(v3 + 16) = xmmword_2177586E0;
  *(v0 + 488) = *v2;
  *(v0 + 496) = v2[1];
  sub_2177513F8();
  OUTLINED_FUNCTION_16_24(v2 + 8);
  OUTLINED_FUNCTION_66_3();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_51_10(v5);

  return v8(v6);
}

uint64_t sub_2173B3FDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  v2[64] = v4;
  v2[65] = v5;
  v2[66] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2173B40E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_171_0();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_184_0();
  a24 = v26;
  v29 = v26;
  if (v26[65])
  {
    v30 = v26[60];
    v32 = v26[57];
    v31 = v26[58];
    v34 = v26[48];
    v33 = v26[49];
    sub_2177513F8();

    (*(v33 + 16))(v32, v31, v34, v35);
    v37 = *(v30 + 16);
    v36 = *(v30 + 24);
    v38 = v37 + 1;
    v39 = *(v29 + 480);
    if (v37 >= v36 >> 1)
    {
LABEL_75:
      OUTLINED_FUNCTION_9_23(v36);
      v39 = v163;
    }

    v40 = *(v29 + 472);
    v41 = *(v29 + 456);
    v42 = *(v29 + 384);
    v43 = *(v29 + 392);
    v44 = (*(v29 + 592) + 32) & ~*(v29 + 592);
    (*(v43 + 8))(*(v29 + 464), v42);
    *(v39 + 16) = v38;
    (*(v43 + 32))(v39 + v44 + v40 * v37, v41, v42);
  }

  else
  {
    v39 = v26[60];
  }

  v45 = *(v29 + 528);
  v46 = *(v29 + 288);
  a14 = sub_2173B5738(*(v46 + 112));
  sub_217751DE8();
  sub_2173B7304(&a14);
  if (v45)
  {

    OUTLINED_FUNCTION_172_1();
  }

  else
  {
    v175 = v46;

    v53 = a14;
    v54 = *(a14 + 16);
    v176 = v29;
    if (v54)
    {
      v178 = v39;
      a14 = MEMORY[0x277D84F90];
      sub_217275C90(0, v54, 0, v49, v50, v51, v52);
      v55 = 0;
      v56 = a14;
      v57 = *(a14 + 16);
      v58 = 16 * v57;
      do
      {
        v37 = *(v53 + v55 + 32);
        v59 = *(v53 + v55 + 40);
        a14 = v56;
        v60 = *(v56 + 24);
        v61 = v57 + 1;
        sub_217751DE8();
        if (v57 >= v60 >> 1)
        {
          sub_217275C90(v60 > 1, v61, 1, v62, v63, v64, v65);
          v56 = a14;
        }

        *(v56 + 16) = v61;
        v66 = v56 + v58;
        *(v66 + 32) = v37;
        *(v66 + 40) = v59;
        v58 += 16;
        v55 += 24;
        ++v57;
        --v54;
      }

      while (v54);
      v29 = v176;

      *(v176 + 232) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
      OUTLINED_FUNCTION_25_22();
      sub_217283840(v67, v68, &unk_2177677B0, v69);
      v38 = sub_217751ED8();

      sub_2177513F8();

      v39 = v178;
      OUTLINED_FUNCTION_14_21();
      if (v71)
      {
LABEL_77:
        OUTLINED_FUNCTION_9_23(v70);
        v39 = v170;
      }

      OUTLINED_FUNCTION_32_16();
      v72 = *(v29 + 448);
      v73 = *(v29 + 384);
      v74 = *(v29 + 392);
      *(v39 + 16) = v38;
      (*(v74 + 32))(v39 + ((v75 + 32) & ~v75) + v76 * v37, v72, v73);
    }

    else
    {
    }

    v37 = *(*(v29 + 288) + 104);
    v81 = *(v37 + 16);
    v82 = MEMORY[0x277D84F90];
    if (v81)
    {
      v179 = v39;
      a14 = MEMORY[0x277D84F90];
      sub_217275C90(0, v81, 0, v77, v78, v79, v80);
      v82 = a14;
      v83 = (v37 + 32);
      v84 = *(a14 + 16);
      v85 = 16 * v84;
      v86 = 0x6C75736552706F74;
      do
      {
        if (*v83)
        {
          v37 = v86;
        }

        else
        {
          v37 = 0x736D726574;
        }

        if (*v83)
        {
          v87 = 0xEA00000000007374;
        }

        else
        {
          v87 = 0xE500000000000000;
        }

        a14 = v82;
        v88 = v84 + 1;
        if (v84 >= *(v82 + 24) >> 1)
        {
          OUTLINED_FUNCTION_47_10();
          v91 = v90;
          sub_217275C90(v92, v93, v94, v95, v96, v97, v98);
          v86 = v91;
          v82 = a14;
        }

        *(v82 + 16) = v88;
        v89 = v82 + v85;
        *(v89 + 32) = v37;
        *(v89 + 40) = v87;
        v85 += 16;
        ++v83;
        v84 = v88;
        --v81;
      }

      while (v81);
      v29 = v176;
      v39 = v179;
    }

    *(v29 + 240) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    OUTLINED_FUNCTION_25_22();
    sub_217283840(v99, v100, &unk_2177677B0, v101);
    v38 = sub_217751ED8();

    sub_2177513F8();

    OUTLINED_FUNCTION_14_21();
    if (v71)
    {
      OUTLINED_FUNCTION_9_23(v102);
      v39 = v164;
    }

    OUTLINED_FUNCTION_32_16();
    v103 = *(v29 + 392);
    v105 = OUTLINED_FUNCTION_5_33(v104);
    v108 = *(v103 + 32);
    v107 = v103 + 32;
    v106 = v108;
    v108(v105);
    *(v29 + 224) = v39;
    v109 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchSuggestionsRequest, &type metadata for MusicCatalogSearchSuggestionsRequest, &protocol descriptor for MusicCatalogNaturalLanguageSearchRequest);
    v110 = *(v29 + 288);
    if (v109 && *(v110 + 57) == 1)
    {
      sub_2177513F8();
      OUTLINED_FUNCTION_14_21();
      if (v71)
      {
LABEL_81:
        OUTLINED_FUNCTION_9_23(v111);
        v39 = v174;
      }

      OUTLINED_FUNCTION_32_16();
      v113 = OUTLINED_FUNCTION_5_33(v112);
      v106(v113);
      *(v29 + 224) = v39;
      v110 = *(v29 + 288);
    }

    if ((*(v110 + 24) & 1) == 0)
    {
      *(v29 + 272) = *(v110 + 16);
      sub_217752FC8();
      v38 = v114;
      sub_2177513F8();

      OUTLINED_FUNCTION_14_21();
      if (v71)
      {
LABEL_79:
        OUTLINED_FUNCTION_9_23(v115);
        v39 = v171;
      }

      OUTLINED_FUNCTION_32_16();
      v117 = OUTLINED_FUNCTION_5_33(v116);
      v106(v117);
      *(v29 + 224) = v39;
      v110 = *(v29 + 288);
    }

    if ((*(v110 + 40) & 1) == 0)
    {
      v37 = "limit[results:topResults]";
      *(v29 + 264) = *(v110 + 32);
      sub_217752FC8();
      v38 = v118;
      sub_2177513F8();

      OUTLINED_FUNCTION_14_21();
      if (v71)
      {
        OUTLINED_FUNCTION_9_23(v119);
        v39 = v172;
      }

      OUTLINED_FUNCTION_32_16();
      v121 = OUTLINED_FUNCTION_5_33(v120);
      v106(v121);
      *(v29 + 224) = v39;
      v110 = *(v29 + 288);
    }

    if ((*(v110 + 56) & 1) == 0)
    {
      v37 = "search/suggestions";
      *(v29 + 256) = *(v110 + 48);
      sub_217752FC8();
      v38 = v122;
      sub_2177513F8();

      OUTLINED_FUNCTION_14_21();
      if (v71)
      {
        OUTLINED_FUNCTION_9_23(v123);
        v39 = v173;
      }

      OUTLINED_FUNCTION_32_16();
      v125 = OUTLINED_FUNCTION_5_33(v124);
      v106(v125);
      *(v29 + 224) = v39;
    }

    v126 = *(v175 + 112);
    v127 = *(v126 + 16);
    sub_217751DE8();
    v128 = 0;
    v180 = MEMORY[0x277D84F90];
LABEL_47:
    v36 = 32 * v128 + 32;
    while (v127 != v128)
    {
      if (v128 >= *(v126 + 16))
      {
        __break(1u);
        goto LABEL_75;
      }

      v38 = v36 + 32;
      ++v128;
      v129 = dynamic_cast_existential_1_conditional(*(v126 + v36), *(v126 + v36), &protocol descriptor for CloudRequestable);
      v36 = v38;
      if (v129)
      {
        v131 = v107;
        v132 = v106;
        v29 = (*(v130 + 24))(*(v29 + 288) + 64, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration);
        v38 = *(v29 + 16);
        v37 = *(v180 + 16);
        v133 = (v37 + v38);
        if (__OFADD__(v37, v38))
        {
          __break(1u);
          goto LABEL_77;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v180;
        if (!isUniquelyReferenced_nonNull_native || v133 > *(v180 + 24) >> 1)
        {
          if (v37 <= v133)
          {
            v136 = v37 + v38;
          }

          else
          {
            v136 = v37;
          }

          sub_2172B1A50(isUniquelyReferenced_nonNull_native, v136, 1, v180);
          v135 = v137;
        }

        v106 = v132;
        v107 = v131;
        v180 = v135;
        if (!*(v29 + 16))
        {

          v29 = v176;
          if (!v38)
          {
            goto LABEL_47;
          }

          __break(1u);
          break;
        }

        v115 = *(v135 + 16);
        if (((*(v135 + 24) >> 1) - v115) < v38)
        {
          __break(1u);
          goto LABEL_79;
        }

        v37 = v176;
        swift_arrayInitWithCopy();
        v29 = v176;

        if (!v38)
        {
          goto LABEL_47;
        }

        v138 = *(v180 + 16);
        v139 = __OFADD__(v138, v38);
        v111 = v138 + v38;
        if (!v139)
        {
          *(v180 + 16) = v111;
          goto LABEL_47;
        }

        __break(1u);
        goto LABEL_81;
      }
    }

    v140 = sub_2173B1A88(v180);
    sub_2175438A8(v140);
    if (qword_280BE7420 != -1)
    {
      swift_once();
    }

    v142 = *(v29 + 392);
    v141 = *(v29 + 400);
    v143 = *(v29 + 384);
    v144 = __swift_project_value_buffer(v143, qword_280BE7428);
    (*(v142 + 16))(v141, v144, v143);
    v145 = *(v29 + 224);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_49_11();
      v165 = OUTLINED_FUNCTION_39_7();
      sub_2172B1A50(v165, v166, v167, v145);
      v145 = v168;
    }

    v147 = *(v145 + 16);
    v146 = *(v145 + 24);
    if (v147 >= v146 >> 1)
    {
      sub_2172B1A50(v146 > 1, v147 + 1, 1, v145);
      v145 = v169;
    }

    *(v29 + 536) = v145;
    OUTLINED_FUNCTION_32_16();
    v148 = *(v29 + 400);
    v149 = *(v29 + 384);
    v150 = *(v29 + 288);
    *(v145 + 16) = v147 + 1;
    (v106)(v145 + ((v151 + 32) & ~v151) + v152 * v147, v148, v149);
    v177 = OUTLINED_FUNCTION_16_24((v150 + 64)) + 16;
    OUTLINED_FUNCTION_66_3();
    v181 = v153 + *v153;
    v154 = swift_task_alloc();
    *(v29 + 544) = v154;
    *v154 = v29;
    OUTLINED_FUNCTION_51_10(v154);
    OUTLINED_FUNCTION_172_1();

    return v157(v155, v156, v157, v158, v159, v160, v161, v162, a9, 0, v175, v177, v181, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2173B4B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();

  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2173B4C28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  v2[69] = v4;
  v2[70] = v5;
  v2[71] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2173B4D30()
{
  v34 = v0;
  if (qword_280BE8078 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  v2 = v0[69];
  sub_2177188E8(v2, v1);
  strcpy(v33, "/v1/catalog/");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  MEMORY[0x21CEA23B0](v2, v1);
  v3 = v33[0];
  v4 = v33[1];
  v31 = v33[0];
  v32 = v33[1];
  if ((" to MusicCatalogSearchable." & 0x2F00000000000000) != 0x2000000000000000)
  {
    v33[0] = 47;
    v33[1] = 0xE100000000000000;
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177ACF70);
    MEMORY[0x21CEA23B0](47, 0xE100000000000000);

    v3 = v31;
    v4 = v32;
  }

  v5 = v0[67];
  v6 = v0[47];
  v7 = v0[45];
  v8 = v0[42];
  v27 = v0[44];
  v28 = v0[43];
  v25 = v0[41];
  v26 = v0[40];
  v9 = v0[38];
  v10 = v0[39];
  v23 = v0[46];
  v24 = v0[37];
  v29 = v0[36];
  sub_2172CA838(v29 + 64, (v0 + 2));
  sub_217751DE8();
  sub_2173B6DA4(v3, v4, v5, 1, v0 + 2, v6);

  sub_2173B8280(v6, v23, type metadata accessor for MusicAPI.Endpoint);
  sub_2173B8280(v23, v7, type metadata accessor for MusicAPI.Endpoint);
  (*(v9 + 16))(v10, v7, v24);
  sub_2177512B8();
  sub_2173B82E0(v7, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v25 + 16))(v27, v8, v26);
  v11 = (v27 + *(v28 + 20));
  swift_beginAccess();
  v12 = off_280BEBCD0;

  (v12)(v13);

  v15 = v0[10];
  v14 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v15);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v15, v14, v11);
  (*(v25 + 8))(v8, v26);
  sub_2173B82E0(v23, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_21725EE54(v29 + 64, v11);
  v16 = v11[3];
  v17 = v11[4];
  OUTLINED_FUNCTION_16_24(v11);
  OUTLINED_FUNCTION_66_3();
  v30 = (v18 + *v18);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[72] = v19;
  *v19 = v20;
  v19[1] = sub_2173B512C;
  v21 = v0[44];

  return (v30)(v0 + 25, v21, v16, v17);
}

uint64_t sub_2173B512C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173B5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();

  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2173B5300()
{
  v1 = v0[73];
  v2 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[27];
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v2 + 64, (v0 + 12));
  JSONDecoder.dataRequestConfiguration.setter((v0 + 12));
  type metadata accessor for SharedRelatedItemStore();
  v6 = swift_allocObject();
  v9 = SharedRelatedItemStore.init()(v6, v7, v8);
  v10 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v10);
  sub_2173B7370(v11, v12, v13);
  sub_217751308();
  if (v1)
  {
    v14 = v0[47];
    v15 = v0[44];

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_6_27();
    sub_2173B82E0(v14, v16);
    OUTLINED_FUNCTION_7_25();
    sub_2173B82E0(v15, v17);

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v20 = v0[61];
    v19 = v0[62];
    v26 = v0[47];
    v27 = v0[44];
    v21 = v0[35];
    v22 = v0[31];
    sub_2172CA838(v0[36] + 64, (v0 + 17));
    sub_217751DE8();
    sub_2173B5988(v22, v20, v19, (v0 + 17), v9, v21);

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_6_27();
    sub_2173B82E0(v26, v23);
    OUTLINED_FUNCTION_7_25();
    sub_2173B82E0(v27, v24);

    OUTLINED_FUNCTION_0_2();
  }

  return v18();
}

uint64_t sub_2173B5644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v19 = *(v18 + 352);
  OUTLINED_FUNCTION_6_27();
  sub_2173B82E0(v20, v21);
  OUTLINED_FUNCTION_7_25();
  sub_2173B82E0(v19, v22);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2173B5738(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_217751DE8();
  v3 = MEMORY[0x277D84F90];
  v4 = 32;
  if (v2)
  {
    while (dynamic_cast_existential_1_conditional(*(a1 + v4), *(a1 + v4), &protocol descriptor for CatalogSearchableTypeProviding))
    {
      OUTLINED_FUNCTION_40();
      v6 = v5();
      v7 = *(v6 + 16);
      v8 = *(v3 + 16);
      if (__OFADD__(v8, v7))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

      v9 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v8 + v7 > *(v3 + 24) >> 1)
      {
        sub_2172B199C();
        v3 = v10;
      }

      if (*(v9 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v7)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_18;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_16;
        }
      }

      v4 += 32;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    sub_217752AA8();
    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD000000000000038);
    v17 = sub_217753348();
    MEMORY[0x21CEA23B0](v17);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v18);
    OUTLINED_FUNCTION_42_10();
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_2173DAE08(v3);
    v15 = v14;

    return v15;
  }

  return result;
}

uint64_t sub_2173B5950(char a1)
{
  if (a1)
  {
    return 0x6C75736552706F74;
  }

  else
  {
    return 0x736D726574;
  }
}

void sub_2173B5988(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v159 = a5;
  v160 = a4;
  v157 = a2;
  v158 = a3;
  v154 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  v165 = &v152 - v9;
  v156 = type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  v10 = OUTLINED_FUNCTION_45_0(v156);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v155 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_0_0();
  v170 = v13;
  v171 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_31();
  *&v168 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99();
  v153 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  v169 = &v152 - v19;
  v152 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  OUTLINED_FUNCTION_0_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31();
  v163 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_99();
  v161 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_99();
  v166 = v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_99();
  v167 = v29;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v30);
  v32 = &v152 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v152 - v34;
  v36 = 0;
  v164 = MEMORY[0x277D84F90];
  if (a1)
  {
    v37 = a1;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = *(v37 + 16);
  v162 = v21;
  while (1)
  {
    if (v38 == v36)
    {
      v55 = 0;
      v163 = MEMORY[0x277D84F90];
      while (1)
      {
        while (1)
        {
          if (v38 == v55)
          {

            v72 = *(v163 + 16);
            if (v72)
            {
              v73 = *(v152 + 32);
              v74 = v163 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
              v75 = *(v21 + 72);
              v76 = MEMORY[0x277D84F90];
              v77 = v165;
              do
              {
                OUTLINED_FUNCTION_0_45();
                v78 = v167;
                sub_2173B8280(v74, v167, v79);
                sub_2171F5110(v78 + v73, v77, &qword_27CB24710, &unk_2177A28C0);
                OUTLINED_FUNCTION_1_40();
                sub_2173B82E0(v78, v80);
                if (__swift_getEnumTagSinglePayload(v77, 1, v170) == 1)
                {
                  sub_2171F0738(v77, &qword_27CB24710, &unk_2177A28C0);
                }

                else
                {
                  sub_217283888(v77, v168);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v83 = OUTLINED_FUNCTION_39_7();
                    sub_2172B22D4(v83, v84, v85, v76);
                    v76 = v86;
                  }

                  v82 = *(v76 + 16);
                  v81 = *(v76 + 24);
                  if (v82 >= v81 >> 1)
                  {
                    OUTLINED_FUNCTION_57(v81);
                    OUTLINED_FUNCTION_47_10();
                    sub_2172B22D4(v87, v88, v89, v76);
                    v76 = v90;
                  }

                  *(v76 + 16) = v82 + 1;
                  sub_217283888(v168, v76 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v82);
                  v77 = v165;
                }

                v74 += v75;
                --v72;
              }

              while (v72);
            }

            else
            {

              v76 = MEMORY[0x277D84F90];
            }

            v198 = 0;
            memset(v197, 0, sizeof(v197));
            v91 = MEMORY[0x277D84F90];
            v92 = OUTLINED_FUNCTION_52_12();
            v93 = OUTLINED_FUNCTION_52_12();
            v168 = xmmword_2177586D0;
            v192 = xmmword_2177586D0;
            v194 = 0u;
            v195 = 0u;
            v196 = 0u;
            v193 = v76;
            v199 = v92;
            v200 = v93;
            v170 = *(v76 + 16);
            v165 = v92;
            sub_217751DE8();
            v163 = v93;
            sub_217751DE8();
            v94 = 0;
            v167 = v91;
LABEL_41:
            v95 = v155;
            while (v170 != v94)
            {
              if (v94 >= *(v76 + 16))
              {
                goto LABEL_88;
              }

              v96 = (*(v171 + 80) + 32) & ~*(v171 + 80);
              v97 = *(v171 + 72);
              v98 = v169;
              sub_2171F5110(v76 + v96 + v97 * v94, v169, &qword_27CB24708, &unk_217758C90);
              sub_2173B8280(v98, v95, type metadata accessor for CatalogSearchRawResponse.TopResult);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 10)
              {
                OUTLINED_FUNCTION_28_17();
                sub_217283888(v98, v153);
                v101 = v167;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v186 = v101;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  OUTLINED_FUNCTION_49_11();
                  v103 = OUTLINED_FUNCTION_39_7();
                  sub_217276528(v103, v104, v105);
                  v101 = v186;
                }

                v107 = *(v101 + 16);
                v106 = *(v101 + 24);
                if (v107 >= v106 >> 1)
                {
                  v108 = OUTLINED_FUNCTION_57(v106);
                  sub_217276528(v108, v107 + 1, 1);
                  v101 = v186;
                }

                ++v94;
                *(v101 + 16) = v107 + 1;
                v167 = v101;
                sub_217283888(v153, v101 + v96 + v107 * v97);
                goto LABEL_41;
              }

              sub_2171F0738(v98, &qword_27CB24708, &unk_217758C90);
              OUTLINED_FUNCTION_28_17();
              ++v94;
            }

            sub_2171F5110(v197, v191, &qword_27CB24188, &dword_217758930);
            v186 = v168;
            v188 = 0u;
            v189 = 0u;
            v190 = 0u;
            v187 = v167;
            v109 = v164;
            v191[5] = v165;
            v191[6] = v163;
            v110 = *(v164 + 16);
            if (v110)
            {
              *&v172 = MEMORY[0x277D84F90];
              sub_217751DE8();
              sub_217751DE8();
              sub_217276600(0, v110, 0);
              v171 = v172;
              v111 = v109 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
              *&v168 = *(v162 + 72);
              do
              {
                OUTLINED_FUNCTION_0_45();
                v112 = v166;
                sub_2173B8280(v111, v166, v113);
                if (v112[4])
                {
                  v114 = v112[3];
                  v169 = v112[4];
                  v170 = v114;
                }

                else
                {
                  v169 = 0xE000000000000000;
                  v170 = 0;
                }

                v115 = v112[2];
                v116 = v112[5];
                v117 = v112[6];
                if (v115)
                {
                  v118 = v112[1];
                }

                else
                {
                  v118 = 0;
                }

                if (v115)
                {
                  v119 = v112[2];
                }

                else
                {
                  v119 = 0xE000000000000000;
                }

                sub_217751DE8();
                sub_217751DE8();
                sub_217751DE8();
                OUTLINED_FUNCTION_1_40();
                sub_2173B82E0(v112, v120);
                v121 = v171;
                *&v172 = v171;
                v123 = *(v171 + 16);
                v122 = *(v171 + 24);
                if (v123 >= v122 >> 1)
                {
                  OUTLINED_FUNCTION_57(v122);
                  OUTLINED_FUNCTION_47_10();
                  sub_217276600(v126, v127, v128);
                  v121 = v172;
                }

                *(v121 + 16) = v123 + 1;
                v171 = v121;
                v124 = (v121 + 48 * v123);
                v125 = v169;
                v124[4] = v170;
                v124[5] = v125;
                v124[6] = v118;
                v124[7] = v119;
                v124[8] = v116;
                v124[9] = v117;
                v111 += v168;
                --v110;
              }

              while (v110);
            }

            else
            {
              sub_217751DE8();
              sub_217751DE8();

              v171 = MEMORY[0x277D84F90];
            }

            v129 = v167;
            v185 = 0;
            v183 = 0u;
            v184 = 0u;
            v130 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchSuggestionsResponse, &type metadata for MusicCatalogSearchSuggestionsResponse, &protocol descriptor for MusicCatalogSearchSuggestionsExtendedResponse);
            v132 = v159;
            v131 = v160;
            if (v130)
            {
              OUTLINED_FUNCTION_40();
              v134 = v133();
              v136 = v135;
              sub_2172CA838(v131, v180);
              sub_2171F5110(&v192, &v172, &qword_27CB24308, &unk_217767A90);
              v137 = *(v136 + 8);
              *(&v181[1] + 1) = v134;
              *&v181[2] = v136;
              __swift_allocate_boxed_opaque_existential_0(v181);

              v138 = v158;
              sub_217751DE8();
              v137(v157, v138, v180, &v172, v132, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v134, v136);
              v129 = v167;
              v130 = sub_2171F0738(&v183, &qword_27CB26E70, &unk_217767A80);
              v183 = v181[0];
              v184 = v181[1];
              v185 = *&v181[2];
            }

            memset(v181, 0, 40);
            MEMORY[0x28223BE20](v130);
            v150 = v132;
            v151 = v131;
            v139 = sub_2172E4CDC(sub_2173B8338, (&v152 - 4), v129);
            sub_2171F5110(v181, &v172, &qword_27CB24188, &dword_217758930);
            v140 = *(&v173 + 1);
            sub_2171F0738(v181, &qword_27CB24188, &dword_217758930);
            if (v140)
            {
              v142 = v172;
              v141 = v173;
              v143 = v174;
              v144 = v154;
            }

            else
            {
              v143 = *(&v173 + 1);
              v142 = 0uLL;
              v144 = v154;
              if (*(&v173 + 1))
              {
                sub_2171F0738(&v172, &qword_27CB24188, &dword_217758930);
                v142 = 0uLL;
                v143 = 0;
              }

              v141 = 0uLL;
            }

            v145 = v160;
            *&v172 = v139;
            BYTE8(v172) = 0;
            v173 = v142;
            v174 = v141;
            v175 = v143;
            v176 = 0u;
            v177 = 0u;
            v178 = v165;
            v179 = v163;
            sub_2171F5110(&v183, v182, &qword_27CB26E70, &unk_217767A80);
            v146 = v158;
            *(v144 + 152) = v157;
            *(v144 + 160) = v146;
            *v144 = v171;
            sub_2171F5110(&v172, v180, &qword_27CB26E78, &qword_217785AC0);
            if (v180[11])
            {
              memcpy(v181, v180, 0x68uLL);
            }

            else
            {
              sub_2174AA020(MEMORY[0x277D84F90]);
              if (v180[11])
              {
                sub_2171F0738(v180, &qword_27CB26E78, &qword_217785AC0);
              }
            }

            memcpy((v144 + 8), v181, 0x68uLL);
            sub_2171F5110(v182, v180, &qword_27CB26E70, &unk_217767A80);
            v147 = v180[3];
            if (v180[3])
            {
              v148 = v180[4];
              __swift_project_boxed_opaque_existential_1(v180, v180[3]);
              sub_2171F9380(v147, v148, v181);

              OUTLINED_FUNCTION_169_1(v182);
              sub_2171F0738(&v172, &qword_27CB26E78, &qword_217785AC0);
              OUTLINED_FUNCTION_169_1(&v183);
              sub_21733AB9C(v145);
              OUTLINED_FUNCTION_169_1(&v186);
              OUTLINED_FUNCTION_169_1(&v192);
              __swift_destroy_boxed_opaque_existential_1(v180);
            }

            else
            {

              OUTLINED_FUNCTION_169_1(v182);
              sub_2171F0738(&v172, &qword_27CB26E78, &qword_217785AC0);
              OUTLINED_FUNCTION_169_1(&v183);
              sub_21733AB9C(v145);
              sub_2171F0738(&v186, &qword_27CB24308, &unk_217767A90);
              sub_2171F0738(&v192, &qword_27CB24308, &unk_217767A90);
              OUTLINED_FUNCTION_169_1(v180);
              memset(v181, 0, 40);
            }

            v149 = v181[1];
            *(v144 + 112) = v181[0];
            *(v144 + 128) = v149;
            *(v144 + 144) = *&v181[2];
            return;
          }

          if (v55 >= *(v37 + 16))
          {
            goto LABEL_87;
          }

          v56 = (*(v21 + 80) + 32) & ~*(v21 + 80);
          v57 = *(v21 + 72);
          OUTLINED_FUNCTION_0_45();
          sub_2173B8280(v58, v32, v59);
          if ((*v32 & 1) == 0)
          {
            break;
          }

LABEL_23:
          sub_2173B821C(v32, v161);
          v62 = v163;
          v63 = swift_isUniquelyReferenced_nonNull_native();
          *&v192 = v62;
          if ((v63 & 1) == 0)
          {
            OUTLINED_FUNCTION_49_11();
            v64 = OUTLINED_FUNCTION_39_7();
            sub_217276620(v64, v65, v66);
            v62 = v192;
          }

          v68 = *(v62 + 16);
          v67 = *(v62 + 24);
          if (v68 >= v67 >> 1)
          {
            OUTLINED_FUNCTION_57(v67);
            OUTLINED_FUNCTION_47_10();
            sub_217276620(v69, v70, v71);
            v62 = v192;
          }

          ++v55;
          *(v62 + 16) = v68 + 1;
          v163 = v62;
          sub_2173B821C(v161, v62 + v56 + v68 * v57);
          v21 = v162;
        }

        v60 = sub_217753058();

        if (v60)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_1_40();
        sub_2173B82E0(v32, v61);
        ++v55;
      }
    }

    if (v36 >= *(v37 + 16))
    {
      break;
    }

    v39 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v40 = *(v21 + 72);
    OUTLINED_FUNCTION_0_45();
    sub_2173B8280(v41, v35, v42);
    if (*v35)
    {
      v43 = sub_217753058();

      if (v43)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_1_40();
      sub_2173B82E0(v35, v44);
      ++v36;
    }

    else
    {

LABEL_11:
      sub_2173B821C(v35, v163);
      v45 = v164;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v192 = v45;
      if ((v46 & 1) == 0)
      {
        OUTLINED_FUNCTION_49_11();
        v47 = OUTLINED_FUNCTION_39_7();
        sub_217276620(v47, v48, v49);
        v45 = v192;
      }

      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v53 = OUTLINED_FUNCTION_57(v50);
        v164 = v54;
        sub_217276620(v53, v54, 1);
        v52 = v164;
        v45 = v192;
      }

      ++v36;
      *(v45 + 16) = v52;
      v164 = v45;
      sub_2173B821C(v163, v45 + v39 + v51 * v40);
      v21 = v162;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}
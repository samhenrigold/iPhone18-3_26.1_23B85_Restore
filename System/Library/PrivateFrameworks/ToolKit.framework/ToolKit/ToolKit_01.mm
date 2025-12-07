uint64_t sub_1C8CB38C4()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1C8CB390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C8CAD8AC();
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v36 = v26;
  while (1)
  {
    if (v27 == v28)
    {
      goto LABEL_18;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1CCA82230](v28, v24);
    }

    else
    {
      if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v30 = *(v24 + 8 * v28 + 32);
    }

    v31 = v30;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    a10 = v30;
    v26(v40, &a10);
    if (v20)
    {

LABEL_18:
      OUTLINED_FUNCTION_198();
      return;
    }

    memcpy(__dst, v40, sizeof(__dst));
    if (OUTLINED_FUNCTION_125_0(__dst) == 1)
    {
      memcpy(__src, v40, sizeof(__src));
      sub_1C8D27F8C(__src, &qword_1EC313F50, &unk_1C90C5930);
    }

    else
    {
      memcpy(__src, v40, sizeof(__src));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8CADDA8(0, *(v29 + 16) + 1, 1, v29);
        v29 = v34;
      }

      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C8CADDA8(v32 > 1, v33 + 1, 1, v29);
        v29 = v35;
      }

      memcpy(v37, __src, sizeof(v37));
      *(v29 + 16) = v33 + 1;
      memcpy((v29 + 136 * v33 + 32), v37, 0x88uLL);
      v26 = v36;
    }

    ++v28;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void LNValueType.toTypeIdentifier(source:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1C9063D3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = OUTLINED_FUNCTION_2_39(v12);
  if (v13)
  {
    v14 = [v13 memberValueType];
    LNValueType.toTypeIdentifier(source:)(a1, a2, a3);

    return;
  }

  v15 = objc_opt_self();
  v16 = OUTLINED_FUNCTION_2_39(v15);
  if (v16)
  {
    v17 = [v16 typeIdentifier];
    switch(v17)
    {
      case 0uLL:
        goto LABEL_36;
      case 1uLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 24;
        goto LABEL_37;
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 25;
        goto LABEL_37;
      case 7uLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 26;
        goto LABEL_37;
      case 8uLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 29;
        goto LABEL_37;
      case 9uLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 30;
        goto LABEL_37;
      case 0xAuLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 36;
        goto LABEL_37;
      case 0xBuLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 31;
        goto LABEL_37;
      case 0xCuLL:
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 33;
        goto LABEL_37;
      default:
        type metadata accessor for LNPrimitiveValueTypeIdentifier(0);
        v98 = v17;
        sub_1C9064C8C();
        __break(1u);
        JUMPOUT(0x1C8CB4434);
    }
  }

  v20 = objc_opt_self();
  v21 = OUTLINED_FUNCTION_2_39(v20);
  if (v21)
  {
    v22 = [objc_opt_self() unitTypeFromLinkMeasurementUnitType_];
    if (v22)
    {
      v23 = v22;
      v24 = WFMeasurementUnitType.toolkitUnitType.getter(v22);

      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
      if (v24 != 22)
      {
        *(v18 + 16) = v24;
LABEL_38:
        *a3 = v18;
        return;
      }
    }

    else
    {
      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
    }

    v19 = 22;
LABEL_37:
    *(v18 + 16) = v19;
    goto LABEL_38;
  }

  v25 = objc_opt_self();
  v26 = OUTLINED_FUNCTION_2_39(v25);
  if (v26)
  {
    v27 = v26;
    OUTLINED_FUNCTION_3_33();
    v28 = swift_allocObject();
    v29 = [v27 bundleIdentifier];
    v30 = sub_1C9063EEC();
    v32 = v31;

    *(v28 + 16) = v30;
    *(v28 + 24) = v32;
    v33 = [v27 identifier];
    v34 = sub_1C9063EEC();
    v36 = v35;

    *(v28 + 32) = v34;
    *(v28 + 40) = v36;
    v18 = v28 | 0x4000000000000000;
    goto LABEL_38;
  }

  v37 = objc_opt_self();
  v38 = OUTLINED_FUNCTION_2_39(v37);
  if (v38)
  {
    v39 = v38;
    OUTLINED_FUNCTION_3_33();
    v40 = swift_allocObject();
    *(v40 + 16) = a1;
    *(v40 + 24) = a2;

    v41 = [v39 enumerationIdentifier];
LABEL_25:
    v45 = v41;
    v46 = sub_1C9063EEC();
    v48 = v47;

    *(v40 + 32) = v46;
    *(v40 + 40) = v48;
    v18 = v40 | 0x4000000000000000;
    goto LABEL_38;
  }

  v42 = objc_opt_self();
  v43 = OUTLINED_FUNCTION_2_39(v42);
  if (v43)
  {
    v44 = v43;
    OUTLINED_FUNCTION_3_33();
    v40 = swift_allocObject();
    *(v40 + 16) = a1;
    *(v40 + 24) = a2;

    v41 = [v44 identifier];
    goto LABEL_25;
  }

  v49 = objc_opt_self();
  v50 = OUTLINED_FUNCTION_2_39(v49);
  if (v50)
  {
    v51 = [v50 typeIdentifier];
    if (v51 == 14)
    {
      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
      v19 = 34;
      goto LABEL_37;
    }

    if (v51 == 3)
    {
      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
      v19 = 37;
      goto LABEL_37;
    }

    if (v51 == 12)
    {
      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
      v19 = 38;
      goto LABEL_37;
    }

    if (v51 == 13)
    {
      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
      v19 = 35;
      goto LABEL_37;
    }

    if (!v51)
    {
      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
      v19 = 39;
      goto LABEL_37;
    }
  }

  else
  {
    v52 = objc_opt_self();
    v53 = OUTLINED_FUNCTION_2_39(v52);
    if (v53)
    {
      v54 = v53;
      OUTLINED_FUNCTION_3_33();
      v40 = swift_allocObject();
      *(v40 + 16) = 0xD00000000000001BLL;
      *(v40 + 24) = 0x80000001C90CB600;
      v41 = [v54 identifier];
      goto LABEL_25;
    }

    v55 = objc_opt_self();
    if (OUTLINED_FUNCTION_2_39(v55))
    {
LABEL_36:
      OUTLINED_FUNCTION_107_0();
      v18 = swift_allocObject();
      v19 = 28;
      goto LABEL_37;
    }

    v56 = objc_opt_self();
    v57 = OUTLINED_FUNCTION_2_39(v56);
    if (v57)
    {
      if (![v57 typeIdentifier])
      {
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 41;
        goto LABEL_37;
      }
    }

    else
    {
      v69 = objc_opt_self();
      if (OUTLINED_FUNCTION_2_39(v69))
      {
        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 23;
        goto LABEL_37;
      }

      v70 = objc_opt_self();
      v71 = OUTLINED_FUNCTION_2_39(v70);
      if (v71)
      {
        v72 = [v71 identifier];
        v96 = sub_1C9063EEC();
        v97 = v73;

        v95[1] = sub_1C8CB78AC(0, &qword_1EC3169D8, 0x1E69AC758);
        v74 = sub_1C90644FC();
        v75 = [v74 identifier];

        v76 = sub_1C9063EEC();
        v78 = v77;

        if (v76 == v96 && v78 == v97)
        {
        }

        else
        {
          v80 = sub_1C9064C2C();

          if ((v80 & 1) == 0)
          {
            v81 = sub_1C906451C();
            v82 = [v81 identifier];

            v83 = sub_1C9063EEC();
            v85 = v84;

            if (v83 == v96 && v85 == v97)
            {
            }

            else
            {
              v87 = sub_1C9064C2C();

              if ((v87 & 1) == 0)
              {
                v88 = sub_1C906450C();
                v89 = [v88 identifier];

                v90 = sub_1C9063EEC();
                v92 = v91;

                if (v90 == v96 && v92 == v97)
                {
                }

                else
                {
                  v94 = sub_1C9064C2C();

                  if ((v94 & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }

                OUTLINED_FUNCTION_107_0();
                v18 = swift_allocObject();
                v19 = 46;
                goto LABEL_37;
              }
            }

            OUTLINED_FUNCTION_107_0();
            v18 = swift_allocObject();
            v19 = 45;
            goto LABEL_37;
          }
        }

        OUTLINED_FUNCTION_107_0();
        v18 = swift_allocObject();
        v19 = 44;
        goto LABEL_37;
      }
    }
  }

LABEL_45:
  sub_1C906371C();
  v58 = v4;
  v59 = sub_1C9063D1C();
  v60 = sub_1C906444C();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    *(v61 + 4) = v58;
    *v62 = v58;
    v63 = v58;
    _os_log_impl(&dword_1C8C9B000, v59, v60, "Unsupported LNValueType to TypeIdentifier: %@", v61, 0xCu);
    sub_1C8E25A00(v62);
    MEMORY[0x1CCA833A0](v62, -1, -1);
    MEMORY[0x1CCA833A0](v61, -1, -1);
  }

  v64 = (*(v9 + 8))(v11, v8);
  sub_1C8E259AC(v64, v65, v66);
  swift_allocError();
  *v67 = v58;
  swift_willThrow();
  v68 = v58;
}

uint64_t sub_1C8CB4484()
{

  OUTLINED_FUNCTION_3_33();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v35 = *(v29 + 56) + 104 * v28;
  *v35 = v33;
  *(v35 + 1) = *(v34 - 152);
  *(v35 + 4) = *(v34 - 149);
  *(v35 + 8) = v30;
  *(v35 + 16) = v32;
  *(v35 + 24) = v31;
  *(v35 + 32) = v27;
  *(v35 + 33) = *(v34 - 160);
  *(v35 + 36) = *(v34 - 157);
  *(v35 + 40) = a27;
  *(v35 + 48) = a26;
  *(v35 + 56) = a25;
  *(v35 + 64) = a21;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_1(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6330];

  return sub_1C8CA669C(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_1C9062DDC();
}

uint64_t OUTLINED_FUNCTION_7_28(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_7_35()
{

  return sub_1C8ECC488();
}

uint64_t OUTLINED_FUNCTION_7_40()
{

  return MEMORY[0x1EEE18D28](0);
}

uint64_t OUTLINED_FUNCTION_7_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_45(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_7_49(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_7_50(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_7_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_56()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
}

uint64_t OUTLINED_FUNCTION_156_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C90624EC();
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_1C8CBA264(v0, type metadata accessor for ToolDatabase.Pager);
}

void OUTLINED_FUNCTION_3_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_3_25(uint64_t a1)
{
  v2 = __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C8D24D68(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_3_28()
{
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_3_34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = a1;
  a14 = a2;
  a15 = a3;
  a16 = a4;
  a9 = a5;
  a10 = a6;
  a11 = a7;
  a12 = a8;

  return static RuntimePlatformVersion.< infix(_:_:)(&a9, &a13);
}

uint64_t OUTLINED_FUNCTION_3_37(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_1C9062D6C();
}

uint64_t OUTLINED_FUNCTION_3_42(uint64_t a1)
{

  return _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
}

uint64_t OUTLINED_FUNCTION_3_44(uint64_t a1)
{

  return sub_1C8EE52DC(v2, a1, v1, sub_1C902D7E0);
}

uint64_t OUTLINED_FUNCTION_3_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_54(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_3_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_61(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_65(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_67()
{

  return sub_1C9063E9C();
}

uint64_t OUTLINED_FUNCTION_3_68(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_69(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_355(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064DEC();
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{

  return sub_1C906251C();
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{

  return sub_1C9064ACC();
}

unint64_t OUTLINED_FUNCTION_2_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C8CAE064(a2, a3);
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  *v0 = *(v3 - 96);
  *(v0 + 16) = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_2_28()
{
}

uint64_t OUTLINED_FUNCTION_2_29(uint64_t a1, uint64_t a2)
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_34()
{
  *v0 = v8;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = *(v1 + 56);
  *(v0 + 72) = *(v1 + 72);
  result = *(v1 + 81);
  *(v0 + 81) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_2_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_45(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_2_48(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064C2C();
}

void OUTLINED_FUNCTION_2_51()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

uint64_t OUTLINED_FUNCTION_2_57(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_65()
{
  v2 = *(v0 - 128);

  return sub_1C8F26414(v2, type metadata accessor for ToolKitProtoToolInvocationSignature);
}

uint64_t OUTLINED_FUNCTION_2_66(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_2_68(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_76(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_81(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_2()
{
  v2 = *(v0 - 72);

  return sub_1C8CD0D98(v2, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
}

uint64_t OUTLINED_FUNCTION_106_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, uint64_t a4@<X1>)
{
  *(a1 + *(a2 + 28)) = a3;

  return sub_1C8E1BAB4(a1, a4, type metadata accessor for TypedValueResolutionRequest);
}

void OUTLINED_FUNCTION_340()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_41_2()
{
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return swift_getEnumCaseMultiPayload();
}

BOOL OUTLINED_FUNCTION_15_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return sub_1C8D9913C();
}

uint64_t OUTLINED_FUNCTION_84_3@<X0>(char a1@<W8>)
{
  *(v1 - 208) = a1;

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_84_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84_9(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2)
{

  return sub_1C9064C2C();
}

void OUTLINED_FUNCTION_15_10()
{
  *(v0 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v2;
  v6 = (*(v0 + 48) + 32 * v2);
  *v6 = v5;
  v6[1] = v3;
  v6[2] = v1;
  v6[3] = v4;
}

uint64_t OUTLINED_FUNCTION_347_0()
{
}

uint64_t OUTLINED_FUNCTION_15_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_18()
{

  return MEMORY[0x1EEE09AD8](v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_15_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_24(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_15_26(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_15_27(void *a1)
{

  return memcpy(a1, (v1 + 200), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_15_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_34()
{

  return sub_1C903566C(v0, type metadata accessor for ToolKitProtoComparisonPredicate.Template);
}

uint64_t OUTLINED_FUNCTION_15_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C8D07154(v8, v7, a3, a4, a5, a6);
  sub_1C8D07154(v6, v9, v10, v11, v12, v13);
  return sub_1C8D07154(v8, v7, v14, v15, v16, v17);
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_28()
{
  *(v1 - 96) = *(v0 + 16);

  return type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1)
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_48(const void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TypeInstance.asSourced(from:attribution:)(a1, va);
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return sub_1C8F07D10(v0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return sub_1C8F17374(v0, type metadata accessor for ToolKitProtoSearchableItemPredicate);
}

uint64_t OUTLINED_FUNCTION_0_76(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_82(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_86(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_89(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_90(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  sub_1C8D06DE0(v5, v4, v1);
  sub_1C8D06DE0(v0, v3, v2);
  return v5;
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{

  return sub_1C90644BC();
}

uint64_t OUTLINED_FUNCTION_39_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_12(uint64_t a1)
{

  return sub_1C9064B8C();
}

void OUTLINED_FUNCTION_39_14(int a1@<W8>)
{
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = a1;
  v1[7] = a1;
  v1[8] = a1;
  v1[10] = a1;
}

uint64_t OUTLINED_FUNCTION_39_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24)
{
  v27 = *(v25 - 104);

  return sub_1C8D3ED20(v24, v27, a24, a23, a22);
}

void *OUTLINED_FUNCTION_39_18()
{
  *(v2 + 16) = v0;
  *(v3 - 392) = v2;

  return memcpy((v2 + 104 * v1 + 32), (v3 - 208), 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return sub_1C90649EC();
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + *(a1 + 24), 1, 1, v2);

  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return sub_1C9063EEC();
}

uint64_t OUTLINED_FUNCTION_1_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_43()
{

  return sub_1C8DFCA4C(v0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
}

uint64_t OUTLINED_FUNCTION_1_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_1_50(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_51(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_1_60(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_68()
{

  return sub_1C8F22C30(v0, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin);
}

uint64_t OUTLINED_FUNCTION_1_69(unint64_t *a1)
{

  return sub_1C8D28184(a1, v1, v2, &unk_1C908BB30);
}

uint64_t OUTLINED_FUNCTION_1_70()
{

  return sub_1C8F26414(v0, type metadata accessor for ToolKitProtoToolSummaryString.Component);
}

uint64_t OUTLINED_FUNCTION_1_73(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_77(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_78()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_82(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_83(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_86(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_88()
{

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_1_89(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
}

uint64_t OUTLINED_FUNCTION_67_9()
{
}

uint64_t OUTLINED_FUNCTION_67_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return sub_1C8D07344(va, &a27);
}

void *OUTLINED_FUNCTION_67_11(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x61uLL);
}

uint64_t sub_1C8CB78AC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C8CB7914(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 8))
    {
      v2 = *a1 + 119;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x77)
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

uint64_t sub_1C8CB795C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_14_6()
{

  sub_1C8D098A4(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_14_11(unint64_t *a1)
{

  return sub_1C8D4F674(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_13()
{
}

void *OUTLINED_FUNCTION_14_21(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_14_22(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_24()
{

  return sub_1C9062A7C();
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return sub_1C8F090A0(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_14_33(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_14_34()
{

  return memcpy((v0 + 456), (v1 + 200), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_14_35(uint64_t a1)
{

  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_39(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_14_44(uint64_t a1)
{

  return swift_once();
}

uint64_t FileLock.lock(_:configuration:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v114[1] = *MEMORY[0x1E69E9840];
  sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v109 = v7;
  v110 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v102 = v8 - v9;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - v11;
  v107 = type metadata accessor for FileLock(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v17 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v101 = v21 - v22;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v97 - v27;
  v29 = *a1;
  v103 = *a2;
  v111 = v3;
  sub_1C8CC0CE0(v3, v16);
  (*(v19 + 32))(v28, v16, v17);
  v99 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();
  v30 = *(v19 + 16);
  v112 = v28;
  v100 = v19 + 16;
  v98 = v30;
  (v30)(v25, v28, v17);
  v106 = v12;
  v31 = sub_1C9063D1C();
  v32 = sub_1C906443C();
  v33 = os_log_type_enabled(v31, v32);
  v108 = v19;
  v104 = v29;
  if (v33)
  {
    swift_slowAlloc();
    v114[0] = OUTLINED_FUNCTION_17_21();
    *v17 = 136315394;
    if (v29)
    {
      v37 = 0x646572616873;
    }

    else
    {
      v37 = 0x766973756C637865;
    }

    if (v29)
    {
      v38 = 0xE600000000000000;
    }

    else
    {
      v38 = 0xE900000000000065;
    }

    v39 = sub_1C8CACE04(v37, v38, v114, v34, v35, v36);

    *(v17 + 4) = v39;
    *(v17 + 12) = 2080;
    v40 = _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
    v42 = v41;
    v43 = *(v19 + 8);
    v43(v25, v105);
    v47 = sub_1C8CACE04(v40, v42, v114, v44, v45, v46);

    *(v17 + 14) = v47;
    _os_log_impl(&dword_1C8C9B000, v31, v32, "Attempting to take out %s lock on %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    v17 = v105;
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
  }

  else
  {

    v43 = *(v19 + 8);
    v43(v25, v17);
  }

  v48 = *(v109 + 8);
  v48(v106, v110);
  v49 = *(v107 + 20);
  if (*(v111 + v49 + 4) << 32 != 0x200000000)
  {
    type metadata accessor for FileLock.LockError(0);
    OUTLINED_FUNCTION_5_32();
    sub_1C8CC4BD4(v55, v56, &protocol conformance descriptor for FileLock.LockError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_8_30();
    return (v43)(v112, v17);
  }

  v50 = v112;
  sub_1C9061E5C();
  sub_1C9063F7C();

  v51 = sub_1C9063D5C();

  if ((v51 & 0x80000000) != 0)
  {
LABEL_30:
    MEMORY[0x1CCA817F0](v52);
    v83 = sub_1C9063D4C();
    type metadata accessor for FileLock.LockError(0);
    OUTLINED_FUNCTION_5_32();
    sub_1C8CC4BD4(v84, v85, &protocol conformance descriptor for FileLock.LockError);
    swift_allocError();
    v87 = v86;
    if ((v83 & 0x100000000) != 0)
    {
      v91 = sub_1C906188C();
      v89 = v87;
      v90 = 1;
    }

    else
    {
      v88 = sub_1C906188C();
      LODWORD(v114[0]) = v83;
      sub_1C8D1CE58(MEMORY[0x1E69E7CC0]);
      sub_1C8CC4BD4(&unk_1EDA62CE0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1C9061D5C();
      v89 = v87;
      v90 = 0;
      v91 = v88;
    }

    __swift_storeEnumTagSinglePayload(v89, v90, 1, v91);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (v43)(v112, v17);
  }

  if ((v103 & 2) != 0)
  {
    OUTLINED_FUNCTION_9_25();
    v57 = sub_1C9063F7C();
    fremovexattr(v51, (v57 + 32), 0);
  }

  else
  {
    value = 1;
    OUTLINED_FUNCTION_9_25();
    v53 = sub_1C9063F7C();
    v54 = fsetxattr(v51, (v53 + 32), &value, 1uLL, 0, 0);

    if (v54 < 0)
    {
LABEL_29:
      v52 = close(v51);
      goto LABEL_30;
    }
  }

  if (v104)
  {
    v58 = 5;
  }

  else
  {
    v58 = 6;
  }

  v59 = flock(v51, v58);
  v60 = v101;
  if (v59 < 0)
  {
    goto LABEL_29;
  }

  v107 = v43;
  sub_1C906371C();
  v61 = OUTLINED_FUNCTION_208_0();
  v98(v61);
  v62 = v60;
  v63 = sub_1C9063D1C();
  v64 = sub_1C906443C();
  if (os_log_type_enabled(v63, v64))
  {
    swift_slowAlloc();
    v106 = OUTLINED_FUNCTION_17_21();
    v114[0] = v106;
    *v17 = 136315394;
    if (v104)
    {
      v68 = 0x646572616873;
    }

    else
    {
      v68 = 0x766973756C637865;
    }

    if (v104)
    {
      v69 = 0xE600000000000000;
    }

    else
    {
      v69 = 0xE900000000000065;
    }

    v70 = sub_1C8CACE04(v68, v69, v114, v65, v66, v67);

    *(v17 + 4) = v70;
    *(v17 + 12) = 2080;
    _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
    OUTLINED_FUNCTION_8_30();
    v108 = v71;
    v72 = v62;
    v73 = v107;
    (v107)(v72, v105);
    v74 = OUTLINED_FUNCTION_208_0();
    v80 = sub_1C8CACE04(v74, v75, v76, v77, v78, v79);

    *(v17 + 14) = v80;
    _os_log_impl(&dword_1C8C9B000, v63, v64, "Successfully took out %s lock on %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v48(v102, v110);
    result = v73(v112, v105);
    v82 = v104;
  }

  else
  {

    v92 = v107;
    (v107)(v62, v17);
    v48(v102, v110);
    result = v92(v50, v17);
    v82 = v104;
  }

  v93 = v82 == 0;
  v94 = 0x100000000;
  if (v93)
  {
    v94 = 0;
  }

  v95 = v94 | v51 | (v103 << 40);
  v96 = v111 + v49;
  *v96 = v51;
  *(v96 + 4) = WORD2(v95);
  return result;
}

unint64_t sub_1C8CB867C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C8CC0E5C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1C90647EC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_1C8D02958();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v2 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v2;
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 247) = *(v0 - 183);

  return sub_1C8D3A16C(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  v1 = type metadata accessor for ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_76_11(uint64_t a1)
{

  return sub_1C9063FBC();
}

uint64_t sub_1C8CB88EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CA78D4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1C8CB892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CCF0;
  if (!qword_1EDA6CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_358(uint64_t a1)
{

  return sub_1C9064E1C();
}

uint64_t OUTLINED_FUNCTION_358_0(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_358_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C9063EAC();
}

uint64_t sub_1C8CB89D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CA87A4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1C8CB8A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CA0;
  if (!qword_1EDA69CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_73_5()
{

  return sub_1C8ECA488();
}

uint64_t ToolDatabase.__allocating_init(readonly:)(int a1)
{
  v3 = a1;
  v84[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v74 = v6 - v7;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v71 - v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v71 - v14;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v71 - v16;
  v80 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v71 - v22;
  v23 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v29 = v28 - v27;
  v30 = type metadata accessor for ToolDatabase.Pager(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  v34 = v33 - v32;
  if (v3 == 2 || (a1 & 1) != 0)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  v83 = v35;
  v78 = a1;
  v76 = v10;
  v73 = v20;
  v36 = v34;
  v81 = v1;
  if (qword_1EDA6D908 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v23, qword_1EDA6D910);
  swift_beginAccess();
  v38 = *(v25 + 16);
  v38(v29, v37, v23);
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v38(v36, v29, v23);
  v39 = v36;
  *(v36 + *(v30 + 20)) = 63;
  *(v36 + *(v30 + 24)) = v83;
  v40 = [objc_opt_self() defaultManager];
  v41 = sub_1C9061DDC();
  v84[0] = 0;
  v42 = [v40 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:v84];

  if (!v42)
  {
    v44 = v84[0];
    sub_1C9061D7C();

    swift_willThrow();
    (*(v25 + 8))(v29, v23);
    goto LABEL_17;
  }

  v43 = v78;
  v44 = v78;
  v45 = *(v25 + 8);
  v46 = v84[0];
  v45(v29, v23);
  if (v44 != 2)
  {
    v49 = v82;
    v48 = v79;
    v50 = v80;
    goto LABEL_16;
  }

  v44 = v77;
  v47 = v79;
  sub_1C8CBAA48();
  v48 = v47;
  v49 = v82;
  v50 = v80;
  if (v47)
  {

    __swift_storeEnumTagSinglePayload(v44, 1, 1, v50);
    v48 = 0;
LABEL_15:
    sub_1C8D16D78(v44, &qword_1EC313058, &qword_1C9071D80);
    v43 = 1;
    goto LABEL_16;
  }

  if (__swift_getEnumTagSinglePayload(v44, 1, v80) == 1)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_18();
  v61 = v72;
  sub_1C8CBAF88(v44, v72, v62);
  v44 = *(v61 + *(v50 + 20));
  OUTLINED_FUNCTION_0_21();
  sub_1C8CBA264(v61, v63);
  v43 = v44 ^ 1;
LABEL_16:
  sub_1C8CBAFE8(v39, v43 & 1, v49);
  if (!v48)
  {
    if (v43)
    {
      v52 = v75;
      sub_1C8CBA654(v49, v75);
      v44 = OUTLINED_FUNCTION_8_12();
      ToolDatabase.init(file:readonly:)(v52, 1u);
      sub_1C8D16D78(v49, &qword_1EC313058, &qword_1C9071D80);
      OUTLINED_FUNCTION_3_16();
      return v44;
    }

    v53 = v76;
    sub_1C8CBA654(v49, v76);
    if (__swift_getEnumTagSinglePayload(v53, 1, v50) != 1)
    {
      OUTLINED_FUNCTION_1_18();
      v64 = v73;
      sub_1C8CBAF88(v53, v73, v65);
      v66 = v74;
      sub_1C8D5D8BC(v64, v74);
      __swift_storeEnumTagSinglePayload(v66, 0, 1, v50);
      v44 = OUTLINED_FUNCTION_8_12();
      ToolDatabase.init(file:readonly:)(v66, 0);
      ToolDatabase.Pager.setActive(databaseFile:)();
      OUTLINED_FUNCTION_0_21();
      sub_1C8CBA264(v64, v70);
      sub_1C8D16D78(v49, &qword_1EC313058, &qword_1C9071D80);
      OUTLINED_FUNCTION_3_16();
      return v44;
    }

    v44 = &qword_1EC313058;
    OUTLINED_FUNCTION_116();
    v57 = sub_1C8D16D78(v54, v55, v56);
    sub_1C8D5D868(v57, v58, v59);
    swift_allocError();
    *v60 = 0u;
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    *(v60 + 48) = 0u;
    *(v60 + 64) = 0u;
    *(v60 + 80) = 0u;
    *(v60 + 96) = -64;
    swift_willThrow();
    OUTLINED_FUNCTION_116();
    sub_1C8D16D78(v67, v68, v69);
  }

LABEL_17:
  OUTLINED_FUNCTION_3_16();
  return v44;
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C90649EC();
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1)
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_24_10()
{
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return sub_1C9064B2C();
}

uint64_t OUTLINED_FUNCTION_24_20()
{
  v2 = *(v0 + 96);

  return sub_1C8E59658(v2, type metadata accessor for TypedValue.ID);
}

uint64_t OUTLINED_FUNCTION_24_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_24()
{

  return sub_1C8F07110();
}

__n128 OUTLINED_FUNCTION_24_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *v10 = a10.n128_u32[0];
  return result;
}

unint64_t OUTLINED_FUNCTION_24_31()
{

  return sub_1C8D24EA8(v0);
}

uint64_t OUTLINED_FUNCTION_96_2(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_96_4(uint64_t a1@<X8>)
{
  v3[24] = v1;
  v3[25] = v2;
  v3[26] = v4;
  v3[27] = 0xD000000000000013;
  v3[28] = a1;
}

uint64_t sub_1C8CB9578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313048, &qword_1C906A960);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313050, &qword_1C906A968);
  OUTLINED_FUNCTION_11();
  v37 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_5();
  v12 = type metadata accessor for ToolDatabase.DatabaseFile(v11);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v18 = *(v17 + 32);
  v19 = [objc_opt_self() defaultManager];
  *(v16 + v18) = v19;
  sub_1C9061E5C();
  if (qword_1EDA6DA10 != -1)
  {
    OUTLINED_FUNCTION_14_7();
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
  __swift_project_value_buffer(v20, qword_1EDA6DA18);
  sub_1C906332C();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C9061EBC();
    OUTLINED_FUNCTION_13_1();
    (*(v21 + 8))(a1);
    sub_1C8CBE41C(v7, &qword_1EC313048);

    OUTLINED_FUNCTION_115();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  }

  else
  {
    v26 = v37;
    (*(v37 + 32))(v2, v7, v8);
    if (qword_1EDA6DA30 != -1)
    {
      OUTLINED_FUNCTION_13_4();
      swift_once();
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
    __swift_project_value_buffer(v27, qword_1EDA6DA38);
    sub_1C906204C();
    sub_1C906334C();
    v28 = sub_1C9061EBC();
    OUTLINED_FUNCTION_179();
    v30 = v29;
    (*(v29 + 16))(v16, a1, v28);
    if (qword_1EDA6D9E8 != -1)
    {
      OUTLINED_FUNCTION_12_4();
      swift_once();
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313070, &qword_1C906A980);
    __swift_project_value_buffer(v31, qword_1EDA6D9F0);
    sub_1C906334C();
    *(v16 + *(v12 + 24)) = v39;
    if (qword_1EDA6DA50 != -1)
    {
      OUTLINED_FUNCTION_11_3();
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313078, &qword_1C906A988);
    __swift_project_value_buffer(v32, qword_1EDA6B1A0);
    sub_1C906334C();
    (*(v30 + 8))(a1, v28);
    (*(v26 + 8))(v2, v8);
    *(v16 + *(v12 + 20)) = v39;
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBA80C(v16, v38);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v12);
    OUTLINED_FUNCTION_1_11();
    return sub_1C8CBA864(v16, v36);
  }
}

uint64_t getEnumTagSinglePayload for IdSearchPredicate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C8CB9B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1C90647EC();
  }

  result = sub_1C8CB9CB4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t *sub_1C8CB9BE0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((v4 ^ *result) < 0x4000)
  {
    v11 = 0;
    v9 = 1;
  }

  else
  {
    v6 = result[2];
    v5 = result[3];
    result = sub_1C8CB9B04(*result, v4, v6, v5, 10);
    if ((v7 & 0x100) != 0)
    {

      v8 = sub_1C8E269BC(v3, v4, v6, v5, 10);
      v9 = v10;
    }

    else
    {
      v8 = result;
      v9 = v7;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }
  }

  *a2 = v11;
  *(a2 + 8) = v9 & 1;
  return result;
}

uint64_t sub_1C8CB9CB4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1C8E272E8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = sub_1C906405C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1C8E272E8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1C8E272E8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = sub_1C906405C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_168_4()
{
}

void sub_1C8CBA180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_1C906204C();
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 32)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C8CBA264(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2)
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
}

uint64_t OUTLINED_FUNCTION_22_14()
{

  return sub_1C906473C();
}

int64x2_t OUTLINED_FUNCTION_22_18()
{
  result = vdupq_n_s64(0xA000000000000000);
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C90649EC();
}

uint64_t OUTLINED_FUNCTION_22_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1C903A588(v13, &a13);
}

uint64_t OUTLINED_FUNCTION_22_28()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_22_30(uint64_t a1)
{

  return sub_1C9064B0C();
}

uint64_t OUTLINED_FUNCTION_22_32()
{
  *(v0 - 64) = 0;
  *(v0 - 56) = 0xE000000000000000;

  return sub_1C906478C();
}

void *OUTLINED_FUNCTION_22_34(void *a1)
{

  return memcpy(a1, (v1 + 1152), 0x10AuLL);
}

uint64_t sub_1C8CBA5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CBA654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CBA6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1685025392 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C9064C2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7170419 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v10 = sub_1C9064C2C();

    if (v10)
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

uint64_t sub_1C8CBA7B8(void *a1)
{
  MEMORY[0x1CCA81A20](*a1, a1[1], a1[2], a1[3]);
  sub_1C9061FFC();
}

uint64_t sub_1C8CBA80C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t sub_1C8CBA864(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8CBA8BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8CBA928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_257();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1C906204C();
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 28);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 32));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C8CBAA48()
{
  OUTLINED_FUNCTION_196();
  v47 = v0;
  v48[2] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_97();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  v46 = v5;
  OUTLINED_FUNCTION_111();
  v6 = sub_1C9061D9C();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_24_5();
  v48[0] = (v21 & 0xFFFFFFFFFFFFLL | 0x6361000000000000);
  v48[1] = 0xEC00000065766974;
  v45 = *MEMORY[0x1E6968F70];
  v44 = *(v8 + 104);
  v22 = v44(v12);
  sub_1C8CBAEDC(v22, v23, v24);
  sub_1C9061EAC();
  (*(v8 + 8))(v12, v6);
  sub_1C9061E5C();
  (*(v15 + 8))(v19, v13);
  v25 = sub_1C9063EBC();

  v48[0] = 0;
  v26 = [v20 destinationOfSymbolicLinkAtPath:v25 error:v48];

  v27 = v48[0];
  if (!v26)
  {
    v35 = v48[0];
    v36 = sub_1C9061D7C();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_1C9063EEC();
  v28 = v27;

  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  (v44)(v12, v45, v6);
  sub_1C9061E8C();
  sub_1C8CB9578(v19, v46);
  v33 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  OUTLINED_FUNCTION_108_2(v46, 1, v33);
  if (v34)
  {
    sub_1C8CBE41C(v46, &qword_1EC313058);
LABEL_6:
    type metadata accessor for ToolDatabase.DatabaseFile(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_11();
  sub_1C8CBAF30(v46, v47);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v33);
LABEL_7:
  OUTLINED_FUNCTION_198();
}

uint64_t OUTLINED_FUNCTION_319(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_88_4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v4;
  a1[6] = v2;
  a1[7] = v3;
}

unint64_t sub_1C8CBAEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DAB8[0];
  if (!qword_1EDA6DAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6DAB8);
  }

  return result;
}

uint64_t sub_1C8CBAF30(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t sub_1C8CBAF88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8CBAFE8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v73 = a1;
  v57 = a3;
  v65 = sub_1C9063D3C();
  v4 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  MEMORY[0x1EEE9AC00](v70);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v64 = &v55 - v21;
  v22 = *MEMORY[0x1E69E10F0];
  v66 = v4 + 8;
  v67 = v22;
  v20.n128_u64[0] = 136315138;
  v61 = v20;
  v62 = v23;
  v68 = v18;
  v71 = 2;
  if (v69)
  {
    sub_1C8CBAA48();
    if (v3)
    {

      __swift_storeEnumTagSinglePayload(v18, 1, 1, v70);
    }

    else if (__swift_getEnumTagSinglePayload(v18, 1, v70) != 1)
    {
      v49 = v58;
      sub_1C8CBAF88(v18, v58, type metadata accessor for ToolDatabase.DatabaseFile);
      v32 = *(v49 + *(v70 + 20));
      sub_1C8CBA264(v49, type metadata accessor for ToolDatabase.DatabaseFile);
      goto LABEL_8;
    }

    sub_1C8D16D78(v18, &qword_1EC313058, &qword_1C9071D80);
    v32 = 0;
LABEL_8:
    LOBYTE(v74) = v32;
    sub_1C8CBB654(&v74, v25, v26, v27, v28, v29, v30, v31, v55, v56, v57, v58, v59, v60, v61.n128_i64[0], v61.n128_i64[1], v62, v63, v64, v65);
    v51 = v64;
    return sub_1C8CBA5E4(v51, v57);
  }

  v24 = v62;
  sub_1C8CBAA48();
  if (v3)
  {

    __swift_storeEnumTagSinglePayload(v24, 1, 1, v70);
  }

  else if (__swift_getEnumTagSinglePayload(v24, 1, v70) != 1)
  {
    v50 = v59;
    sub_1C8CBAF88(v24, v59, type metadata accessor for ToolDatabase.DatabaseFile);
    v41 = *(v50 + *(v70 + 20));
    sub_1C8CBA264(v50, type metadata accessor for ToolDatabase.DatabaseFile);
    v33 = v63;
    goto LABEL_11;
  }

  v33 = v63;
  sub_1C8D16D78(v24, &qword_1EC313058, &qword_1C9071D80);
  v41 = 0;
LABEL_11:
  LOBYTE(v74) = v41;
  sub_1C8CBB654(&v74, v34, v35, v36, v37, v38, v39, v40, v55, v56, v57, v58, v59, v60, v61.n128_i64[0], v61.n128_i64[1], v62, v63, v64, v65);
  if (__swift_getEnumTagSinglePayload(v33, 1, v70) == 1)
  {
    sub_1C8D16D78(v33, &qword_1EC313058, &qword_1C9071D80);
    LOBYTE(v74) = v41;
    ToolDatabase.Pager.createDatabaseFile(environment:)(&v74, v42, v43, v44, v45, v46, v47, v48, v55, v56, SWORD2(v56), SBYTE6(v56), SHIBYTE(v56), v57, v58, v59, v60, v61.n128_i64[0], v61.n128_i64[1], v62, v63, v64, v65);
    v51 = v60;
  }

  else
  {
    v52 = v56;
    sub_1C8CBAF88(v33, v56, type metadata accessor for ToolDatabase.DatabaseFile);
    v53 = v52;
    v51 = v60;
    sub_1C8CBAF88(v53, v60, type metadata accessor for ToolDatabase.DatabaseFile);
  }

  __swift_storeEnumTagSinglePayload(v51, 0, 1, v70);
  return sub_1C8CBA5E4(v51, v57);
}

void sub_1C8CBB654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  v123 = v26;
  v124 = v21;
  v28 = v27;
  v122 = type metadata accessor for ToolDatabase.Pager(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  v120 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v119 = &v115 - v33;
  OUTLINED_FUNCTION_111();
  v34 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v121 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v115 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v115 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v46);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_16_5();
  v49 = type metadata accessor for ToolDatabase.DatabaseFile(v48);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v51 = *v28;
  v52 = v124;
  sub_1C8CBAA48();
  v124 = v52;
  if (!v52)
  {
    v117 = v51;
    v116 = v39;
    v118 = v23;
    v53 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_108_2(v53, v54, v49);
    if (v55)
    {
      sub_1C8CBE41C(v22, &qword_1EC313058);
LABEL_36:
      v112 = 1;
      v113 = v123;
LABEL_37:
      __swift_storeEnumTagSinglePayload(v113, v112, 1, v49);
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_0_11();
    v56 = v118;
    sub_1C8CBAF30(v22, v118);
    v57 = *(v56 + *(v49 + 24));
    v58 = *(v56 + *(v49 + 20));
    v59 = v122;
    if (v57 == *(v20 + *(v122 + 20)))
    {
      v60 = v34;
      v61 = v121;
      if (v117 == v58)
      {
        v62 = v45;
        sub_1C906371C();
        v63 = OUTLINED_FUNCTION_10_5();
        v64 = v119;
        sub_1C8CBA80C(v63, v119);
        v65 = sub_1C9063D1C();
        v66 = sub_1C906443C();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v120 = v34;
          v68 = v67;
          v69 = swift_slowAlloc();
          v70 = v61;
          v71 = v64;
          v72 = v69;
          a10 = v69;
          *v68 = 134218242;
          v73 = *(v71 + *(v122 + 20));
          OUTLINED_FUNCTION_2_6();
          sub_1C8CBA864(v75, v74);
          *(v68 + 4) = v73;
          *(v68 + 12) = 2080;
          if (v117)
          {
            v79 = 7170419;
          }

          else
          {
            v79 = 1685025392;
          }

          v80 = v62;
          v81 = v65;
          if (v117)
          {
            v82 = 0xE300000000000000;
          }

          else
          {
            v82 = 0xE400000000000000;
          }

          v83 = sub_1C8CACE04(v79, v82, &a10, v76, v77, v78);

          *(v68 + 14) = v83;
          _os_log_impl(&dword_1C8C9B000, v81, v66, "Active database file matches latest interpretable version (%lu) and environment (%s), using it", v68, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v72);
          OUTLINED_FUNCTION_25_0();
          OUTLINED_FUNCTION_25_0();

          (*(v70 + 8))(v80, v120);
          v56 = v118;
        }

        else
        {
          OUTLINED_FUNCTION_2_6();
          sub_1C8CBA864(v64, v114);

          (*(v61 + 8))(v62, v34);
        }

        OUTLINED_FUNCTION_0_11();
        v113 = v123;
        sub_1C8CBAF30(v56, v123);
        v112 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      LODWORD(v119) = *(v56 + *(v49 + 20));
      sub_1C906371C();
      v84 = OUTLINED_FUNCTION_10_5();
      v85 = v120;
      sub_1C8CBA80C(v84, v120);
      v86 = sub_1C9063D1C();
      v87 = sub_1C906443C();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 134218240;
        *(v88 + 4) = v57;
        *(v88 + 12) = 2048;
        v89 = *(v85 + *(v59 + 20));
        OUTLINED_FUNCTION_2_6();
        sub_1C8CBA864(v85, v90);
        *(v88 + 14) = v89;
        _os_log_impl(&dword_1C8C9B000, v86, v87, "Active database file version (%lu) is different than latest interpretable version (%lu", v88, 0x16u);
        OUTLINED_FUNCTION_25_0();
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        sub_1C8CBA864(v85, v91);
      }

      v60 = v34;

      v61 = v121;
      (*(v121 + 8))(v42, v34);
      v58 = v119;
      v56 = v118;
      if (v117 == v119)
      {
        goto LABEL_34;
      }
    }

    v92 = v58;
    v93 = v60;
    v94 = v116;
    sub_1C906371C();
    v95 = sub_1C9063D1C();
    v96 = sub_1C906443C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v97 = 136315394;
      if (v92)
      {
        v101 = 7170419;
      }

      else
      {
        v101 = 1685025392;
      }

      v120 = v93;
      if (v92)
      {
        v102 = 0xE300000000000000;
      }

      else
      {
        v102 = 0xE400000000000000;
      }

      v103 = sub_1C8CACE04(v101, v102, &a10, v98, v99, v100);

      *(v97 + 4) = v103;
      *(v97 + 12) = 2080;
      if (v117)
      {
        v107 = 7170419;
      }

      else
      {
        v107 = 1685025392;
      }

      if (v117)
      {
        v108 = 0xE300000000000000;
      }

      else
      {
        v108 = 0xE400000000000000;
      }

      v109 = sub_1C8CACE04(v107, v108, &a10, v104, v105, v106);

      *(v97 + 14) = v109;
      _os_log_impl(&dword_1C8C9B000, v95, v96, "Active database file (%s) is different than asked environment (%s)", v97, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();

      (*(v61 + 8))(v116, v120);
      OUTLINED_FUNCTION_1_11();
      v111 = v118;
      goto LABEL_35;
    }

    (*(v61 + 8))(v94, v93);
LABEL_34:
    v110 = type metadata accessor for ToolDatabase.DatabaseFile;
    v111 = v56;
LABEL_35:
    sub_1C8CBA864(v111, v110);
    goto LABEL_36;
  }

LABEL_38:
  OUTLINED_FUNCTION_198();
}

void OUTLINED_FUNCTION_8_5()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[13] = 0;
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_1C9064D7C();
}

void OUTLINED_FUNCTION_8_11(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_19(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

char *OUTLINED_FUNCTION_8_26@<X0>(unint64_t a1@<X8>)
{

  return sub_1C8D096FC((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_8_27(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return sub_1C8ECC488();
}

void *OUTLINED_FUNCTION_8_34(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_8_35(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_191_0(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_8_39@<X0>(uint64_t a1@<X8>)
{

  return sub_1C8D8D3E0(0, v2, a1 - (v1 & 0x3FFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_48(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_8_52(uint64_t a1, uint64_t a2)
{

  return sub_1C9062DDC();
}

uint64_t ToolDatabase.init(file:readonly:)(uint64_t a1, unsigned int a2)
{
  v114 = a2;
  v107 = a1;
  v108 = *v2;
  v109 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313EF8, &qword_1C9071D88);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_0(&v83 - v6);
  v90 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v89 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = OUTLINED_FUNCTION_27_0(v10 - v9);
  v111 = type metadata accessor for FileLock(v11);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v85 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  v16 = OUTLINED_FUNCTION_9(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v83 = v17 - v18;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v19);
  v21 = OUTLINED_FUNCTION_27_0(&v83 - v20);
  v110 = type metadata accessor for ToolDatabase.DatabaseFile(v21);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_0(v24 - v23);
  v104 = sub_1C906449C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v105 = v27 - v26;
  v28 = sub_1C9063DDC();
  v29 = OUTLINED_FUNCTION_9(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v30 = sub_1C9063DBC();
  OUTLINED_FUNCTION_11();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v36 = v35 - v34;
  v103 = sub_1C90644AC();
  v37 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_15();
  v40 = v39 - v38;
  v112 = v39 - v38;
  sub_1C8CB78AC(0, &qword_1EDA6D478, 0x1E69E9610);
  v96 = "sentable in utf8";
  v102 = *MEMORY[0x1E69E8098];
  v101 = *(v37 + 104);
  v101(v40);
  v100 = *MEMORY[0x1E69E7F98];
  v99 = *(v32 + 104);
  v95 = v30;
  v99(v36);
  v94 = sub_1C90644EC();
  v41 = *(v32 + 8);
  v97 = v32 + 8;
  v98 = v41;
  v41(v36, v30);
  sub_1C9063DCC();
  *v113 = MEMORY[0x1E69E7CC0];
  v92 = sub_1C8CBCF34(&qword_1EDA6D480, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F00, &qword_1C9071D90);
  v93 = sub_1C8CBCF7C();
  sub_1C90646CC();
  v42 = v112;
  v43 = sub_1C90644DC();
  v44 = v106;
  *(v106 + 24) = v43;
  v96 = "t.tooldatabase.transaction";
  (v101)(v42, v102, v103);
  v45 = v95;
  (v99)(v36, v100, v95);
  sub_1C90644EC();
  v98(v36, v45);
  sub_1C9063DCC();
  *v113 = MEMORY[0x1E69E7CC0];
  sub_1C90646CC();
  v46 = v111;
  v47 = v107;
  *(v44 + 32) = sub_1C90644DC();
  v48 = OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock;
  __swift_storeEnumTagSinglePayload(v44 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock, 1, 1, v46);
  v49 = v110;
  v50 = __swift_getEnumTagSinglePayload(v47, 1, v110) != 1;
  v51 = v50 & v114;
  sub_1C8CBA654(v47, v44 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_file);
  v52 = v109;
  v53 = sub_1C8CBD09C(v47, v51);
  v112 = v52;
  if (!v52)
  {
    v108 = v48;
    LODWORD(v109) = v51;
    v60 = v86;
    v61 = v88;
    v62 = v89;
    v63 = v90;
    *(v44 + 16) = v53;
    v64 = v87;
    sub_1C8CBA654(v47, v87);
    if (__swift_getEnumTagSinglePayload(v64, 1, v49) == 1)
    {
      sub_1C8D16D78(v64, &qword_1EC313058, &qword_1C9071D80);
      v65 = v112;
    }

    else
    {
      OUTLINED_FUNCTION_1_18();
      v66 = v60;
      sub_1C8CBAF88(v64, v60, v67);
      v68 = v63;
      (*(v62 + 16))(v61, v60, v63);
      v69 = v111;
      v70 = v85;
      v71 = v85 + *(v111 + 20);
      *(v71 + 4) = 2;
      *v71 = 0;
      sub_1C9061E0C();
      (*(v62 + 8))(v61, v68);
      *(v70 + *(v69 + 24)) = 1;
      v113[0] = 1;
      v115 = 0;
      v72 = v112;
      FileLock.lock(_:configuration:)(v113, &v115);
      v65 = v72;
      if (v72)
      {
        sub_1C8CBA264(v70, type metadata accessor for FileLock);
        OUTLINED_FUNCTION_0_21();
        sub_1C8CBA264(v66, v73);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_0_21();
      sub_1C8CBA264(v66, v74);
      v75 = v84;
      sub_1C8CBAF88(v70, v84, type metadata accessor for FileLock);
      __swift_storeEnumTagSinglePayload(v75, 0, 1, v69);
      v76 = v108;
      swift_beginAccess();
      sub_1C8CC11A8(v75, v44 + v76);
      swift_endAccess();
    }

    if (v109)
    {
LABEL_9:
      sub_1C8D16D78(v47, &qword_1EC313058, &qword_1C9071D80);
      return v44;
    }

    sub_1C8D0D434();
    if (!v65)
    {
      v78 = v83;
      sub_1C8CBA654(v47, v83);
      v79 = v110;
      if (__swift_getEnumTagSinglePayload(v78, 1, v110) == 1)
      {
        sub_1C8D16D78(v78, &qword_1EC313058, &qword_1C9071D80);
        goto LABEL_9;
      }

      v80 = *(v78 + *(v79 + 20));
      OUTLINED_FUNCTION_0_21();
      sub_1C8CBA264(v78, v81);
      if (v80 != 1)
      {
        goto LABEL_9;
      }

      ToolDatabase.insertPrimitiveTypes()();
      if (!v82)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_1C8D16D78(v47, &qword_1EC313058, &qword_1C9071D80);

    return v44;
  }

  OUTLINED_FUNCTION_116();
  sub_1C8D16D78(v54, v55, v56);

  OUTLINED_FUNCTION_116();
  sub_1C8D16D78(v57, v58, v59);
  sub_1C8D16D78(v44 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock, &qword_1EC313EF8, &qword_1C9071D88);
  swift_deallocPartialClassInstance();
  return v44;
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 136) = a5;
  *(v9 - 128) = a8;
  *(v9 - 112) = a6;
  *(v9 - 104) = a7;
  *(v9 - 120) = v8;
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_1C9062D6C();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_1C8DCD790(v0, type metadata accessor for AnyPredicateTemplate);
}

uint64_t OUTLINED_FUNCTION_31_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E699FF80];

  return sub_1C8D28184(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_31_12(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_31_14()
{
  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_1C8D04FA4((v0 + 232), v1);

  return sub_1C8D072F0(v2 - 224);
}

uint64_t OUTLINED_FUNCTION_31_16()
{

  return sub_1C9063EEC();
}

uint64_t OUTLINED_FUNCTION_31_19(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C8F06950(a1, a2, a3, sub_1C8DC1340, a5);
}

uint64_t OUTLINED_FUNCTION_31_20()
{

  return sub_1C906266C();
}

void OUTLINED_FUNCTION_31_21()
{

  JUMPOUT(0x1CCA833A0);
}

uint64_t OUTLINED_FUNCTION_31_23()
{
}

uint64_t sub_1C8CBCF34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8CBCF7C()
{
  result = qword_1EDA6D498;
  if (!qword_1EDA6D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313F00, &qword_1C9071D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D498);
  }

  return result;
}

uint64_t sub_1C8CBCFF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C9061EBC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C8CBD09C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C9062FBC();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C906264C();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  LOBYTE(v3) = __swift_getEnumTagSinglePayload(v3, 1, v7) == 1;
  sub_1C906263C();
  v17 = v16;
  sub_1C906262C();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 17) = v2;
  sub_1C90625DC();

  *v11 = 0x404E000000000000;
  (*(v9 + 104))(v11, *MEMORY[0x1E69A00D8], v34);
  sub_1C906260C();
  sub_1C90625FC();
  sub_1C8CBA654(v33, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C8D16D78(v6, &qword_1EC313058, &qword_1C9071D80);
    v20 = v35;
    v19 = v36;
    (*(v35 + 16))(v31, v16, v36);
    sub_1C906274C();
    v17 = swift_allocObject();
    v21 = v37;
    v22 = sub_1C906271C();
    v23 = v19;
    if (!v21)
    {
      v17 = v22;
    }
  }

  else
  {
    v20 = v35;
    v24 = v36;
    v25 = v6;
    v26 = v32;
    v27 = sub_1C8CBAF88(v25, v32, type metadata accessor for ToolDatabase.DatabaseFile);
    MEMORY[0x1EEE9AC00](v27);
    *(&v31 - 2) = v26;
    *(&v31 - 1) = v16;
    v28 = v37;
    sub_1C8CBD500(sub_1C8CBD8F0);
    if (v28)
    {
      sub_1C8CBA264(v26, type metadata accessor for ToolDatabase.DatabaseFile);
      v23 = v24;
    }

    else
    {
      v17 = v29;
      sub_1C8CBA264(v26, type metadata accessor for ToolDatabase.DatabaseFile);
      v23 = v24;
    }
  }

  (*(v20 + 8))(v16, v23);
  return v17;
}

void sub_1C8CBD500(void (*a1)(void *__return_ptr))
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9063D3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentProcess];
  v7 = [v6 isManaged];

  if (v7)
  {
    v26 = v3;
    v8 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    *(v9 + 32) = sub_1C8D11144(0xD000000000000010, 0x80000001C90C9700, 0xD000000000000017, 0x80000001C90C9720);
    v10 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v11 = sub_1C8D13FA0(0xD000000000000017, 0x80000001C90C96E0, v8, v9);
    v27 = 0;
    if ([v11 acquireWithError_])
    {
      v12 = v27;
    }

    else
    {
      v13 = v27;
      v14 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v15 = v14;
      v16 = sub_1C9063D1C();
      v17 = sub_1C906444C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v25 = a1;
        v19 = v18;
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1C8C9B000, v16, v17, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v19, 0xCu);
        sub_1C8D16D78(v20, &qword_1EC312EC8, &qword_1C9071EA0);
        MEMORY[0x1CCA833A0](v20, -1, -1);
        v23 = v19;
        a1 = v25;
        MEMORY[0x1CCA833A0](v23, -1, -1);
      }

      else
      {
      }

      v12 = (*(v26 + 8))(v5, v2);
    }

    (a1)(v28, v12);
    [v11 invalidate];
  }

  else
  {
    a1(v28);
  }
}

uint64_t sub_1C8CBD90C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = sub_1C906264C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9061E5C();
  (*(v7 + 16))(v9, a1, v6);
  sub_1C906274C();
  swift_allocObject();
  result = sub_1C906271C();
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C8CBDA30(uint64_t a1, char a2, char a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F10, qword_1C9071EA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v26 - v7;
  v8 = sub_1C906245C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C9062B9C();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v26 - v21;
  if ((a2 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      v24 = v20;
      sub_1C9062B8C();
      sub_1C9062FAC();
      if (v3)
      {
        (*(v24 + 8))(v22, v10);
        return;
      }

      v27 = *(v24 + 8);
      v27(v22, v10);
      sub_1C9062B8C();
      sub_1C9062FAC();
      v25 = v27;
      v27(v18, v10);
      sub_1C9062B8C();
      sub_1C9062FAC();
      v25(v15, v10);
      sub_1C9062B8C();
      sub_1C9062FAC();
      v25(v12, v10);
    }

    v30 = 1;
    v23 = sub_1C9062F4C();
    if (sqlite3_file_control(v23, 0, 10, &v30))
    {
      sub_1C906244C();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v10);
      sub_1C90626DC();
      sub_1C8CBCF34(&qword_1EC312ED8, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
      swift_allocError();
      sub_1C906265C();
      swift_willThrow();
    }
  }
}

uint64_t sub_1C8CBDEB8()
{
  v1 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  [*&v0[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client] stop];
  v0[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed] = 1;
  sub_1C906371C();
  v8 = v0;
  v9 = sub_1C9063D1C();
  v10 = sub_1C906446C();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_17_0();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_5();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = sub_1C9063EEC();
    v16 = v15;

    sub_1C8CACE04(v14, v16, &v22, v17, v18, v19);
    OUTLINED_FUNCTION_123_3();

    *(v11 + 4) = v13;
    _os_log_impl(&dword_1C8C9B000, v9, v10, "Session %s ended", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    v20 = OUTLINED_FUNCTION_36_10();
    MEMORY[0x1CCA833A0](v20);
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t OUTLINED_FUNCTION_120()
{

  return MEMORY[0x1EEE503C0](v0);
}

uint64_t sub_1C8CBE164()
{
  sub_1C906478C();

  sub_1C906204C();
  sub_1C8CBE304(&qword_1EDA6CB98, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](0x64696C61766E6920, 0xED00003D64657461);
  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1CCA81A90](v2, v3);

  MEMORY[0x1CCA81A90](0x3D6465736F6C6320, 0xE800000000000000);
  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1CCA81A90](v4, v5);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 1029990716;
}

uint64_t sub_1C8CBE304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_124_2(uint64_t result)
{
  *(v1 + 24) = result;
  *v2 = result;
  return result;
}

uint64_t type metadata accessor for SageWorkflowRunnerClientToolExecutionSession(uint64_t a1)
{
  result = qword_1EDA6B488;
  if (!qword_1EDA6B488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8CBE41C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_387(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_107_4(uint64_t a1)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_107_6(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_5()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_420()
{
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return swift_slowAlloc();
}

id sub_1C8CBE6A0()
{
  v1 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  sub_1C906371C();
  v8 = v0;
  v9 = sub_1C9063D1C();
  v10 = sub_1C906446C();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_17_0();
    v20 = v1;
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_5();
    v21 = swift_slowAlloc();
    *v11 = 136315138;
    v12 = [v8 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_97_4();

    v13 = OUTLINED_FUNCTION_325();
    sub_1C8CACE04(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_173_3();
    *(v11 + 4) = v12;
    _os_log_impl(&dword_1C8C9B000, v9, v10, "Session %s destroyed", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    (*(v3 + 8))(v7, v20);
  }

  else
  {

    (*(v3 + 8))(v7, v1);
  }

  v22.receiver = v8;
  v22.super_class = type metadata accessor for SageWorkflowRunnerClientToolExecutionSession(0);
  return objc_msgSendSuper2(&v22, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return sub_1C8D9913C();
}

uint64_t OUTLINED_FUNCTION_85_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_85_4()
{
}

uint64_t OUTLINED_FUNCTION_85_8()
{

  return sub_1C906243C();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1C8CC0620(v1 + 168, v0 + 280, v3, v2);
}

uint64_t OUTLINED_FUNCTION_12_6@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t result, char a2)
{
  *(v2 + 48) = 0;
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  *(v2 + 72) = OUTLINED_FUNCTION_2_3;
  *(v2 + 80) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t a1)
{

  return MEMORY[0x1EEE6AD38](a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_20(uint64_t a1)
{

  return sub_1C9064BBC();
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  result = v1;
  *(v2 - 184) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_24@<X0>(uint64_t a6@<X8>)
{
  *(v6 - 104) = a6;
}

uint64_t OUTLINED_FUNCTION_12_27(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_12_28(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_32(uint64_t a1)
{

  return sub_1C8D52860(a1, v1 + 128, v2, v3);
}

uint64_t OUTLINED_FUNCTION_12_34()
{

  return sub_1C9063ACC();
}

uint64_t OUTLINED_FUNCTION_12_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_38(uint64_t a1)
{

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_12_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1C902CCC4(v20, v22, v21, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_12_40()
{

  return sub_1C903566C(v0, type metadata accessor for ToolKitProtoTypeInstance);
}

__n128 OUTLINED_FUNCTION_12_41@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 1152);
  v4 = *(v1 + 1168);
  v5 = *(v1 + 1184);
  *(a1 + 73) = *(v2 + 41);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_42(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C8CBEEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_257();
  sub_1C906204C();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1C8CBEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *OUTLINED_FUNCTION_354(void *a1)
{

  return memcpy(a1, v1, 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1)
{

  return sub_1C8D16D78(a1, v1, v2);
}

void OUTLINED_FUNCTION_40_5(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_40_12(float a1)
{
  *v1 = a1;

  return memcpy((v2 - 248), (v2 - 176), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_40_13(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_40_19(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_40_22()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 + *(v9 + 28);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = *(v11 + 32);

  return sub_1C8D06F98(v12, v13, v14, v15, v16, a6);
}

BOOL static TypeIdentifier.PrimitiveTypeIdentifier.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0x17:
      return v3 == 23;
    case 0x18:
      return v3 == 24;
    case 0x19:
      return v3 == 25;
    case 0x1A:
      return v3 == 26;
    case 0x1B:
      return v3 == 27;
    case 0x1C:
      return v3 == 28;
    case 0x1D:
      return v3 == 29;
    case 0x1E:
      return v3 == 30;
    case 0x1F:
      return v3 == 31;
    case 0x20:
      return v3 == 32;
    case 0x21:
      return v3 == 33;
    case 0x22:
      return v3 == 34;
    case 0x23:
      return v3 == 35;
    case 0x24:
      return v3 == 36;
    case 0x25:
      return v3 == 37;
    case 0x26:
      return v3 == 38;
    case 0x27:
      return v3 == 39;
    case 0x28:
      return v3 == 40;
    case 0x29:
      return v3 == 41;
    case 0x2A:
      return v3 == 42;
    case 0x2B:
      return v3 == 43;
    case 0x2C:
      return v3 == 44;
    case 0x2D:
      return v3 == 45;
    case 0x2E:
      return v3 == 46;
    default:
      if ((v3 - 23) < 0x18)
      {
        return 0;
      }

      if (v2 != 22)
      {
        return v2 == v3;
      }

      return v3 == 22;
  }
}

uint64_t sub_1C8CBF50C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C906313C();
  sub_1C8CAD098();
  v6 = v5;

  if (v2)
  {

    sub_1C8CC0B58(a2);
  }

  else
  {
    v7 = *(v6 + 16);
    v53 = a2;
    if (v7)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v8 = OUTLINED_FUNCTION_0_69();
      sub_1C8CBFC40(v8, v9, v10);
      v11 = v66;
      v12 = v7 - 1;
      for (i = 32; ; i += 112)
      {
        memcpy(__dst, (v6 + i), sizeof(__dst));
        v14 = __dst[0];
        v57 = __dst[2];
        v60 = __dst[1];
        v15 = *&__dst[3];
        memcpy(__src, (v6 + i), sizeof(__src));
        sub_1C8CBFC60(__dst, v63);
        v66 = v11;
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);

        if (v17 >= v16 >> 1)
        {
          v19 = OUTLINED_FUNCTION_5_44();
          sub_1C8CBFC40(v19, v17 + 1, 1);
          v11 = v66;
        }

        *(v11 + 16) = v17 + 1;
        v18 = v11 + 168 * v17;
        *(v18 + 32) = v14;
        *(v18 + 48) = v60;
        *(v18 + 64) = v57;
        *(v18 + 80) = v15;
        memcpy((v18 + 88), __src, 0x70uLL);
        if (!v12)
        {
          break;
        }

        --v12;
      }

      v54 = v11;

      a2 = v53;
    }

    else
    {

      v54 = MEMORY[0x1E69E7CC0];
    }

    v20 = sub_1C906314C();
    v21 = sub_1C8CB0474(v20, MEMORY[0x1E69AC128], sub_1C8CBFD80, sub_1C8CB08D0);

    v22 = *(v21 + 16);
    if (v22)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v55 = v21;
      v23 = OUTLINED_FUNCTION_0_69();
      sub_1C8CC3690(v23, v24, v25);
      v26 = v66;
      v27 = v22 - 1;
      for (j = 32; ; j += 104)
      {
        memcpy(__dst, (v21 + j), 0x68uLL);
        v29 = __dst[0];
        v58 = __dst[2];
        v61 = __dst[1];
        v30 = *&__dst[3];
        memcpy(__src, (v21 + j), 0x68uLL);
        sub_1C8CC37E4(__dst, v63);
        v66 = v26;
        v32 = *(v26 + 16);
        v31 = *(v26 + 24);

        if (v32 >= v31 >> 1)
        {
          v34 = OUTLINED_FUNCTION_5_44();
          sub_1C8CC3690(v34, v32 + 1, 1);
          v21 = v55;
          v26 = v66;
        }

        *(v26 + 16) = v32 + 1;
        v33 = v26 + 168 * v32;
        *(v33 + 32) = v29;
        *(v33 + 48) = v61;
        *(v33 + 64) = v58;
        *(v33 + 80) = v30;
        memcpy((v33 + 88), __src, 0x68uLL);
        *(v33 + 192) = 0;
        if (!v27)
        {
          break;
        }

        --v27;
      }

      a2 = v53;
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    v35 = sub_1C906312C();
    v37 = sub_1C8CB0474(v35, MEMORY[0x1E69AC118], sub_1C8CC381C, sub_1C8CB1B94);

    v38 = *(v37 + 16);
    if (v38)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v39 = OUTLINED_FUNCTION_0_69();
      sub_1C8CC3690(v39, v40, v41);
      v42 = v66;
      v62 = v38 - 1;
      v43 = 32;
      for (k = v37; ; v37 = k)
      {
        memcpy(__dst, (v37 + v43), 0x68uLL);
        v44 = __dst[0];
        v56 = __dst[2];
        v59 = __dst[1];
        v45 = *&__dst[3];
        memcpy(__src, (v37 + v43), 0x68uLL);
        sub_1C8CC3A5C(__dst, v63);
        v66 = v42;
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);

        if (v47 >= v46 >> 1)
        {
          v49 = OUTLINED_FUNCTION_5_44();
          sub_1C8CC3690(v49, v47 + 1, 1);
          v42 = v66;
        }

        *(v42 + 16) = v47 + 1;
        v48 = v42 + 168 * v47;
        *(v48 + 32) = v44;
        *(v48 + 48) = v59;
        *(v48 + 64) = v56;
        *(v48 + 80) = v45;
        memcpy((v48 + 88), __src, 0x68uLL);
        *(v48 + 192) = 1;
        if (!v62)
        {
          break;
        }

        --v62;
        v43 += 104;
      }

      a2 = v53;
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = v26;
    sub_1C8CC3D08(v42);
    v50 = __src[0];
    v51 = sub_1C8CC07AC(v54, &qword_1EC319C08, &qword_1C90C6600, sub_1C8CC027C);
    v52 = sub_1C8CC07AC(v50, &qword_1EC319C18, &qword_1C90A65E8, sub_1C8CC084C);

    type metadata accessor for AssistantSchemaProvider();
    v3 = swift_allocObject();
    *(v3 + 16) = v51;
    *(v3 + 24) = v52;
    sub_1C8CC0B58(a2);
  }

  return v3;
}

void *sub_1C8CBFB08(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D28, &qword_1C9069630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[21 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D30, &qword_1C9069638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C8CBFC40(void *a1, int64_t a2, char a3)
{
  result = sub_1C8CBFB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8CBFC98()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_123_0();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_342(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v2;
    *(v15 + 3) = 2 * ((v16 - 32) / 104);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[104 * v2] <= v17)
    {
      memmove(v17, v18, 104 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceContainer:attributionContainer:additionalAttributionContainers:description:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:visibilityFlags:backingLinkActionIdentifiers:overriddenSampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, const void *a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 *a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t *a35, uint64_t a36)
{
  OUTLINED_FUNCTION_164();
  v39 = v38;
  v65 = v40;
  v63 = v41;
  v64 = v42;
  v44 = v43;
  OUTLINED_FUNCTION_205_3(v45, v46, v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v48);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_73();
  LOBYTE(v44) = *v44;
  v50 = *v39;
  memcpy(v66, a23, 0x61uLL);
  v51 = *a34;
  v52 = *a35;
  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  *v36 = v60;
  *(v36 + 8) = v61;
  *(v36 + 16) = v62;
  *(v36 + 24) = v63;
  *(v36 + 32) = v44;
  *(v36 + 40) = v64;
  *(v36 + 48) = v65;
  *(v36 + 56) = v50;
  *(v36 + 64) = a21;
  *(v36 + 72) = a22;
  memcpy((v36 + 192), v66, 0x61uLL);
  memcpy((v36 + 296), a24, 0x61uLL);
  *(v36 + 400) = a25;
  memcpy((v36 + 408), a26, 0x50uLL);
  v53 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_212_3();
  sub_1C8D63FCC();
  *(v36 + v53[17]) = a28;
  OUTLINED_FUNCTION_254_1(v53[18]);
  OUTLINED_FUNCTION_165_6((v36 + v53[19]), *a30, a30[1]);
  *(v36 + v54) = a31;
  OUTLINED_FUNCTION_202_3();
  *(v36 + v55) = a33;
  *(v36 + v53[22]) = v51;
  OUTLINED_FUNCTION_19_22();
  *(v36 + v56) = v52;
  *(v36 + v53[26]) = a36;
  OUTLINED_FUNCTION_235_2();
  sub_1C8CC1340(v66, &v67);
  sub_1C8CC139C();
  sub_1C8D16D78(a27, &qword_1EC3144B8, &qword_1C90839E0);
  sub_1C8D16D78(v37, &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_226_4();
  memcpy(v57, v58, v59);
  OUTLINED_FUNCTION_163();
}

void sub_1C8CC0038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  sub_1C906204C();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for ToolDefinition(0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

char *sub_1C8CC0140(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D38, &qword_1C9069640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8CC0258(char *a1, int64_t a2, char a3)
{
  result = sub_1C8CC0140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C8CC027C(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  v37 = a1 + 32;
  while (1)
  {
    if (v6 == v7)
    {
      sub_1C8CC0B48(__src);
      memcpy(__dst, __src, sizeof(__dst));
      v6 = v7;
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v6 >= *(a1 + 16))
      {
        goto LABEL_22;
      }

      memcpy(__src, (v37 + 168 * v6), sizeof(__src));
      memcpy(__dst, (v37 + 168 * v6++), sizeof(__dst));
      nullsub_1();
      sub_1C8DFBCF4(__src, v30, &qword_1EC312D30, &qword_1C9069638);
    }

    memcpy(__src, __dst, sizeof(__src));
    if (OUTLINED_FUNCTION_125_0(__src) == 1)
    {
    }

    v33 = *__dst;
    v34 = *&__dst[16];
    v35 = *&__dst[32];
    v36 = *&__dst[48];
    memcpy(v30, &__dst[56], 0x70uLL);
    v8 = *a3;
    v10 = sub_1C8CC056C();
    v11 = *(v8 + 16);
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v13 = v9;
    if (*(v8 + 24) >= v11 + v12)
    {
      if (a2)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C30, &unk_1C90A6610);
        sub_1C90648FC();
        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_15:
      v16 = *a3;
      v17 = 112 * v10;
      memcpy(v28, (*(*a3 + 56) + v17), sizeof(v28));
      sub_1C8CBFC60(v28, v29);
      sub_1C8E28D84(v30);
      sub_1C8F09D54(&v33);
      v18 = *(v16 + 56);
      memcpy(v29, (v18 + v17), sizeof(v29));
      memcpy((v18 + v17), v28, 0x70uLL);
      sub_1C8E28D84(v29);
      a2 = 1;
    }

    else
    {
      sub_1C90436F8();
      v14 = sub_1C8CC056C();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v10 = v14;
      if (v13)
      {
        goto LABEL_15;
      }

LABEL_17:
      v19 = *a3;
      *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v20 = v19[6] + 56 * v10;
      v21 = v33;
      v22 = v34;
      v23 = v35;
      *(v20 + 48) = v36;
      *(v20 + 16) = v22;
      *(v20 + 32) = v23;
      *v20 = v21;
      memcpy((v19[7] + 112 * v10), v30, 0x70uLL);
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_23;
      }

      v19[2] = v26;
      a2 = 1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C9064CBC();
  __break(1u);
  return result;
}

unint64_t sub_1C8CC056C()
{
  OUTLINED_FUNCTION_19_5();
  sub_1C9064D7C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  sub_1C9063FBC();
  v4 = sub_1C9064DBC();

  return sub_1C8CC0670(v0, v4);
}

uint64_t sub_1C8CC0620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_1C8CC0670(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v22 = a1[3];
    v23 = a1[2];
    v6 = *a1;
    v5 = a1[1];
    v20 = a1[5];
    v21 = a1[4];
    v7 = a1[6];
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + 56 * v4);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      v14 = v9[6];
      v15 = *v9 == v6 && v9[1] == v5;
      if (v15 || (sub_1C9064C2C() & 1) != 0)
      {
        v16 = v10 == v23 && v11 == v22;
        if (v16 && v12 == v21)
        {
          v18 = v13 == v20 && v14 == v7;
          if (v18 || (sub_1C9064C2C() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C8CC07AC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1C906495C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_1C8CC084C(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  v37 = a1 + 32;
  while (1)
  {
    if (v6 == v7)
    {
      sub_1C8CC0B50(__src);
      memcpy(__dst, __src, sizeof(__dst));
      v6 = v7;
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v6 >= *(a1 + 16))
      {
        goto LABEL_22;
      }

      memcpy(__src, (v37 + 168 * v6), 0xA1uLL);
      memcpy(__dst, (v37 + 168 * v6++), sizeof(__dst));
      nullsub_1();
      sub_1C8DFBCF4(__src, v30, &qword_1EC312980, &qword_1C9068D60);
    }

    memcpy(__src, __dst, 0xA1uLL);
    if (OUTLINED_FUNCTION_125_0(__src) == 1)
    {
    }

    v33 = *__dst;
    v34 = *&__dst[16];
    v35 = *&__dst[32];
    v36 = *&__dst[48];
    memcpy(v30, &__dst[56], 0x69uLL);
    v8 = *a3;
    v10 = sub_1C8CC056C();
    v11 = *(v8 + 16);
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v13 = v9;
    if (*(v8 + 24) >= v11 + v12)
    {
      if (a2)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C28, &unk_1C90A6600);
        sub_1C90648FC();
        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_15:
      v16 = *a3;
      v17 = 112 * v10;
      memcpy(v28, (*(*a3 + 56) + v17), 0x69uLL);
      sub_1C8ED3E6C(v28, v29);
      sub_1C8ED3F0C(v30);
      sub_1C8F09D54(&v33);
      v18 = *(v16 + 56);
      memcpy(v29, (v18 + v17), 0x69uLL);
      memcpy((v18 + v17), v28, 0x69uLL);
      sub_1C8ED3F0C(v29);
      a2 = 1;
    }

    else
    {
      sub_1C90434BC();
      v14 = sub_1C8CC056C();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v10 = v14;
      if (v13)
      {
        goto LABEL_15;
      }

LABEL_17:
      v19 = *a3;
      *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v20 = v19[6] + 56 * v10;
      v21 = v33;
      v22 = v34;
      v23 = v35;
      *(v20 + 48) = v36;
      *(v20 + 16) = v22;
      *(v20 + 32) = v23;
      *v20 = v21;
      memcpy((v19[7] + 112 * v10), v30, 0x69uLL);
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_23;
      }

      v19[2] = v26;
      a2 = 1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C9064CBC();
  __break(1u);
  return result;
}

uint64_t sub_1C8CC0B58(uint64_t a1)
{
  v2 = type metadata accessor for ToolDatabaseLocaleOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_121_1()
{

  return sub_1C8DB47C0();
}

uint64_t sub_1C8CC0CA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C8CC0CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileLock(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CC0D44(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1C906402C())
  {
    result = sub_1C8CC0EA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C906476C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1C90647EC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C8CC0E5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C8CC0D44(a1, a2);
  sub_1C8CC10C4(&unk_1F489A9D8);
  return v3;
}

void *sub_1C8CC0EA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313098, &qword_1C906AB10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1C8CC0F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9061EBC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void *sub_1C8CC0FEC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static AssistantSchemaProvider.load()()
{
  v2 = type metadata accessor for ToolDatabaseLocaleOptions(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_40();
  result = sub_1C906311C();
  if (!v0)
  {
    v5 = result;
    type metadata accessor for AssistantSchemaProvider();
    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    *(v1 + *(v2 + 20)) = 0;
    return sub_1C8CBF50C(v5, v1);
  }

  return result;
}

uint64_t sub_1C8CC10C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1C8D1D09C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C8CC11A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313EF8, &qword_1C9071D88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_188_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return sub_1C90648BC();
}

uint64_t OUTLINED_FUNCTION_188_3(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_188_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_188_5@<X0>(uint64_t a1@<X0>, void *a7@<X8>)
{
  *a7 = v7;
  a7[1] = v9;
  a7[2] = v8;
  a7[3] = a1;
  a7[4] = v10;
}

uint64_t OUTLINED_FUNCTION_148_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 - 96);
  *(v6 - 104) = *(v6 - 104);
  *(v6 - 96) = v8;
}

void sub_1C8CC139C()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  OUTLINED_FUNCTION_386();
  v25 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  memcpy(v27, v2, 0x61uLL);
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(&v26);
  sub_1C9064DBC();
  v9 = WFUUIDv4FromInteger();
  sub_1C906202C();

  v24 = sub_1C906200C();
  v23 = v10;
  v11 = v27[5];
  if (!v27[6])
  {
    v11 = 7040629;
  }

  v22 = v11;
  v12 = 0xE300000000000000;
  if (v27[6])
  {
    v13 = v27[6];
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v21 = v13;
  if (v27[9])
  {
    v14 = v27[8];
  }

  else
  {
    v14 = 7040629;
  }

  if (v27[9])
  {
    v12 = v27[9];
  }

  v19 = v12;
  v20 = v27[12];
  v15 = v27[0];
  v16 = v27[1];
  v17 = v27[3];
  v18 = v27[4];

  sub_1C8CC15FC(v27);
  (*(v4 + 8))(v8, v25);
  *v0 = v24;
  *(v0 + 8) = v23;
  *(v0 + 16) = v15;
  *(v0 + 24) = v16;
  *(v0 + 32) = v17;
  *(v0 + 40) = v18;
  *(v0 + 48) = v22;
  *(v0 + 56) = v21;
  *(v0 + 64) = v14;
  *(v0 + 72) = v19;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = v20;
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CC1590()
{
  OUTLINED_FUNCTION_84_0();
  result = MEMORY[0x1CCA82810](v0);
  if (v0)
  {
    v3 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_209();
      sub_1C9063FBC();

      v3 += 16;
      --v0;
    }

    while (v0);
  }

  return result;
}

uint64_t sub_1C8CC1650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = v10[2];
  v12 = v10[3];
  v13 = type metadata accessor for ToolExecutor.SessionOptions(0);
  v14 = (v11 + *(v13 + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1C90620BC();
  OUTLINED_FUNCTION_13_1();
  (*(v18 + 16))(v12, v11, v17);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v17);
  v19 = v10[3];
  v20 = **(&unk_1E832F270 + *(v11 + *(v13 + 24)));
  v21 = MEMORY[0x1E69E0C60];
  v22 = v20;
  v23 = objc_allocWithZone(v21);

  v24 = sub_1C8CC2AE8(0xD00000000000001BLL, 0x80000001C90CB700, v15, v16, v19, v22);
  v10[4] = v24;
  v25 = objc_allocWithZone(type metadata accessor for SageWorkflowRunnerClientToolExecutionSession(0));
  v10[5] = OUTLINED_FUNCTION_149_3(v24);
  if (v25)
  {

    OUTLINED_FUNCTION_127_3();
    OUTLINED_FUNCTION_151_4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    v35 = swift_task_alloc();
    v10[6] = v35;
    *v35 = v10;
    OUTLINED_FUNCTION_52(v35);
    OUTLINED_FUNCTION_151_4();

    return sub_1C8CC2404();
  }
}

uint64_t sub_1C8CC1830(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_1C9062BFC();
}

uint64_t *OUTLINED_FUNCTION_46_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 160));
}

uint64_t OUTLINED_FUNCTION_248_0()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_1C8DC8564(v0, v1 - 88);
}

uint64_t OUTLINED_FUNCTION_46_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_1C9063E8C();
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1C9063ADC();
}

BOOL OUTLINED_FUNCTION_46_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_46_17()
{

  return MEMORY[0x1EEE09BC8](v1 - 128, v0);
}

id OUTLINED_FUNCTION_46_18()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return v1;
}

uint64_t sub_1C8CC1C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8CC1C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_123_2(uint64_t a1)
{

  return sub_1C9063EAC();
}

void *OUTLINED_FUNCTION_123_4@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 - 184), 0x60uLL);
}

uint64_t sub_1C8CC1D3C()
{
  OUTLINED_FUNCTION_223();
  v4 = OUTLINED_FUNCTION_321(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13_1();
  v6 = OUTLINED_FUNCTION_94();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_353@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_245_0()
{

  return sub_1C9064A6C();
}

unint64_t OUTLINED_FUNCTION_26_3@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *(v2 - 4) = v3;
  return v4 | (v3 << 32);
}

uint64_t OUTLINED_FUNCTION_26_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return sub_1C8ECC488();
}

uint64_t OUTLINED_FUNCTION_26_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_17()
{

  return sub_1C8F07110();
}

void OUTLINED_FUNCTION_26_21()
{

  TypedValue.init(protobuf:)();
}

uint64_t OUTLINED_FUNCTION_243_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1C8E1B5B4(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_243_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064B2C();
}

void OUTLINED_FUNCTION_341()
{

  JUMPOUT(0x1CCA82810);
}

uint64_t OUTLINED_FUNCTION_341_1()
{
  *(v1 - 120) = v0;

  return type metadata accessor for DisplayRepresentation(0);
}

uint64_t ContainerDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 72);
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  sub_1C9063FBC();
  sub_1C8CC1590();
  OUTLINED_FUNCTION_206_0();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v2)
  {
    sub_1C9063FBC();
  }

  MEMORY[0x1CCA82810](v3);
  if (!v4)
  {
    sub_1C9064D9C();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    MEMORY[0x1CCA82810](0);
    return MEMORY[0x1CCA82810](v7);
  }

  sub_1C9064D9C();
  sub_1C9063FBC();
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  MEMORY[0x1CCA82810](1);
  sub_1C9063FBC();
  return MEMORY[0x1CCA82810](v7);
}

uint64_t OUTLINED_FUNCTION_283_0()
{

  return sub_1C8DB47C0();
}

uint64_t OUTLINED_FUNCTION_71_6()
{

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_71_7()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void OUTLINED_FUNCTION_202_4()
{
  v2 = *(v0 + 24);
  *(v1 - 160) = *(v0 + 16);
  *(v1 - 152) = v2;
}

uint64_t OUTLINED_FUNCTION_202_5(uint64_t a1)
{

  return sub_1C8D63FCC();
}

uint64_t sub_1C8CC2404()
{
  OUTLINED_FUNCTION_7();
  v1[18] = v0;
  v2 = sub_1C9063D3C();
  v1[19] = v2;
  OUTLINED_FUNCTION_46(v2);
  v1[20] = v3;
  v1[21] = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8CC24AC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0[18] + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v0[2] = v0;
  v0[3] = sub_1C8CC3A94;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316560, &qword_1C9085280);
  OUTLINED_FUNCTION_96_2(v3);
  v0[11] = 1107296256;
  v0[12] = sub_1C8CC38C8;
  v0[13] = &block_descriptor_244;
  v0[14] = v2;
  [v1 startWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t OUTLINED_FUNCTION_90_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_90_6()
{

  return sub_1C906494C();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ToolInvocation(uint64_t a1)
{
  result = qword_1EDA6E348;
  if (!qword_1EDA6E348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ToolExecutor.start(sessionID:)()
{
  OUTLINED_FUNCTION_7();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AA0, &unk_1C90AB5C0);
  OUTLINED_FUNCTION_9(v3);
  v0[4] = OUTLINED_FUNCTION_39();
  v4 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

BOOL OUTLINED_FUNCTION_62_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_62_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2)
{

  return sub_1C9063FBC();
}

uint64_t OUTLINED_FUNCTION_62_9()
{
  __swift_getEnumTagSinglePayload(v3, 1, v1);

  return sub_1C8D16D78(v3, v0, v2);
}

void *OUTLINED_FUNCTION_62_10()
{

  return memcpy((v0 + 104), (v1 - 176), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_226()
{
}

uint64_t OUTLINED_FUNCTION_62_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t sub_1C8CC2980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = v10[3];
  v12 = v10[4];
  sub_1C90620BC();
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = *MEMORY[0x1E69E13D0];
  objc_allocWithZone(MEMORY[0x1E69E0C60]);
  v18 = v17;

  OUTLINED_FUNCTION_61_8();
  v23 = sub_1C8CC2AE8(v19, v20, v21, v22, v12, v18);
  v10[5] = v23;
  v24 = objc_allocWithZone(type metadata accessor for SageWorkflowRunnerClientToolExecutionSession(0));
  v10[6] = OUTLINED_FUNCTION_149_3(v23);
  if (v24)
  {

    OUTLINED_FUNCTION_127_3();
    OUTLINED_FUNCTION_151_4();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v34 = swift_task_alloc();
    v10[7] = v34;
    *v34 = v10;
    OUTLINED_FUNCTION_52(v34);
    OUTLINED_FUNCTION_151_4();

    return sub_1C8CC2404();
  }
}

id sub_1C8CC2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v11 = sub_1C9063EBC();

  if (a4)
  {
    v12 = sub_1C9063EBC();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1C90620BC();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v13) != 1)
  {
    v14 = sub_1C906207C();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v7 initWithClientIdentifier:v11 siriSessionID:v12 locale:v14 runSource:a6];

  return v15;
}

uint64_t sub_1C8CC2C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1C8CC2C70(uint64_t a1)
{
  sub_1C906204C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ToolDefinition(319);
    if (v2 <= 0x3F)
    {
      sub_1C8CC331C(319);
      if (v3 <= 0x3F)
      {
        sub_1C8CC34E0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C8CC2D24(uint64_t a1)
{
  sub_1C8CC3090(319, &qword_1EDA6E538, &type metadata for ParameterDefinition, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C8CC3090(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1C8CC3090(319, qword_1EDA6E3A0, &type metadata for AppDefinition, MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1C8CC3090(319, &qword_1EDA6E398, &type metadata for ContainerDefinition, MEMORY[0x1E69E6720]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_1C8CC3090(319, &qword_1EDA6E360, &type metadata for ContainerDefinition, MEMORY[0x1E69E62F8]);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_1C8CC30E0(319);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_1C8CC3090(319, &qword_1EDA6E370, &type metadata for ToolCategory, MEMORY[0x1E69E62F8]);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_1C8CC3090(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v13 > 0x3F)
      {
        return v12;
      }

      sub_1C8CC3090(319, qword_1EDA6E448, &type metadata for ToolDeprecationDefinition, MEMORY[0x1E69E6720]);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_1C8CC3090(319, &qword_1EDA6E368, &type metadata for RuntimeRequirement, MEMORY[0x1E69E62F8]);
      if (v15 > 0x3F)
      {
        return v6;
      }

      sub_1C8CC3090(319, &qword_1EDA6E378, &type metadata for SystemToolProtocol, MEMORY[0x1E69E62F8]);
      if (v16 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1C8CC32B8(319);
        v2 = v17;
        if (v18 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1C8CC3090(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C8CC30E0(uint64_t a1)
{
  if (!qword_1EDA6E418[0])
  {
    type metadata accessor for ToolIcon(255);
    v1 = sub_1C906464C();
    if (!v2)
    {
      atomic_store(v1, qword_1EDA6E418);
    }
  }
}

void sub_1C8CC3138(uint64_t a1)
{
  sub_1C8CC31C0();
  if (v1 <= 0x3F)
  {
    sub_1C8CC31E8();
    if (v2 <= 0x3F)
    {
      sub_1C8CC324C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8CC31C0()
{
  result = qword_1EDA6E380;
  if (!qword_1EDA6E380)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDA6E380);
  }

  return result;
}

void sub_1C8CC31E8()
{
  if (!qword_1EDA6E388)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDA6E388);
    }
  }
}

void sub_1C8CC324C(uint64_t a1)
{
  if (!qword_1EDA6E390)
  {
    sub_1C9061EBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDA6E390);
    }
  }
}

void sub_1C8CC32B8(uint64_t a1)
{
  if (!qword_1EDA6E358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A70, &qword_1C9087680);
    v1 = sub_1C906464C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA6E358);
    }
  }
}

void sub_1C8CC331C(uint64_t a1)
{
  if (!qword_1EDA6DAB0)
  {
    type metadata accessor for ConcreteResolvable(255);
    v1 = sub_1C9063E5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA6DAB0);
    }
  }
}

uint64_t type metadata accessor for ConcreteResolvable(uint64_t a1)
{
  result = qword_1EDA6E0C0;
  if (!qword_1EDA6E0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8CC33F0(uint64_t a1)
{
  result = type metadata accessor for TypedValue.ID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8CC345C(uint64_t a1)
{
  result = sub_1C906204C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C8CC34E0()
{
  if (!qword_1EDA6E340)
  {
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6E340);
    }
  }
}

uint64_t static ToolExecutor.SessionOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA660F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ToolExecutor.SessionOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDA660F8);
  return sub_1C8CC35B0(v3, a1, type metadata accessor for ToolExecutor.SessionOptions);
}

uint64_t sub_1C8CC35B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t static ToolExecutor.start(options:)()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 16) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AA0, &unk_1C90AB5C0);
  OUTLINED_FUNCTION_9(v2);
  *(v0 + 24) = OUTLINED_FUNCTION_39();
  v3 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void *sub_1C8CC3690(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8CC36B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C8CC36B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312978, &qword_1C9068D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[21 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312980, &qword_1C9068D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C8CC38C8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

void sub_1C8CC3900(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_50();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = a2;
    v6 = sub_1C906441C();

    v7 = *(v3 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation);
    *(v3 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation) = v6;
  }
}

uint64_t sub_1C8CC39C8()
{
  MEMORY[0x1CCA83460](v0 + 16);
  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CC3A94()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C8CC3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v15 = v14[18];
  sub_1C906371C();
  v16 = v15;
  v17 = sub_1C9063D1C();
  v18 = sub_1C906446C();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v14[20];
  v21 = v14[21];
  v22 = v14[19];
  if (v19)
  {
    v23 = v14[18];
    OUTLINED_FUNCTION_17_0();
    a10 = v21;
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_5();
    a11 = swift_slowAlloc();
    *v24 = 136315138;
    v25 = [v23 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_97_4();

    v26 = OUTLINED_FUNCTION_325();
    v32 = sub_1C8CACE04(v26, v27, v28, v29, v30, v31);

    *(v24 + 4) = v32;
    OUTLINED_FUNCTION_232_1(&dword_1C8C9B000, v33, v34, "Session %s started");
    __swift_destroy_boxed_opaque_existential_1(a11);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    (*(v20 + 8))(a10, v22);
  }

  else
  {

    (*(v20 + 8))(v21, v22);
  }

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_101();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

void sub_1C8CC3D08(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8CC3F44(v4, 1);
  OUTLINED_FUNCTION_136_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312980, &qword_1C9068D60);
  OUTLINED_FUNCTION_185_0(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C8CC3DC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t result)
{
  *(v1 + 24) = result;
  *v2 = result;
  return result;
}

uint64_t ToolDatabase.__deallocating_deinit()
{
  ToolDatabase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ToolDatabase.deinit()
{
  sub_1C8D0EE18();

  sub_1C8D16D78(v0 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_file, &qword_1EC313058, &qword_1C9071D80);
  sub_1C8D16D78(v0 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock, &qword_1EC313EF8, &qword_1C9071D88);
  return v0;
}

void sub_1C8CC4008()
{
  OUTLINED_FUNCTION_202_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_37_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_67_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312978, &qword_1C9068D58);
      v7 = OUTLINED_FUNCTION_197_0(v6);
      OUTLINED_FUNCTION_33_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_66_0();
        sub_1C8CC4C1C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312980, &qword_1C9068D60);
    OUTLINED_FUNCTION_131(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C906251C();
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1)
{

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_65_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_65_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_65_10(uint64_t a1)
{

  return sub_1C9064B8C();
}

void *OUTLINED_FUNCTION_65_12()
{
  v2 = v0[2] - 1;

  return memmove(v0 + 4, v0 + 33, v2);
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_1C90633FC();
}

uint64_t OUTLINED_FUNCTION_69_8()
{

  return sub_1C906373C();
}

uint64_t OUTLINED_FUNCTION_69_10()
{

  return sub_1C90637CC();
}

void *OUTLINED_FUNCTION_69_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(__srca, a17);
  __src = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0x48uLL);
}

uint64_t sub_1C8CC4BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1C8CC4C1C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_9(a3, result, 168 * a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_64_3(uint64_t a1)
{

  return sub_1C906206C();
}

uint64_t OUTLINED_FUNCTION_64_6(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_64_7()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_64_9()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_64_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, double *a2)
{
  *a2 = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_25_16()
{
  *(v2 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  v3 = (*(v2 + 48) + 16 * v1);
  v4 = *(v0 + 184);
  *v3 = *(v0 + 160);
  v3[1] = v4;
  return sub_1C8D04FA4((v0 + 192), *(v2 + 56) + 40 * v1);
}

uint64_t OUTLINED_FUNCTION_25_20()
{

  return sub_1C8F07110();
}

unint64_t OUTLINED_FUNCTION_25_22()
{
  *(v0 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  *(*(v0 + 48) + 8 * v1) = v2;
  return *(v0 + 56) + 104 * v1;
}

uint64_t OUTLINED_FUNCTION_25_23(uint64_t a1)
{

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_25_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  TypeInstance.init(protobuf:)(v10, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_25_26()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_225_4()
{
}

uint64_t objectdestroyTm()
{
  sub_1C9062E6C();
  OUTLINED_FUNCTION_13_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_0()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_2Tm()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CC5294()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void OUTLINED_FUNCTION_149_0()
{

  JUMPOUT(0x1CCA81A90);
}

char *OUTLINED_FUNCTION_149_3(void *a1)
{

  return sub_1C8E077EC(a1);
}

uint64_t sub_1C8CC547C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C8CC54DC()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_63();
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_1C8CC5544(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

void OUTLINED_FUNCTION_58_1()
{
}

void OUTLINED_FUNCTION_58_3()
{

  sub_1C8E06D78();
}

uint64_t OUTLINED_FUNCTION_58_4(uint64_t a1, uint64_t a2)
{

  return sub_1C906474C();
}

void OUTLINED_FUNCTION_58_5(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_226_0(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_58_9()
{

  return sub_1C90620BC();
}

BOOL OUTLINED_FUNCTION_58_10()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_58_11(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v4 - 176) = a2;
  *(v4 - 160) = a1;
  *(v4 - 152) = v2;
  *(v4 - 144) = v3;
  *(v4 - 136) = a2;
}

uint64_t sub_1C8CC5734()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8CC578C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8CC57EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C8CC582C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void TypedValue.PrimitiveValue.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v23;
  a20 = v24;
  sub_1C9061D4C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_111();
  sub_1C906194C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_111();
  sub_1C90622FC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v28 = OUTLINED_FUNCTION_111();
  type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v28);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_0();
  v30 = OUTLINED_FUNCTION_111();
  type metadata accessor for TypedValue.PrimitiveValue.AppValue(v30);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_0();
  v32 = OUTLINED_FUNCTION_111();
  type metadata accessor for TypedValue.PrimitiveValue.FileValue(v32);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_0();
  v34 = OUTLINED_FUNCTION_111();
  type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v34);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  v36 = OUTLINED_FUNCTION_111();
  v37 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v36);
  v38 = OUTLINED_FUNCTION_23_16(v37, &a18);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_7_0();
  v40 = OUTLINED_FUNCTION_27_0(v39);
  v41 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v40);
  v42 = OUTLINED_FUNCTION_23_16(v41, &a14);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_0();
  v44 = OUTLINED_FUNCTION_27_0(v43);
  v45 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v44);
  v46 = OUTLINED_FUNCTION_23_16(v45, &a11);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_4_22(v48, &a9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v50);
  v51 = sub_1C9061C0C();
  v52 = OUTLINED_FUNCTION_4_22(v51, &a16);
  v106 = v53;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_12();
  v107 = v54;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v56);
  v57 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v105 = v58;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_14();
  v60 = sub_1C9061BAC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_67_4();
  sub_1C9061FEC();
  OUTLINED_FUNCTION_11();
  v63 = v62;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  type metadata accessor for TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_0_47();
  OUTLINED_FUNCTION_246();
  sub_1C8CC5734();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C9064BDC();
      goto LABEL_21;
    case 2u:
      OUTLINED_FUNCTION_180_1();
      sub_1C906430C();
      break;
    case 3u:
      sub_1C90645DC();
      goto LABEL_21;
    case 4u:
      if ((os_variant_allows_internal_security_policies() & 1) == 0)
      {
      }

      v79 = OUTLINED_FUNCTION_134();
      MEMORY[0x1CCA81A90](v79);

      MEMORY[0x1CCA81A90](34, 0xE100000000000000);
      break;
    case 5u:
      v80 = OUTLINED_FUNCTION_276();
      v81(v80);
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v82);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      v83 = OUTLINED_FUNCTION_208_0();
      v85(v83, v84);
      break;
    case 6u:
      OUTLINED_FUNCTION_263_1();
      v70 = OUTLINED_FUNCTION_162();
      v71(v70);
      OUTLINED_FUNCTION_34_9();
      sub_1C8CC8068(v72);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      (*(v63 + 8))(v22, v60);
      break;
    case 7u:
      OUTLINED_FUNCTION_206_2();
      v88 = OUTLINED_FUNCTION_288();
      v89(v88);
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v90);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      (*(v105 + 8))(v20, v57);
      break;
    case 8u:
      v68 = OUTLINED_FUNCTION_146_0();
      v69(v68);
      if (os_variant_allows_internal_security_policies())
      {
        (*(v106 + 16))(v107);
      }

      else
      {
        sub_1C9061BEC();
      }

      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v100);
      v101 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v101);

      v102 = *(v106 + 8);
      v102(v107);
      v103 = OUTLINED_FUNCTION_203_2();
      MEMORY[0x1CCA81A90](v103);
      v104 = OUTLINED_FUNCTION_347();
      v102(v104);
      break;
    case 9u:
      OUTLINED_FUNCTION_206_2();
      v86 = OUTLINED_FUNCTION_276();
      v87(v86);
      sub_1C8D24EA8(&unk_1EC315C50);
      goto LABEL_31;
    case 0xAu:
    case 0xBu:
    case 0xCu:
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_130_0();
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_237_1();
      sub_1C90648BC();
      goto LABEL_26;
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x11u:
      OUTLINED_FUNCTION_151_3();
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_237_1();
      sub_1C90648BC();
LABEL_26:
      sub_1C8CC6AB4();
      break;
    case 0x10u:
      v73 = *v21;
      OUTLINED_FUNCTION_180_1();
      v74 = &qword_1EC315860;
      v75 = &qword_1C90AAB70;
      goto LABEL_35;
    case 0x12u:
      v96 = OUTLINED_FUNCTION_181_0();
      v97(v96);
      OUTLINED_FUNCTION_180_1();
      sub_1C90648BC();
      v98 = OUTLINED_FUNCTION_134();
      v99(v98);
      break;
    case 0x13u:
      OUTLINED_FUNCTION_206_2();
      v76 = OUTLINED_FUNCTION_276();
      v77(v76);
      OUTLINED_FUNCTION_32_8();
      goto LABEL_30;
    case 0x14u:
      sub_1C9064E3C();
LABEL_21:
      OUTLINED_FUNCTION_273_0();
      break;
    case 0x15u:
      OUTLINED_FUNCTION_206_2();
      v91 = OUTLINED_FUNCTION_276();
      v92(v91);
      OUTLINED_FUNCTION_35_11();
LABEL_30:
      sub_1C8CC8068(v78);
LABEL_31:
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      v93 = OUTLINED_FUNCTION_95_0();
      v95(v93, v94);
      break;
    case 0x16u:
      v73 = *v21;
      OUTLINED_FUNCTION_180_1();
      v74 = &qword_1EC315730;
      v75 = &qword_1C907D630;
LABEL_35:
      __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
      sub_1C90648BC();

      break;
    case 0x17u:
      break;
    default:
      if (*v21)
      {
        v66 = 1702195828;
      }

      else
      {
        v66 = 0x65736C6166;
      }

      if (*v21)
      {
        v67 = 0xE400000000000000;
      }

      else
      {
        v67 = 0xE500000000000000;
      }

      MEMORY[0x1CCA81A90](v66, v67);

      break;
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CC6708()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_63();
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return sub_1C8D16D78(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_45_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 304) = a1;

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_45_8(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_45_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_45_20()
{

  return sub_1C8F44DE8(0, 0, v1, &unk_1C90ABDF8, v0);
}

uint64_t OUTLINED_FUNCTION_45_21(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_45_22()
{

  return sub_1C9042FCC(v0, type metadata accessor for ToolRecord);
}

uint64_t OUTLINED_FUNCTION_173_3()
{
}

void OUTLINED_FUNCTION_173_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1C8D00CA4();
}

uint64_t sub_1C8CC6AB4()
{
  v1 = OUTLINED_FUNCTION_258();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8CC6B08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t a1)
{

  return sub_1C9063E2C();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoTypeInstance.Union);
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1)
{

  return sub_1C9064B8C();
}

void *OUTLINED_FUNCTION_21_11(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_21_16(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_21_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C906270C();
}

uint64_t OUTLINED_FUNCTION_21_22(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_24()
{
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1, uint64_t a2)
{

  return swift_getObjectType();
}

void *OUTLINED_FUNCTION_21_26()
{

  return memcpy((v0 - 336), (v0 - 208), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_21_32()
{
  result = 0;
  *(v0 - 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_119_5(uint64_t a1)
{

  return swift_willThrow();
}

void TypedValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v176 = v21;
  v26 = v25;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B40, &qword_1C907D8B0);
  OUTLINED_FUNCTION_11();
  v164[5] = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v173 = v29;
  v30 = OUTLINED_FUNCTION_111();
  v171 = type metadata accessor for TypedValue.CodableValue(v30);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_0();
  v172 = v32;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B48, &qword_1C907D8B8);
  OUTLINED_FUNCTION_11();
  v164[4] = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v169 = v35;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B50, &qword_1C907D8C0);
  OUTLINED_FUNCTION_11();
  v164[3] = v36;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v167 = v38;
  v39 = OUTLINED_FUNCTION_111();
  v164[24] = type metadata accessor for TypedValue.EntityIdentifierValue(v39);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_7_0();
  v166 = v41;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B58, &qword_1C907D8C8);
  OUTLINED_FUNCTION_11();
  v164[2] = v42;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B60, &qword_1C907D8D0);
  OUTLINED_FUNCTION_4_22(v45, &a17);
  v164[1] = v46;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_97();
  v49 = OUTLINED_FUNCTION_27_0(v48);
  Value = type metadata accessor for TypedValue.QueryValue(v49);
  v51 = OUTLINED_FUNCTION_23_16(Value, &a14);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B68, &qword_1C907D8D8);
  OUTLINED_FUNCTION_4_22(v53, &a13);
  v164[0] = v54;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B70, &qword_1C907D8E0);
  OUTLINED_FUNCTION_4_22(v57, &a11);
  v164[15] = v58;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v61 = OUTLINED_FUNCTION_27_0(v60);
  v62 = type metadata accessor for TypedValue.EntityValue(v61);
  v63 = OUTLINED_FUNCTION_23_16(v62, &v184);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B78, &qword_1C907D8E8);
  OUTLINED_FUNCTION_4_22(v65, &v183);
  v164[10] = v66;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  v69 = OUTLINED_FUNCTION_27_0(v68);
  v70 = type metadata accessor for TypedValue.EnumerationValue(v69);
  v71 = OUTLINED_FUNCTION_23_16(v70, &v179);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B80, &qword_1C907D8F0);
  OUTLINED_FUNCTION_11();
  v164[6] = v74;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  v77 = v164 - v76;
  type metadata accessor for TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_17_12();
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B88, &qword_1C907D8F8);
  OUTLINED_FUNCTION_11();
  v175 = v79;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_72();
  v81 = *v20;
  v82 = OUTLINED_FUNCTION_217(v26, v26[3]);
  sub_1C8CC7CBC(v82, v83, v84);
  v177 = v22;
  OUTLINED_FUNCTION_200();
  v85 = sub_1C9064E1C();
  switch(v81 >> 60)
  {
    case 1uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_199_3();
      v127 = sub_1C8CC5734();
      LOBYTE(v178) = 1;
      sub_1C8DF24DC(v127, v128, v129);
      OUTLINED_FUNCTION_81_1(&type metadata for TypedValue.EnumerationCodingKeys);
      OUTLINED_FUNCTION_188_2();
      sub_1C8CC8068(v130);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v131);
      v132 = OUTLINED_FUNCTION_25_12();
      v133(v132);
      goto LABEL_12;
    case 2uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_15_15();
      OUTLINED_FUNCTION_199_3();
      v103 = sub_1C8CC5734();
      LOBYTE(v178) = 2;
      sub_1C8DF2488(v103, v104, v105);
      OUTLINED_FUNCTION_81_1(&type metadata for TypedValue.EntityCodingKeys);
      OUTLINED_FUNCTION_190_4();
      sub_1C8CC8068(v106);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v107);
      v108 = OUTLINED_FUNCTION_25_12();
      v109(v108);
      goto LABEL_12;
    case 3uLL:
      v111 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v110 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v178) = 3;
      sub_1C8DF23E0(v85, v86, v87);

      OUTLINED_FUNCTION_34();
      v112 = sub_1C9064ACC();
      v178 = v111;
      v179 = v110;
      sub_1C8DF2434(v112, v113, v114);
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v115 = OUTLINED_FUNCTION_114();
      v116(v115);
      v117 = OUTLINED_FUNCTION_55_4();
      goto LABEL_7;
    case 4uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_199_3();
      v96 = sub_1C8CC5734();
      LOBYTE(v178) = 4;
      sub_1C8DF238C(v96, v97, v98);
      OUTLINED_FUNCTION_81_1(&type metadata for TypedValue.QueryCodingKeys);
      OUTLINED_FUNCTION_191_4();
      sub_1C8CC8068(v99);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v100);
      v101 = OUTLINED_FUNCTION_25_12();
      v102(v101);
      goto LABEL_12;
    case 5uLL:
      v134 = v81 & 0xFFFFFFFFFFFFFFFLL;
      v136 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v135 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v137 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v138 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v140 = *(v134 + 48);
      v139 = *(v134 + 56);
      v141 = *(v134 + 64);
      LOBYTE(v178) = 5;

      v142 = sub_1C8D4F44C(v137, v138, v140, v139, v141);
      sub_1C8DF22E4(v142, v143, v144);
      OUTLINED_FUNCTION_161_1();
      v145 = sub_1C9064ACC();
      v172 = v136;
      v173 = v138;
      v178 = v136;
      v179 = v135;
      v174 = v137;
      v180 = v137;
      v181 = v138;
      v182 = v140;
      v183 = v139;
      v184 = v141;
      sub_1C8DF2338(v145, v146, v147);
      v148 = v165;
      sub_1C9064B8C();
      v149 = OUTLINED_FUNCTION_62_0();
      v150(v149, v148);
      OUTLINED_FUNCTION_40_8();
      v151(v177, v185);

      sub_1C8D43CA8(v174, v173, v140, v139, v141);
      goto LABEL_14;
    case 6uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_12_15();
      v152 = sub_1C8CC5734();
      LOBYTE(v178) = 6;
      sub_1C8DF2290(v152, v153, v154);
      OUTLINED_FUNCTION_81_1(&type metadata for TypedValue.EntityIdentifierCodingKeys);
      OUTLINED_FUNCTION_187_3();
      sub_1C8CC8068(v155);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B8C();
      v156 = OUTLINED_FUNCTION_25_12();
      v157(v156);
      goto LABEL_12;
    case 7uLL:
      v119 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v120 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v121 = *((v81 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v178) = 7;
      sub_1C8DF21E8(v85, v86, v87);

      v122 = sub_1C9064ACC();
      v178 = v119;
      v179 = v120;
      v180 = v121;
      sub_1C8DF223C(v122, v123, v124);
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v125 = OUTLINED_FUNCTION_162();
      v126(v125);
      OUTLINED_FUNCTION_40_8();
      v117 = OUTLINED_FUNCTION_203();
LABEL_7:
      v118(v117);

      goto LABEL_14;
    case 8uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_11_17();
      v158 = sub_1C8CC5734();
      LOBYTE(v178) = 8;
      sub_1C8DF2194(v158, v159, v160);
      OUTLINED_FUNCTION_81_1(&type metadata for TypedValue.CodableCodingKeys);
      OUTLINED_FUNCTION_186_3();
      sub_1C8CC8068(v161);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B8C();
      v162 = OUTLINED_FUNCTION_25_12();
      v163(v162);
LABEL_12:
      sub_1C8CC6AB4();
      OUTLINED_FUNCTION_40_8();
      v93 = OUTLINED_FUNCTION_93();
      goto LABEL_13;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_47();
      v88 = sub_1C8CC5734();
      LOBYTE(v178) = 0;
      sub_1C8CC7D10(v88, v89, v90);
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_192_3();
      sub_1C8CC8068(v91);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v92(v77, v73);
      OUTLINED_FUNCTION_14_20();
      sub_1C8CC6AB4();
      v93 = OUTLINED_FUNCTION_241();
      v95 = v185;
LABEL_13:
      v94(v93, v95);
LABEL_14:
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t OUTLINED_FUNCTION_242(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_242_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_1C8CACE04(a1, a2, va, a4, a5, a6);
}

unint64_t sub_1C8CC7CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D5F0;
  if (!qword_1EDA6D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5F0);
  }

  return result;
}

unint64_t sub_1C8CC7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D5B8;
  if (!qword_1EDA6D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5B8);
  }

  return result;
}

unint64_t sub_1C8CC7D6C(char a1)
{
  result = 0x766974696D697270;
  switch(a1)
  {
    case 1:
      result = 0x746172656D756E65;
      break;
    case 2:
      result = 0x797469746E65;
      break;
    case 3:
      result = 0x697463656C6C6F63;
      break;
    case 4:
      result = 0x7972657571;
      break;
    case 5:
      result = 0x6465727265666564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0x656C6261646F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8CC7E94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

_BYTE *sub_1C8CC7EAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C8CC7F68);
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8CC7F9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_80(v8);
}

uint64_t sub_1C8CC8020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8CC8068(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C8CC80AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_139_2()
{
  *(v4 - 176) = v1;
  *(v4 - 168) = v3;
  *(v4 - 160) = v0;
  *(v4 - 88) = v2;

  return sub_1C9064A9C();
}

uint64_t OUTLINED_FUNCTION_139_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1C8D8D3E0(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_203_0()
{
  v3 = *(v1 - 104);

  return sub_1C8CD0D98(v3, v0);
}

_BYTE *sub_1C8CC81B4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C8CC8250);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void TypedValue.PrimitiveValue.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315740, &qword_1C907D640);
  OUTLINED_FUNCTION_11();
  v344 = v7;
  v345 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v343 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315748, &qword_1C907D648);
  OUTLINED_FUNCTION_11();
  v342[0] = v11;
  v342[1] = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v339 = v13;
  OUTLINED_FUNCTION_111();
  sub_1C9061D4C();
  OUTLINED_FUNCTION_11();
  v340 = v15;
  v341 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  v338 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315750, &qword_1C907D650);
  OUTLINED_FUNCTION_4_22(v17, &v357);
  v336 = v18;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315758, &qword_1C907D658);
  OUTLINED_FUNCTION_4_22(v21, &v356);
  v335[2] = v22;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v24);
  v25 = sub_1C906194C();
  v26 = OUTLINED_FUNCTION_4_22(v25, &v355);
  v334 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315760, &qword_1C907D660);
  OUTLINED_FUNCTION_4_22(v29, &v354);
  v333 = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v32);
  v33 = sub_1C90622FC();
  v34 = OUTLINED_FUNCTION_4_22(v33, &v353);
  v331[3] = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315768, &qword_1C907D668);
  OUTLINED_FUNCTION_4_22(v37, &v351);
  v330 = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v41 = OUTLINED_FUNCTION_27_0(v40);
  v42 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v41);
  v43 = OUTLINED_FUNCTION_23_16(v42, &v349);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315770, &qword_1C907D670);
  OUTLINED_FUNCTION_4_22(v45, &v348);
  v328 = v46;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315778, &qword_1C907D678);
  OUTLINED_FUNCTION_4_22(v49, &v345);
  v325 = v50;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  v53 = OUTLINED_FUNCTION_27_0(v52);
  v54 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v53);
  v55 = OUTLINED_FUNCTION_23_16(v54, v342);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315780, &qword_1C907D680);
  OUTLINED_FUNCTION_4_22(v57, &v341);
  v323 = v58;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v61 = OUTLINED_FUNCTION_27_0(v60);
  v62 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v61);
  v63 = OUTLINED_FUNCTION_23_16(v62, &v337);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315788, &qword_1C907D688);
  OUTLINED_FUNCTION_4_22(v65, &v336);
  v321 = v66;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  v69 = OUTLINED_FUNCTION_27_0(v68);
  v70 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v69);
  v71 = OUTLINED_FUNCTION_23_16(v70, v335);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315790, &qword_1C907D690);
  OUTLINED_FUNCTION_4_22(v73, &v334);
  v319 = v74;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_97();
  v77 = OUTLINED_FUNCTION_27_0(v76);
  v78 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v77);
  v79 = OUTLINED_FUNCTION_23_16(v78, &v333);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315798, &qword_1C907D698);
  OUTLINED_FUNCTION_4_22(v81, v332);
  v317 = v82;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_97();
  v85 = OUTLINED_FUNCTION_27_0(v84);
  v86 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v85);
  v87 = OUTLINED_FUNCTION_23_16(v86, v331);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157A0, &qword_1C907D6A0);
  OUTLINED_FUNCTION_4_22(v89, &v330);
  v314 = v90;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_97();
  v93 = OUTLINED_FUNCTION_27_0(v92);
  v94 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v93);
  v95 = OUTLINED_FUNCTION_23_16(v94, &v329);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157A8, &qword_1C907D6A8);
  OUTLINED_FUNCTION_4_22(v97, &v328);
  v311[3] = v98;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_4_22(v101, v326);
  v311[0] = v102;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157B0, &qword_1C907D6B0);
  OUTLINED_FUNCTION_4_22(v105, v324);
  v310 = v106;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v108);
  v109 = sub_1C9061C0C();
  v110 = OUTLINED_FUNCTION_4_22(v109, &v323);
  v309 = v111;
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157B8, &qword_1C907D6B8);
  OUTLINED_FUNCTION_4_22(v113, &v322);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v115);
  v116 = sub_1C9061EBC();
  v117 = OUTLINED_FUNCTION_4_22(v116, v320);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157C0, &qword_1C907D6C0);
  OUTLINED_FUNCTION_4_22(v119, &v319);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v121);
  v122 = sub_1C9061BAC();
  v123 = OUTLINED_FUNCTION_4_22(v122, v318);
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157C8, &qword_1C907D6C8);
  OUTLINED_FUNCTION_4_22(v125, v316);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v127);
  v128 = sub_1C9061FEC();
  v129 = OUTLINED_FUNCTION_4_22(v128, v315);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157D0, &qword_1C907D6D0);
  OUTLINED_FUNCTION_4_22(v131, v313);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157D8, &qword_1C907D6D8);
  OUTLINED_FUNCTION_4_22(v134, v312);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157E0, &qword_1C907D6E0);
  OUTLINED_FUNCTION_4_22(v137, v311);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157E8, &qword_1C907D6E8);
  OUTLINED_FUNCTION_4_22(v140, &v310);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v142);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157F0, &qword_1C907D6F0);
  OUTLINED_FUNCTION_4_22(v143, v308);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_233();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3157F8, &qword_1C907D6F8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_110();
  v147 = type metadata accessor for TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315800, &unk_1C907D700);
  OUTLINED_FUNCTION_11();
  v347 = v149;
  v348 = v150;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_15_0();
  v152 = *(a1 + 32);
  v153 = OUTLINED_FUNCTION_95_0();
  v155 = OUTLINED_FUNCTION_217(v153, v154);
  sub_1C8CCA1E4(v155, v156, v157);
  v346 = v2;
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_0_47();
  sub_1C8CC5734();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v161 = *v1;
      LOBYTE(v352) = 2;
      sub_1C8DF1BBC(EnumCaseMultiPayload, v159, v160);
      v162 = v347;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_319_0();
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B6C();
      v164 = OUTLINED_FUNCTION_54();
      goto LABEL_14;
    case 2:
      LOBYTE(v352) = 3;
      sub_1C8DF1B68(EnumCaseMultiPayload, v159, v160);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.NumberCodingKeys);
      OUTLINED_FUNCTION_150_2();
      sub_1C9064B4C();
      v207 = OUTLINED_FUNCTION_25_12();
      v208(v207);
      goto LABEL_31;
    case 3:
      v352 = *v1;
      v353 = *(v1 + 4);
      LOBYTE(v350) = 4;
      sub_1C8DF1B14(EnumCaseMultiPayload, v159, v160);
      OUTLINED_FUNCTION_123();
      v162 = v347;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      v350 = v352;
      v351 = v353;
      type metadata accessor for Decimal(0);
      OUTLINED_FUNCTION_37_11();
      sub_1C8CC8068(v216);
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B8C();
      v164 = OUTLINED_FUNCTION_20_12();
      goto LABEL_15;
    case 4:
      LOBYTE(v352) = 5;
      sub_1C8DF1AC0(EnumCaseMultiPayload, v159, v160);
      OUTLINED_FUNCTION_123();
      v162 = v347;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B2C();

      v186 = OUTLINED_FUNCTION_45();
      v187(v186);
      v188 = OUTLINED_FUNCTION_241();
      goto LABEL_16;
    case 5:
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v241 = v240(v238, v239);
      LOBYTE(v352) = 6;
      sub_1C8DF1A6C(v241, v242, v243);
      OUTLINED_FUNCTION_69_2(&type metadata for TypedValue.PrimitiveValue.DateCodingKeys);
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v244);
      v245 = OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v245);
      goto LABEL_30;
    case 6:
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v262 = v261(v259, v260);
      LOBYTE(v352) = 7;
      sub_1C8DF1A18(v262, v263, v264);
      OUTLINED_FUNCTION_69_2(&type metadata for TypedValue.PrimitiveValue.DateComponentsCodingKeys);
      OUTLINED_FUNCTION_34_9();
      sub_1C8CC8068(v265);
      v266 = OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v266);
      goto LABEL_30;
    case 7:
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v221 = v220(v218, v219);
      LOBYTE(v352) = 8;
      sub_1C8DF19C4(v221, v222, v223);
      OUTLINED_FUNCTION_69_2(&type metadata for TypedValue.PrimitiveValue.UrlCodingKeys);
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v224);
      v225 = OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v225);
      goto LABEL_30;
    case 8:
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v285 = v284(v282, v283);
      LOBYTE(v352) = 9;
      sub_1C8DF1970(v285, v286, v287);
      OUTLINED_FUNCTION_69_2(&type metadata for TypedValue.PrimitiveValue.AttributedStringCodingKeys);
      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v288);
      v289 = OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v289);
      goto LABEL_30;
    case 9:
      v197 = v311[0];
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v201 = v200(v198, v199);
      LOBYTE(v352) = 10;
      sub_1C8DF191C(v201, v202, v203);
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_77_2(v204);
      sub_1C8D24EA8(&unk_1EC315898);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B8C();
      v205 = OUTLINED_FUNCTION_45();
      v206(v205, v145);
      (*(v197 + 8))(v152, v147);
      goto LABEL_31;
    case 10:
      OUTLINED_FUNCTION_199_3();
      v275 = sub_1C8CCEB64();
      LOBYTE(v352) = 11;
      sub_1C8DF18C8(v275, v276, v277);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.CurrencyAmountCodingKeys);
      OUTLINED_FUNCTION_169_2();
      sub_1C8CC8068(v278);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v279);
      v280 = OUTLINED_FUNCTION_25_12();
      v281(v280);
      goto LABEL_25;
    case 11:
      OUTLINED_FUNCTION_199_3();
      v179 = sub_1C8CCEB64();
      LOBYTE(v352) = 12;
      sub_1C8DF1874(v179, v180, v181);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.PaymentMethodCodingKeys);
      OUTLINED_FUNCTION_175_1();
      sub_1C8CC8068(v182);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v183);
      v184 = OUTLINED_FUNCTION_25_12();
      v185(v184);
      goto LABEL_25;
    case 12:
      OUTLINED_FUNCTION_199_3();
      v190 = sub_1C8CCEB64();
      LOBYTE(v352) = 13;
      sub_1C8DF1820(v190, v191, v192);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.PlacemarkCodingKeys);
      OUTLINED_FUNCTION_173_2();
      sub_1C8CC8068(v193);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v194);
      v195 = OUTLINED_FUNCTION_25_12();
      v196(v195);
      goto LABEL_25;
    case 13:
      OUTLINED_FUNCTION_199_3();
      v252 = sub_1C8CCEB64();
      LOBYTE(v352) = 14;
      sub_1C8DF17CC(v252, v253, v254);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.PersonCodingKeys);
      OUTLINED_FUNCTION_170_4();
      sub_1C8CC8068(v255);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v256);
      v257 = OUTLINED_FUNCTION_25_12();
      v258(v257);
      goto LABEL_25;
    case 14:
      OUTLINED_FUNCTION_199_3();
      v172 = sub_1C8CCEB64();
      LOBYTE(v352) = 15;
      sub_1C8DF1778(v172, v173, v174);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.FileCodingKeys);
      OUTLINED_FUNCTION_176_2();
      sub_1C8CC8068(v175);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v176);
      v177 = OUTLINED_FUNCTION_25_12();
      v178(v177);
      goto LABEL_25;
    case 15:
      OUTLINED_FUNCTION_199_3();
      v209 = sub_1C8CCEB64();
      LOBYTE(v352) = 16;
      sub_1C8DF1724(v209, v210, v211);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.AppCodingKeys);
      OUTLINED_FUNCTION_172_0();
      sub_1C8CC8068(v212);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v213);
      v214 = OUTLINED_FUNCTION_25_12();
      v215(v214);
      goto LABEL_25;
    case 16:
      v165 = *v1;
      LOBYTE(v352) = 17;
      sub_1C8DF16D0(EnumCaseMultiPayload, v159, v160);
      v166 = v327;
      OUTLINED_FUNCTION_91_2();
      sub_1C9064ACC();
      *&v352 = v165;
      v167 = &qword_1EC315860;
      v168 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v168, v169);
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_290_1(v170);
      OUTLINED_FUNCTION_319_0();
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      v171 = v328;
      goto LABEL_28;
    case 17:
      OUTLINED_FUNCTION_199_3();
      v227 = sub_1C8CCEB64();
      LOBYTE(v352) = 18;
      sub_1C8DF167C(v227, v228, v229);
      OUTLINED_FUNCTION_53_6(&type metadata for TypedValue.PrimitiveValue.ShortcutCodingKeys);
      OUTLINED_FUNCTION_171_3();
      sub_1C8CC8068(v230);
      OUTLINED_FUNCTION_160_3();
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_140_3(v231);
      v232 = OUTLINED_FUNCTION_25_12();
      v233(v232);
LABEL_25:
      sub_1C8CC6AB4();
      goto LABEL_31;
    case 18:
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v270 = v269(v267, v268);
      LOBYTE(v352) = 19;
      sub_1C8DF1628(v270, v271, v272);
      OUTLINED_FUNCTION_69_2(&type metadata for TypedValue.PrimitiveValue.RecurrenceRuleCodingKeys);
      OUTLINED_FUNCTION_70_1();
      sub_1C8CC8068(v273);
      v274 = OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v274);
      goto LABEL_30;
    case 19:
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_233_1();
      v298 = v297(v295, v296);
      LOBYTE(v352) = 20;
      sub_1C8DF15D4(v298, v299, v300);
      OUTLINED_FUNCTION_69_2(&type metadata for TypedValue.PrimitiveValue.DateIntervalCodingKeys);
      OUTLINED_FUNCTION_32_8();
      sub_1C8CC8068(v301);
      v302 = OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_82_2(v302);
      goto LABEL_30;
    case 20:
      v234 = *v1;
      v235 = *(v1 + 1);
      LOBYTE(v352) = 21;
      sub_1C8DF1580(EnumCaseMultiPayload, v159, v160);
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      *&v352 = v234;
      *(&v352 + 1) = v235;
      OUTLINED_FUNCTION_319_0();
      OUTLINED_FUNCTION_333_1();
      sub_1C9064B8C();
      v236 = OUTLINED_FUNCTION_45();
      v237(v236, v234);
      v188 = OUTLINED_FUNCTION_55_4();
      goto LABEL_32;
    case 21:
      v2 = v340;
      v147 = v341;
      v152 = v338;
      v246 = OUTLINED_FUNCTION_129_1();
      v248 = v247(v246);
      LOBYTE(v352) = 22;
      sub_1C8DF152C(v248, v249, v250);
      OUTLINED_FUNCTION_77_2(&type metadata for TypedValue.PrimitiveValue.PersonNameComponentsCodingKeys);
      OUTLINED_FUNCTION_35_11();
      sub_1C8CC8068(v251);
      OUTLINED_FUNCTION_224_0();
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
LABEL_30:
      v303 = OUTLINED_FUNCTION_162();
      v304(v303);
      (*(v2 + 8))(v152, v147);
LABEL_31:
      OUTLINED_FUNCTION_40_8();
      v188 = OUTLINED_FUNCTION_93();
      goto LABEL_32;
    case 22:
      v165 = *v1;
      LOBYTE(v352) = 23;
      sub_1C8DF14D8(EnumCaseMultiPayload, v159, v160);
      v166 = v343;
      OUTLINED_FUNCTION_91_2();
      sub_1C9064ACC();
      *&v352 = v165;
      v290 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v290, v291);
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_290_1(v292);
      v167 = v345;
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B8C();
      v171 = v344;
LABEL_28:
      (*(v171 + 8))(v166, v167);
      OUTLINED_FUNCTION_40_8();
      v293 = OUTLINED_FUNCTION_203();
      v294(v293);

      return;
    case 23:
      LOBYTE(v352) = 0;
      sub_1C8CCA238(EnumCaseMultiPayload, v159, v160);
      OUTLINED_FUNCTION_104_0();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296();
      v305(v4, v145);
      OUTLINED_FUNCTION_40_8();
      v306 = OUTLINED_FUNCTION_95_0();
      v307(v306);
      return;
    default:
      v161 = *v1;
      LOBYTE(v352) = 1;
      sub_1C8DF1C10(EnumCaseMultiPayload, v159, v160);
      v162 = v347;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_319_0();
      OUTLINED_FUNCTION_162_3();
      sub_1C9064B3C();
      OUTLINED_FUNCTION_296();
      v164 = v3;
LABEL_14:
      v217 = v161;
LABEL_15:
      v163(v164, v217);
      v188 = OUTLINED_FUNCTION_47_3();
LABEL_16:
      v226 = v162;
LABEL_32:
      v189(v188, v226);
      return;
  }
}

unint64_t sub_1C8CCA1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D6B8[0];
  if (!qword_1EDA6D6B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6D6B8);
  }

  return result;
}

unint64_t sub_1C8CCA238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA639D8;
  if (!qword_1EDA639D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639D8);
  }

  return result;
}

unint64_t sub_1C8CCA294(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 1819242338;
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 0x7265626D756ELL;
      break;
    case 4:
      result = 0x6C616D69636564;
      break;
    case 5:
      result = 0x676E69727473;
      break;
    case 6:
      result = 1702125924;
      break;
    case 7:
      result = 0x706D6F4365746164;
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D6572757361656DLL;
      break;
    case 11:
      result = 0x79636E6572727563;
      break;
    case 12:
      result = 0x4D746E656D796170;
      break;
    case 13:
      result = 0x72616D6563616C70;
      break;
    case 14:
      result = 0x6E6F73726570;
      break;
    case 15:
      result = 1701603686;
      break;
    case 16:
      result = 7368801;
      break;
    case 17:
      result = 0x6261686372616573;
      break;
    case 18:
      result = 0x74756374726F6873;
      break;
    case 19:
      result = 0x6E65727275636572;
      break;
    case 20:
      result = 0x65746E4965746164;
      break;
    case 21:
      result = 0x6E6F697461727564;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0x4673746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypedValue.PrimitiveValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x1C8CCA638);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TypedValue.PrimitiveValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}
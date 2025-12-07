uint64_t sub_266C0AD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C0AD3C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266C0AED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_266C0AF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_266C0AFB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0AFE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0B020()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0B0A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0B0D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266C0B0F0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 21);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_266C0B158()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C0B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C0B308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_266C0B478()
{

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0B504()
{

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0B554()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_266DAAB4C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C0B62C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DAAB4C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C0B6AC()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0B6E0()
{

  OUTLINED_FUNCTION_15_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0B714()
{
  type metadata accessor for FindFriendSessionManager(0);
  OUTLINED_FUNCTION_24_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 36);
  sub_266DAAB4C();
  OUTLINED_FUNCTION_0();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_266C0B7F4()
{
  OUTLINED_FUNCTION_6();
  type metadata accessor for FriendLocation(0);
  OUTLINED_FUNCTION_24_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  v4 = v1 + v3 + *(v0 + 40);
  v5 = type metadata accessor for Location(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    v6 = *(v5 + 28);
    sub_266DA746C();
    OUTLINED_FUNCTION_0();
    (*(v7 + 8))(v4 + v6);

    v8 = v4 + *(v5 + 44);
    v9 = type metadata accessor for Address(0);
    if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
    {
      v10 = sub_266DA919C();
      if (!__swift_getEnumTagSinglePayload(v8, 1, v10))
      {
        (*(*(v10 - 8) + 8))(v8, v10);
      }

      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_21_0();
      v11 = *(v9 + 32);
      if (!__swift_getEnumTagSinglePayload(v8 + v11, 1, v10))
      {
        (*(*(v10 - 8) + 8))(v8 + v11, v10);
      }

      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_21_0();
    }
  }

  OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_266C0BA34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0BAB8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_266C0BAF8()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266C0BBAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0BBE4()
{

  sub_266C479B0(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0BC30()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0BD08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0BD40()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0BD74()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0BDD0()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0BE10()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v36 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v37 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v37, v38, v1))
        {
          v39 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v40 + 8))(v36 + v39);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v36 + v1[11]);
          v41 = type metadata accessor for Address(0);
          v42 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v42, v43, v41))
          {
            sub_266DA919C();
            v44 = OUTLINED_FUNCTION_109();
            v118 = v45;
            if (!__swift_getEnumTagSinglePayload(v44, v46, v45))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v47 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v48 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v48, v49, v50, v51, v52, v53, v54, v55, v116, v118))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v56 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v117 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v117))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v116 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v116, 1, v117))
              {
                OUTLINED_FUNCTION_9_3();
                (*(v34 + 8))(v32 + v35);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v57);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v58 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v59 = v0 + v10;
  v60 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v60, v61, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v73 + 8))(v1 + v59);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v66 = v59 + *(type metadata accessor for Friend(0) + 40);
        v67 = type metadata accessor for FriendLocation(0);
        v68 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v68, v69, v67))
        {
          break;
        }

        v70 = v66 + *(v67 + 32);
LABEL_57:
        v101 = type metadata accessor for Location(0);
        v102 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v102, v103, v101))
        {
          v104 = *(v101 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v105 + 8))(v70 + v104);

          v106 = v70 + *(v101 + 44);
          v107 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v107))
          {
            v108 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v106, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v109 + 8))(v106, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v110 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v106 + v110, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v111 + 8))(v106 + v110, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v75 = v59 + *(type metadata accessor for Friend(0) + 40);
        v76 = type metadata accessor for FriendLocation(0);
        v77 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v77, v78, v76))
        {

          v79 = v75 + *(v76 + 32);
          v80 = type metadata accessor for Location(0);
          v81 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v81, v82, v80))
          {
            v83 = *(v80 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v84 + 8))(v79 + v83);

            v2 = (v79 + *(v80 + 44));
            v85 = type metadata accessor for Address(0);
            v86 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v86, v87, v85))
            {
              sub_266DA919C();
              v88 = OUTLINED_FUNCTION_109();
              v119 = v89;
              if (!__swift_getEnumTagSinglePayload(v88, v90, v89))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v91 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v92 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v116, v119))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v100 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v70 = v59 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v112);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v74);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v59 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v72 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v72 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v113 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v114 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v114 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v62 + 8))(v0 + v10);
        v63 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v64 = *(v63 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v65 + 8))(v59 + v64);
        if (*(v59 + *(v63 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C0CC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_266C0CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_266C0CCAC()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v36 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v37 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v37, v38, v1))
        {
          v39 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v40 + 8))(v36 + v39);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v36 + v1[11]);
          v41 = type metadata accessor for Address(0);
          v42 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v42, v43, v41))
          {
            sub_266DA919C();
            v44 = OUTLINED_FUNCTION_109();
            v118 = v45;
            if (!__swift_getEnumTagSinglePayload(v44, v46, v45))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v47 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v48 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v48, v49, v50, v51, v52, v53, v54, v55, v116, v118))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v56 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v117 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v117))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v116 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v116, 1, v117))
              {
                OUTLINED_FUNCTION_9_3();
                (*(v34 + 8))(v32 + v35);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v57);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v58 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v59 = v0 + v10;
  v60 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v60, v61, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v73 + 8))(v1 + v59);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v66 = v59 + *(type metadata accessor for Friend(0) + 40);
        v67 = type metadata accessor for FriendLocation(0);
        v68 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v68, v69, v67))
        {
          break;
        }

        v70 = v66 + *(v67 + 32);
LABEL_57:
        v101 = type metadata accessor for Location(0);
        v102 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v102, v103, v101))
        {
          v104 = *(v101 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v105 + 8))(v70 + v104);

          v106 = v70 + *(v101 + 44);
          v107 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v107))
          {
            v108 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v106, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v109 + 8))(v106, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v110 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v106 + v110, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v111 + 8))(v106 + v110, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v75 = v59 + *(type metadata accessor for Friend(0) + 40);
        v76 = type metadata accessor for FriendLocation(0);
        v77 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v77, v78, v76))
        {

          v79 = v75 + *(v76 + 32);
          v80 = type metadata accessor for Location(0);
          v81 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v81, v82, v80))
          {
            v83 = *(v80 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v84 + 8))(v79 + v83);

            v2 = (v79 + *(v80 + 44));
            v85 = type metadata accessor for Address(0);
            v86 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v86, v87, v85))
            {
              sub_266DA919C();
              v88 = OUTLINED_FUNCTION_109();
              v119 = v89;
              if (!__swift_getEnumTagSinglePayload(v88, v90, v89))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v91 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v92 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v116, v119))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v100 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v70 = v59 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v112);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v74);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v59 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v72 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v72 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v113 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v114 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v114 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v62 + 8))(v0 + v10);
        v63 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v64 = *(v63 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v65 + 8))(v59 + v64);
        if (*(v59 + *(v63 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C0D9CC()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0DA9C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_21_2();
  sub_266DA746C();
  OUTLINED_FUNCTION_20_3();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[7];
LABEL_5:

    return __swift_getEnumTagSinglePayload(v3 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_20_3();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[11];
    goto LABEL_5;
  }

  v13 = *(v3 + a3[12] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_266C0DB94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_21_2();
  sub_266DA746C();
  OUTLINED_FUNCTION_20_3();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_20_3();
    if (*(v13 + 84) != a3)
    {
      *(v4 + a4[12] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[11];
  }

  __swift_storeEnumTagSinglePayload(v4 + v11, a2, a2, v10);
}

uint64_t sub_266C0DD58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C0DDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C0DEE4()
{

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0DF18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0DF80()
{
  OUTLINED_FUNCTION_4_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_266C0DFBC()
{
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_266C0DFF0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0E030()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_266C0E070()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0E0B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0E158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266C0E208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMIPCoreDeviceSearcher(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266C0E2B8()
{
  type metadata accessor for FMIPCoreDevicePinger(0);
  OUTLINED_FUNCTION_24_0();
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v6;
  OUTLINED_FUNCTION_2_19();
  __swift_destroy_boxed_opaque_existential_0((v8 + 216));
  __swift_destroy_boxed_opaque_existential_0((v8 + 256));
  v9 = type metadata accessor for FMIPCoreDeviceSearcher(0);
  v10 = *(v9 + 52);
  sub_266DAAB4C();
  OUTLINED_FUNCTION_8_0();
  (*(v11 + 8))(v8 + v10);

  OUTLINED_FUNCTION_6_15();
  __swift_destroy_boxed_opaque_existential_0((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v5 | 7);
}

uint64_t sub_266C0E3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266DA7FDC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266C0E484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266DA7FDC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266C0E7E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266C0E830()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_266C0E8A0@<X0>(uint64_t *a1@<X8>)
{
  result = j__swift_bridgeObjectRetain();
  *a1 = result;
  return result;
}

uint64_t sub_266C0E914()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C0E9A4()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C0F680()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_54_2();

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_266C0F6CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_54_2();

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t sub_266C0F808()
{

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C0F83C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_266C0F904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_2();
  v6 = sub_266DA750C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    FriendSnippetType = v6;
    v8 = v3;
  }

  else
  {
    FriendSnippetType = type metadata accessor for FindFriendSnippetType(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, FriendSnippetType);
}

uint64_t sub_266C0F99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_2();
  v8 = sub_266DA750C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    FriendSnippetType = v8;
    v10 = v4;
  }

  else
  {
    FriendSnippetType = type metadata accessor for FindFriendSnippetType(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, FriendSnippetType);
}

uint64_t sub_266C0FAE0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_266C0FB30()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0FB68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);

  __swift_destroy_boxed_opaque_existential_0(v0 + 29);

  __swift_destroy_boxed_opaque_existential_0(v0 + 35);
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  __swift_destroy_boxed_opaque_existential_0(v0 + 45);
  __swift_destroy_boxed_opaque_existential_0(v0 + 50);

  return MEMORY[0x2821FE8E8](v0, 448, 7);
}

uint64_t sub_266C0FC08()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_266C0FC58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C0FC90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_266C0FD10(uint64_t a1)
{
  OUTLINED_FUNCTION_12_13(a1);
  sub_266CB7990();
  *v1 = v2;
}

uint64_t sub_266C0FD50()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_266C0FDA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0FDE0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_266C0FE30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0FE68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C0FEA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C0FEE8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C0FF28()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266C0FF78@<X0>(_BYTE *a1@<X8>)
{
  result = Snippets.SetSharedLocationVisibilityResult.alreadySet.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_266C0FFD0@<X0>(unint64_t *a1@<X8>)
{
  result = Snippets.SetSharedLocationVisibilityResult.visibility.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266C10024@<X0>(_BYTE *a1@<X8>)
{
  result = Snippets.SetSharedLocationVisibilityResult.isVisible.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266C1007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  OUTLINED_FUNCTION_20_3();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  OUTLINED_FUNCTION_20_3();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 16);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  v15 = v14 <= 0;
  if (v14 < 0)
  {
    v14 = -1;
  }

  if (v15)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

void sub_266C10190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  OUTLINED_FUNCTION_20_3();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
    OUTLINED_FUNCTION_20_3();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 + 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_266C102D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C10308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v6);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C10354(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 2);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for ConfirmIntentWithUnlockFlow.State(0, *(a4 + 16), *(a4 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, v7);
}

uint64_t sub_266C103CC()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v36 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v37 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v37, v38, v1))
        {
          v39 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v40 + 8))(v36 + v39);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v36 + v1[11]);
          v41 = type metadata accessor for Address(0);
          v42 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v42, v43, v41))
          {
            sub_266DA919C();
            v44 = OUTLINED_FUNCTION_109();
            v118 = v45;
            if (!__swift_getEnumTagSinglePayload(v44, v46, v45))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v47 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v48 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v48, v49, v50, v51, v52, v53, v54, v55, v116, v118))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v56 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v117 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v117))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v116 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v116, 1, v117))
              {
                OUTLINED_FUNCTION_9_3();
                (*(v34 + 8))(v32 + v35);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v57);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v58 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v59 = v0 + v10;
  v60 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v60, v61, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v73 + 8))(v1 + v59);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v66 = v59 + *(type metadata accessor for Friend(0) + 40);
        v67 = type metadata accessor for FriendLocation(0);
        v68 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v68, v69, v67))
        {
          break;
        }

        v70 = v66 + *(v67 + 32);
LABEL_57:
        v101 = type metadata accessor for Location(0);
        v102 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v102, v103, v101))
        {
          v104 = *(v101 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v105 + 8))(v70 + v104);

          v106 = v70 + *(v101 + 44);
          v107 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v107))
          {
            v108 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v106, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v109 + 8))(v106, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v110 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v106 + v110, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v111 + 8))(v106 + v110, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v75 = v59 + *(type metadata accessor for Friend(0) + 40);
        v76 = type metadata accessor for FriendLocation(0);
        v77 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v77, v78, v76))
        {

          v79 = v75 + *(v76 + 32);
          v80 = type metadata accessor for Location(0);
          v81 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v81, v82, v80))
          {
            v83 = *(v80 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v84 + 8))(v79 + v83);

            v2 = (v79 + *(v80 + 44));
            v85 = type metadata accessor for Address(0);
            v86 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v86, v87, v85))
            {
              sub_266DA919C();
              v88 = OUTLINED_FUNCTION_109();
              v119 = v89;
              if (!__swift_getEnumTagSinglePayload(v88, v90, v89))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v91 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v92 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v116, v119))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v100 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v70 = v59 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v112);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v74);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v59 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v72 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v72 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v113 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v114 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v114 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v62 + 8))(v0 + v10);
        v63 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v64 = *(v63 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v65 + 8))(v59 + v64);
        if (*(v59 + *(v63 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C11098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266DAAB4C();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C11120(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DAAB4C();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C111A0()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C111D8()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C1120C()
{
  type metadata accessor for FMIPCoreDeviceSearcher(0);
  OUTLINED_FUNCTION_24_0();
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_0();
  (*(v11 + 8))(v10 + v2);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v7 | 7);
}

uint64_t sub_266C112F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C113BC()
{
  v1 = type metadata accessor for GEOServicesReverseGeocoder(0);
  OUTLINED_FUNCTION_11_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Location(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  sub_266DA750C();
  OUTLINED_FUNCTION_0();
  (*(v11 + 8))(v0 + v4);
  v12 = *(v7 + 28);
  sub_266DA746C();
  OUTLINED_FUNCTION_0();
  (*(v13 + 8))(v0 + v9 + v12);

  v14 = v0 + v9 + *(v7 + 44);
  v15 = type metadata accessor for Address(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v19 = v10;
    v16 = sub_266DA919C();
    if (!__swift_getEnumTagSinglePayload(v14, 1, v16))
    {
      (*(*(v16 - 8) + 8))(v14, v16);
    }

    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();
    v17 = *(v15 + 32);
    if (!__swift_getEnumTagSinglePayload(v14 + v17, 1, v16))
    {
      (*(*(v16 - 8) + 8))(v14 + v17, v16);
    }

    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();

    v10 = v19;
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v8 | 7);
}

uint64_t sub_266C11664()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C116AC()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C116EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11728(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_266C11770(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_266C117BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C117F4()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C1182C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C11864()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C118A4()
{

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C118D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C11928()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_266C11990()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C119D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C11A08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11A40()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C11A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C11B14()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  sub_266C17E24(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_266C11BC8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_266C11C18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11C50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C11C88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C11CD4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C11D1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11D94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C11DCC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C11E0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11E44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_266C11E8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C12030()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C12068()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C120B0()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C12D8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C12DC4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_266C12DFC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C12F44()
{

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C12F80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C12FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, FriendSessionManager);
}

uint64_t sub_266C13044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, FriendSessionManager);
}

uint64_t sub_266C130D8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C13130(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_266DA74AC();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C131B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DA74AC();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C13268()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_266C132A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C132E0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C1331C()
{
  v1 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 209) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_69_2();

  v14 = *(v3 + 8);
  v14(v0 + v5, v1);
  if (!__swift_getEnumTagSinglePayload(v0 + v11, 1, v1))
  {
    v14(v0 + v11, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v10 | 7);
}

uint64_t sub_266C1349C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 216) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_69_2();

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(v9 + 8))(v0 + v4, v7);
  }

  v13 = (((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

  (*(v9 + 8))(v0 + v13, v7);

  return MEMORY[0x2821FE8E8](v0, v13 + v12, v3 | v10 | 7);
}

uint64_t sub_266C137E8()
{
  v1 = (type metadata accessor for DeviceLocationDescriptionProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3));

  v5 = v1[8];
  sub_266DA750C();
  OUTLINED_FUNCTION_0();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_266C138E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C13920()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_62_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266C1397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C13A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_266C13B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_7_8();
  v7 = type metadata accessor for Snippets.Contact(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C13BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snippets.Contact(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

BOOL sub_266C13FB8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_266C14064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_21_2();
  v7 = type metadata accessor for Friend(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_266C14108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_21_2();
  v9 = type metadata accessor for Friend(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_266C1428C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C142CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266C14314()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_1_51();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266C14348()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

char *sub_266C143B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266C14448()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_266C1454C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C14588()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C146D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_266C14770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C14834()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C149F8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C14A38()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_266C14ABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266D7CDE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266C14AEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C14B0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_266C14BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C14C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_266C14E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_7_8();
  v7 = type metadata accessor for Snippets.Contact(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 28) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C14EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snippets.Contact(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266C15080@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_266C2BA98(a1, a2);
}

uint64_t sub_266C15100()
{
  v1 = type metadata accessor for GEOServicesReverseGeocoder(0);
  OUTLINED_FUNCTION_11_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Location(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  sub_266DA750C();
  OUTLINED_FUNCTION_0();
  (*(v11 + 8))(v0 + v4);
  v12 = *(v7 + 28);
  sub_266DA746C();
  OUTLINED_FUNCTION_0();
  (*(v13 + 8))(v0 + v9 + v12);

  v14 = v0 + v9 + *(v7 + 44);
  v15 = type metadata accessor for Address(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v19 = v10;
    v16 = sub_266DA919C();
    if (!__swift_getEnumTagSinglePayload(v14, 1, v16))
    {
      (*(*(v16 - 8) + 8))(v14, v16);
    }

    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();
    v17 = *(v15 + 32);
    if (!__swift_getEnumTagSinglePayload(v14 + v17, 1, v16))
    {
      (*(*(v16 - 8) + 8))(v14 + v17, v16);
    }

    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_13_12();

    v10 = v19;
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4, v3 | v8 | 7);
}

uint64_t sub_266C153A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_2();
  v4 = sub_266DA750C();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_266C153EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_2();
  v4 = sub_266DA750C();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_266C15434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_266C154C0()
{
  v1 = sub_266DA750C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266C15584()
{
  sub_266D77B84(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C15638()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C15670()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C156AC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_266C15750@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266D9EF10();
  *a1 = result;
  return result;
}

uint64_t sub_266C157EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266D9FFD8();
  *a1 = result;
  return result;
}

id sub_266C15840@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visibility];
  *a2 = result;
  return result;
}

uint64_t sub_266C15888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266DA0EDC();
  *a1 = result;
  return result;
}

id sub_266C15964@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trigger];
  *a2 = result;
  return result;
}

id sub_266C159AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 action];
  *a2 = result;
  return result;
}

uint64_t sub_266C15A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266DA1BB0();
  *a1 = result;
  return result;
}

id sub_266C15B8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceLocality];
  *a2 = result;
  return result;
}

id sub_266C15CA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceSpecificityLevel];
  *a2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_266C16230@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266CB0CF0(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_266C16270(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C16290(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_266C162E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C16300(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_266C16368()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C90C8);
  v1 = __swift_project_value_buffer(v0, qword_2800C90C8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C16430(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))(v16);
  v4 = v16[0];
  if (v17 != 2)
  {
    sub_266C17E24(v16[0], v16[1], v17);
    return 2;
  }

  v5 = LOBYTE(v16[0]);
  if (LOBYTE(v16[0]) != 2 && (sub_266C1A06C(v16[0] & 1) & 1) != 0)
  {
    return 2;
  }

  v6 = *(a2 + 16);
  if (v6(a1, a2))
  {
    v7 = OUTLINED_FUNCTION_2();
    if (v8(v7) == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 2;
  }

  if (v6(a1, a2))
  {
    if (v5 == 2)
    {
      return v9;
    }

    v11 = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2();
    v14 = v13(v12);
    v11 = v14 == 2;
    if (v5 == 2)
    {
      if (v14 == 2)
      {
        return 1;
      }

      return v9;
    }
  }

  v15 = sub_266C1A06C(v4 & 1);
  result = 1;
  if ((v15 & 1) == 0 && !v11)
  {
    return v9;
  }

  return result;
}

uint64_t sub_266C16588@<X0>(void (*x8_0)(char *, uint64_t, uint64_t)@<X8>)
{

  v3 = sub_266DA8B0C();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  if (!sub_266C3A14C())
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  sub_266CB9F54();
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5F1780](0, v4);
  }

  else
  {
  }

  sub_266DA865C();

  v5 = v8;
LABEL_8:
  v6 = sub_266DA8AFC();

  sub_266C1666C(v5, v6, x8_0);
}

uint64_t sub_266C1666C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X8>)
{
  v74 = a2;
  v75 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95F0, &qword_266DAD570);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v67 - v5;
  v73 = sub_266DA847C();
  v6 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v67 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v67 - v13;
  v14 = sub_266DA879C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95F8, &qword_266DAD578);
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9600, &unk_266DAD580);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v67 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v67 - v28;
  v76 = a1;
  v68 = v6;
  if (a1)
  {

    sub_266DA878C();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v67 - v28, 1, 1, v14);
  }

  (*(v15 + 104))(v27, *MEMORY[0x277D5E828], v14);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  v30 = *(v18 + 48);
  sub_266C186BC(v29, v20, &qword_2800C9600, &unk_266DAD580);
  sub_266C186BC(v27, &v20[v30], &qword_2800C9600, &unk_266DAD580);
  if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
  {
    sub_266C1825C(v27, &qword_2800C9600, &unk_266DAD580);
    sub_266C1825C(v29, &qword_2800C9600, &unk_266DAD580);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v20[v30], 1, v14);
    v32 = v75;
    if (EnumTagSinglePayload == 1)
    {
      sub_266C1825C(v20, &qword_2800C9600, &unk_266DAD580);
      v33 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_266C186BC(v20, v24, &qword_2800C9600, &unk_266DAD580);
  if (__swift_getEnumTagSinglePayload(&v20[v30], 1, v14) == 1)
  {
    sub_266C1825C(v27, &qword_2800C9600, &unk_266DAD580);
    sub_266C1825C(v29, &qword_2800C9600, &unk_266DAD580);
    (*(v15 + 8))(v24, v14);
    v32 = v75;
LABEL_9:
    sub_266C1825C(v20, &qword_2800C95F8, &qword_266DAD578);
    v33 = 0;
    goto LABEL_11;
  }

  (*(v15 + 32))(v17, &v20[v30], v14);
  sub_266C182B4(&unk_2800C9608, MEMORY[0x277D5E830], MEMORY[0x277D5E838]);
  v33 = sub_266DAA6EC();
  v34 = *(v15 + 8);
  v34(v17, v14);
  sub_266C1825C(v27, &qword_2800C9600, &unk_266DAD580);
  sub_266C1825C(v29, &qword_2800C9600, &unk_266DAD580);
  v34(v24, v14);
  sub_266C1825C(v20, &qword_2800C9600, &unk_266DAD580);
  v32 = v75;
LABEL_11:
  v35 = v76;
  v36 = v72;
  v37 = v73;
  v38 = v70;
  v39 = type metadata accessor for SetGeoFenceUsoIntentWrapper(0);
  *(v32 + v39[5]) = v33 & 1;
  v40 = v74;
  if (v33)
  {
    if (!v74 || (, v41 = sub_266DA890C(), , !v41))
    {
      v42 = 1;
      v38 = v69;
      goto LABEL_20;
    }

    v38 = v69;
    sub_266DA877C();
  }

  else
  {
    if (!v35)
    {
      v42 = 1;
      goto LABEL_20;
    }

    sub_266DA877C();
  }

  v42 = 0;
LABEL_20:
  v43 = sub_266DA8D0C();
  __swift_storeEnumTagSinglePayload(v38, v42, 1, v43);
  sub_266C17FCC(v38, v32);
  *(v32 + v39[6]) = 1;
  *(v32 + v39[7]) = 1;
  if (!v40)
  {
    goto LABEL_30;
  }

  v44 = sub_266DA891C();

  if (!v44)
  {
    goto LABEL_30;
  }

  if (!sub_266C3A14C())
  {

LABEL_30:
    v45 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v37);
LABEL_31:
    sub_266C1825C(v45, &qword_2800C95F0, &qword_266DAD570);
    *(v32 + v39[8]) = 0;
    if (!v40)
    {
LABEL_44:

      goto LABEL_45;
    }

    goto LABEL_32;
  }

  sub_266CB9F54();
  if ((v44 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5F1780](0, v44);
  }

  else
  {
  }

  sub_266DA865C();

  if (!v77)
  {
    goto LABEL_30;
  }

  v45 = v71;
  sub_266DA846C();

  if (__swift_getEnumTagSinglePayload(v45, 1, v37) == 1)
  {
    goto LABEL_31;
  }

  v46 = v68;
  (*(v68 + 32))(v36, v45, v37);
  v47 = *MEMORY[0x277D5E3B8];
  v48 = v67;
  v75 = *(v46 + 104);
  v75(v67, v47, v37);
  v49 = sub_266C1A0EC(v36, v48);
  v50 = *(v46 + 8);
  v50(v48, v37);
  if (v49)
  {
    v50(v36, v37);
    v51 = v39[8];
    v52 = 1;
  }

  else
  {
    v75(v48, *MEMORY[0x277D5E3C0], v37);
    v66 = sub_266C1A0EC(v36, v48);
    v50(v48, v37);
    v50(v36, v37);
    v51 = v39[8];
    if ((v66 & 1) == 0)
    {
      *(v32 + v51) = 0;
      goto LABEL_32;
    }

    v52 = 2;
  }

  *(v32 + v51) = v52;
LABEL_32:

  v53 = sub_266DA88EC();

  v54 = sub_266DA88FC();

  if (v53)
  {

    v55 = sub_266DA898C();

    if (v55)
    {
      v56 = sub_266DA87AC();

      if (v56)
      {
        sub_266D907E0(v56, &v77);

LABEL_39:

        v59 = v78;
        v60 = v32 + v39[9];
        *v60 = v77;
        *(v60 + 16) = v59;
        return result;
      }
    }
  }

  if (v54)
  {

    v57 = sub_266DA87AC();

    if (v57)
    {
      sub_266D907E0(v57, &v77);

      goto LABEL_39;
    }
  }

  if (!v53)
  {

    goto LABEL_44;
  }

  v61 = sub_266DA899C();
  v63 = v62;

  if (!v63)
  {
LABEL_45:
    v64 = v32 + v39[9];
    *v64 = xmmword_266DAD420;
    v65 = 2;
    goto LABEL_46;
  }

  v64 = v32 + v39[9];
  *v64 = v61;
  *(v64 + 8) = v63;
  v65 = 1;
LABEL_46:
  *(v64 + 16) = v65;
  return result;
}

void sub_266C17094(uint64_t a1)
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ContactNLIntent(0);
  OUTLINED_FUNCTION_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95D8, &unk_266DAD560);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v42 - v16;
  sub_266C56388(v14);
  v18 = sub_266DA867C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    sub_266C1825C(v14, &qword_2800C95D8, &unk_266DAD560);
    v19 = 1;
  }

  else
  {
    PersonIntentNode.toContactQuery()();
    (*(*(v18 - 8) + 8))(v14, v18);
    v19 = 0;
  }

  v20 = sub_266DA8D0C();
  __swift_storeEnumTagSinglePayload(v17, v19, 1, v20);
  sub_266C17FCC(v17, v4);
  if (qword_28156F710 != -1)
  {
LABEL_24:
    swift_once();
  }

  v42[1] = sub_266C182B4(&qword_28156F668, type metadata accessor for ContactNLIntent, &unk_266DB0E78);
  v21 = sub_266DA874C();
  v22 = 0;
  v23 = *(v21 + 16);
  do
  {
    v24 = v22;
    if (v23 == v22)
    {
      break;
    }

    if (v22 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    ++v22;
    sub_266C175B0(*(v21 + v24 + 32));
  }

  while ((v25 & 1) == 0);
  v42[0] = v5;

  v26 = type metadata accessor for SetGeoFenceNLv3IntentWrapper(0);
  *(v4 + v26[5]) = v23 == v24;
  *(v4 + v26[6]) = 1;
  sub_266C1805C(v2, v11);
  *(v4 + v26[7]) = sub_266D5443C(v11);
  sub_266C1805C(v2, v11);
  *(v4 + v26[8]) = sub_266D546D8(v11);
  if (qword_2800C90C0 != -1)
  {
    swift_once();
  }

  v27 = sub_266DA94AC();
  __swift_project_value_buffer(v27, qword_2800C90C8);
  sub_266C1805C(v2, v9);
  v28 = sub_266DA948C();
  v29 = sub_266DAAB0C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v43 = v31;
    *v30 = 136315138;
    v32 = sub_266C565E0();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 45;
    }

    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0xE100000000000000;
    }

    sub_266C180F8(v9);
    v36 = sub_266C22A3C(v34, v35, &v43);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_266C08000, v28, v29, "SetGeoFenceNLv3IntentWrapper personPlaceReference %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D5F2480](v31, -1, -1);
    MEMORY[0x26D5F2480](v30, -1, -1);
  }

  else
  {

    sub_266C180F8(v9);
  }

  if (qword_28156F6F8 != -1)
  {
    swift_once();
  }

  sub_266DA873C();
  v37 = v43;
  v38 = sub_266C565E0();
  sub_266D90D14(v37, *(&v37 + 1), v38, v39, &v43);
  sub_266C180F8(v2);
  v40 = v44;
  v41 = v4 + v26[9];
  *v41 = v43;
  *(v41 + 16) = v40;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C17594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_266C186A4(v4, v5, v6);
}

void sub_266C175B0(uint64_t a1)
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v1 + 16);
  v5 = (v1 + 32);
  do
  {
    if (v4-- == 0)
    {
      break;
    }

    v7 = 0xE600000000000000;
    v8 = 0x657669727261;
    switch(*v5)
    {
      case 1:
        v8 = 0x747261706564;
        break;
      case 2:
        v7 = 0xE800000000000000;
        v8 = 0x6576697272612069;
        break;
      case 3:
        v7 = 0xE800000000000000;
        v8 = 0x7472617065642069;
        break;
      case 4:
        v8 = 0x656D697420656E6FLL;
        v7 = 0xED0000796C6E6F20;
        break;
      case 5:
        v8 = 0xD000000000000016;
        v7 = 0x8000000266DC11B0;
        break;
      default:
        break;
    }

    v9 = 0xE600000000000000;
    v10 = 0x657669727261;
    switch(v3)
    {
      case 1:
        v10 = 0x747261706564;
        break;
      case 2:
        v9 = 0xE800000000000000;
        v10 = 0x6576697272612069;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x7472617065642069;
        break;
      case 4:
        v10 = 0x656D697420656E6FLL;
        v9 = 0xED0000796C6E6F20;
        break;
      case 5:
        v10 = 0xD000000000000016;
        v9 = 0x8000000266DC11B0;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      break;
    }

    v12 = OUTLINED_FUNCTION_1(v8, v1, v10);

    ++v5;
  }

  while ((v12 & 1) == 0);
  OUTLINED_FUNCTION_5();
}

void sub_266C1778C(uint64_t a1)
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v1 + 16);
  v5 = (v1 + 32);
  do
  {
    if (v4-- == 0)
    {
      break;
    }

    v7 = 0xE400000000000000;
    v8 = 1684957542;
    switch(*v5)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 7301239;
        break;
      case 2:
        v7 = 0xE600000000000000;
        v10 = 1634038371;
        goto LABEL_15;
      case 3:
        v7 = 0xE600000000000000;
        v10 = 1701602660;
LABEL_15:
        v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 4:
        v7 = 0xE600000000000000;
        v8 = 0x796669646F6DLL;
        break;
      case 5:
        v7 = 0xE800000000000000;
        v8 = 0x646E696620666D66;
        break;
      case 6:
        v8 = 0xD000000000000010;
        v7 = 0x8000000266DC10D0;
        break;
      case 7:
        v8 = 0x69746F6E20666D66;
        v7 = 0xEF706F7473207966;
        break;
      case 8:
        v7 = 0xE800000000000000;
        v8 = 0x7369206572656877;
        break;
      case 9:
        v8 = 1701079400;
        break;
      case 0xA:
        v7 = 0xE600000000000000;
        v8 = 0x656469686E75;
        break;
      case 0xB:
        v8 = 1684104562;
        break;
      case 0xC:
        OUTLINED_FUNCTION_3();
        v8 = v9 + 5;
        v7 = 0x8000000266DC1110;
        break;
      case 0xD:
        OUTLINED_FUNCTION_3();
        v8 = v11 + 6;
        v7 = 0x8000000266DC1130;
        break;
      case 0xE:
        v8 = 0x636E756F6E6F7270;
        v7 = 0xEE00656D616E2065;
        break;
      case 0xF:
        v8 = 0x6E20746567726F66;
        v7 = 0xEF656D616E6B6369;
        break;
      case 0x10:
        v8 = 0x72696620646E6966;
        v7 = 0xEF7473616C207473;
        break;
      default:
        break;
    }

    v12 = 0xE400000000000000;
    v13 = 1684957542;
    switch(v3)
    {
      case 1:
        v12 = 0xE300000000000000;
        v13 = 7301239;
        break;
      case 2:
        v12 = 0xE600000000000000;
        v15 = 1634038371;
        goto LABEL_33;
      case 3:
        v12 = 0xE600000000000000;
        v15 = 1701602660;
LABEL_33:
        v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 4:
        v12 = 0xE600000000000000;
        v13 = 0x796669646F6DLL;
        break;
      case 5:
        v12 = 0xE800000000000000;
        v13 = 0x646E696620666D66;
        break;
      case 6:
        v13 = 0xD000000000000010;
        v12 = 0x8000000266DC10D0;
        break;
      case 7:
        v13 = 0x69746F6E20666D66;
        v12 = 0xEF706F7473207966;
        break;
      case 8:
        v12 = 0xE800000000000000;
        v13 = 0x7369206572656877;
        break;
      case 9:
        v13 = 1701079400;
        break;
      case 10:
        v12 = 0xE600000000000000;
        v13 = 0x656469686E75;
        break;
      case 11:
        v13 = 1684104562;
        break;
      case 12:
        OUTLINED_FUNCTION_3();
        v13 = v14 + 5;
        v12 = 0x8000000266DC1110;
        break;
      case 13:
        OUTLINED_FUNCTION_3();
        v13 = v16 + 6;
        v12 = 0x8000000266DC1130;
        break;
      case 14:
        v13 = 0x636E756F6E6F7270;
        v12 = 0xEE00656D616E2065;
        break;
      case 15:
        v13 = 0x6E20746567726F66;
        v12 = 0xEF656D616E6B6369;
        break;
      case 16:
        v13 = 0x72696620646E6966;
        v12 = 0xEF7473616C207473;
        break;
      default:
        break;
    }

    if (v8 == v13 && v7 == v12)
    {

      break;
    }

    v18 = OUTLINED_FUNCTION_1(v8, v1, v13);

    ++v5;
  }

  while ((v18 & 1) == 0);
  OUTLINED_FUNCTION_5();
}

void sub_266C17B68(uint64_t a1)
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v1 + 16);
  v5 = (v1 + 32);
  do
  {
    if (v4-- == 0)
    {
      break;
    }

    v7 = 0xE200000000000000;
    v8 = 28265;
    switch(*v5)
    {
      case 1:
        v8 = 28271;
        break;
      case 2:
        v7 = 0xE400000000000000;
        v8 = 1918985582;
        break;
      case 3:
        v8 = 0xD000000000000010;
        v7 = 0x8000000266DC1070;
        break;
      case 4:
        v8 = 0xD000000000000010;
        v7 = 0x8000000266DC1090;
        break;
      default:
        break;
    }

    v9 = 0xE200000000000000;
    v10 = 28265;
    switch(v3)
    {
      case 1:
        v10 = 28271;
        break;
      case 2:
        v9 = 0xE400000000000000;
        v10 = 1918985582;
        break;
      case 3:
        v10 = 0xD000000000000010;
        v9 = 0x8000000266DC1070;
        break;
      case 4:
        v10 = 0xD000000000000010;
        v9 = 0x8000000266DC1090;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      break;
    }

    v12 = OUTLINED_FUNCTION_1(v8, v1, v10);

    ++v5;
  }

  while ((v12 & 1) == 0);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C17CD8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x26D5F13E0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_266C17D2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_266DAAA8C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

void sub_266C17D88(uint64_t a2@<X8>)
{
  sub_266C17DBC();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_266C17DC4()
{
  OUTLINED_FUNCTION_4();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_266C17DFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C17D84();
  *a1 = result;
  return result;
}

uint64_t sub_266C17E24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void *sub_266C17E3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_266C17E4C(uint64_t a1)
{
  sub_266C182B4(&qword_2800C9668, type metadata accessor for SPBeaconRoleId, &unk_266DAD6D4);
  sub_266C182B4(&qword_2800C9670, type metadata accessor for SPBeaconRoleId, &unk_266DAD674);
  return sub_266DAAF7C();
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

uint64_t sub_266C17FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C1805C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactNLIntent(0);
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

uint64_t sub_266C180F8(uint64_t a1)
{
  v2 = type metadata accessor for ContactNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_266C18224(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C1825C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266C182B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_266C18324(uint64_t a1)
{
  if (!qword_2800C9628)
  {
    sub_266DA8D0C();
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800C9628);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_266C18520(uint64_t a1)
{
  sub_266C18324(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_266C186A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_266C186BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_266C18728(uint64_t a1, int a2)
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

uint64_t sub_266C18748(uint64_t result, int a2, int a3)
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

void sub_266C18784(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266DAB17C();
}

uint64_t static SFMLog.logger(category:)(uint64_t a1, uint64_t a2)
{

  OUTLINED_FUNCTION_3_0();

  return sub_266DA949C();
}

uint64_t sub_266C188F8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E6160);
  __swift_project_value_buffer(v0, qword_2800E6160);
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  v1 = qword_28156EF98;
  return sub_266DA94BC();
}

uint64_t sub_266C18A88()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_266DA94AC();
  __swift_allocate_value_buffer(v1, v0);
  __swift_project_value_buffer(v1, v0);
  OUTLINED_FUNCTION_3_0();
  return sub_266DA949C();
}

uint64_t sub_266C18B0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_266DA94AC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_266C18CA4()
{
  OUTLINED_FUNCTION_4_0();
  sub_266C18E7C();
  result = sub_266DAAC0C();
  *v0 = result;
  return result;
}

id sub_266C18D24(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t getEnumTagSinglePayload for SFMLog(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SFMLog(_BYTE *result, int a2, int a3)
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

unint64_t sub_266C18E7C()
{
  result = qword_28156EF90;
  if (!qword_28156EF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156EF90);
  }

  return result;
}

uint64_t GeoFenceTrigger.description.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x73657669727261;
      break;
    case 2:
      result = 0x73747261706564;
      break;
    case 3:
      result = 0x74616964656D6D69;
      break;
    case 5:
      result = 0x7441746F4E7369;
      break;
    default:
      result = sub_266DAB1DC();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_266C18FDC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x4C45434E4143;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x4C45434E4143;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x45554E49544E4F43;
      break;
    case 2:
      v3 = 0x8000000266DC1300;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v5 = 0x5050415F4E45504FLL;
      v3 = 0xEE0045524F54535FLL;
      break;
    case 4:
      v5 = 0x4E49465F4E45504FLL;
      v3 = 0xEB00000000594D44;
      break;
    case 5:
      v5 = 0x5445535F4E45504FLL;
      v3 = 0xED000053474E4954;
      break;
    case 6:
      v5 = 0x554F535F59414C50;
      v3 = 0xEA0000000000444ELL;
      break;
    case 7:
      v5 = 0xD000000000000011;
      v3 = 0x8000000266DC1350;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x45554E49544E4F43;
      break;
    case 2:
      v6 = 0x8000000266DC1300;
      v2 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0x5050415F4E45504FLL;
      v6 = 0xEE0045524F54535FLL;
      break;
    case 4:
      v2 = 0x4E49465F4E45504FLL;
      v6 = 0xEB00000000594D44;
      break;
    case 5:
      v2 = 0x5445535F4E45504FLL;
      v6 = 0xED000053474E4954;
      break;
    case 6:
      v2 = 0x554F535F59414C50;
      v6 = 0xEA0000000000444ELL;
      break;
    case 7:
      OUTLINED_FUNCTION_23();
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_266C19228(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C706F6570;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x73656369766564;
    }

    else
    {
      v4 = 0x736D657469;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656C706F6570;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x73656369766564;
    }

    else
    {
      v2 = 0x736D657469;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_266C1930C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x614E656369766564;
    }

    else
    {
      v3 = 0x72656E776FLL;
    }

    if (v2 == 1)
    {
      v4 = 0xEA0000000000656DLL;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000266DC1020;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x614E656369766564;
    }

    else
    {
      v5 = 0x72656E776FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xD000000000000013;
    v6 = 0x8000000266DC1020;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_266C193F0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x74616964656D6D69;
  v4 = a1;
  v5 = 0x74616964656D6D69;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0x636F4C7265707968;
      v6 = 0xEA00000000006C61;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x6C61636F6CLL;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x65746F6D6572;
      break;
    case 4:
      v5 = 0xD000000000000016;
      v6 = 0x8000000266DC1400;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x636F4C7265707968;
      v2 = 0xEA00000000006C61;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x6C61636F6CLL;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x65746F6D6572;
      break;
    case 4:
      OUTLINED_FUNCTION_23();
      v2 = v7 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15(v5, a2, v3);
  }

  return v9 & 1;
}

uint64_t sub_266C1958C()
{
  v0 = 0xEC0000005F24213ELL;
  OUTLINED_FUNCTION_20();
  v3 = v2 | 0x656D6F6800000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEC0000005F24213ELL;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_24() | 0x6B726F7700000000;
      v7 = 0xEC0000005F24213ELL;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_24() | 0x6F68637300000000;
      v7 = 0xEE005F24213E6C6FLL;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_24() | 0x3E6D796700000000;
      v7 = 0xEB000000005F2421;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_24() | 0x6568746F00000000;
      v7 = 0xED00005F24213E72;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_20();
      v3 = v8 | 0x6B726F7700000000;
      break;
    case 2:
      OUTLINED_FUNCTION_20();
      v3 = v10 | 0x6F68637300000000;
      v0 = 0xEE005F24213E6C6FLL;
      break;
    case 3:
      OUTLINED_FUNCTION_20();
      v3 = v11 | 0x3E6D796700000000;
      v0 = 0xEB000000005F2421;
      break;
    case 4:
      OUTLINED_FUNCTION_20();
      v3 = v9 | 0x6568746F00000000;
      v0 = 0xED00005F24213E72;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15(v6, v1, v3);
  }

  return v13 & 1;
}

uint64_t sub_266C1971C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC000000726F7272;
  v3 = 0x45636972656E6567;
  v4 = a1;
  v5 = 0x45636972656E6567;
  v6 = 0xEC000000726F7272;
  switch(v4)
  {
    case 1:
      v6 = 0x8000000266DC1460;
      v5 = 0xD000000000000010;
      break;
    case 2:
      v6 = 0x8000000266DC1440;
      v5 = 0xD000000000000019;
      break;
    case 3:
      break;
    default:
      v6 = 0x8000000266DC1480;
      v5 = 0xD000000000000011;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x8000000266DC1460;
      v3 = 0xD000000000000010;
      break;
    case 2:
      v2 = 0x8000000266DC1440;
      v3 = 0xD000000000000019;
      break;
    case 3:
      break;
    default:
      v2 = 0x8000000266DC1480;
      v3 = 0xD000000000000011;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_266C1985C(char a1)
{
  OUTLINED_FUNCTION_16();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_266DAB17C();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_266C198D8(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000006E6F6974;
  }

  else
  {
    v1 = 0xE900000000000064;
  }

  OUTLINED_FUNCTION_16();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_266C19974(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 28265;
  switch(a1)
  {
    case 1:
      v4 = 28271;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1918985582;
      break;
    case 3:
      v4 = 0xD000000000000010;
      v5 = "cancel";
      goto LABEL_6;
    case 4:
      v4 = 0xD000000000000010;
      v5 = "walking distance";
LABEL_6:
      v3 = v5 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 28265;
  switch(a2)
  {
    case 1:
      v7 = 28271;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v7 = 1918985582;
      break;
    case 3:
      v7 = 0xD000000000000010;
      v8 = "cancel";
      goto LABEL_12;
    case 4:
      OUTLINED_FUNCTION_23();
LABEL_12:
      v6 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7(v4, a2, v7);
  }

  return v10 & 1;
}

uint64_t sub_266C19AB8(char a1)
{
  if (a1)
  {
    v1 = 0xE200000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_16();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_266C19B34(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_16();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_266C19BB8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x657669727261;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x657669727261;
  switch(v4)
  {
    case 1:
      v5 = 0x747261706564;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x6576697272612069;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x7472617065642069;
      break;
    case 4:
      v5 = 0x656D697420656E6FLL;
      v3 = 0xED0000796C6E6F20;
      break;
    case 5:
      v5 = 0xD000000000000016;
      v3 = 0x8000000266DC11B0;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x747261706564;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x6576697272612069;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x7472617065642069;
      break;
    case 4:
      v2 = 0x656D697420656E6FLL;
      v6 = 0xED0000796C6E6F20;
      break;
    case 5:
      OUTLINED_FUNCTION_23();
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_266C19D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = LocationLabel.rawValue.getter();
  v8 = v7;
  v9 = LocationLabel.rawValue.getter();
  if (v6 == v9 && v8 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7(v6, v10, v9);
  }

  return v12 & 1;
}

uint64_t sub_266C19E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_266C19E84(char a1)
{
  OUTLINED_FUNCTION_16();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_266DAB17C();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_266C19EF0(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "SHARE_MY_LOCATION";
  }

  else
  {
    v4 = "notificationDescription";
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = "notificationDescription";
  }

  else
  {
    v6 = "SHARE_MY_LOCATION";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_266C19F88(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_266C1A054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_0_1();
  }

  else
  {
    return sub_266DAB17C();
  }
}

uint64_t sub_266C1A06C(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_16();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_266C1A17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_266C1E29C(a4, a5, a6);
  sub_266DAA8DC();
  sub_266DAA8DC();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_15(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t static Snippets.PunchoutLocation.device(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v3 = sub_266C1CEB4(result);
    v5 = v4;
    result = sub_266CC7C44();
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = result & 1;
  return result;
}

uint64_t static Snippets.PunchoutLocation.device(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t Snippets.PunchoutLocation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  switch(v3)
  {
    case 1uLL:
      if (qword_2800C93C8 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6480;
      goto LABEL_26;
    case 2uLL:
      if (qword_2800C93C0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6468;
      goto LABEL_26;
    case 3uLL:
      if (qword_2800C93A8 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6420;
      goto LABEL_26;
    case 4uLL:
      if (qword_2800C94A0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6560;
      goto LABEL_26;
    case 5uLL:
      if (qword_2800C93B8 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6450;
      goto LABEL_26;
    case 6uLL:
      if (qword_2800C93A0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6408;
      goto LABEL_26;
    case 7uLL:
      if (qword_2800C93B0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6438;
LABEL_26:
      v10 = __swift_project_value_buffer(v4, v6);
      v11 = *(*(v5 - 8) + 16);

      result = v11(a1, v10, v5);
      break;
    default:
      v7 = *v1;
      v8 = *(v1 + 16) & 1;

      result = sub_266D2CA28(v7, v3, v8, a1);
      break;
  }

  return result;
}

BOOL Snippets.PunchoutLocation.isValid(on:)(uint64_t a1)
{
  v3 = sub_266DA8DEC();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  (*(v5 + 104))(v8, *MEMORY[0x277D61C10], v3);
  v12 = sub_266DA8DDC();
  (*(v5 + 8))(v8, v3);
  if (v12)
  {
    if (v9 == 5)
    {
      sub_266C1CF30(v10, 5);
      sub_266C1CF30(0, 5);
      return 0;
    }

    else
    {
      sub_266C1CF18(v10, v9);
      sub_266C1CF30(v10, v9);
      sub_266C1CF30(0, 5);
      return 1;
    }
  }

  else
  {
    v17[1] = v10;
    v17[2] = v9;
    v18 = v11;
    v14 = sub_266C1A708(a1);
    v16 = v9 == 5 || v9 == 2;
    return (v14 & 1) == 0 || v16;
  }
}

uint64_t sub_266C1A708(uint64_t a1)
{
  v1 = sub_266DA8DEC();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 104);
  v7(v6, *MEMORY[0x277D61BE0], v1);
  v8 = sub_266DA8DDC();
  v9 = *(v3 + 8);
  v9(v6, v1);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v7(v6, *MEMORY[0x277D61C20], v1);
    v10 = sub_266DA8DDC();
    v9(v6, v1);
  }

  return v10 & 1;
}

uint64_t static Snippets.PunchoutLocation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v3)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_26;
      }

      v8 = 1;
      v9 = OUTLINED_FUNCTION_5_0(*a1, 1);
      sub_266C1CF30(v9, 1);
      return v8 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 2);
      v11 = 2;
      goto LABEL_25;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 3);
      v11 = 3;
      goto LABEL_25;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 4);
      v11 = 4;
      goto LABEL_25;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 5);
      v11 = 5;
      goto LABEL_25;
    case 6:
      if (v6 != 6)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 6);
      v11 = 6;
      goto LABEL_25;
    case 7:
      if (v6 != 7)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 7);
      v11 = 7;
LABEL_25:
      sub_266C1CF30(v10, v11);
      v8 = 1;
      return v8 & 1;
    default:
      if ((v6 - 1) < 7)
      {
LABEL_26:
        v23 = OUTLINED_FUNCTION_8();
        sub_266C1CF18(v23, v24);
        v25 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF18(v25, v26);
        v27 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF30(v27, v28);
        goto LABEL_27;
      }

      if (v3)
      {
        if (v6)
        {
          v12 = *a1;
          if (v2 == v5 && v3 == v6)
          {
            sub_266C1CF18(v12, v3);
            v39 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF18(v39, v40);
            v41 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF30(v41, v42);
            sub_266C1CF30(v2, v3);
          }

          else
          {
            v14 = sub_266DAB17C();
            v15 = OUTLINED_FUNCTION_8();
            sub_266C1CF18(v15, v16);
            v17 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF18(v17, v18);
            v19 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF30(v19, v20);
            v21 = OUTLINED_FUNCTION_8();
            sub_266C1CF30(v21, v22);
            v8 = 0;
            if ((v14 & 1) == 0)
            {
              return v8 & 1;
            }
          }

          goto LABEL_34;
        }

        sub_266C1CF18(*a2, 0);
        sub_266C1CF18(v5, 0);
        v35 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF18(v35, v36);
        v37 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF30(v37, v38);
        v29 = v5;
        v30 = 0;
LABEL_28:
        sub_266C1CF30(v29, v30);
        v8 = 0;
        return v8 & 1;
      }

      v32 = OUTLINED_FUNCTION_8();
      sub_266C1CF18(v32, v33);
      sub_266C1CF18(v2, 0);
      v34 = OUTLINED_FUNCTION_5_0(v2, 0);
      sub_266C1CF30(v34, v6);
      if (v6)
      {
LABEL_27:
        v29 = v5;
        v30 = v6;
        goto LABEL_28;
      }

LABEL_34:
      v8 = v7 ^ v4 ^ 1;
      return v8 & 1;
  }
}

uint64_t sub_266C1AB28@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266C1AB54(uint64_t a1)
{
  v2 = sub_266C1D22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1AB90(uint64_t a1)
{
  v2 = sub_266C1D22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1ABCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7453707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000266DC1500 == a2;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73646E65697266 && a2 == 0xE700000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x655364756F6C4369 && a2 == 0xEE0073676E697474;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
              if (v11 || (sub_266DAB17C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x626154656DLL && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_266DAB17C();

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

uint64_t sub_266C1AE58(unsigned __int8 a1)
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](a1);
  return sub_266DAB2DC();
}

uint64_t sub_266C1AEA0(char a1)
{
  result = 0x65726F7453707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x656369766564;
      break;
    case 3:
      v3 = 0x656369766564;
      goto LABEL_6;
    case 4:
      v3 = 0x646E65697266;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 5:
      result = 0x655364756F6C4369;
      break;
    case 6:
      result = 0x736D657469;
      break;
    case 7:
      result = 0x626154656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C1AF84(uint64_t a1)
{
  v2 = sub_266C1D1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1AFC0(uint64_t a1)
{
  v2 = sub_266C1D1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B004(uint64_t a1)
{
  v2 = *v1;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v2);
  return sub_266DAB2DC();
}

uint64_t sub_266C1B048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574497369 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266C1B11C(char a1)
{
  if (a1)
  {
    return 0x6D6574497369;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_266C1B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C1ABCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C1B1A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C1AE50();
  *a1 = result;
  return result;
}

uint64_t sub_266C1B1CC(uint64_t a1)
{
  v2 = sub_266C1CF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B208(uint64_t a1)
{
  v2 = sub_266C1CF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C1B048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C1B274@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C1B114();
  *a1 = result;
  return result;
}

uint64_t sub_266C1B29C(uint64_t a1)
{
  v2 = sub_266C1D184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B2D8(uint64_t a1)
{
  v2 = sub_266C1D184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B314(uint64_t a1)
{
  v2 = sub_266C1D130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B350(uint64_t a1)
{
  v2 = sub_266C1D130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B38C(uint64_t a1)
{
  v2 = sub_266C1D0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B3C8(uint64_t a1)
{
  v2 = sub_266C1D0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B404(uint64_t a1)
{
  v2 = sub_266C1D088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B440(uint64_t a1)
{
  v2 = sub_266C1D088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B47C(uint64_t a1)
{
  v2 = sub_266C1D034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B4B8(uint64_t a1)
{
  v2 = sub_266C1D034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B4F4(uint64_t a1)
{
  v2 = sub_266C1CFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B530(uint64_t a1)
{
  v2 = sub_266C1CFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippets.PunchoutLocation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_27();
  a26 = v30;
  a27 = v31;
  v107 = v28;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9830, &qword_266DAD830);
  OUTLINED_FUNCTION_0_2();
  v103 = v35;
  v104 = v34;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v102 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9838, &qword_266DAD838);
  OUTLINED_FUNCTION_0_2();
  v100 = v39;
  v101 = v38;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10();
  v99 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9840, &qword_266DAD840);
  OUTLINED_FUNCTION_0_2();
  v97 = v43;
  v98 = v42;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10();
  v96 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9848, &qword_266DAD848);
  OUTLINED_FUNCTION_0_2();
  v94 = v47;
  v95 = v46;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10();
  v92 = v49;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9850, &qword_266DAD850);
  OUTLINED_FUNCTION_0_2();
  v89 = v50;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10();
  v88 = v52;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9858, &qword_266DAD858);
  OUTLINED_FUNCTION_0_2();
  v86 = v53;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10();
  v90 = v55;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9860, &qword_266DAD860);
  OUTLINED_FUNCTION_0_2();
  v87 = v56;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v57);
  v59 = v83 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9868, &qword_266DAD868);
  OUTLINED_FUNCTION_0_2();
  v85 = v61;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9870, &qword_266DAD870);
  OUTLINED_FUNCTION_0_2();
  v105 = v63;
  v106 = v64;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_10();
  v66 = v27[1];
  v83[1] = *v27;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_266C1CF8C();
  sub_266DAB36C();
  switch(v66)
  {
    case 1:
      v108 = 0;
      sub_266C1D22C();
      OUTLINED_FUNCTION_21(&_s16PunchoutLocationO18AppStoreCodingKeysON, &v108);
      OUTLINED_FUNCTION_9();
      v67(v29, v60);
      v68 = OUTLINED_FUNCTION_18_0();
      v70 = v59;
      goto LABEL_15;
    case 2:
      v109 = 1;
      sub_266C1D1D8();
      OUTLINED_FUNCTION_3_1(&_s16PunchoutLocationO27BluetoothSettingsCodingKeysON, &v109);
      OUTLINED_FUNCTION_9();
      v82 = v59;
      v72 = v84;
      goto LABEL_13;
    case 3:
      a13 = 3;
      sub_266C1D130();
      v74 = v88;
      OUTLINED_FUNCTION_3_1(&_s16PunchoutLocationO17DevicesCodingKeysON, &a13);
      (*(v89 + 8))(v74, v91);
      goto LABEL_14;
    case 4:
      a14 = 4;
      sub_266C1D0DC();
      v71 = v92;
      OUTLINED_FUNCTION_3_1(&_s16PunchoutLocationO17FriendsCodingKeysON, &a14);
      v73 = v94;
      v72 = v95;
      goto LABEL_12;
    case 5:
      a15 = 5;
      sub_266C1D088();
      v71 = v96;
      OUTLINED_FUNCTION_3_1(&_s16PunchoutLocationO24ICloudSettingsCodingKeysON, &a15);
      v73 = v97;
      v72 = v98;
      goto LABEL_12;
    case 6:
      a16 = 6;
      sub_266C1D034();
      v71 = v99;
      OUTLINED_FUNCTION_3_1(&_s16PunchoutLocationO15ItemsCodingKeysON, &a16);
      v73 = v100;
      v72 = v101;
      goto LABEL_12;
    case 7:
      a17 = 7;
      sub_266C1CFE0();
      v71 = v102;
      OUTLINED_FUNCTION_3_1(&_s16PunchoutLocationO15MeTabCodingKeysON, &a17);
      v73 = v103;
      v72 = v104;
LABEL_12:
      v81 = *(v73 + 8);
      v82 = v71;
LABEL_13:
      v81(v82, v72);
LABEL_14:
      v68 = OUTLINED_FUNCTION_18_0();
      v70 = v60;
LABEL_15:
      v69(v68, v70);
      break;
    default:
      v75 = v86;
      a12 = 2;
      sub_266C1D184();
      v76 = v90;
      OUTLINED_FUNCTION_21(&_s16PunchoutLocationO16DeviceCodingKeysON, &a12);
      v77 = v93;
      v78 = v107;
      sub_266DAB09C();
      if (!v78)
      {
        sub_266DAB0FC();
      }

      (*(v75 + 8))(v76, v77);
      v79 = OUTLINED_FUNCTION_18_0();
      v80(v79, v59);
      break;
  }

  OUTLINED_FUNCTION_26();
}

void Snippets.PunchoutLocation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_27();
  a26 = v29;
  a27 = v30;
  v148 = v27;
  v32 = v31;
  v146 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98C0, &qword_266DAD878);
  OUTLINED_FUNCTION_0_2();
  v137 = v35;
  v138 = v34;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v145 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98C8, &qword_266DAD880);
  OUTLINED_FUNCTION_0_2();
  v135 = v39;
  v136 = v38;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10();
  v144 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98D0, &qword_266DAD888);
  OUTLINED_FUNCTION_0_2();
  v133 = v43;
  v134 = v42;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10();
  v140 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98D8, &qword_266DAD890);
  OUTLINED_FUNCTION_0_2();
  v130 = v47;
  v131 = v46;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10();
  v143 = v49;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98E0, &qword_266DAD898);
  OUTLINED_FUNCTION_0_2();
  v128 = v50;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10();
  v139 = v52;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98E8, &qword_266DAD8A0);
  OUTLINED_FUNCTION_0_2();
  v142 = v53;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10();
  v141 = v55;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98F0, &qword_266DAD8A8);
  OUTLINED_FUNCTION_0_2();
  v126 = v56;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v57);
  v59 = &v119 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98F8, &qword_266DAD8B0);
  OUTLINED_FUNCTION_0_2();
  v125 = v61;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_17();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9900, &qword_266DAD8B8);
  OUTLINED_FUNCTION_0_2();
  v65 = v64;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v66);
  v68 = &v119 - v67;
  v69 = v32[3];
  v147 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v69);
  sub_266C1CF8C();
  v70 = v148;
  sub_266DAB34C();
  if (v70)
  {
    goto LABEL_8;
  }

  v121 = v28;
  v120 = v60;
  v122 = v59;
  v71 = v143;
  v72 = v144;
  v73 = v145;
  v123 = v65;
  v74 = v146;
  v148 = v68;
  v75 = sub_266DAB06C();
  sub_266C1CE7C(v75, 0);
  v124 = v63;
  if (v78 == v79 >> 1)
  {
LABEL_7:
    v91 = sub_266DAAE4C();
    swift_allocError();
    v93 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0);
    *v93 = &type metadata for Snippets.PunchoutLocation;
    v94 = v124;
    v95 = v148;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v91 - 8) + 104))(v93, *MEMORY[0x277D84160], v91);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9();
    v96(v95, v94);
LABEL_8:
    v97 = v147;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v97);
    OUTLINED_FUNCTION_26();
    return;
  }

  v119 = 0;
  if (v78 < (v79 >> 1))
  {
    v80 = *(v77 + v78);
    sub_266C1E220(v78 + 1, v79 >> 1, v76, v77, v78, v79);
    v82 = v81;
    v84 = v83;
    swift_unknownObjectRelease();
    if (v82 == v84 >> 1)
    {
      v85 = v74;
      switch(v80)
      {
        case 1:
          v150 = 1;
          sub_266C1D1D8();
          v74 = v122;
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO27BluetoothSettingsCodingKeysON, &v150);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9();
          v105(v74, v127);
          v106 = OUTLINED_FUNCTION_1_1();
          v107(v106);
          OUTLINED_FUNCTION_14();
          v90 = 2;
          goto LABEL_17;
        case 2:
          a12 = 2;
          sub_266C1D184();
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO16DeviceCodingKeysON, &a12);
          v110 = v74;
          v74 = sub_266DAAFCC();
          v90 = v113;
          v114 = sub_266DAB02C();
          swift_unknownObjectRelease();
          v115 = OUTLINED_FUNCTION_22();
          v116(v115);
          v117 = OUTLINED_FUNCTION_12();
          v118(v117);
          v89 = v114 & 1;
          v97 = v147;
          v85 = v110;
          goto LABEL_18;
        case 3:
          a13 = 3;
          sub_266C1D130();
          v74 = v139;
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO17DevicesCodingKeysON, &a13);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9();
          v100(v74, v129);
          v101 = OUTLINED_FUNCTION_1_1();
          v102(v101);
          OUTLINED_FUNCTION_14();
          v90 = 3;
          goto LABEL_17;
        case 4:
          a14 = 4;
          sub_266C1D0DC();
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO17FriendsCodingKeysON, &a14);
          swift_unknownObjectRelease();
          (*(v130 + 8))(v71, v131);
          v98 = OUTLINED_FUNCTION_1_1();
          v99(v98);
          OUTLINED_FUNCTION_14();
          v90 = 4;
          goto LABEL_17;
        case 5:
          a15 = 5;
          sub_266C1D088();
          v74 = v140;
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO24ICloudSettingsCodingKeysON, &a15);
          swift_unknownObjectRelease();
          (*(v133 + 8))(v74, v134);
          v108 = OUTLINED_FUNCTION_1_1();
          v109(v108);
          OUTLINED_FUNCTION_14();
          v90 = 5;
          goto LABEL_17;
        case 6:
          a16 = 6;
          sub_266C1D034();
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO15ItemsCodingKeysON, &a16);
          swift_unknownObjectRelease();
          (*(v135 + 8))(v72, v136);
          v111 = OUTLINED_FUNCTION_1_1();
          v112(v111);
          OUTLINED_FUNCTION_14();
          v90 = 6;
          goto LABEL_17;
        case 7:
          a17 = 7;
          sub_266C1CFE0();
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO15MeTabCodingKeysON, &a17);
          swift_unknownObjectRelease();
          (*(v137 + 8))(v73, v138);
          v103 = OUTLINED_FUNCTION_1_1();
          v104(v103);
          OUTLINED_FUNCTION_14();
          v90 = 7;
          goto LABEL_17;
        default:
          v149 = 0;
          sub_266C1D22C();
          v74 = v121;
          OUTLINED_FUNCTION_4_1(&_s16PunchoutLocationO18AppStoreCodingKeysON, &v149);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9();
          v86(v74, v120);
          v87 = OUTLINED_FUNCTION_1_1();
          v88(v87);
          OUTLINED_FUNCTION_14();
          v90 = 1;
LABEL_17:
          v97 = v147;
LABEL_18:
          *v85 = v74;
          *(v85 + 8) = v90;
          *(v85 + 16) = v89;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static Snippets.punchoutButton(title:to:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = *(a2 + 16);
  type metadata accessor for Snippets(0);
  swift_storeEnumTagMultiPayload();

  return sub_266C1CF18(v3, v4);
}

__n128 Snippets.PunchoutButton.init(title:location:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t Snippets.PunchoutButton.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 24);
  return sub_266C1CF18(v2, v3);
}

uint64_t Snippets.PunchoutButton.location.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_266C1CF30(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t static Snippets.PunchoutButton.== infix(_:_:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (sub_266C18FDC(*a1, *a2))
  {
    v12[0] = v2;
    v12[1] = v3;
    v13 = v4;
    v10[0] = v5;
    v10[1] = v6;
    v11 = v7;
    sub_266C1CF18(v2, v3);
    sub_266C1CF18(v5, v6);
    v8 = static Snippets.PunchoutLocation.== infix(_:_:)(v12, v10);
    sub_266C1CF30(v5, v6);
    sub_266C1CF30(v2, v3);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_266C1C954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266C1CA18(char a1)
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](a1 & 1);
  return sub_266DAB2DC();
}

uint64_t sub_266C1CA60(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_266C1CA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C1C954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C1CAC4(uint64_t a1)
{
  v2 = sub_266C1D280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1CB00(uint64_t a1)
{
  v2 = sub_266C1D280();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippets.PunchoutButton.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v17 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9910, &qword_266DAD8C8);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v12;
  v13 = v1[24];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_266C1D280();
  sub_266DAB36C();
  LOBYTE(v18) = v11;
  sub_266C1D2D4();
  OUTLINED_FUNCTION_25();
  v14 = v17;
  sub_266DAB11C();
  if (!v14)
  {
    v18 = v16;
    v19 = v15;
    v20 = v13;
    sub_266C1CF18(v16, v15);
    sub_266C1D328();
    OUTLINED_FUNCTION_25();
    sub_266DAB11C();
    sub_266C1CF30(v18, v19);
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_26();
}

void Snippets.PunchoutButton.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9930, &qword_266DAD8D0);
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_266C1D280();
  sub_266DAB34C();
  if (!v1)
  {
    sub_266C1D37C();
    OUTLINED_FUNCTION_19(&type metadata for LocalizedLabel);
    sub_266C1D3D0();
    OUTLINED_FUNCTION_19(&type metadata for Snippets.PunchoutLocation);
    (*(v9 + 8))(v2, v7);
    *v6 = v11;
    *(v6 + 8) = v11;
    *(v6 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  OUTLINED_FUNCTION_26();
}

void sub_266C1CE7C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_13();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_266C1CEB4(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266C1CF18(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 7)
  {
  }

  return result;
}

uint64_t sub_266C1CF30(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 7)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266C1CF8C()
{
  result = qword_2800C9878;
  if (!qword_2800C9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9878);
  }

  return result;
}

unint64_t sub_266C1CFE0()
{
  result = qword_2800C9880;
  if (!qword_2800C9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9880);
  }

  return result;
}

unint64_t sub_266C1D034()
{
  result = qword_2800C9888;
  if (!qword_2800C9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9888);
  }

  return result;
}

unint64_t sub_266C1D088()
{
  result = qword_2800C9890;
  if (!qword_2800C9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9890);
  }

  return result;
}

unint64_t sub_266C1D0DC()
{
  result = qword_2800C9898;
  if (!qword_2800C9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9898);
  }

  return result;
}

unint64_t sub_266C1D130()
{
  result = qword_2800C98A0;
  if (!qword_2800C98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98A0);
  }

  return result;
}

unint64_t sub_266C1D184()
{
  result = qword_2800C98A8;
  if (!qword_2800C98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98A8);
  }

  return result;
}

unint64_t sub_266C1D1D8()
{
  result = qword_2800C98B0;
  if (!qword_2800C98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98B0);
  }

  return result;
}

unint64_t sub_266C1D22C()
{
  result = qword_2800C98B8;
  if (!qword_2800C98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98B8);
  }

  return result;
}

unint64_t sub_266C1D280()
{
  result = qword_2800C9918;
  if (!qword_2800C9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9918);
  }

  return result;
}

unint64_t sub_266C1D2D4()
{
  result = qword_2800C9920;
  if (!qword_2800C9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9920);
  }

  return result;
}

unint64_t sub_266C1D328()
{
  result = qword_2800C9928;
  if (!qword_2800C9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9928);
  }

  return result;
}

unint64_t sub_266C1D37C()
{
  result = qword_2800C9938;
  if (!qword_2800C9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9938);
  }

  return result;
}

unint64_t sub_266C1D3D0()
{
  result = qword_2800C9940;
  if (!qword_2800C9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9940);
  }

  return result;
}

unint64_t sub_266C1D428()
{
  result = qword_2800C9948;
  if (!qword_2800C9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9948);
  }

  return result;
}

unint64_t sub_266C1D480()
{
  result = qword_2800C9950;
  if (!qword_2800C9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9950);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy8SnippetsO16PunchoutLocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_266C1D50C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 17))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 6;
  if (v5 >= 8)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C1D56C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_266C1D5CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_266C1D620(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF7 && *(a1 + 25))
    {
      v2 = *a1 + 2147483639;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 7;
      if (v4 < 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C1D680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483640;
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizedLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16PunchoutLocationO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LocationLabel.LocationReference(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_266C1D90C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C1DA3C()
{
  result = qword_2800C9958;
  if (!qword_2800C9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9958);
  }

  return result;
}

unint64_t sub_266C1DA94()
{
  result = qword_2800C9960;
  if (!qword_2800C9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9960);
  }

  return result;
}

unint64_t sub_266C1DAEC()
{
  result = qword_2800C9968;
  if (!qword_2800C9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9968);
  }

  return result;
}

unint64_t sub_266C1DB44()
{
  result = qword_2800C9970;
  if (!qword_2800C9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9970);
  }

  return result;
}

unint64_t sub_266C1DB9C()
{
  result = qword_2800C9978;
  if (!qword_2800C9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9978);
  }

  return result;
}

unint64_t sub_266C1DBF4()
{
  result = qword_2800C9980;
  if (!qword_2800C9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9980);
  }

  return result;
}

unint64_t sub_266C1DC4C()
{
  result = qword_2800C9988;
  if (!qword_2800C9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9988);
  }

  return result;
}

unint64_t sub_266C1DCA4()
{
  result = qword_2800C9990;
  if (!qword_2800C9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9990);
  }

  return result;
}

unint64_t sub_266C1DCFC()
{
  result = qword_2800C9998;
  if (!qword_2800C9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9998);
  }

  return result;
}

unint64_t sub_266C1DD54()
{
  result = qword_2800C99A0;
  if (!qword_2800C99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99A0);
  }

  return result;
}

unint64_t sub_266C1DDAC()
{
  result = qword_2800C99A8;
  if (!qword_2800C99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99A8);
  }

  return result;
}

unint64_t sub_266C1DE04()
{
  result = qword_2800C99B0;
  if (!qword_2800C99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99B0);
  }

  return result;
}

unint64_t sub_266C1DE5C()
{
  result = qword_2800C99B8;
  if (!qword_2800C99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99B8);
  }

  return result;
}

unint64_t sub_266C1DEB4()
{
  result = qword_2800C99C0;
  if (!qword_2800C99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99C0);
  }

  return result;
}

unint64_t sub_266C1DF0C()
{
  result = qword_2800C99C8;
  if (!qword_2800C99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99C8);
  }

  return result;
}

unint64_t sub_266C1DF64()
{
  result = qword_2800C99D0;
  if (!qword_2800C99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99D0);
  }

  return result;
}

unint64_t sub_266C1DFBC()
{
  result = qword_2800C99D8;
  if (!qword_2800C99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99D8);
  }

  return result;
}

unint64_t sub_266C1E014()
{
  result = qword_2800C99E0;
  if (!qword_2800C99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99E0);
  }

  return result;
}

unint64_t sub_266C1E06C()
{
  result = qword_2800C99E8;
  if (!qword_2800C99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99E8);
  }

  return result;
}

unint64_t sub_266C1E0C4()
{
  result = qword_2800C99F0;
  if (!qword_2800C99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99F0);
  }

  return result;
}

unint64_t sub_266C1E11C()
{
  result = qword_2800C99F8;
  if (!qword_2800C99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99F8);
  }

  return result;
}

unint64_t sub_266C1E174()
{
  result = qword_2800C9A00;
  if (!qword_2800C9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9A00);
  }

  return result;
}

unint64_t sub_266C1E1CC()
{
  result = qword_2800C9A08;
  if (!qword_2800C9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9A08);
  }

  return result;
}

uint64_t sub_266C1E220(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266C1E29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2)
{

  return sub_266DAB08C();
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2)
{

  return sub_266DAAFAC();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266DAB17C();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266DAB17C();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1)
{

  return sub_266DAB05C();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2)
{

  return sub_266DAB08C();
}

uint64_t type metadata accessor for FindFriendIntentWrapper(uint64_t a1)
{
  result = qword_2800C9A20;
  if (!qword_2800C9A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266C1E5C0(uint64_t a1)
{
  sub_266C18324(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_266C1E62C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9A30);
  v1 = __swift_project_value_buffer(v0, qword_2800C9A30);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_266C1E6F4(void *a1, uint64_t a2)
{
  sub_266C233D0(a1, v2 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_deviceState);
  OUTLINED_FUNCTION_4_2();
  sub_266C23434(a2, v2 + v5, v6);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SetGeoFenceIntentHandler(0);
  v7 = objc_msgSendSuper2(&v10, sel_init);
  OUTLINED_FUNCTION_1_2();
  sub_266C23494(a2, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void sub_266C1E788(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800C9A30);
  v8 = a1;
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = v6;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    [v8 friend];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A50, &qword_266DAE3C0);
    v13 = sub_266DAA72C();
    v15 = sub_266C22A3C(v13, v14, &v34);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_266C08000, v9, v10, "Starting friend resolve on %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D5F2480](v12, -1, -1);
    v16 = v11;
    v6 = v33;
    MEMORY[0x26D5F2480](v16, -1, -1);
  }

  v17 = [v8 friend];
  if (!v17)
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAAEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266C08000, v26, v27, "friend parameter on intent is nil", v28, 2u);
      MEMORY[0x26D5F2480](v28, -1, -1);
    }

    type metadata accessor for SetGeoFenceFriendResolutionResult();
    v29 = [swift_getObjCClassFromMetadata() unsupported];
    (a3)[2](a3, v29);

    goto LABEL_17;
  }

  v18 = v17;
  sub_266C22F60(v18, &selRef_identifier);
  if (v19)
  {

    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266C08000, v20, v21, "Friend parameter is fully resolved to a contact.", v22, 2u);
      MEMORY[0x26D5F2480](v22, -1, -1);
    }

    v23 = [v8 notifyMe];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 BOOLValue];
    }

    else
    {
      v25 = 0;
    }

    v29 = sub_266C224D0(v18, v25);
    (a3)[2](a3, v29);

LABEL_17:
    goto LABEL_18;
  }

  v30 = swift_allocObject();
  v30[2] = sub_266C23638;
  v30[3] = v6;
  v30[4] = a2;
  v30[5] = v8;
  v31 = v8;

  v32 = a2;
  sub_266C34174();

LABEL_18:
  _Block_release(a3);
}

void sub_266C1EBA8(void *a1, void (*a2)(void), uint64_t a3)
{
  if (qword_2800C9148 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800C9148);
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800C9A30);
  v8 = a1;
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = a3;
    v11 = OUTLINED_FUNCTION_14_0();
    v12 = a2;
    v13 = OUTLINED_FUNCTION_13_0();
    v34 = v13;
    *v11 = 136315138;
    [v8 friend];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A50, &qword_266DAE3C0);
    v14 = sub_266DAA72C();
    v16 = sub_266C22A3C(v14, v15, &v34);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_266C08000, v9, v10, "Starting friend resolve on %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    a2 = v12;
    OUTLINED_FUNCTION_6_1();
    a3 = v33;
    OUTLINED_FUNCTION_6_1();
  }

  v17 = [v8 friend];
  if (v17)
  {
    v18 = v17;
    sub_266C22F60(v18, &selRef_identifier);
    if (!v19)
    {
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = a3;
      v30[4] = v3;
      v30[5] = v8;
      v31 = v8;

      v32 = v3;
      sub_266C34174();

      return;
    }

    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v21))
    {
      v22 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v22);
      _os_log_impl(&dword_266C08000, v20, v21, "Friend parameter is fully resolved to a contact.", &off_279C03000, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    v23 = [v8 notifyMe];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 BOOLValue];
    }

    else
    {
      v25 = 0;
    }

    v29 = sub_266C224D0(v18, v25);
    a2();
  }

  else
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v27))
    {
      v28 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v28);
      _os_log_impl(&dword_266C08000, v26, v27, "friend parameter on intent is nil", &off_279C03000, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceFriendResolutionResult();
    v29 = [swift_getObjCClassFromMetadata() unsupported];
    a2();
  }
}

void sub_266C1EF00(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2;
  switch(a2)
  {
    case 1:
      type metadata accessor for SetGeoFenceFriendResolutionResult();
      v17 = sub_266DA5B8C(a1);
      goto LABEL_14;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266DAE3B0;
      *(inited + 32) = a1;
      type metadata accessor for SetGeoFenceFriendResolutionResult();
      v14 = a1;
      v15 = sub_266C6A318(inited);
      swift_setDeallocating();
      sub_266C6F074();
      v16 = sub_266C6AA38(2, v15);
      (a3)();

      return;
    case 4:
      type metadata accessor for SetGeoFenceFriendResolutionResult();
      v18 = sub_266C6A318(a1);
      v19 = 2;
      goto LABEL_13;
    case 5:
      if (!a1)
      {
        type metadata accessor for SetGeoFenceFriendResolutionResult();
        v18 = sub_266C6A318(MEMORY[0x277D84F90]);
        v19 = 1;
        goto LABEL_13;
      }

      if (a1 == 1)
      {
        type metadata accessor for SetGeoFenceFriendResolutionResult();
        v18 = sub_266C6A318(MEMORY[0x277D84F90]);
        v19 = 3;
LABEL_13:
        v17 = sub_266C6AA38(v19, v18);
        goto LABEL_14;
      }

      if (qword_2800C9148 != -1)
      {
        swift_once();
      }

      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800C9A30);
      v21 = sub_266DA948C();
      v22 = sub_266DAAAFC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266C08000, v21, v22, "Friend resolver returned an unexpected error", v23, 2u);
        MEMORY[0x26D5F2480](v23, -1, -1);
      }

      type metadata accessor for SetGeoFenceFriendResolutionResult();
      v17 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_14:
      v24 = v17;
LABEL_15:
      a3(v17);

      return;
    default:
      sub_266C235B0(a1, a2);
      v10 = [a6 notifyMe];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 BOOLValue];
      }

      else
      {
        v12 = 0;
      }

      v24 = sub_266C224D0(a1, v12);
      sub_266C235EC(a1, v7);
      v17 = v24;
      goto LABEL_15;
  }
}

void sub_266C1F218(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v128 = a2;
  v5 = sub_266DA947C();
  v142 = *(v5 - 8);
  v143 = v5;
  MEMORY[0x28223BE20](v5);
  v141 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A58, &qword_266DAE3C8);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v133 = v119 - v7;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A60, &unk_266DAE3D0);
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v134 = v119 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  MEMORY[0x28223BE20](v9 - 8);
  v129 = v119 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A68, &qword_266DAE3E0);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = v119 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A70, &qword_266DAE3E8);
  MEMORY[0x28223BE20](v139);
  v140 = (v119 - v12);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
  MEMORY[0x28223BE20](FriendSessionManager);
  v14 = (v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  v15[2] = a3;
  _Block_copy(a3);
  if (qword_2800C9148 != -1)
  {
    swift_once();
  }

  v16 = sub_266DA94AC();
  v17 = __swift_project_value_buffer(v16, qword_2800C9A30);
  v18 = a1;
  v19 = sub_266DA948C();
  v20 = sub_266DAAB0C();

  v21 = os_log_type_enabled(v19, v20);
  v22 = &off_279C03000;
  v144 = v14;
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v152 = v24;
    *v23 = 136315138;
    v148[0] = [v18 location];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AD0, &unk_266DB32B0);
    v25 = sub_266DAA72C();
    v27 = v18;
    v28 = a3;
    v29 = v15;
    v30 = sub_266C22A3C(v25, v26, &v152);

    *(v23 + 4) = v30;
    v15 = v29;
    a3 = v28;
    v18 = v27;
    _os_log_impl(&dword_266C08000, v19, v20, "Starting location resolve on %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v31 = v24;
    v22 = &off_279C03000;
    MEMORY[0x26D5F2480](v31, -1, -1);
    MEMORY[0x26D5F2480](v23, -1, -1);
  }

  v32 = [v18 v22[404]];
  if (!v32)
  {
    v39 = sub_266DA948C();
    v40 = sub_266DAAAFC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_266C08000, v39, v40, "Cannot resolve location from a nil location.", v41, 2u);
      MEMORY[0x26D5F2480](v41, -1, -1);
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v42 = [swift_getObjCClassFromMetadata() unsupported];
    (a3)[2](a3, v42);

    goto LABEL_26;
  }

  v33 = v32;
  sub_266C22F60(v33, &selRef_identifier);
  if (v34)
  {

    v35 = sub_266DA948C();
    v36 = sub_266DAAB0C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266C08000, v35, v36, "Location is fully resolved.", v37, 2u);
      MEMORY[0x26D5F2480](v37, -1, -1);
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v38 = sub_266DA4F44(v33);
LABEL_25:
    v42 = v38;
    (a3)[2](a3, v38);

LABEL_26:
    goto LABEL_27;
  }

  v43 = [v18 friend];
  if (!v43 || (v44 = sub_266C22F60(v43, &selRef_identifier), !v45))
  {
LABEL_22:
    v67 = sub_266DA948C();
    v68 = sub_266DAAAFC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_266C08000, v67, v68, "The friend parameter was not fully resolved before resolving location.", v69, 2u);
      MEMORY[0x26D5F2480](v69, -1, -1);
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v38 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_25;
  }

  v46 = v44;
  v47 = v45;
  v48 = [v18 friend];
  if (!v48 || (v49 = v48, v50 = [v48 person], v49, !v50) || (v51 = sub_266C22F60(v50, &selRef_contactIdentifier), !v52))
  {

    goto LABEL_22;
  }

  v119[0] = v51;
  v120 = v52;
  v124 = v18;
  v53 = v33;
  v119[1] = v17;
  v54 = sub_266DA948C();
  v55 = sub_266DAAB0C();

  v56 = os_log_type_enabled(v54, v55);
  v123 = v53;
  v122 = v47;
  v121 = v46;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v146[0] = v125;
    v126 = v57;
    *v57 = 136315138;
    sub_266D6CDF4(&v152);
    v58 = v154;
    if (v154 == 255)
    {
      v65 = 0xE400000000000000;
      v63 = 1701736302;
    }

    else
    {
      v59 = v55;
      v60 = v15;
      v62 = v152;
      v61 = v153;
      v148[0] = v152;
      v148[1] = v153;
      v149 = v154;
      v63 = LocationLabel.rawValue.getter();
      v65 = v64;
      v66 = v62;
      v15 = v60;
      v55 = v59;
      sub_266C23130(v66, v61, v58);
    }

    v70 = sub_266C22A3C(v63, v65, v146);

    v71 = v126;
    *(v126 + 1) = v70;
    _os_log_impl(&dword_266C08000, v54, v55, "Staring location resolve with location label: %s", v71, 0xCu);
    v72 = v125;
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x26D5F2480](v72, -1, -1);
    MEMORY[0x26D5F2480](v71, -1, -1);
  }

  sub_266D6CDF4(&v152);
  if (v154 == 255)
  {
    v73 = 2;
  }

  else
  {
    v73 = v152;
  }

  if (v154 == 255)
  {
    v74 = 0;
  }

  else
  {
    v74 = v153;
  }

  if (v154 == 255)
  {
    v75 = 2;
  }

  else
  {
    v75 = v154;
  }

  sub_266C186A4(v73, v74, v75);
  v76 = v75;
  v77 = sub_266DA948C();
  v78 = sub_266DAAB0C();
  sub_266C17E24(v73, v74, v75);
  v79 = os_log_type_enabled(v77, v78);
  v126 = v74;
  LODWORD(v125) = v75;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v148[0] = v81;
    *v80 = 136315138;
    v152 = v73;
    v153 = v74;
    v154 = v76;
    v82 = LocationLabel.rawValue.getter();
    v84 = v73;
    v85 = sub_266C22A3C(v82, v83, v148);

    *(v80 + 4) = v85;
    v73 = v84;
    _os_log_impl(&dword_266C08000, v77, v78, "Starting location resolve for label: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x26D5F2480](v81, -1, -1);
    MEMORY[0x26D5F2480](v80, -1, -1);
  }

  v86 = v144;
  sub_266C23434(v128 + OBJC_IVAR____TtC10SiriFindMy24SetGeoFenceIntentHandler_sessionManager, v144, type metadata accessor for FindFriendSessionManager);
  v87 = [v124 notifyMe];
  v88 = v121;
  if (v87)
  {
    v89 = v87;
    v90 = [v87 BOOLValue];
  }

  else
  {
    v90 = 0;
  }

  v91 = [v124 trigger];
  v92 = swift_allocObject();
  *(v92 + 16) = sub_266C23638;
  *(v92 + 24) = v15;
  v128 = v92;
  v93 = *(v86 + 1);
  v94 = *v86;

  v93(&v152, v95, v94);
  v96 = v155;
  v97 = v156;
  __swift_project_boxed_opaque_existential_1(&v152, v155);
  (*(v97 + 24))(v148, v96, v97);
  v98 = v150;
  v99 = v151;
  __swift_project_boxed_opaque_existential_1(v148, v150);
  v146[0] = v73;
  v146[1] = v126;
  v147 = v125;
  v100 = (*(v99 + 16))(v88, v122, v119[0], v120, v146, v90, v91, v98, v99);

  v124 = v15;
  v145 = *(v86 + 3);
  v101 = v145;
  v146[0] = v100;
  v102 = sub_266DAAB1C();
  v103 = v129;
  __swift_storeEnumTagSinglePayload(v129, 1, 1, v102);
  v104 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A78, &qword_266DAE3F0);
  sub_266C22FD4();
  FriendSessionManager = v73;
  sub_266C230E8(&qword_2800C9A88, &qword_2800C9A78, &qword_266DAE3F0, MEMORY[0x277CBCD90]);
  sub_266C23060();
  v105 = v130;
  sub_266DA98EC();
  sub_266C1825C(v103, &qword_2800CC360, &qword_266DB00D0);

  __swift_destroy_boxed_opaque_existential_0(v148);
  __swift_destroy_boxed_opaque_existential_0(&v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);
  sub_266C230E8(&qword_2800C9AA0, &qword_2800C9A68, &qword_266DAE3E0, MEMORY[0x277CBCCE8]);
  v106 = v133;
  v107 = v132;
  sub_266DA984C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AA8, &unk_266DAE400);
  sub_266C230E8(&qword_2800C9AB0, &qword_2800C9A58, &qword_266DAE3C8, MEMORY[0x277CBCC08]);
  sub_266C230E8(&qword_2800C9AB8, &qword_2800C9AA8, &unk_266DAE400, MEMORY[0x277CBCE80]);
  v108 = v134;
  v109 = v137;
  sub_266DA987C();
  (*(v135 + 8))(v106, v109);
  sub_266C230E8(&qword_2800C9AC0, &qword_2800C9A60, &unk_266DAE3D0, MEMORY[0x277CBCC40]);
  v110 = v138;
  v111 = sub_266DA97EC();
  (*(v136 + 8))(v108, v110);
  (*(v131 + 8))(v105, v107);
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v112 = qword_2800C9818;
  v113 = v141;
  sub_266DA946C();
  v114 = v140;
  *v140 = v111;
  sub_266DA946C();
  (*(v142 + 8))(v113, v143);
  *(v114 + 24) = "Resolve Labelled Location";
  *(v114 + 32) = 25;
  *(v114 + 40) = 2;
  *(v114 + 8) = &dword_266C08000;
  *(v114 + 16) = v112;
  v115 = swift_allocObject();
  *(v115 + 16) = 0;
  v116 = swift_allocObject();
  v116[2] = v115;
  v116[3] = sub_266C23644;
  v116[4] = v128;
  sub_266C230E8(&qword_2800C9AC8, &qword_2800C9A70, &qword_266DAE3E8, &protocol conformance descriptor for Publishers.SignpostFirst<A>);
  swift_retain_n();
  v117 = v112;

  v118 = sub_266DA986C();

  sub_266C17E24(FriendSessionManager, v126, v125);

  sub_266C1825C(v114, &qword_2800C9A70, &qword_266DAE3E8);
  swift_beginAccess();
  *(v115 + 16) = v118;

  sub_266C23494(v144, type metadata accessor for FindFriendSessionManager);

LABEL_27:
  _Block_release(a3);
}

void sub_266C203A0(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_266DA947C();
  OUTLINED_FUNCTION_0_2();
  v152 = v7;
  v153 = v6;
  MEMORY[0x28223BE20](v6);
  v151 = &v128[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A58, &qword_266DAE3C8);
  OUTLINED_FUNCTION_0_2();
  v147 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A60, &unk_266DAE3D0);
  OUTLINED_FUNCTION_0_2();
  v148 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v18);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A68, &qword_266DAE3E0);
  OUTLINED_FUNCTION_0_2();
  v143 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10();
  v154 = v21;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A70, &qword_266DAE3E8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v23);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v128[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2800C9148 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800C9148);
  }

  v27 = sub_266DA94AC();
  __swift_project_value_buffer(v27, qword_2800C9A30);
  v28 = a1;
  v29 = sub_266DA948C();
  v30 = sub_266DAAB0C();

  v31 = os_log_type_enabled(v29, v30);
  v155 = v26;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_14_0();
    v33 = OUTLINED_FUNCTION_13_0();
    v139 = v9;
    v138 = v13;
    v34 = a2;
    v35 = v33;
    v163 = v33;
    *v32 = 136315138;
    v159[0] = [v28 location];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AD0, &unk_266DB32B0);
    v36 = sub_266DAA72C();
    v38 = sub_266C22A3C(v36, v37, &v163);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_266C08000, v29, v30, "Starting location resolve on %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    a2 = v34;
    v13 = v138;
    v9 = v139;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v39 = [v28 location];
  if (!v39)
  {
    v48 = sub_266DA948C();
    v49 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_12_0(v49))
    {
      v50 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v50);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v51, v52, "Cannot resolve location from a nil location.");
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v53 = [swift_getObjCClassFromMetadata() unsupported];
    a2();
    goto LABEL_26;
  }

  v40 = v39;
  sub_266C22F60(v40, &selRef_identifier);
  if (v41)
  {

    v42 = sub_266DA948C();
    v43 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v43))
    {
      v44 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v44);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v45, v46, "Location is fully resolved.");
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v47 = sub_266DA4F44(v40);
LABEL_25:
    v53 = v47;
    a2();

LABEL_26:
    return;
  }

  v54 = [v28 friend];
  if (!v54 || (v55 = sub_266C22F60(v54, &selRef_identifier), !v56))
  {
LABEL_22:
    v77 = sub_266DA948C();
    v78 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_12_0(v78))
    {
      v79 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v79);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v80, v81, "The friend parameter was not fully resolved before resolving location.");
      OUTLINED_FUNCTION_5_1();
    }

    type metadata accessor for SetGeoFenceLocationResolutionResult();
    v47 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_25;
  }

  v57 = v56;
  v139 = v55;
  v58 = [v28 friend];
  if (!v58 || (v59 = v58, v60 = [v58 person], v59, !v60) || (v61 = sub_266C22F60(v60, &selRef_contactIdentifier), !v62))
  {

    goto LABEL_22;
  }

  v131 = v61;
  v132 = v62;
  v133 = v57;
  v138 = v28;
  v63 = v40;
  v64 = sub_266DA948C();
  v65 = sub_266DAAB0C();

  v66 = os_log_type_enabled(v64, v65);
  v135 = v63;
  v134 = a2;
  if (v66)
  {
    v67 = OUTLINED_FUNCTION_14_0();
    v136 = OUTLINED_FUNCTION_13_0();
    v157[0] = v136;
    v137 = v67;
    *v67 = 136315138;
    sub_266D6CDF4(&v163);
    v68 = v165;
    if (v165 == 255)
    {
      v74 = 0xE400000000000000;
      v72 = 1701736302;
    }

    else
    {
      v130 = a3;
      v69 = v65;
      v70 = v163;
      v71 = v164;
      v159[0] = v163;
      v159[1] = v164;
      v160 = v165;
      v72 = LocationLabel.rawValue.getter();
      v74 = v73;
      v75 = v70;
      v65 = v69;
      v76 = v71;
      a3 = v130;
      sub_266C23130(v75, v76, v68);
    }

    v82 = sub_266C22A3C(v72, v74, v157);

    v83 = v137;
    *(v137 + 1) = v82;
    _os_log_impl(&dword_266C08000, v64, v65, "Staring location resolve with location label: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v136);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    a2 = v134;
  }

  else
  {
  }

  sub_266D6CDF4(&v163);
  if (v165 == 255)
  {
    v84 = 2;
  }

  else
  {
    v84 = v163;
  }

  if (v165 == 255)
  {
    v85 = 0;
  }

  else
  {
    v85 = v164;
  }

  if (v165 == 255)
  {
    v86 = 2;
  }

  else
  {
    v86 = v165;
  }

  sub_266C186A4(v84, v85, v86);
  v87 = sub_266DA948C();
  v88 = sub_266DAAB0C();
  sub_266C17E24(v84, v85, v86);
  v89 = os_log_type_enabled(v87, v88);
  LODWORD(v137) = v86;
  if (v89)
  {
    v90 = OUTLINED_FUNCTION_14_0();
    v91 = OUTLINED_FUNCTION_13_0();
    v130 = a3;
    v92 = v91;
    v159[0] = v91;
    *v90 = 136315138;
    v163 = v84;
    v164 = v85;
    v165 = v86;
    v129 = v88;
    v93 = LocationLabel.rawValue.getter();
    v95 = sub_266C22A3C(v93, v94, v159);

    *(v90 + 4) = v95;
    _os_log_impl(&dword_266C08000, v87, v129, "Starting location resolve for label: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    a3 = v130;
    OUTLINED_FUNCTION_6_1();
    a2 = v134;
    OUTLINED_FUNCTION_6_1();
  }

  v96 = v155;
  OUTLINED_FUNCTION_4_2();
  sub_266C23434(v141 + v97, v96, v98);
  v99 = [v138 notifyMe];
  v136 = v85;
  if (v99)
  {
    v100 = v99;
    LODWORD(v130) = [v99 BOOLValue];
  }

  else
  {
    LODWORD(v130) = 0;
  }

  v101 = [v138 trigger];
  v102 = swift_allocObject();
  *(v102 + 16) = a2;
  *(v102 + 24) = a3;
  v141 = v102;
  v103 = *(v96 + 1);
  v104 = *v96;

  v103(&v163, v105, v104);
  v106 = v166;
  v107 = v167;
  __swift_project_boxed_opaque_existential_1(&v163, v166);
  (*(v107 + 24))(v159, v106, v107);
  v108 = v161;
  v109 = v162;
  __swift_project_boxed_opaque_existential_1(v159, v161);
  v157[0] = v84;
  v157[1] = v136;
  v158 = v137;
  v110 = (*(v109 + 16))(v139, v133, v131, v132, v157, v130, v101, v108, v109);

  v139 = *(FriendSessionManager + 28);
  v156 = *(v96 + 3);
  v111 = v156;
  v157[0] = v110;
  v112 = sub_266DAAB1C();
  FriendSessionManager = v84;
  v113 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v112);
  v114 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A78, &qword_266DAE3F0);
  sub_266C22FD4();
  sub_266C230E8(&qword_2800C9A88, &qword_2800C9A78, &qword_266DAE3F0, MEMORY[0x277CBCD90]);
  sub_266C23060();
  sub_266DA98EC();
  sub_266C1825C(v113, &qword_2800CC360, &qword_266DB00D0);

  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(&v163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9A98, &qword_266DAE3F8);
  sub_266C230E8(&qword_2800C9AA0, &qword_2800C9A68, &qword_266DAE3E0, MEMORY[0x277CBCCE8]);
  v115 = v145;
  v116 = v144;
  v117 = v154;
  sub_266DA984C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AA8, &unk_266DAE400);
  sub_266C230E8(&qword_2800C9AB0, &qword_2800C9A58, &qword_266DAE3C8, MEMORY[0x277CBCC08]);
  sub_266C230E8(&qword_2800C9AB8, &qword_2800C9AA8, &unk_266DAE400, MEMORY[0x277CBCE80]);
  v118 = v146;
  sub_266DA987C();
  (*(v147 + 8))(v115, v9);
  sub_266C230E8(&qword_2800C9AC0, &qword_2800C9A60, &unk_266DAE3D0, MEMORY[0x277CBCC40]);
  v119 = sub_266DA97EC();
  (*(v148 + 8))(v118, v13);
  (*(v143 + 8))(v117, v116);
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v120 = qword_2800C9818;
  v121 = v151;
  sub_266DA946C();
  v122 = v150;
  *v150 = v119;
  sub_266DA946C();
  (*(v152 + 8))(v121, v153);
  *(v122 + 24) = "Resolve Labelled Location";
  *(v122 + 32) = 25;
  *(v122 + 40) = 2;
  *(v122 + 8) = &dword_266C08000;
  *(v122 + 16) = v120;
  v123 = swift_allocObject();
  *(v123 + 16) = 0;
  v124 = swift_allocObject();
  v124[2] = v123;
  v124[3] = sub_266C22FCC;
  v124[4] = v141;
  sub_266C230E8(&qword_2800C9AC8, &qword_2800C9A70, &qword_266DAE3E8, &protocol conformance descriptor for Publishers.SignpostFirst<A>);
  swift_retain_n();
  v125 = v120;

  v126 = sub_266DA986C();

  sub_266C17E24(FriendSessionManager, v136, v137);

  sub_266C1825C(v122, &qword_2800C9A70, &qword_266DAE3E8);
  OUTLINED_FUNCTION_17_0(v123 + 16, &v163);
  *(v123 + 16) = v126;

  OUTLINED_FUNCTION_1_2();
  sub_266C23494(v155, v127);
}
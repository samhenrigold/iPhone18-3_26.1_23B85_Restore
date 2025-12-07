uint64_t sub_240E68D50(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_1())
  {
    sub_240E86764();
  }

  else
  {
    sub_240E86714();
  }

  return sub_240E86794();
}

uint64_t sub_240E68DA8(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_1())
  {
    sub_240E86764();
    sub_240E86794();
    sub_240E6A990();
  }

  else
  {
    sub_240E86714();
    sub_240E86794();
    sub_240E6B130(&qword_27E51B0D0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for IconAdornmentMerchandizedIAPViewModifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IconAdornmentMerchandizedIAPViewModifier(uint64_t result, int a2, int a3)
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

uint64_t sub_240E68ED4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240E68F24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_240E68F5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240E68FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_240E69074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240E691D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E6FA88();
  *a1 = result;
  return result;
}

uint64_t sub_240E692D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3D8, &qword_240E887A8);
    OUTLINED_FUNCTION_34();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3E0, &qword_240E887B0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_240E693B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3D8, &qword_240E887A8);
    OUTLINED_FUNCTION_34();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3E0, &qword_240E887B0);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_240E694A0()
{
  type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_25();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  v8 = *(v0 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3B8, &qword_240E88760);
  if (OUTLINED_FUNCTION_38(v9) == 1)
  {
    sub_240E866A4();
    OUTLINED_FUNCTION_3();
    (*(v10 + 8))(v7 + v8);
  }

  else
  {
  }

  v11 = *(v0 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3C0, &qword_240E88798);
  if (OUTLINED_FUNCTION_38(v12) == 1)
  {
    sub_240E869A4();
    OUTLINED_FUNCTION_3();
    (*(v13 + 8))(v7 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_240E69624()
{
  type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_25();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v1 + v4;

  v8 = *(v0 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3B8, &qword_240E88760);
  if (OUTLINED_FUNCTION_38(v9) == 1)
  {
    sub_240E866A4();
    OUTLINED_FUNCTION_3();
    (*(v10 + 8))(v7 + v8);
  }

  else
  {
  }

  v11 = *(v0 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3C0, &qword_240E88798);
  if (OUTLINED_FUNCTION_38(v12) == 1)
  {
    sub_240E869A4();
    OUTLINED_FUNCTION_3();
    (*(v13 + 8))(v7 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_240E697B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240E6989C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_240E864A4();
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_240E69924(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_240E864A4();
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240E699F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240E69A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E86884();
  *a1 = result;
  return result;
}

uint64_t sub_240E69A90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E86834();
  *a1 = result;
  return result;
}

uint64_t sub_240E69B48()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_240E69B80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240E69C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070);
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240E69CB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B660, &qword_240E89080);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_240E69D20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B660, &qword_240E89080);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_240E69DC4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6C8, &qword_240E89250);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_240E69E2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6C8, &qword_240E89250);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_240E69EA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240E86864();
  *a1 = result;
  return result;
}

uint64_t sub_240E69F28()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_240E69FD8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_240E6A020()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240E6A060()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240E6A0AC()
{

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_240E6A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_240E853B0(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_240E6A1F4()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.primaryText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_240E6A288()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.secondaryText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_240E6A320@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = sub_240E869B4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0E8, &qword_240E879A8);
  return sub_240E6A3A0(a1, a2, a3, a4 + *(v10 + 44), a5);
}

uint64_t sub_240E6A3A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v80 = a2;
  v81 = a3;
  v84 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F0, &qword_240E879B0);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v77[-v8];
  v9 = sub_240E867B4();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F8, &qword_240E879B8);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v77[-v17];
  v19 = a1;
  v79 = sub_240E86D44();
  v20 = *(v10 + 28);
  v78 = *MEMORY[0x277CE0118];
  v21 = v78;
  v22 = sub_240E86974();
  v23 = *(*(v22 - 8) + 104);
  v23(v12 + v20, v21, v22);
  *v12 = a5;
  v12[1] = a5;
  v24 = [objc_opt_self() systemGrayColor];
  v25 = sub_240E86D34();
  sub_240E866B4();
  v26 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B100, &unk_240E879C0) + 36);
  sub_240E6AD34(v12, v26);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B108, &unk_240E894C0) + 36);
  v28 = v88;
  *v27 = v87;
  *(v27 + 16) = v28;
  *(v27 + 32) = v89;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B110, &unk_240E879D0);
  *(v26 + *(v29 + 52)) = v25;
  *(v26 + *(v29 + 56)) = 256;
  v30 = sub_240E86E24();
  v32 = v31;
  sub_240E6AD98(v12);
  v33 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B118, &qword_240E894D0) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = sub_240E86E24();
  v36 = v35;
  v37 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B120, &unk_240E879E0) + 36));
  *v37 = v34;
  v37[1] = v36;
  *v18 = v79;
  v38 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B128, &unk_240E894B0) + 36));
  v23(v38 + *(v10 + 28), v78, v22);
  *v38 = a5;
  v38[1] = a5;
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
  LOBYTE(v38) = sub_240E86A44();
  sub_240E86684();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B138, &qword_240E879F8) + 36);
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  LOBYTE(v38) = sub_240E86A54();
  v48 = sub_240E86684();
  v49 = v18 + *(v14 + 44);
  *v49 = v38;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  v85 = v80;
  v86 = v81;
  sub_240E6ADF4(v48, v54, v55);

  v56 = sub_240E86C34();
  v58 = v57;
  LOBYTE(v30) = v59;
  sub_240E86AE4();
  v60 = sub_240E86AB4();
  v61 = v82;
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v60);
  sub_240E86B04();
  sub_240E6AFAC(v61, &qword_27E51B0F0, &qword_240E879B0);
  v62 = sub_240E86C04();
  v64 = v63;
  LOBYTE(v26) = v65;

  sub_240E6AE70(v56, v58, v30 & 1);

  sub_240E86AE4();
  v66 = sub_240E86B54();
  v68 = v67;
  LOBYTE(v30) = v69;
  v71 = v70;
  sub_240E6AE70(v62, v64, v26 & 1);

  KeyPath = swift_getKeyPath();
  v73 = v83;
  sub_240E6AF3C(v18, v83, &qword_27E51B0F8, &qword_240E879B8);
  v74 = v84;
  sub_240E6AF3C(v73, v84, &qword_27E51B0F8, &qword_240E879B8);
  v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B140, &qword_240E87A30) + 48);
  *v75 = v66;
  *(v75 + 8) = v68;
  LOBYTE(v30) = v30 & 1;
  *(v75 + 16) = v30;
  *(v75 + 24) = v71;
  *(v75 + 32) = KeyPath;
  *(v75 + 40) = 1;
  sub_240E6AF9C(v66, v68, v30);

  sub_240E6AFAC(v18, &qword_27E51B0F8, &qword_240E879B8);
  sub_240E6AE70(v66, v68, v30);

  return sub_240E6AFAC(v73, &qword_27E51B0F8, &qword_240E879B8);
}

unint64_t sub_240E6A990()
{
  result = qword_27E51B0C8;
  if (!qword_27E51B0C8)
  {
    sub_240E86764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B0C8);
  }

  return result;
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_240E6AA30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_240E6AA70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_240E6AAE0(uint64_t a1, id *a2)
{
  result = sub_240E86F54();
  *a2 = 0;
  return result;
}

uint64_t sub_240E6AB58(uint64_t a1, id *a2)
{
  v3 = sub_240E86F64();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_240E6ABE8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_240E6B208(a2);
  *a1 = result;
  return result;
}

uint64_t sub_240E6AC18()
{
  v0 = sub_240E86F74();
  v1 = MEMORY[0x245CD1D10](v0);

  return v1;
}

uint64_t sub_240E6AC58(uint64_t a1, uint64_t a2)
{
  sub_240E86F74();
  sub_240E86F94();
}

uint64_t sub_240E6ACC0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_240E86F44();

  *a2 = v3;
  return result;
}

uint64_t sub_240E6AD08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E6DBC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240E6AD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_240E867B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E6AD98(uint64_t a1)
{
  v2 = sub_240E867B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E6ADF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_281503770;
  if (!qword_281503770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503770);
  }

  return result;
}

uint64_t sub_240E6AE70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_240E6AE80(uint64_t a1)
{
  v2 = sub_240E6B130(&qword_281503740, type metadata accessor for Key, &unk_240E87BC8);
  v3 = sub_240E6B130(&qword_27E51B170, type metadata accessor for Key, "\r0;A@-");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240E6AF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_240E6AF9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_240E6AFAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(a1);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_240E6B03C()
{
  result = qword_27E51B150;
  if (!qword_27E51B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B158, &unk_240E87AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B150);
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

uint64_t sub_240E6B130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240E6B208(uint64_t a1)
{
  sub_240E86F74();
  v1 = sub_240E86F44();

  return v1;
}

void sub_240E6B268(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

id sub_240E6B354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_240E6D0E8(a1, &v38, a2, a3);
    if (*(&v39 + 1))
    {
      OUTLINED_FUNCTION_0_0(v8, v9, v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v35, v37, v38);
      goto LABEL_6;
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  sub_240E6B514(&v38);
  if (!a1)
  {
    v38 = 0u;
    v39 = 0u;
LABEL_10:
    sub_240E6B514(&v38);
    if (!a1)
    {
      v22 = 0;
      v38 = 0u;
      v39 = 0u;
      v23 = 0xC000000000000000;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_6:
  sub_240E6D0E8(a1, &v38, a4, a5);
  if (!*(&v39 + 1))
  {
    goto LABEL_10;
  }

  if (OUTLINED_FUNCTION_0_0(v15, v16, v17, MEMORY[0x277CC9318], v18, v19, v20, v21, v35, v37, v38))
  {
    v22 = v35;
    v23 = v37;
    goto LABEL_12;
  }

LABEL_11:
  v22 = 0;
  v23 = 0xC000000000000000;
LABEL_12:
  sub_240E6D0E8(a1, &v38, 0x63536E6565726373, 0xEB00000000656C61);
  if (!*(&v39 + 1))
  {
LABEL_16:
    sub_240E6B514(&v38);
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_0(v24, v25, v26, MEMORY[0x277D85048], v27, v28, v29, v30, v35, v37, v38))
  {
    v31 = v36;
    goto LABEL_18;
  }

LABEL_17:
  v31 = 1.0;
LABEL_18:
  sub_240E6B57C();
  sub_240E6B5C0(v22, v23);
  v32 = sub_240E7F398(v22, v23, v31);
  if (!v32)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v33 = v32;
  sub_240E6B618(v22, v23);
  return v33;
}

uint64_t sub_240E6B514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B178, "V:");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E6B57C()
{
  result = qword_27E51B180;
  if (!qword_27E51B180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51B180);
  }

  return result;
}

uint64_t sub_240E6B5C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_240E6B618(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_240E6B694(uint64_t *a1, int a2)
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

uint64_t sub_240E6B6D4(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t sub_240E6B778@<X0>(uint64_t *a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B188, &qword_240E87D88);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B190, &unk_240E87D90);
  sub_240E6B9D8(v6, v7, v8);
  sub_240E6BA2C();
  sub_240E86DB4();
  sub_240E6BAE4(&qword_27E51B1A8, &qword_27E51B188, &qword_240E87D88, MEMORY[0x277CDEFF0]);
  result = sub_240E86DC4();
  *a4 = result;
  return result;
}

uint64_t sub_240E6B8DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = sub_240E86D44();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B190, &unk_240E87D90) + 36);
  v6 = *(sub_240E867B4() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_240E86974();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  __asm { FMOV            V0.2D, #5.0 }

  *v5 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0);
  *&v5[*(result + 36)] = 256;
  *a2 = v4;
  return result;
}

uint64_t sub_240E6B9C0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

unint64_t sub_240E6B9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B198;
  if (!qword_27E51B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B198);
  }

  return result;
}

unint64_t sub_240E6BA2C()
{
  result = qword_27E51B1A0;
  if (!qword_27E51B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B190, &unk_240E87D90);
    sub_240E6BAE4(&qword_2815037C8, &qword_27E51B130, &qword_240E879F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B1A0);
  }

  return result;
}

uint64_t sub_240E6BAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id AMSUIPaymentSheetViewProvider.init(context:)(void *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_context;
  *&v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_context] = 0;
  v6 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_request];
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v7 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_header];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_content];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_footer];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_secondaryContent];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_secondaryFooter];
  *v11 = 0;
  *(v11 + 1) = 0;
  if (a1)
  {
    *&v3[v5] = a1;
    v4 = a1;
    v12 = sub_240E7F8FC(v4);
    if (v14)
    {
      v55 = v9;
      v56 = v4;
      v16 = *v6;
      v15 = v6[1];
      v17 = v6[2];
      *v6 = v12;
      v6[1] = v13;
      v6[2] = v14;
      v18 = v12;
      v57 = v13;
      v19 = v14;
      v20 = v12;

      sub_240E6CB44(v16, v15, v17);
      v21 = [v20 secondarySalableInfo];
      if (!v21)
      {
LABEL_17:
        type metadata accessor for HeaderViewProvider();
        v4 = v56;
        v35 = sub_240E848BC(v18, v57, v19);
        v36 = v20;
        v38 = v37;
        OUTLINED_FUNCTION_6(v7, &v62);
        v39 = *v7;
        v40 = v7[1];
        *v7 = v35;
        v7[1] = v38;
        sub_240E6CB88(v39, v40);
        type metadata accessor for ContentViewProvider();
        v41 = sub_240E841F0(v18, v57, v19);
        v43 = v42;
        OUTLINED_FUNCTION_6(v8, v60);
        v44 = *v8;
        v45 = v8[1];
        *v8 = v41;
        v8[1] = v43;
        sub_240E6CB88(v44, v45);
        type metadata accessor for FooterViewProvider();
        v46 = sub_240E84AD4(v18);
        v48 = v47;

        OUTLINED_FUNCTION_6(v55, v59);
        v49 = *v55;
        v50 = v55[1];
        *v55 = v46;
        v55[1] = v48;
        sub_240E6CB88(v49, v50);
        goto LABEL_18;
      }

      v22 = v21;
      v23 = v18;
      v24 = [v20 salableInfo];
      if (v24)
      {

        v25 = v22;
        v26 = v22;
        if (v23)
        {
LABEL_6:
          v27 = v20;
          v28 = [v20 secondaryContentItems];
          sub_240E6CBA8();
          v54 = sub_240E87024();

          v22 = v28;
LABEL_16:

          v31 = swift_allocObject();
          *(v31 + 16) = v26;
          *(v31 + 24) = v23;
          v18 = v23;
          *(v31 + 32) = v57;
          *(v31 + 40) = v19;
          *(v31 + 48) = v54;
          OUTLINED_FUNCTION_6(v10, v58);
          v32 = *v10;
          v33 = v10[1];
          *v10 = sub_240E6CB98;
          v10[1] = v31;

          v34 = v27;
          sub_240E6CB88(v32, v33);
          v20 = v27;
          goto LABEL_17;
        }
      }

      else
      {
        v26 = 0;
        if (v23)
        {
          goto LABEL_6;
        }
      }

      v54 = MEMORY[0x277D84F90];
      v27 = v20;
      goto LABEL_16;
    }

    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_27E51B0B0);
    }

    v30 = sub_240E865F4();
    __swift_project_value_buffer(v30, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    sub_240E865A4();
    *(OUTLINED_FUNCTION_4() + 16) = xmmword_240E87DB0;
    OUTLINED_FUNCTION_2();
    v64 = MEMORY[0x277D837D0];
    v62 = v2 + 14;
    v63 = 0x8000000240E89ED0;
    sub_240E86584();
    sub_240E6B514(&v62);
    sub_240E865C4();
  }

  else
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_27E51B0B0);
    }

    v29 = sub_240E865F4();
    __swift_project_value_buffer(v29, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    sub_240E865A4();
    *(OUTLINED_FUNCTION_4() + 16) = xmmword_240E87DB0;
    OUTLINED_FUNCTION_2();
    v64 = MEMORY[0x277D837D0];
    v62 = v2 + 7;
    v63 = 0x8000000240E89EA0;
    sub_240E86584();
    sub_240E6B514(&v62);
    sub_240E865C4();
  }

LABEL_18:
  v51 = type metadata accessor for AMSUIPaymentSheetViewProvider();
  v61.receiver = v3;
  v61.super_class = v51;
  v52 = objc_msgSendSuper2(&v61, sel_init);

  return v52;
}

uint64_t sub_240E6C0AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_240E7FADC(a2, a3, a4);
  sub_240E6CFC4(v6, v7, v8);

  v9 = a1;
  return sub_240E86DC4();
}

uint64_t sub_240E6C120@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_240E6C220();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_240E6D018;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_240E6C190(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_240E6D020;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_240E68F24(v1, v2);
  return sub_240E6C22C(v4, v3);
}

uint64_t sub_240E6C284@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_240E6C384();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_240E6D018;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_240E6C2F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_240E6D020;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_240E68F24(v1, v2);
  return sub_240E6C390(v4, v3);
}

uint64_t sub_240E6C3E8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_240E6C4E8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_240E6D018;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_240E6C458(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_240E6D020;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_240E68F24(v1, v2);
  return sub_240E6C4F4(v4, v3);
}

uint64_t sub_240E6C54C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_240E6C64C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_240E6D018;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_240E6C5BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_240E6D020;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_240E68F24(v1, v2);
  return sub_240E6C658(v4, v3);
}

uint64_t sub_240E6C6B0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_240E6C7B0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_240E6CF94;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_240E6C720(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_240E6CF5C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_240E68F24(v1, v2);
  return sub_240E6C814(v4, v3);
}

uint64_t sub_240E6C7BC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_240E68F24(*v2, v2[1]);
  return v3;
}

uint64_t sub_240E6C820(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_6(v6, v10);
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_240E6CB88(v7, v8);
}

id AMSUIPaymentSheetViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSUIPaymentSheetViewProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AMSUIPaymentSheetViewProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_240E6CA0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AMSUIPaymentSheetViewProvider.__allocating_init(context:)(a1);
  *a2 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_240E6CB44(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_240E6CB88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_240E6CBA8()
{
  result = qword_27E51B1F0;
  if (!qword_27E51B1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51B1F0);
  }

  return result;
}

uint64_t sub_240E6CF94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_240E6CFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B1F8;
  if (!qword_27E51B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B1F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_240E86574();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double sub_240E6D0E8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_240E6DBCC(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_240E6DC44(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_240E6D14C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_240E6DCA0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_240E6DC44(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_240E6D1B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_240E86F74();
  sub_240E6D0E8(a1, &v24, v4, v5);

  if (!v26)
  {
    sub_240E6DFC8(&v24, &qword_27E51B178, "V:");
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v6 = 0;
  v7 = 0;
  switch(v23[0])
  {
    case 1:
      type metadata accessor for Localizations();
      v8 = OUTLINED_FUNCTION_0_2();
      sub_240E7E730(v8 & 0xFFFFFFFFFFFFLL | 0x554D000000000000, 0xEB00000000434953);
      OUTLINED_FUNCTION_2_0();
      v7 = 0xEB00000000636973;
      OUTLINED_FUNCTION_1_1();
      v6 = 0x756D000000000000;
      break;
    case 2:
      type metadata accessor for Localizations();
      v15 = OUTLINED_FUNCTION_0_2();
      sub_240E7E730(v15 & 0xFFFFFFFFFFFFLL | 0x454E000000000000, 0xEA00000000005357);
      OUTLINED_FUNCTION_2_0();
      v7 = 0xEA00000000007377;
      OUTLINED_FUNCTION_1_1();
      v6 = 0x656E000000000000;
      break;
    case 6:
      type metadata accessor for Localizations();
      v13 = OUTLINED_FUNCTION_0_2();
      sub_240E7E730(v13 & 0xFFFFFFFFFFFFLL | 0x5241000000000000, 0xEC00000045444143);
      OUTLINED_FUNCTION_2_0();
      v7 = 0xEC00000065646163;
      OUTLINED_FUNCTION_1_1();
      v6 = 0x7261000000000000;
      break;
    case 7:
      type metadata accessor for Localizations();
      v16 = OUTLINED_FUNCTION_0_2();
      sub_240E7E730(v16 & 0xFFFFFFFFFFFFLL | 0x4946000000000000, 0xED00005353454E54);
      OUTLINED_FUNCTION_2_0();
      v7 = 0xED00007373656E74;
      OUTLINED_FUNCTION_1_1();
      v6 = 0x6966000000000000;
      break;
    case 8:
      type metadata accessor for Localizations();
      v17 = OUTLINED_FUNCTION_0_2();
      sub_240E7E730(v17 & 0xFFFFFFFFFFFFLL | 0x4E4F000000000000, 0xE900000000000045);
      OUTLINED_FUNCTION_2_0();
      v7 = 0xE900000000000065;
      OUTLINED_FUNCTION_1_1();
      v6 = 0x6E6F000000000000;
      break;
    case 9:
      type metadata accessor for Localizations();
      v14 = OUTLINED_FUNCTION_0_2();
      v7 = 0xE800000000000000;
      sub_240E7E730(v14 & 0xFFFFFFFFFFFFLL | 0x5654000000000000, 0xE800000000000000);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_1_1();
      v6 = 0x7674000000000000;
      break;
    default:
      break;
  }

LABEL_7:
  *&v24 = 0xD00000000000004DLL;
  *(&v24 + 1) = 0x8000000240E8A000;
  v25 = v6;
  v26 = v7;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x4035000000000000;
  v31 = 0;
  v9 = sub_240E6D4B8();
  sub_240E6DFC8(&v31, &qword_27E51B200, &qword_240E87E68);
  *&v19 = 0xD00000000000004DLL;
  *(&v19 + 1) = 0x8000000240E8A000;
  *&v20 = v6;
  *(&v20 + 1) = v7;
  v21 = 0uLL;
  *&v22 = v9;
  *(&v22 + 1) = 0x4035000000000000;
  v23[0] = 0xD00000000000004DLL;
  v23[1] = 0x8000000240E8A000;
  v23[2] = v6;
  v23[3] = v7;
  v23[4] = 0;
  v23[5] = 0;
  v23[6] = v9;
  v23[7] = 0x4035000000000000;
  sub_240E6D568(&v19, v18);
  sub_240E6D5A0(v23);
  v10 = v20;
  *a2 = v19;
  a2[1] = v10;
  result = *&v21;
  v12 = v22;
  a2[2] = v21;
  a2[3] = v12;
  return result;
}

uint64_t sub_240E6D4B8()
{
  v5 = *(v0 + 16);
  if (*(&v5 + 1))
  {
    sub_240E6D5D0();
    v2 = *v0;
    v1 = *(v0 + 8);

    sub_240E6DAE0(&v5, &v4);
    if (sub_240E6DA6C(v2, v1))
    {
      return sub_240E86DA4();
    }

    sub_240E6DFC8(&v5, &qword_27E51B210, &qword_240E87E70);
  }

  return 0;
}

unint64_t sub_240E6D5D0()
{
  result = qword_27E51B208;
  if (!qword_27E51B208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51B208);
  }

  return result;
}

uint64_t sub_240E6D614@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_240E86994();
  OUTLINED_FUNCTION_3_1();
  v36 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_240E86D74();
  OUTLINED_FUNCTION_3_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B218, &qword_240E87F18);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  if (v1[6])
  {
    v32 = &v31[-v19];
    v33 = v18;
    v34 = v3;
    (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v8);

    v20 = sub_240E86D94();
    (*(v10 + 8))(v13, v8);
    sub_240E86E24();
    OUTLINED_FUNCTION_2_0();
    sub_240E867C4();
    v41[118] = 1;
    memcpy(&v41[6], __src, 0x70uLL);
    v40[0] = v20;
    v40[1] = 0;
    LOWORD(v40[2]) = 1;
    memcpy(&v40[2] + 2, v41, 0x76uLL);
    v21 = v1[5];
    v35 = a1;
    if (v21)
    {
      v22 = v1[4];
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v37 = v22;
    v38 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B220, &unk_240E87F20);
    v25 = sub_240E6DEB8();
    sub_240E6ADF4(v25, v26, v27);
    sub_240E86CB4();

    memcpy(v39, v40, sizeof(v39));
    sub_240E6DFC8(v39, &qword_27E51B220, &unk_240E87F20);
    sub_240E86984();
    v29 = v32;
    v28 = v33;
    sub_240E86784();

    (*(v36 + 8))(v7, v34);
    sub_240E6DFC8(v17, &qword_27E51B218, &qword_240E87F18);
    v30 = v35;
    sub_240E6E028(v29, v35);
    return __swift_storeEnumTagSinglePayload(v30, 0, 1, v28);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
  }
}

id sub_240E6DA6C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_240E86F44();

  v4 = [v2 initWithPath_];

  return v4;
}

uint64_t sub_240E6DAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B210, &qword_240E87E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E6DB54(uint64_t a1, uint64_t a2)
{
  sub_240E86F74();
  sub_240E871C4();
  sub_240E86F94();
  v2 = sub_240E871F4();

  return v2;
}

unint64_t sub_240E6DBCC(uint64_t a1, uint64_t a2)
{
  sub_240E871C4();
  sub_240E86F94();
  v4 = sub_240E871F4();

  return sub_240E6DD34(a1, a2, v4);
}

uint64_t sub_240E6DC44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_240E6DCA0(uint64_t a1)
{
  sub_240E86F74();
  sub_240E871C4();
  sub_240E86F94();
  v2 = sub_240E871F4();

  return sub_240E6E098(a1, v2);
}

unint64_t sub_240E6DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_240E871A4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240E6DDFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_240E6DE3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240E6DEB8()
{
  result = qword_2815037B0;
  if (!qword_2815037B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B220, &unk_240E87F20);
    sub_240E6DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037B0);
  }

  return result;
}

unint64_t sub_240E6DF44()
{
  result = qword_2815037B8;
  if (!qword_2815037B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B228, &qword_240E88D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037B8);
  }

  return result;
}

uint64_t sub_240E6DFC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_240E6E028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B218, &qword_240E87F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E6E098(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_240E86F74();
    v7 = v6;
    if (v5 == sub_240E86F74() && v7 == v8)
    {

      return i;
    }

    v10 = sub_240E871A4();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_240E6E190()
{
  result = qword_2815037A0;
  if (!qword_2815037A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B230, &unk_240E87F30);
    sub_240E6E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037A0);
  }

  return result;
}

unint64_t sub_240E6E214()
{
  result = qword_2815037A8;
  if (!qword_2815037A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B218, &qword_240E87F18);
    sub_240E6DEB8();
    sub_240E6E2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037A8);
  }

  return result;
}

unint64_t sub_240E6E2A0()
{
  result = qword_27E51B238;
  if (!qword_27E51B238)
  {
    sub_240E86A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B238);
  }

  return result;
}

uint64_t sub_240E6E33C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  sub_240E864E4();
  OUTLINED_FUNCTION_3_1();
  v53 = v8;
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_2();
  v52 = v10 - v9;
  sub_240E86504();
  OUTLINED_FUNCTION_3_1();
  v49 = v12;
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_2();
  v48 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v15);
  v51 = &v46 - v16;
  v17 = type metadata accessor for CardOnFileView(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_2();
  v21 = v20 - v19;
  *(v20 - v19 + 24) = 0u;
  v22 = (v20 - v19 + 24);
  *(v20 - v19 + 40) = 0u;
  v24 = *(v23 + 32);
  v46 = sub_240E86774();
  v47 = v24;
  __swift_storeEnumTagSinglePayload(v21 + v24, 1, 1, v46);
  *v21 = a1;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;

  v25 = a1;
  v26 = [v25 salableInfo];
  if (v26)
  {

    *(v21 + 32) = [v25 salableInfo];
  }

  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  if (a1)
  {
    v29 = [v25 paymentContentItems];
    sub_240E6CBA8();
    v27 = sub_240E87024();
  }

  v30 = sub_240E6F3A0(v27);

  if (v30 < 1)
  {
    if (!a1)
    {

      goto LABEL_16;
    }
  }

  else
  {
    if (!a1)
    {

      *v22 = v28;
      goto LABEL_16;
    }

    v31 = [v25 paymentContentItems];
    sub_240E6CBA8();
    v32 = sub_240E87024();

    *v22 = v32;
  }

  v33 = [v25 languageTagBagValue];
  if (v33)
  {
    v34 = v33;
    v35 = sub_240E86F74();
    v37 = v36;

    *(v21 + 40) = v35;
    *(v21 + 48) = v37;

    v38 = v48;
    sub_240E864B4();
    v39 = v52;
    sub_240E864F4();
    (*(v49 + 8))(v38, v50);
    v40 = sub_240E864D4();
    (*(v53 + 8))(v39, v54);
    v41 = v46;
    v42 = MEMORY[0x277CDFA90];
    if (v40 != 2)
    {
      v42 = MEMORY[0x277CDFA88];
    }

    v43 = v51;
    (*(*(v46 - 8) + 104))(v51, *v42, v46);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v41);
    sub_240E6EEB4(v43, v21 + v47);
  }

  else
  {
  }

LABEL_16:
  v44 = v55;
  sub_240E6E7D4(v21, v55);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v17);
  return sub_240E6E838(v21);
}

uint64_t type metadata accessor for CardOnFileView(uint64_t a1)
{
  result = qword_27E51B248;
  if (!qword_27E51B248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240E6E7D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardOnFileView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E6E838(uint64_t a1)
{
  v2 = type metadata accessor for CardOnFileView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240E6E894@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  sub_240E86504();
  OUTLINED_FUNCTION_3_1();
  v36 = v4;
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  v35 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_240E86774();
  OUTLINED_FUNCTION_3_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B280, &qword_240E87FC0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v34 = sub_240E869B4();
  v42 = 0;
  sub_240E6EC94(v2, v40);
  memcpy(v43, v40, 0x52uLL);
  memcpy(__dst, v40, 0x52uLL);
  sub_240E6AF3C(v43, &v39, &qword_27E51B288, &qword_240E87FC8);
  sub_240E6AFAC(__dst, &qword_27E51B288, &qword_240E87FC8);
  memcpy(&v41[7], v43, 0x52uLL);
  v21 = v42;
  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for CardOnFileView(0);
  sub_240E6AF3C(v2 + *(v23 + 32), v9, &qword_27E51B240, &unk_240E87F40);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v12 + 104))(v16, *MEMORY[0x277CDFA88], v10);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_240E6AFAC(v9, &qword_27E51B240, &unk_240E87F40);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v9, v10);
  }

  v24 = &v20[*(v17 + 36)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B290, &qword_240E88000);
  (*(v12 + 32))(v24 + *(v25 + 28), v16, v10);
  *v24 = KeyPath;
  *v20 = v34;
  *(v20 + 1) = 0;
  v20[16] = v21;
  memcpy(v20 + 17, v41, 0x59uLL);
  v26 = swift_getKeyPath();
  if (v2[6])
  {

    v27 = v35;
    sub_240E864B4();
  }

  else
  {
    v27 = v35;
    sub_240E864C4();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B298, &qword_240E88038);
  v29 = v38;
  v30 = (v38 + *(v28 + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B2A0, &unk_240E88040);
  (*(v36 + 32))(v30 + *(v31 + 28), v27, v37);
  *v30 = v26;
  return sub_240E6F194(v20, v29);
}

uint64_t sub_240E6EC94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = *a1;
    v6 = a1[2];
    v7 = *(a1 + 8);
    v8 = v4;
    v9 = sub_240E7FADC(v5, v7, v6);
    sub_240E80D68(v8, v9, 0, v26);
    v10 = v26[0];
    v11 = v26[1];
    v12 = v26[2];
    v13 = v26[3];
    v14 = v26[4];
    v15 = v26[5];
    v17 = v26[6];
    v16 = v26[7];
    LOWORD(v4) = 256;
    v18 = v26[8];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v18 = 0;
  }

  v22 = v16;
  v23 = v18;
  v19 = a1[3];
  if (v19)
  {
    v20 = v4;
  }

  else
  {
    v20 = 0;
  }

  __src[0] = v10;
  __src[1] = v11;
  __src[2] = v12;
  __src[3] = v13;
  __src[4] = v14;
  __src[5] = v15;
  __src[6] = v17;
  __src[7] = v16;
  __src[8] = v18;
  memcpy(a2, __src, 0x48uLL);
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;

  sub_240E6AF3C(__src, v25, &qword_27E51B2A8, &qword_240E89B20);
  v25[0] = v10;
  v25[1] = v11;
  v25[2] = v12;
  v25[3] = v13;
  v25[4] = v14;
  v25[5] = v15;
  v25[6] = v17;
  v25[7] = v22;
  v25[8] = v23;
  return sub_240E6AFAC(v25, &qword_27E51B2A8, &qword_240E89B20);
}

uint64_t sub_240E6EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_240E6EEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_240E6EF74(uint64_t a1)
{
  sub_240E6F070(319);
  if (v1 <= 0x3F)
  {
    sub_240E6F124(319, &qword_27E51B268, sub_240E6CBA8);
    if (v2 <= 0x3F)
    {
      sub_240E6F0D4();
      if (v3 <= 0x3F)
      {
        sub_240E6F124(319, &qword_27E51B278, MEMORY[0x277CDFAA0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_240E6F070(uint64_t a1)
{
  if (!qword_27E51B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B260, &qword_240E87F68);
    v1 = sub_240E870E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E51B258);
    }
  }
}

void sub_240E6F0D4()
{
  if (!qword_27E51B270)
  {
    v0 = sub_240E870E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51B270);
    }
  }
}

void sub_240E6F124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_240E870E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_240E6F194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B280, &qword_240E87FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E6F204()
{
  result = qword_27E51B2B0;
  if (!qword_27E51B2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B298, &qword_240E88038);
    sub_240E6F2BC();
    sub_240E6BAE4(&qword_27E51B2D8, &qword_27E51B2A0, &unk_240E88040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B2B0);
  }

  return result;
}

unint64_t sub_240E6F2BC()
{
  result = qword_27E51B2B8;
  if (!qword_27E51B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B280, &qword_240E87FC0);
    sub_240E6BAE4(&qword_27E51B2C0, &qword_27E51B2C8, &unk_240E88050, MEMORY[0x277CE1198]);
    sub_240E6BAE4(&qword_27E51B2D0, &qword_27E51B290, &qword_240E88000, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B2B8);
  }

  return result;
}

uint64_t sub_240E6F3A0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

id sub_240E6F3E4()
{
  sub_240E6D5D0();
  result = sub_240E6DA6C(0xD00000000000004DLL, 0x8000000240E8A000);
  qword_27E51CE98 = result;
  return result;
}

uint64_t sub_240E6F430()
{
  if (qword_27E51B0A0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E51CE98;
  result = sub_240E86D24();
  qword_27E51B2E0 = result;
  return result;
}

double static Color.borderColor.getter()
{
  if (qword_27E51B0A8 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_240E6F510(uint64_t a1)
{
  OUTLINED_FUNCTION_37();
  v2 = v1;
  v4 = v3;
  v5 = sub_240E86944();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_2();
  v11 = (v10 - v9);
  v62 = v2;
  if (*(v2 + 16))
  {
    v44 = v11;
    v45 = v8;
    sub_240E73C6C(v2, &v53);
    if (v55)
    {
      sub_240E74B14(&v53, &v56);

      sub_240E74B2C(0, 1);
      __swift_project_boxed_opaque_existential_1(&v56, v58);
      sub_240E86C64();
      __swift_destroy_boxed_opaque_existential_0Tm(&v56);
      v12 = 0;
      v47 = *(v62 + 16);
      v48 = v62;
      v13 = v62 + 32;
      v46 = v4;
      while (1)
      {
        if (v47 == v12)
        {

          v56 = v59;
          v57 = v60;
          v58 = v61;
          goto LABEL_10;
        }

        if (v12 >= *(v48 + 16))
        {
          break;
        }

        sub_240E74C7C(v13, &v56);
        sub_240E74C7C(&v56, &v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
        if (swift_dynamicCast())
        {

          v31 = v59;
          v32 = v60;
          v33 = v61;
          type metadata accessor for RatingImageViewModel(0);
          swift_allocObject();
          v34 = OUTLINED_FUNCTION_31();
          sub_240E6AF9C(v34, v35, v32);

          sub_240E711E4();
          sub_240E74CE0(&qword_27E51B3B0, type metadata accessor for RatingImageViewModel, &unk_240E88100);
          *v44 = sub_240E86734();
          v44[1] = v36;
          v37 = v45[5];
          *(v44 + v37) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3B8, &qword_240E88760);
          swift_storeEnumTagMultiPayload();
          v38 = v45[6];
          *(v44 + v38) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3C0, &qword_240E88798);
          swift_storeEnumTagMultiPayload();
          v39 = v44 + v45[7];
          *v39 = v31;
          v39[16] = v32;
          *(v39 + 3) = v33;
          v40 = v44 + v45[8];
          *v40 = v50;
          *(v40 + 2) = v51;
          *(v40 + 3) = v52;
          sub_240E74CE0(&qword_27E51B3C8, type metadata accessor for TitleWithImage, &unk_240E887C8);
          v41 = sub_240E86DC4();
          v42 = OUTLINED_FUNCTION_31();
          sub_240E6AE70(v42, v43, v32);

          *v4 = v41;
          __swift_destroy_boxed_opaque_existential_0Tm(&v56);
          goto LABEL_12;
        }

        sub_240E86934();
        OUTLINED_FUNCTION_13();
        v49 = v13;
        sub_240E86924();
        v14 = v60;
        OUTLINED_FUNCTION_30();
        sub_240E86914();
        OUTLINED_FUNCTION_13();
        sub_240E86924();
        __swift_project_boxed_opaque_existential_1(&v56, v58);
        sub_240E86C64();
        v16 = *(&v53 + 1);
        v15 = v53;
        v17 = v54;
        sub_240E86914();
        sub_240E6AE70(v15, v16, v17);

        OUTLINED_FUNCTION_13();
        sub_240E86924();
        ++v12;
        v18 = sub_240E86964();
        v22 = OUTLINED_FUNCTION_5_0(v18, v19, v20, v21);
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = OUTLINED_FUNCTION_30();
        sub_240E6AE70(v29, v30, v14);

        *&v59 = v22;
        *(&v59 + 1) = v24;
        v60 = v26 & 1;
        v61 = v28;
        v4 = v46;
        __swift_destroy_boxed_opaque_existential_0Tm(&v56);
        v13 = v49 + 40;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *v4 = sub_240E86DC4();
LABEL_12:
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_240E6FA88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240E86654();

  return v1;
}

uint64_t sub_240E6FAFC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_240E86664();
}

uint64_t sub_240E6FB6C()
{
  OUTLINED_FUNCTION_26();
  v1[36] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B310, &qword_240E88138);
  OUTLINED_FUNCTION_6_0(v2);
  v1[37] = OUTLINED_FUNCTION_39();
  v3 = sub_240E86EB4();
  v1[38] = v3;
  OUTLINED_FUNCTION_4_0(v3);
  v1[39] = v4;
  v1[40] = OUTLINED_FUNCTION_39();
  v5 = sub_240E86E84();
  v1[41] = v5;
  OUTLINED_FUNCTION_4_0(v5);
  v1[42] = v6;
  v1[43] = OUTLINED_FUNCTION_39();
  v7 = sub_240E86ED4();
  v1[44] = v7;
  OUTLINED_FUNCTION_4_0(v7);
  v1[45] = v8;
  v1[46] = OUTLINED_FUNCTION_39();
  v9 = sub_240E86464();
  v1[47] = v9;
  OUTLINED_FUNCTION_4_0(v9);
  v1[48] = v10;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240E6FD54, 0, 0);
}

uint64_t sub_240E6FD54()
{
  v1 = v0[51];
  v2 = v0[47];
  v3 = v0[48];
  sub_240E86424();
  sub_240E86434();
  v4 = *(v3 + 8);
  v0[53] = v4;
  v0[54] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = [objc_opt_self() defaultManager];
  sub_240E86454();
  v6 = sub_240E86F44();

  LOBYTE(v1) = [v5 fileExistsAtPath_];

  if ((v1 & 1) == 0)
  {
    v55 = v4;
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_27E51B0B0);
    }

    v7 = v0[36];
    v8 = sub_240E865F4();
    __swift_project_value_buffer(v8, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v9 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v9);
    *(swift_allocObject() + 16) = xmmword_240E87DB0;
    v53 = type metadata accessor for RatingImageViewModel(0);
    v0[20] = v53;
    v0[17] = v7;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_240E86F74();
    }

    v12 = v0[36];
    sub_240E86594();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
    sub_240E87124();
    MEMORY[0x245CD1CE0](0xD000000000000021, 0x8000000240E8A0E0);
    v13 = sub_240E86454();
    MEMORY[0x245CD1CE0](v13);

    MEMORY[0x245CD1CE0](0xD000000000000022, 0x8000000240E8A110);
    v0[24] = MEMORY[0x277D837D0];
    v0[21] = 0;
    v0[22] = 0xE000000000000000;
    sub_240E86584();
    sub_240E6AFAC((v0 + 21), &qword_27E51B178, "V:");
    sub_240E865C4();

    v14 = *(v12 + OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_bundle);
    if (v14)
    {
      v15 = v14;
      v16 = sub_240E74364(7368801, 0xE300000000000000, 0x6B63617074656ALL, 0xE700000000000000, v15);
      if (v16)
      {
        v17 = v16;
        v19 = v0[49];
        v18 = v0[50];
        v21 = v0[47];
        v20 = v0[48];
        v22 = v0[36];
        sub_240E86444();

        v52 = *(v20 + 32);
        v52(v18, v19, v21);
        *(swift_allocObject() + 16) = xmmword_240E87DB0;
        v0[28] = v53;
        v0[25] = v22;

        v23 = AMSLogKey();
        if (v23)
        {
          v24 = v23;
          sub_240E86F74();
        }

        v26 = v0[52];
        v54 = v0[50];
        v27 = v0[47];
        sub_240E86594();

        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
        sub_240E87124();

        OUTLINED_FUNCTION_35();
        v56 = v28;
        v29 = [v15 bundlePath];
        v30 = sub_240E86F74();
        v32 = v31;

        MEMORY[0x245CD1CE0](v30, v32);

        v0[32] = MEMORY[0x277D837D0];
        v0[29] = 0xD000000000000026;
        v0[30] = v56;
        sub_240E86584();
        sub_240E6AFAC((v0 + 29), &qword_27E51B178, "V:");
        sub_240E865D4();

        v55(v26, v27);
        v52(v26, v54, v27);
        goto LABEL_13;
      }
    }

    return sub_240E87154();
  }

LABEL_13:
  v34 = v0[45];
  v33 = v0[46];
  v35 = v0[44];
  v37 = v0[39];
  v36 = v0[40];
  v38 = v0[38];
  sub_240E86454();
  sub_240E86EC4();
  v39 = sub_240E86514();
  v40 = MEMORY[0x277D21A30];
  if ((v39 & 1) == 0)
  {
    v40 = MEMORY[0x277D21A38];
  }

  (*(v37 + 104))(v36, *v40, v38);
  v41 = sub_240E86EF4();
  v42 = MEMORY[0x277D21A60];
  v0[5] = v41;
  v0[6] = v42;
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_240E86EE4();
  sub_240E86E54();
  v43 = MEMORY[0x277D21A58];
  v0[10] = v35;
  v0[11] = v43;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 7);
  (*(v34 + 16))(boxed_opaque_existential_1Tm, v33, v35);
  v45 = sub_240E86E64();
  v46 = sub_240E74D28(0, &qword_27E51B320, 0x277D85C78);
  v47 = MEMORY[0x277D225C0];
  v0[15] = v46;
  v0[16] = v47;
  v0[12] = v45;
  v0[55] = sub_240E86E74();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B328, &qword_240E88148);
  v49 = sub_240E6BAE4(&qword_27E51B330, &qword_27E51B328, &qword_240E88148, MEMORY[0x277D224B8]);
  v50 = swift_task_alloc();
  v0[56] = v50;
  *v50 = v0;
  v50[1] = sub_240E704CC;
  v51 = v0[37];

  return MEMORY[0x282180360](v51, v48, v49);
}

uint64_t sub_240E704CC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_32();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_32();
  *v5 = v4;
  *(v6 + 456) = v0;

  if (v0)
  {
    v7 = sub_240E70754;
  }

  else
  {
    v7 = sub_240E705F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_240E705F0()
{
  v1 = v0[53];
  v2 = v0[52];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v8 = v0[36];
  v7 = v0[37];
  (*(v0[42] + 8))();
  (*(v6 + 8))(v3, v5);
  v1(v2, v4);
  v9 = sub_240E86EA4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle;
  swift_beginAccess();
  sub_240E74444(v7, v8 + v10);
  swift_endAccess();

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_240E70754()
{
  v1 = v0[53];
  v2 = v0[52];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  (*(v0[42] + 8))(v0[43], v0[41]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_240E7086C(char *a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v75 = a5;
  v76 = a1;
  v70 = a3;
  v71 = a4;
  v80 = a2;
  v77 = sub_240E86F04();
  OUTLINED_FUNCTION_3_1();
  v74 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_2();
  v12 = v11 - v10;
  sub_240E866A4();
  OUTLINED_FUNCTION_3_1();
  v72 = v14;
  v73 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_2();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B310, &qword_240E88138);
  OUTLINED_FUNCTION_6_0(v18);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  v22 = sub_240E86EA4();
  OUTLINED_FUNCTION_3_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_2();
  v28 = v27 - v26;
  v29 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle;
  swift_beginAccess();
  v69 = v7;
  sub_240E75480(v7 + v29, v21, &qword_27E51B310, &qword_240E88138);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    return sub_240E6AFAC(v21, &qword_27E51B310, &qword_240E88138);
  }

  v67 = v24;
  v68 = v22;
  (*(v24 + 32))(v28, v21, v22);
  v78 = 0x722F737465737361;
  v79 = 0xEF2F73676E697461;
  MEMORY[0x245CD1CE0](v70, v71);

  MEMORY[0x245CD1CE0](47, 0xE100000000000000);

  v32 = v78;
  v31 = v79;
  v34 = v72;
  v33 = v73;
  (*(v72 + 104))(v17, *MEMORY[0x277CDF3C0], v73);
  v35 = sub_240E86694();
  (*(v34 + 8))(v17, v33);
  v75 = v28;
  if (v35)
  {
    v78 = v32;
    v79 = v31;

    MEMORY[0x245CD1CE0](0x2F6B726164, 0xE500000000000000);

    MEMORY[0x245CD1CE0](v76, v80);

    v36 = v78;
    v37 = v79;
    v38 = sub_240E73F9C(0, 1, 1, MEMORY[0x277D84F90]);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    v41 = v38;
    if (v40 >= v39 >> 1)
    {
      v41 = sub_240E73F9C((v39 > 1), v40 + 1, 1, v38);
    }

    *(v41 + 2) = v40 + 1;
    v42 = &v41[16 * v40];
    *(v42 + 4) = v36;
    *(v42 + 5) = v37;
    v43 = v41;
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v78 = v32;
  v79 = v31;

  MEMORY[0x245CD1CE0](v76, v80);

  v44 = v78;
  v45 = v79;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v43 = sub_240E73F9C(0, *(v43 + 2) + 1, 1, v43);
  }

  v46 = v74;
  v47 = v43;
  v48 = *(v43 + 2);
  v76 = v47;
  v49 = *(v47 + 3);
  v80 = v48 + 1;
  if (v48 >= v49 >> 1)
  {
    v76 = sub_240E73F9C((v49 > 1), v80, 1, v76);
  }

  v50 = 0;
  v51 = v76;
  *(v76 + 2) = v80;
  v52 = &v51[16 * v48];
  v43 = v51;
  *(v52 + 4) = v44;
  *(v52 + 5) = v45;
  v53 = (v46 + 8);
  v54 = v51 + 40;
  v44 = v75;
  while (1)
  {
    if (v80 == v50)
    {
      (*(v67 + 8))(v44, v68);
    }

    if (v50 >= *(v43 + 2))
    {
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_18();
    sub_240E86F14();
    sub_240E86E94();
    if (v6)
    {

      (*v53)(v12, v77);
      return (*(v67 + 8))(v44, v68);
    }

    v45 = v55;
    (*v53)(v12, v77);
    if (v45 >> 60 != 15)
    {
      break;
    }

LABEL_21:
    v54 += 16;
    ++v50;
  }

  OUTLINED_FUNCTION_33();
  v56 = sub_240E86474();
  v57 = CGSVGDocumentCreateFromData();

  if (!v57)
  {
    v61 = OUTLINED_FUNCTION_33();
    sub_240E740A4(v61, v62);
    goto LABEL_20;
  }

  v58 = [objc_opt_self() _imageWithCGSVGDocument_scale_orientation_];
  if (!v58)
  {
    v59 = OUTLINED_FUNCTION_33();
    sub_240E740A4(v59, v60);

LABEL_20:
    v44 = v75;
    v43 = v76;
    goto LABEL_21;
  }

  v63 = v58;

  v64 = v63;
  sub_240E6FAFC(v63);
  v65 = OUTLINED_FUNCTION_33();
  sub_240E740A4(v65, v66);

  return (*(v67 + 8))(v75, v68);
}

uint64_t sub_240E70E74()
{
  v1 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B338, &qword_240E88198);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  sub_240E6AFAC(v0 + OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle, &qword_27E51B310, &qword_240E88138);
  return v0;
}

uint64_t sub_240E70F08()
{
  sub_240E70E74();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_240E70F88(uint64_t a1)
{
  sub_240E7108C();
  if (v1 <= 0x3F)
  {
    sub_240E74FA0(319, &qword_27E51B308, MEMORY[0x277D219A0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_240E7108C()
{
  if (!qword_27E51B300)
  {
    v0 = sub_240E86674();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51B300);
    }
  }
}

uint64_t sub_240E710E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240E71138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_240E7118C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_240E711A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_240E711E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B338, &qword_240E88198);
  OUTLINED_FUNCTION_3_1();
  v4 = v3;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  v8 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel__state;
  v15[1] = 0;
  sub_240E86644();
  (*(v4 + 32))(v1 + v8, v7, v2);
  v9 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_bundle;
  sub_240E74D28(0, &qword_27E51B208, 0x277CCA8D8);
  *(v1 + v9) = sub_240E6DA6C(0xD00000000000003ELL, 0x8000000240E8A2F0);
  v10 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle;
  v11 = sub_240E86EA4();
  OUTLINED_FUNCTION_28(v1 + v10, v12, v13, v11);
  return v1;
}

uint64_t sub_240E7132C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RatingImageViewModel(0);
  result = sub_240E86634();
  *a2 = result;
  return result;
}

void sub_240E7136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_240E868C4();
  OUTLINED_FUNCTION_3_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_2();
  v31 = v30 - v29;
  v32 = OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = type metadata accessor for TitleWithImage(0);
  sub_240E75480(v20 + *(v37 + 20), v36, &qword_27E51B3B8, &qword_240E88760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_240E866A4();
    OUTLINED_FUNCTION_3();
    (*(v38 + 32))(v24, v36);
  }

  else
  {
    sub_240E870A4();
    v39 = sub_240E86A24();
    sub_240E86624();

    sub_240E868B4();
    swift_getAtKeyPath();

    (*(v27 + 8))(v31, v25);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_240E71538@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v136 = a1;
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 pointSize];
  v5 = v4;

  v6 = sub_240E6FA88();
  if (v6)
  {
    v7 = v6;
    [v6 size];
    v9 = v8;
    v135 = v7;
    [v7 size];
    sub_240E75938(v5 * (v9 / v10), v5);
    v11 = sub_240E86D44();
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B410, &qword_240E88818);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v12);
    v132 = (&v121 - v13);
    v14 = sub_240E86944();
    v131 = &v121;
    v15 = OUTLINED_FUNCTION_6_0(v14);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_1_2();
    sub_240E86934();
    OUTLINED_FUNCTION_13();
    sub_240E86924();
    v16 = type metadata accessor for TitleWithImage(0);
    sub_240E86914();
    OUTLINED_FUNCTION_13();
    sub_240E86924();
    v134 = v11;

    v17 = sub_240E86C44();
    v19 = v18;
    v21 = v20;
    v22 = sub_240E86BC4();
    v128 = v2;
    v24 = v23;
    v26 = v25;
    sub_240E6AE70(v17, v19, v21 & 1);

    sub_240E86914();
    sub_240E6AE70(v22, v24, v26 & 1);

    OUTLINED_FUNCTION_13();
    sub_240E86924();
    v27 = sub_240E86964();
    v129 = OUTLINED_FUNCTION_5_0(v27, v28, v29, v30);
    v130 = v31;
    v33 = v32;
    v35 = v34;
    v138 = 0;
    v139 = 0xE000000000000000;
    v36 = sub_240E866A4();
    OUTLINED_FUNCTION_3_1();
    v38 = v37;
    MEMORY[0x28223BE20](v39);
    OUTLINED_FUNCTION_1_2();
    v42 = v41 - v40;
    v43 = v128;
    sub_240E7136C(v44, v45, v46, v47, v48, v49, v50, v51, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
    sub_240E87144();
    v52 = (*(v38 + 8))(v42, v36);
    v54 = v138;
    v53 = v139;
    v55 = *(v16 - 8);
    v56 = *(v55 + 64);
    MEMORY[0x28223BE20](v52);
    v57 = &v121 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_240E75020(v43, v57);
    v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v59 = swift_allocObject();
    sub_240E75084(v57, v59 + v58);
    v60 = v132;
    v61 = (v132 + *(v133 + 36));
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B418, &qword_240E88830);
    sub_240E87084();
    v63 = (v61 + *(v62 + 40));
    *v63 = v54;
    v63[1] = v53;
    *v61 = &unk_240E88828;
    v61[1] = v59;
    *v60 = v129;
    *(v60 + 8) = v33;
    *(v60 + 16) = v35 & 1;
    *(v60 + 24) = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B420, &qword_240E88838);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v64);
    sub_240E75480(v60, &v121 - v65, &qword_27E51B410, &qword_240E88818);
    OUTLINED_FUNCTION_24();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B428, &qword_240E88840);
    v66 = OUTLINED_FUNCTION_30();
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v66, v67);
    OUTLINED_FUNCTION_7();
    v71 = sub_240E6BAE4(v69, &qword_27E51B430, &qword_240E88848, v70);
    v138 = v68;
    v139 = v71;
    OUTLINED_FUNCTION_10();
    sub_240E75294();
    OUTLINED_FUNCTION_24();
    sub_240E869D4();

    return sub_240E6AFAC(v60, &qword_27E51B410, &qword_240E88818);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B428, &qword_240E88840);
    OUTLINED_FUNCTION_3_1();
    v134 = v74;
    v135 = v73;
    MEMORY[0x28223BE20](v73);
    OUTLINED_FUNCTION_21();
    v133 = v75 - v76;
    v128 = &v121;
    MEMORY[0x28223BE20](v77);
    v79 = &v121 - v78;
    v131 = sub_240E86904();
    v80 = type metadata accessor for TitleWithImage(0);
    v132 = &v121;
    v81 = *(v80 - 8);
    v80 -= 8;
    v82 = v1 + *(v80 + 36);
    v83 = *v82;
    v84 = *(v82 + 8);
    v85 = *(v82 + 16);
    v86 = *(v82 + 24);
    v87 = *(v81 + 64);
    MEMORY[0x28223BE20](v80);
    v88 = &v121 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_240E75020(v1, v88);
    sub_240E87074();
    v129 = v84;
    v130 = v83;
    HIDWORD(v127) = v85;
    sub_240E6AF9C(v83, v84, v85);
    v126 = v86;

    v89 = sub_240E87064();
    v90 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v91 = swift_allocObject();
    v92 = MEMORY[0x277D85700];
    *(v91 + 16) = v89;
    *(v91 + 24) = v92;
    sub_240E75084(v88, v91 + v90);
    v93 = sub_240E87094();
    OUTLINED_FUNCTION_3_1();
    v95 = v94;
    v97 = *(v96 + 64);
    MEMORY[0x28223BE20](v98);
    v99 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
    v100 = &v121 - v99;
    sub_240E87084();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v123 = sub_240E86764();
      v124 = &v121;
      OUTLINED_FUNCTION_3_1();
      v122 = v101;
      MEMORY[0x28223BE20](v102);
      OUTLINED_FUNCTION_1_2();
      v121 = v104 - v103;
      v138 = 0;
      v139 = 0xE000000000000000;
      sub_240E87124();

      OUTLINED_FUNCTION_35();
      v138 = 0xD000000000000044;
      v139 = v105;
      v137 = 185;
      v106 = sub_240E87194();
      MEMORY[0x245CD1CE0](v106);

      v125 = &v121;
      MEMORY[0x28223BE20](v107);
      (*(v95 + 16))(&v121 - v99, &v121 - v99, v93);
      v108 = v121;
      sub_240E86754();
      (*(v95 + 8))(v100, v93);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0D8, &unk_240E88860);
      (*(v122 + 32))(&v79[*(v109 + 36)], v108, v123);
    }

    else
    {
      v110 = &v79[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0E0, &qword_240E878C8) + 36)];
      v111 = sub_240E86714();
      (*(v95 + 32))(&v110[*(v111 + 20)], &v121 - v99, v93);
      *v110 = &unk_240E88858;
      *(v110 + 1) = v91;
    }

    OUTLINED_FUNCTION_8();
    v112 = v133;
    v114 = v134;
    v113 = v135;
    (*(v134 + 32))(v133, v79, v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B420, &qword_240E88838);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v115);
    (*(v114 + 16))(&v121 - v116, v112, v113);
    OUTLINED_FUNCTION_24();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B410, &qword_240E88818);
    v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B430, &qword_240E88848);
    OUTLINED_FUNCTION_7();
    v120 = sub_240E6BAE4(v118, &qword_27E51B430, &qword_240E88848, v119);
    v138 = v117;
    v139 = v120;
    OUTLINED_FUNCTION_10();
    sub_240E75294();
    sub_240E869D4();
    return (*(v114 + 8))(v112, v113);
  }
}

uint64_t sub_240E7206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a3;
  v4 = sub_240E866A4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_240E87074();
  v3[12] = sub_240E87064();
  v6 = sub_240E87054();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x2822009F8](sub_240E72178, v6, v5);
}

uint64_t sub_240E72178()
{
  OUTLINED_FUNCTION_26();
  v0[15] = *(v0[6] + 8);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_240E7220C;

  return sub_240E6FB6C();
}

uint64_t sub_240E7220C(uint64_t a1)
{
  v3 = *v2;
  OUTLINED_FUNCTION_32();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 136) = v1;

  v6 = *(v3 + 112);
  v7 = *(v3 + 104);
  if (v1)
  {
    v8 = sub_240E72650;
  }

  else
  {
    v8 = sub_240E72344;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_240E72344()
{
  v34 = v0[15];
  v35 = v0[17];
  v32 = v0[11];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  v6 = type metadata accessor for TitleWithImage(0);
  sub_240E7136C(v6, v7, v8, v9, v10, v11, v12, v13, v6, *(v5 + *(v6 + 32) + 24), *(v5 + *(v6 + 32) + 16), *(v5 + *(v6 + 32) + 8), *(v5 + *(v6 + 32)), v32, v34, v35, v37, v38, v39, v40);
  v14 = *MEMORY[0x277CDF3C0];
  v15 = *(v4 + 104);
  v15(v2, *MEMORY[0x277CDF3C0], v3);
  v16 = sub_240E86694();
  v17 = *(v4 + 8);
  v17(v2, v3);
  v17(v1, v3);
  if (v16)
  {
    v18 = v14;
  }

  else
  {
    v18 = *MEMORY[0x277CDF3D0];
  }

  v15(v33, v18, v3);
  sub_240E7086C(v31, v30, v29, v28, v33);
  v17(v0[11], v0[7]);
  if (v36)
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_27E51B0B0);
    }

    v19 = v0[6];
    v20 = sub_240E865F4();
    __swift_project_value_buffer(v20, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v21 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v21);
    *(swift_allocObject() + 16) = xmmword_240E87DB0;
    v0[5] = v27;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
    sub_240E75020(v19, boxed_opaque_existential_1Tm);
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      sub_240E86F74();
    }

    sub_240E86594();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_240E86574();
    sub_240E865C4();
  }

  OUTLINED_FUNCTION_17();

  return v25();
}

uint64_t sub_240E72650()
{

  v1 = v0[17];
  if (qword_27E51B0B0 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_27E51B0B0);
  }

  v2 = v0[6];
  v3 = sub_240E865F4();
  __swift_project_value_buffer(v3, qword_27E51CEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
  v4 = sub_240E865A4();
  OUTLINED_FUNCTION_4_0(v4);
  *(swift_allocObject() + 16) = xmmword_240E87DB0;
  v0[5] = type metadata accessor for TitleWithImage(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_240E75020(v2, boxed_opaque_existential_1Tm);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_240E86F74();
  }

  sub_240E86594();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_240E86574();
  sub_240E865C4();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_240E72854(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_240E866A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_240E87074();
  v1[6] = sub_240E87064();
  v4 = sub_240E87054();

  return MEMORY[0x2822009F8](sub_240E72948, v4, v3);
}

uint64_t sub_240E72948()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = type metadata accessor for TitleWithImage(0);
  v6 = v4 + *(v5 + 32);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_240E7136C(v5, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v0, v29, v30);
  v16 = OUTLINED_FUNCTION_31();
  sub_240E7086C(v16, v17, v7, v8, v1);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_240E72A38()
{
  sub_240E868C4();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_15();
  if ((v0 & 1) == 0)
  {
    sub_240E870A4();
    v2 = sub_240E86A24();
    OUTLINED_FUNCTION_11(v2, &dword_240E67000, v3, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v4, v5, MEMORY[0x277D84F90]);

    sub_240E868B4();
    OUTLINED_FUNCTION_18();
    swift_getAtKeyPath();
    sub_240E6AFAC(&v9, &qword_27E51B370, &qword_240E88700);
    v6 = OUTLINED_FUNCTION_12();
    v7(v6);
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_240E72B40()
{
  sub_240E868C4();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_14();
  if ((v0 & 1) == 0)
  {
    sub_240E870A4();
    v2 = sub_240E86A24();
    OUTLINED_FUNCTION_11(v2, &dword_240E67000, v3, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v4, v5, MEMORY[0x277D84F90]);

    sub_240E868B4();
    OUTLINED_FUNCTION_18();
    swift_getAtKeyPath();
    sub_240E6AFAC(&v9, &qword_27E51B370, &qword_240E88700);
    v6 = OUTLINED_FUNCTION_12();
    v7(v6);
  }

  return OUTLINED_FUNCTION_29();
}

void sub_240E72C4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37();
  v3 = sub_240E863B4();
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  v9 = v8 - v7;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v10 = *(v2 + 32);
  v11 = [v10 length];
  v12 = swift_allocObject();
  *(v12 + 16) = &v39;
  *(v12 + 24) = &v37;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_240E749EC;
  *(v13 + 24) = v12;
  v35 = sub_240E749F4;
  v36 = v13;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_240E814CC;
  v34 = &block_descriptor;
  v14 = _Block_copy(&v31);

  [v10 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    return;
  }

  v15 = v38;
  v16 = v39;
  if (!v38)
  {
    goto LABEL_20;
  }

  v17 = v37;
  v18 = v37 == 0x656E696C64616568 && v38 == 0xE800000000000000;
  if (!v18 && (OUTLINED_FUNCTION_27(0x656E696C64616568, 0xE800000000000000) & 1) == 0)
  {
    v19 = v17 == 0x65746F6E746F6F66 && v15 == 0xE800000000000000;
    if (v19 || (OUTLINED_FUNCTION_27(0x65746F6E746F6F66, 0xE800000000000000) & 1) != 0)
    {
LABEL_21:
      sub_240E86B34();
      goto LABEL_23;
    }

    v20 = v17 == 0x656772616CLL && v15 == 0xE500000000000000;
    if (v20 || (OUTLINED_FUNCTION_27(0x656772616CLL, 0xE500000000000000) & 1) != 0)
    {
      sub_240E86A94();
      goto LABEL_23;
    }

LABEL_20:
    if (!v16)
    {
      sub_240E86B24();
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_240E86B44();
LABEL_23:

  v21 = [v10 string];
  v22 = sub_240E86F74();
  v24 = v23;

  v31 = v22;
  v32 = v24;
  v25 = sub_240E863A4();
  sub_240E6ADF4(v25, v26, v27);
  sub_240E87104();
  (*(v5 + 8))(v9, v3);

  if (v39 == 1)
  {
    sub_240E72B40();
  }

  else
  {
    sub_240E72A38();
  }

  sub_240E86BD4();

  sub_240E86C04();

  v28 = OUTLINED_FUNCTION_30();
  sub_240E6AE70(v28, v29, v30);

  OUTLINED_FUNCTION_36();
}

uint64_t sub_240E73024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  sub_240E6D14C(a1, &v13, *MEMORY[0x277CEE2E0]);
  if (v14)
  {
    sub_240E74D28(0, &qword_281503720, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v9 = [v11 BOOLValue];

      *a5 = v9;
    }
  }

  else
  {
    sub_240E6AFAC(&v13, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(a1, &v13, *MEMORY[0x277CEE330]);
  if (!v14)
  {
    return sub_240E6AFAC(&v13, &qword_27E51B178, "V:");
  }

  result = swift_dynamicCast();
  if (result)
  {
    *a6 = v11;
    a6[1] = v12;
  }

  return result;
}

void sub_240E73168(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_240E72C4C(a1, a2);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
}

id sub_240E7319C()
{
  sub_240E74D28(0, &qword_27E51B180, 0x277D755B8);
  v0 = OUTLINED_FUNCTION_16();
  sub_240E6B5C0(v0, v1);
  v2 = OUTLINED_FUNCTION_16();
  v4 = sub_240E732FC(v2, v3);
  if (!v4)
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_27E51B0B0);
    }

    v5 = sub_240E865F4();
    __swift_project_value_buffer(v5, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v6 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v6);
    *(OUTLINED_FUNCTION_23() + 16) = xmmword_240E88060;
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_22(v7, v8, v9, v10, v11, v12, v13, v14, v18[0], v18[1], v18[2], v18[3]);
    sub_240E6AFAC(v18, &qword_27E51B178, "V:");
    sub_240E865C4();
  }

  v15 = OUTLINED_FUNCTION_16();
  sub_240E6B618(v15, v16);
  return v4;
}

id sub_240E732FC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_240E86474();
  v6 = [v4 initWithData_];

  sub_240E6B618(a1, a2);
  return v6;
}

id sub_240E73374(double a1)
{
  sub_240E74D28(0, &qword_27E51B180, 0x277D755B8);
  v2 = OUTLINED_FUNCTION_16();
  sub_240E6B5C0(v2, v3);
  v4 = OUTLINED_FUNCTION_16();
  v6 = sub_240E7F398(v4, v5, a1);
  if (!v6)
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_27E51B0B0);
    }

    v7 = sub_240E865F4();
    __swift_project_value_buffer(v7, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v8 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v8);
    *(OUTLINED_FUNCTION_23() + 16) = xmmword_240E88060;
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_22(v9, v10, v11, v12, v13, v14, v15, v16, v20[0], v20[1], v20[2], v20[3]);
    sub_240E6AFAC(v20, &qword_27E51B178, "V:");
    sub_240E865C4();
  }

  v17 = OUTLINED_FUNCTION_16();
  sub_240E6B618(v17, v18);
  return v6;
}

uint64_t sub_240E734E4(void *a1)
{
  v1 = a1;
  sub_240E86D44();
  return sub_240E86C44();
}

uint64_t sub_240E73510@<X0>(uint64_t a1@<X8>)
{
  result = sub_240E734E4(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_240E73548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_240E86F84();

  v4 = sub_240E86F84();

  MEMORY[0x245CD1CE0](1735815982, 0xE400000000000000);
  return v4;
}

uint64_t sub_240E735E4(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  v1 = sub_240E86954();
  return OUTLINED_FUNCTION_5_0(v1, v2, v3, v4);
}

uint64_t sub_240E73610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_240E735E4(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_240E7368C@<X0>(uint64_t a1@<X8>)
{
  result = sub_240E73644(*v1, v1[1]);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_240E736CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B378, &qword_240E88708);
  v4 = OUTLINED_FUNCTION_6_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21();
  v79 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v73 = v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B380, &qword_240E88710);
  OUTLINED_FUNCTION_6_0(v9);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v10);
  v76 = v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B388, &qword_240E88718);
  OUTLINED_FUNCTION_6_0(v12);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v13);
  v74 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B390, &qword_240E88720);
  OUTLINED_FUNCTION_6_0(v15);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v16);
  v18 = v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B398, &qword_240E88728);
  OUTLINED_FUNCTION_6_0(v19);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v20);
  v22 = v71 - v21;
  v78 = sub_240E86BB4();
  OUTLINED_FUNCTION_3_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_2();
  v28 = v27 - v26;
  v29 = sub_240E86414();
  v30 = OUTLINED_FUNCTION_6_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_2();
  v77 = sub_240E863C4();
  OUTLINED_FUNCTION_3_1();
  v75 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v71 - v37;

  sub_240E86404();
  v80 = v38;
  sub_240E863D4();
  v39 = *(v2 + 25);
  if (v39)
  {
    v40 = sub_240E72B40();
  }

  else
  {
    v40 = sub_240E72A38();
  }

  v81 = v40;
  sub_240E74A14(v40, v41, v42);
  sub_240E863E4();
  if (v39)
  {
    v43 = sub_240E72B40();
  }

  else
  {
    v43 = sub_240E72A38();
  }

  v71[1] = v43;
  v44 = sub_240E86B74();
  OUTLINED_FUNCTION_28(v22, v45, v46, v44);
  v47 = sub_240E86B84();
  OUTLINED_FUNCTION_28(v18, v48, v49, v47);
  v50 = sub_240E86B94();
  OUTLINED_FUNCTION_28(v74, v51, v52, v50);
  v53 = sub_240E86B64();
  OUTLINED_FUNCTION_28(v76, v54, v55, v53);

  v72 = v28;
  sub_240E86BA4();
  v56 = v73;
  v57 = v28;
  v58 = v78;
  (*(v24 + 16))(v73, v57, v78);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
  v59 = sub_240E75480(v56, v79, &qword_27E51B378, &qword_240E88708);
  sub_240E74A68(v59, v60, v61);
  v62 = v80;
  sub_240E863E4();
  sub_240E6AFAC(v56, &qword_27E51B378, &qword_240E88708);
  v63 = v75;
  v64 = v77;
  (*(v75 + 16))(v35, v62, v77);
  sub_240E86C24();
  sub_240E86B34();
  v79 = sub_240E86C04();
  v76 = v65;
  LODWORD(v73) = v66;
  v74 = v67;

  v68 = OUTLINED_FUNCTION_24();
  sub_240E6AE70(v68, v69, v70);

  (*(v24 + 8))(v72, v58);
  (*(v63 + 8))(v62, v64);
  OUTLINED_FUNCTION_36();
}

void sub_240E73C38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_240E736CC(a1, a2);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
}

double sub_240E73C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_240E74C7C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_240E73C90(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_240E6FAFC(v1);
}

uint64_t sub_240E73CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = OUTLINED_FUNCTION_18();
  v11(v10);
  return a6(v9);
}

void sub_240E73D7C(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_20();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B340, &unk_240E881A0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 40 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
    swift_arrayInitWithCopy();
  }
}

void sub_240E73EA4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_20();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B350, &qword_240E881B0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_240E73F9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B318, &qword_240E88140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_240E740A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_240E6B618(result, a2);
  }

  return result;
}

void sub_240E740B8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_20();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  v10 = sub_240E74190(v9, v6);
  type metadata accessor for FlexListItem(0);
  OUTLINED_FUNCTION_34();
  if (a1)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_240E74290(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_240E74190(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3D0, &qword_240E887A0);
  v4 = *(type metadata accessor for FlexListItem(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240E74290(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for FlexListItem(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for FlexListItem(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

id sub_240E74364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_240E86F44();

  v7 = sub_240E86F44();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_240E74444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B310, &qword_240E88138);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240E744D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_240E74514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240E7456C(uint64_t a1, int a2)
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

uint64_t sub_240E745AC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_240E74610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_240E74650(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_240E746CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_240E7470C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_240E74780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_240E747A8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E747A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2815037D8;
  if (!qword_2815037D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037D8);
  }

  return result;
}

unint64_t sub_240E747FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_240E74824(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E74824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2815037E8;
  if (!qword_2815037E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037E8);
  }

  return result;
}

unint64_t sub_240E74878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_240E748A0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E748A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B358;
  if (!qword_27E51B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B358);
  }

  return result;
}

unint64_t sub_240E748F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_240E7491C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E7491C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B360;
  if (!qword_27E51B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B360);
  }

  return result;
}

unint64_t sub_240E74970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_240E74998(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E74998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B368;
  if (!qword_27E51B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B368);
  }

  return result;
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_240E74A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B3A0;
  if (!qword_27E51B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B3A0);
  }

  return result;
}

unint64_t sub_240E74A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B3A8;
  if (!qword_27E51B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B3A8);
  }

  return result;
}

uint64_t sub_240E74ADC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240E74B14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_240E74B2C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_240E74D68(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 40 * a2);
  if (v5 != a2 || v12 + 40 * v11 <= v9 + 40 * v5)
  {
    result = memmove((v9 + 40 * v5), v12, 40 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
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

uint64_t sub_240E74C7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240E74CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240E74D28(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_240E74D68(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    sub_240E73D7C(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

void sub_240E74DF8(uint64_t a1)
{
  sub_240E74F0C(319);
  if (v1 <= 0x3F)
  {
    sub_240E74FA0(319, &qword_27E51B400, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_240E74FA0(319, &qword_27E51B408, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_240E74F0C(uint64_t a1)
{
  if (!qword_27E51B3F8)
  {
    type metadata accessor for RatingImageViewModel(255);
    sub_240E74CE0(&qword_27E51B3B0, type metadata accessor for RatingImageViewModel, &unk_240E88100);
    v1 = sub_240E86744();
    if (!v2)
    {
      atomic_store(v1, &qword_27E51B3F8);
    }
  }
}

void sub_240E74FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_240E75020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleWithImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E75084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleWithImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E750E8()
{
  OUTLINED_FUNCTION_26();
  v2 = type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_6_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240E751AC;

  return sub_240E72854(v0 + v4);
}

uint64_t sub_240E751AC()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_32();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

unint64_t sub_240E75294()
{
  result = qword_27E51B440;
  if (!qword_27E51B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B410, &qword_240E88818);
    sub_240E6BAE4(&qword_27E51B448, &qword_27E51B418, &qword_240E88830, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B440);
  }

  return result;
}

uint64_t sub_240E7534C()
{
  v2 = type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_6_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_240E755DC;

  return sub_240E7206C(v5, v6, v0 + v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_34();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_240E75480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_24();
  v6(v5);
  return a2;
}

unint64_t sub_240E754DC()
{
  result = qword_27E51B450;
  if (!qword_27E51B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B458, &unk_240E88870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B430, &qword_240E88848);
    sub_240E6BAE4(&qword_27E51B438, &qword_27E51B430, &qword_240E88848, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_240E75294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B450);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  return sub_240E86C14();
}

void OUTLINED_FUNCTION_8()
{
  *v0 = *(v1 - 224);
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  v2 = *(v1 - 240);
  *(v0 + 24) = *(v1 - 232);
  *(v0 + 32) = v2;
  *(v0 + 40) = *(v1 - 252);
  *(v0 + 48) = *(v1 - 264);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_240E86624();
}

double OUTLINED_FUNCTION_14()
{
  *(v1 - 56) = *(v0 + 24);
  *(v1 - 64) = *(v0 + 16);

  return result;
}

double OUTLINED_FUNCTION_15()
{
  *(v1 - 56) = *(v0 + 8);
  *(v1 - 64) = *v0;

  return result;
}

uint64_t OUTLINED_FUNCTION_22(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_240E86584();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2)
{

  return sub_240E871A4();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_40()
{
  sub_240E6AE70(*(v1 + *(v0 + 28)), *(v1 + *(v0 + 28) + 8), *(v1 + *(v0 + 28) + 16));
}

id sub_240E75938(double a1, double a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_240E75AD4;
  *(v7 + 24) = v6;
  v12[4] = sub_240E75AF0;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_240E75B18;
  v12[3] = &block_descriptor_0;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_240E75B18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_240E75BC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_240E86F74();
  v4 = v3;
  if (v2 == sub_240E86F74() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_240E871A4();
  }

  return v7 & 1;
}

uint64_t sub_240E75C48(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000032;
  v3 = "ResourceBundleClass";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000002BLL;
    }

    else
    {
      v5 = 0xD000000000000033;
    }

    if (v4 == 1)
    {
      v6 = "outValueCardOnFile";
    }

    else
    {
      v6 = "aymentRequestLayoutValuePVK";
    }
  }

  else
  {
    v5 = 0xD000000000000032;
    v6 = "ResourceBundleClass";
  }

  if (a2)
  {
    v3 = "outValueCardOnFile";
    v2 = a2 == 1 ? 0xD00000000000002BLL : 0xD000000000000033;
    if (a2 != 1)
    {
      v3 = "aymentRequestLayoutValuePVK";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_240E871A4();
  }

  return v8 & 1;
}

uint64_t sub_240E75D24(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x65746F6E746F6F66;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x656E696C64616568;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 4:
      v5 = 0x72614C6172747865;
      v3 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x65746F6E746F6F66;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x656E696C64616568;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    case 4:
      v2 = 0x72614C6172747865;
      v6 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_240E871A4();
  }

  return v8 & 1;
}

unint64_t sub_240E75EA0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_240E75ECC(uint64_t a1, unsigned __int8 a2)
{
  sub_240E86F94();
}

uint64_t sub_240E75F50(uint64_t a1, char a2)
{
  sub_240E86F94();
}

unint64_t sub_240E76028@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240E75EA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_240E76054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E75EB0(*v1);
  *a1 = result;
  return result;
}

void sub_240E76080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a4;
  v102 = a5;
  type metadata accessor for FlexListItem(0);
  OUTLINED_FUNCTION_3_1();
  v99 = v9;
  v100 = v8;
  v10 = MEMORY[0x28223BE20](v8);
  v108 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v90 - v12;
  v106 = a1;
  v14 = [a1 string];
  v15 = sub_240E86F74();
  v17 = v16;

  v109 = v15;
  v110 = v17;
  v107 = a2;
  v112 = a2;
  v113 = a3;
  sub_240E6ADF4(v18, v19, v20);
  v21 = sub_240E870F4();

  v23 = MEMORY[0x277D84F90];
  v111 = MEMORY[0x277D84F90];
  v24 = *(v21 + 16);
  v105 = v21;
  if (v24)
  {
    v25 = 0;
    v26 = (v21 + 40);
    while (1)
    {
      if ((*v26 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_7_0(v22, *(v26 - 1));
        v27 = sub_240E86FD4();
      }

      else
      {
        v27 = sub_240E86FE4();
      }

      v28 = v27;
      v29 = [v106 attributedSubstringFromRange_];
      if ([v29 length] >= 1)
      {
        v30 = v29;
        MEMORY[0x245CD1D30]();
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_240E87034();
        }

        sub_240E87044();
        v23 = v111;
      }

      v31 = sub_240E86FA4();

      v32 = v28 + v31;
      if (__OFADD__(v28, v31))
      {
        break;
      }

      v33 = __OFADD__(v25, v32);
      v25 += v32;
      if (v33)
      {
        goto LABEL_121;
      }

      v26 += 2;
      if (!--v24)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

LABEL_14:

  v34 = sub_240E6F3C4();
  if (!v34)
  {
LABEL_119:

    return;
  }

  v35 = v34;
  if (v34 >= 1)
  {
    v36 = 0;
    v96 = *MEMORY[0x277CEE308];
    v104 = v23 & 0xC000000000000001;
    v95 = *MEMORY[0x277CEE2B8];
    v94 = *MEMORY[0x277CEE2E0];
    v93 = *MEMORY[0x277CEE330];
    v92 = *MEMORY[0x277CEE338];
    v107 = *MEMORY[0x277CEE350];
    v103 = *MEMORY[0x277CEE348];
    v90[1] = *MEMORY[0x277CEE340];
    v37 = MEMORY[0x277D84F90];
    v91 = *MEMORY[0x277CEE358];
    v97 = v34;
    v98 = v23;
    while (1)
    {
      v38 = v104 ? MEMORY[0x245CD1E50](v36, v23) : *(v23 + 8 * v36 + 32);
      v39 = v38;
      v40 = [v38 attributesAtIndex:0 effectiveRange:0];
      type metadata accessor for Key(0);
      sub_240E7ABD4(&qword_281503740, type metadata accessor for Key, &unk_240E87BC8);
      OUTLINED_FUNCTION_24();
      v41 = sub_240E86F34();

      if (!*(v41 + 16))
      {
        break;
      }

      v42 = sub_240E6DCA0(v96);
      if ((v43 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_2_1(v42);
      OUTLINED_FUNCTION_5_1();
      if ((swift_dynamicCast() & 1) == 0 || v112 != 1 && v112 != 3 && v112 != 2)
      {
        break;
      }

LABEL_118:
      if (v35 == ++v36)
      {
        goto LABEL_119;
      }
    }

    if (*(v41 + 16) && (v44 = sub_240E6DCA0(v95), (v45 & 1) != 0) && (OUTLINED_FUNCTION_2_1(v44), OUTLINED_FUNCTION_5_1(), swift_dynamicCast()))
    {
      LODWORD(v106) = v112;
    }

    else
    {
      LODWORD(v106) = 0;
    }

    if (*(v41 + 16) && (v46 = sub_240E6DCA0(v94), (v47 & 1) != 0) && (OUTLINED_FUNCTION_2_1(v46), OUTLINED_FUNCTION_5_1(), swift_dynamicCast()))
    {
      LODWORD(v105) = v112;
    }

    else
    {
      LODWORD(v105) = 0;
    }

    if (!*(v41 + 16) || (v48 = sub_240E6DCA0(v93), (v49 & 1) == 0) || (OUTLINED_FUNCTION_2_1(v48), OUTLINED_FUNCTION_5_1(), (swift_dynamicCast() & 1) == 0) || (v50 = sub_240E794DC(v112, v113), v50 == 5))
    {
      v50 = 0;
    }

    if (*(v41 + 16) && (v51 = sub_240E6DCA0(v92), (v52 & 1) != 0) && (OUTLINED_FUNCTION_2_1(v51), OUTLINED_FUNCTION_5_1(), (swift_dynamicCast() & 1) != 0))
    {
      v54 = v112;
      v53 = v113;
    }

    else
    {
      v54 = 0;
      v53 = 0;
    }

    v55 = sub_240E86F74();
    if (v53)
    {
      if (v54 == v55 && v53 == v56)
      {

LABEL_63:

        v63 = 1;
        goto LABEL_77;
      }

      v58 = OUTLINED_FUNCTION_4_1(v55, v56, v55);

      if (v58)
      {
        goto LABEL_63;
      }
    }

    else
    {
    }

    v59 = sub_240E86F74();
    if (v53)
    {
      if (v54 == v59 && v53 == v60)
      {

LABEL_73:

        v63 = 2;
        goto LABEL_77;
      }

      v62 = OUTLINED_FUNCTION_4_1(v59, v60, v59);

      if (v62)
      {
        goto LABEL_73;
      }
    }

    else
    {
    }

    v64 = sub_240E86F74();
    if (v53)
    {
      if (v54 == v64 && v53 == v65)
      {
      }

      else
      {
        v67 = OUTLINED_FUNCTION_4_1(v64, v65, v64);

        v63 = 0;
        if ((v67 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v63 = 3;
    }

    else
    {

      v63 = 0;
    }

LABEL_77:
    if (*(v41 + 16) && (v68 = sub_240E6DCA0(v91), (v69 & 1) != 0))
    {
      OUTLINED_FUNCTION_2_1(v68);

      OUTLINED_FUNCTION_5_1();
      if (swift_dynamicCast())
      {
        v71 = v112;
        v70 = v113;
        goto LABEL_83;
      }
    }

    else
    {
    }

    v71 = 0;
    v70 = 0;
LABEL_83:
    v72 = sub_240E86F74();
    if (v70)
    {
      if (v71 == v72 && v70 == v73)
      {

LABEL_99:

        v80 = 1;
        goto LABEL_113;
      }

      v75 = OUTLINED_FUNCTION_3_3(v72, v73, v72);

      if (v75)
      {
        goto LABEL_99;
      }
    }

    else
    {
    }

    v76 = sub_240E86F74();
    if (v70)
    {
      if (v71 == v76 && v70 == v77)
      {

LABEL_109:

        v80 = 2;
        goto LABEL_113;
      }

      v79 = OUTLINED_FUNCTION_3_3(v76, v77, v76);

      if (v79)
      {
        goto LABEL_109;
      }
    }

    else
    {
    }

    v81 = sub_240E86F74();
    if (v70)
    {
      if (v71 == v81 && v70 == v82)
      {
      }

      else
      {
        v84 = OUTLINED_FUNCTION_3_3(v81, v82, v81);

        v80 = 0;
        if ((v84 & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      v80 = 3;
    }

    else
    {

      v80 = 0;
    }

LABEL_113:
    v85 = v102;
    *v13 = v101;
    *(v13 + 1) = v85;
    v13[16] = v106;
    v13[17] = v105;
    v13[18] = v50;
    v13[19] = v63;
    v13[20] = v80;
    *(v13 + 3) = v39;

    sub_240E86494();
    sub_240E7A218(v13, v108);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_240E740B8(0, *(v37 + 16) + 1, 1, v37);
      v37 = v88;
    }

    v35 = v97;
    v23 = v98;
    v87 = *(v37 + 16);
    v86 = *(v37 + 24);
    if (v87 >= v86 >> 1)
    {
      sub_240E740B8(v86 > 1, v87 + 1, 1, v37);
      v37 = v89;
    }

    sub_240E7A27C(v13);
    *(v37 + 16) = v87 + 1;
    sub_240E7A2D8(v108, v37 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v87);
    goto LABEL_118;
  }

LABEL_122:
  __break(1u);
}

uint64_t sub_240E769BC()
{
  v1 = sub_240E868C4();
  OUTLINED_FUNCTION_3_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 64);
  v7 = *(v0 + 56);
  v12 = v7;
  v8 = v13;

  if ((v8 & 1) == 0)
  {
    sub_240E870A4();
    v9 = sub_240E86A24();
    sub_240E86624();

    sub_240E868B4();
    swift_getAtKeyPath();
    sub_240E7AC68(&v12, &qword_27E51B370);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

void sub_240E76B0C(uint64_t a2@<X8>)
{
  *a2 = sub_240E86904();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B478, &qword_240E88B88);
  sub_240E76B60(v2, (a2 + *(v4 + 44)));
}

void sub_240E76B60(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B480, &qword_240E88B90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B488, &qword_240E88B98);
  v6 = MEMORY[0x28223BE20](v38);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v42 = &v36 - v10;
  v11 = *(a1 + 40);
  v49 = *(a1 + 24);
  v50 = v11;
  v43 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    v41 = v50;
    v39 = WORD4(v49);
    v40 = v49;
    v12 = v49;
  }

  else
  {
    v40 = 0;
    v39 = 0;
    v41 = 0;
  }

  sub_240E7AC1C(&v49, v46, &qword_27E51B490, &qword_240E88BA0);
  *v5 = sub_240E869B4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B498, &qword_240E88BA8);
  v47 = *(a1 + 8);
  v48 = v47;
  v13 = swift_allocObject();
  memcpy((v13 + 16), a1, 0x41uLL);
  sub_240E7AC1C(&v48, v46, &qword_27E51B4A0, &qword_240E88BB0);
  sub_240E7A440(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4A0, &qword_240E88BB0);
  sub_240E864A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4A8, &qword_240E88BB8);
  sub_240E7ADD4(&qword_281503768, &qword_27E51B4A0, &qword_240E88BB0, MEMORY[0x277D83980]);
  sub_240E7ADD4(&qword_27E51B4B0, &qword_27E51B4A8, &qword_240E88BB8, MEMORY[0x277CE14C0]);
  sub_240E7ABD4(&qword_281503948, type metadata accessor for FlexListItem, &unk_240E888A0);
  sub_240E86E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4B8, &qword_240E88BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240E87DB0;
  v15 = sub_240E86A44();
  *(inited + 32) = v15;
  v16 = sub_240E86A54();
  *(inited + 33) = v16;
  v17 = sub_240E86A74();
  sub_240E86A74();
  if (sub_240E86A74() != v15)
  {
    v17 = sub_240E86A74();
  }

  sub_240E86A74();
  if (sub_240E86A74() != v16)
  {
    v17 = sub_240E86A74();
  }

  sub_240E86684();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v37;
  sub_240E7A760(v5, v37, &qword_27E51B480, &qword_240E88B90);
  v27 = v26 + *(v38 + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  v28 = v42;
  sub_240E7A760(v26, v42, &qword_27E51B488, &qword_240E88B98);
  v29 = v44;
  sub_240E7AC1C(v28, v44, &qword_27E51B488, &qword_240E88B98);
  v30 = v45;
  v31 = v40;
  v32 = v39;
  *v45 = v40;
  v30[1] = v32;
  v33 = v41;
  v34 = v43;
  v30[2] = v41;
  v30[3] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4C0, &qword_240E88BC8);
  sub_240E7AC1C(v29, v30 + *(v35 + 48), &qword_27E51B488, &qword_240E88B98);
  sub_240E7A478(v31, v32, v33, v34);
  sub_240E7AC68(&v49, &qword_27E51B490);
  sub_240E7AC68(v28, &qword_27E51B488);
  sub_240E7AC68(v29, &qword_27E51B488);
  sub_240E7A4B8(v31, v32, v33, v34);
}

uint64_t sub_240E770D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4C8, &qword_240E88BD0);
  v5 = MEMORY[0x28223BE20](v43);
  v52 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = *(a1 + 20);
  v42 = v2;
  switch(v9)
  {
    case 1:
    case 2:
    case 3:
      sub_240E86E24();
      sub_240E866F4();
      v50 = 0;
      v51 = v64[17];
      v48 = v68;
      v49 = v66;
      LOBYTE(v63[0]) = 1;
      LOBYTE(v56) = v65;
      v62[0] = v67;
      v44 = 1;
      v45 = v65;
      v46 = v67;
      v47 = v69;
      LOBYTE(v64[0]) = 0;
      break;
    default:
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v44 = 0;
      v45 = 0;
      v50 = 1;
      break;
  }

  v56 = 0;
  v63[0] = 0;
  v63[1] = 0;
  LOBYTE(v63[2]) = 1;
  v10 = *(a1 + 24);
  v11 = [v10 length];
  v12 = swift_allocObject();
  *(v12 + 16) = &v56;
  *(v12 + 24) = v63;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_240E7A4FC;
  *(v13 + 24) = v12;
  v64[4] = sub_240E749F4;
  v64[5] = v13;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 1107296256;
  v64[2] = sub_240E814CC;
  v64[3] = &block_descriptor_1;
  v14 = _Block_copy(v64);

  [v10 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v17 = v56;
    if (v56)
    {
      v18 = v63[0];
      v19 = v63[1];
      v20 = v63[2];

      v21 = v42;
      v22 = sub_240E77E20(v17, v18, v19, v20);
    }

    else
    {

      v22 = 0.0;
      v21 = v42;
    }

    *v8 = sub_240E86904();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4D0, &qword_240E88BD8);
    sub_240E780C8(v21, a1, &v8[*(v23 + 44)], v22);
    v24 = sub_240E86E44();
    v26 = v25;
    sub_240E79104(v21, a1, v62, v22);
    memcpy(v63, v62, 0x78uLL);
    v63[15] = v24;
    v63[16] = v26;
    memcpy(&v8[*(v43 + 36)], v63, 0x88uLL);
    memcpy(v64, v62, 0x78uLL);
    v64[15] = v24;
    v64[16] = v26;
    sub_240E7AC1C(v63, &v56, &qword_27E51B4D8, &qword_240E88BE0);
    sub_240E7AC68(v64, &qword_27E51B4D8);
    switch(*(a1 + 19))
    {
      case 1:
      case 2:
      case 3:
        sub_240E86E24();
        sub_240E866F4();
        LODWORD(v42) = 0;
        v43 = v56;
        v40 = v60;
        v41 = v58;
        v39 = v61;
        v55 = 1;
        v54 = v57;
        v53 = v59;
        v29 = 1;
        v28 = v57;
        v27 = v59;
        v62[0] = 0;
        break;
      default:
        v43 = 0;
        v40 = 0;
        v41 = 0;
        v39 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        LODWORD(v42) = 1;
        break;
    }

    v30 = v52;
    sub_240E7AC1C(v8, v52, &qword_27E51B4C8, &qword_240E88BD0);
    v31 = v44;
    *a2 = 0;
    *(a2 + 8) = v31;
    v32 = v45;
    *(a2 + 16) = v51;
    *(a2 + 24) = v32;
    v33 = v46;
    *(a2 + 32) = v49;
    *(a2 + 40) = v33;
    v34 = v47;
    *(a2 + 48) = v48;
    *(a2 + 56) = v34;
    *(a2 + 64) = v50;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4E0, &unk_240E88BE8);
    sub_240E7AC1C(v30, a2 + *(v35 + 48), &qword_27E51B4C8, &qword_240E88BD0);
    v36 = a2 + *(v35 + 64);
    *v36 = 0;
    *(v36 + 8) = v29;
    *(v36 + 16) = v43;
    *(v36 + 24) = v28;
    v37 = v40;
    *(v36 + 32) = v41;
    *(v36 + 40) = v27;
    v38 = v39;
    *(v36 + 48) = v37;
    *(v36 + 56) = v38;
    *(v36 + 64) = v42;
    sub_240E7AC68(v8, &qword_27E51B4C8);
    return sub_240E7AC68(v30, &qword_27E51B4C8);
  }

  return result;
}

void sub_240E77688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v82 = a1;
  v11 = sub_240E86944();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_240E863B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a5 string];
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 substringWithRange_];
  v19 = sub_240E86F74();
  v21 = v20;

  *&v85 = v19;
  *(&v85 + 1) = v21;
  v22 = sub_240E86394();
  v80 = sub_240E6ADF4(v22, v23, v24);
  v25 = sub_240E87104();
  v27 = v26;
  (*(v13 + 8))(v15, v12);

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_240E86934();
    sub_240E86924();
    v29 = *a6;
    v30 = *(a6 + 8);
    v31 = *(a6 + 16);
    sub_240E6AF9C(*a6, v30, v31);

    sub_240E86914();
    sub_240E6AE70(v29, v30, v31);

    sub_240E86924();
    sub_240E86914();

    sub_240E86924();
    sub_240E86964();
    v32 = sub_240E86C14();
    v33 = *a6;
    v34 = *(a6 + 8);
    v35 = *(a6 + 16);
    *a6 = v32;
    *(a6 + 8) = v36;
    *(a6 + 16) = v37 & 1;
    *(a6 + 24) = v38;
    sub_240E6AE70(v33, v34, v35);
  }

  v39 = v82;
  sub_240E6D14C(v82, &v85, *MEMORY[0x277CEE368]);
  if (!v86)
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    sub_240E6D14C(v39, &v85, *MEMORY[0x277CEE370]);
    if (v86)
    {
      if (swift_dynamicCast())
      {
        v40 = v83;
        v41 = sub_240E86D84();
        v42 = *(v41 - 8);
        (*(v42 + 8))(v81, v41);
        if (v40 > 2)
        {
          v43 = MEMORY[0x277CE1058];
        }

        else
        {
          v43 = qword_278CBAB70[v40];
        }

        (*(v42 + 104))(v81, *v43, v41);
        v44 = sub_240E86D64();

        v79 = sub_240E86C44();
        v81 = v45;
        v78 = v46;
        v48 = v47;
        sub_240E6D14C(v82, &v85, *MEMORY[0x277CEE360]);
        if (v86)
        {
          if (swift_dynamicCast())
          {
            v82 = v83;
            v76 = v84;
            sub_240E86934();
            sub_240E86924();
            v49 = *a6;
            v50 = *(a6 + 8);
            v51 = *(a6 + 16);
            v77 = v48;
            sub_240E6AF9C(v49, v50, v51);

            sub_240E86914();
            sub_240E6AE70(v49, v50, v51);

            sub_240E86924();
            *&v85 = v82;
            *(&v85 + 1) = v76;
            v52 = sub_240E86BF4();
            v54 = v53;
            LOBYTE(v50) = v55;

            sub_240E86914();
            sub_240E6AE70(v52, v54, v50 & 1);

            sub_240E86924();
            sub_240E86964();
            v56 = sub_240E86C14();
            v58 = v57;
            v60 = v59;
            v62 = v61;

            sub_240E6AE70(v79, v81, v78 & 1);

LABEL_24:

            v72 = *a6;
            v73 = *(a6 + 8);
            v74 = *(a6 + 16);
            *a6 = v56;
            *(a6 + 8) = v58;
            *(a6 + 16) = v60 & 1;
            *(a6 + 24) = v62;
            sub_240E6AE70(v72, v73, v74);

            return;
          }

          v82 = v44;
        }

        else
        {
          v82 = v44;
          sub_240E7AC68(&v85, &qword_27E51B178);
        }

        sub_240E86934();
        sub_240E86924();
        v63 = *a6;
        v64 = *(a6 + 8);
        v65 = *(a6 + 16);
        sub_240E6AF9C(*a6, v64, v65);

        sub_240E86914();
        sub_240E6AE70(v63, v64, v65);

        sub_240E86924();
        v66 = v78;
        v67 = v79;
        v68 = v81;
        sub_240E86914();
        sub_240E86924();
        sub_240E86964();
        v56 = sub_240E86C14();
        v58 = v69;
        v60 = v70;
        v62 = v71;

        sub_240E6AE70(v67, v68, v66 & 1);

        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_13:

    sub_240E7AC68(&v85, &qword_27E51B178);
    return;
  }

LABEL_15:
}

double sub_240E77E20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 0.0;
  if ((a4 & 1) == 0)
  {
    if (*&a3 <= 0.0 || *&a2 <= 0.0)
    {
      if (qword_27E51B0B0 != -1)
      {
        swift_once();
      }

      v8 = sub_240E865F4();
      __swift_project_value_buffer(v8, qword_27E51CEB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
      sub_240E865A4();
      *(swift_allocObject() + 16) = xmmword_240E88880;
      v14[3] = &type metadata for FlexListItemView;
      v14[0] = swift_allocObject();
      memcpy((v14[0] + 16), v4, 0x41uLL);
      sub_240E7A440(v4, v12);
      v9 = AMSLogKey();
      if (v9)
      {
        v10 = v9;
        sub_240E86F74();
      }

      sub_240E86594();

      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      sub_240E86574();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4E8, &unk_240E88BF8);
      v12[0] = a2;
      v12[1] = a3;
      sub_240E86584();
      sub_240E7AC68(v12, &qword_27E51B178);
      v13 = MEMORY[0x277D85048];
      v12[0] = 0x4030000000000000;
      sub_240E86584();
      sub_240E7AC68(v12, &qword_27E51B178);
      sub_240E865C4();
    }

    else
    {
      return 16.0 / *&a3 * *&a2;
    }
  }

  return v5;
}

uint64_t sub_240E780C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v99 = a3;
  v7 = sub_240E86D74();
  v95 = *(v7 - 8);
  v96 = v7;
  MEMORY[0x28223BE20](v7);
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240E86D84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4F0, &qword_240E88C08);
  MEMORY[0x28223BE20](v123);
  v102 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4F8, &qword_240E88C10);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = &v93 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B500, &qword_240E88C18);
  MEMORY[0x28223BE20](v103);
  v106 = &v93 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B508, &qword_240E88C20);
  MEMORY[0x28223BE20](v104);
  v108 = &v93 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B510, &qword_240E88C28);
  MEMORY[0x28223BE20](v105);
  v109 = &v93 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B518, &qword_240E88C30);
  MEMORY[0x28223BE20](v107);
  v112 = &v93 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B520, &qword_240E88C38);
  MEMORY[0x28223BE20](v118);
  v117 = &v93 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B528, &qword_240E88C40);
  v115 = *(v21 - 8);
  v116 = v21;
  MEMORY[0x28223BE20](v21);
  v114 = &v93 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B530, &qword_240E88C48);
  v23 = MEMORY[0x28223BE20](v113);
  v98 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v111 = &v93 - v26;
  MEMORY[0x28223BE20](v25);
  *&v120 = &v93 - v27;
  *&v119 = a1;
  v28 = *(a1 + 16);
  LODWORD(v121) = v28;
  if (a4 <= 0.0)
  {
    v28 = 0;
  }

  v122 = v28;
  v110 = a2;
  v29 = a2[3];
  v128 = xmmword_240E88890;
  v129[0] = 0;
  *&v129[8] = MEMORY[0x277D84F90];
  v30 = v10;
  v31 = *(v10 + 104);
  v32 = v9;
  v31(v12, *MEMORY[0x277CE1058], v9);
  v33 = [v29 length];
  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = &v128;
  v35 = v12;
  v34[4] = v12;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_240E7A57C;
  *(v36 + 24) = v34;
  v100 = v34;
  v134[4] = sub_240E7AFE4;
  v134[5] = v36;
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 1107296256;
  v134[2] = sub_240E814CC;
  v134[3] = &block_descriptor_46;
  v37 = _Block_copy(v134);
  v38 = v29;

  [v38 enumerateAttributesInRange:0 options:v33 usingBlock:{0, v37}];
  _Block_release(v37);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    v97 = v38;
    v40 = v128;
    v41 = v129[0];
    v42 = *&v129[8];
    v43 = v102;
    v44 = &v102[*(v123 + 36)];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B538, &qword_240E88C50);
    (*(v30 + 16))(v44 + *(v45 + 28), v35, v32);
    *v44 = swift_getKeyPath();
    *v43 = v40;
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;

    sub_240E6AF9C(v40, *(&v40 + 1), v41);
    (*(v30 + 8))(v35, v32);
    sub_240E6AE70(v128, *(&v128 + 1), v129[0]);

    v46 = v110;
    sub_240E7A650();
    v47 = v101;
    sub_240E86CC4();
    sub_240E7AC68(v43, &qword_27E51B4F0);
    if (v121)
    {
      sub_240E86E24();
    }

    else
    {
      sub_240E86E34();
    }

    v48 = v117;
    v49 = v112;
    sub_240E867C4();
    v50 = v106;
    sub_240E7A760(v47, v106, &qword_27E51B4F8, &qword_240E88C10);
    memcpy((v50 + *(v103 + 36)), v134, 0x70uLL);
    KeyPath = swift_getKeyPath();
    v52 = v108;
    sub_240E7A760(v50, v108, &qword_27E51B500, &qword_240E88C18);
    v53 = v52 + *(v104 + 36);
    *v53 = KeyPath;
    *(v53 + 8) = 0;
    v54 = sub_240E790C0(v46);
    v55 = swift_getKeyPath();
    v56 = v109;
    sub_240E7A760(v52, v109, &qword_27E51B508, &qword_240E88C20);
    v57 = (v56 + *(v105 + 36));
    *v57 = v55;
    v57[1] = v54;
    v58 = sub_240E86D04();
    v59 = sub_240E86E24();
    v61 = v60;
    sub_240E7A760(v56, v49, &qword_27E51B510, &qword_240E88C28);
    v62 = (v49 + *(v107 + 36));
    *v62 = v58;
    v62[1] = v59;
    v62[2] = v61;
    if (*(v46 + 17) == 1)
    {
      v63 = v118;
      if (v121)
      {
        v64 = [objc_opt_self() secondaryLabelColor];
        v65 = sub_240E86D34();
      }

      else
      {
        v65 = sub_240E86D14();
      }

      v66 = v65;
    }

    else
    {
      v66 = sub_240E769BC();
      v63 = v118;
    }

    v67 = v120;
    v68 = a4;
    v69 = swift_getKeyPath();
    sub_240E7A760(v49, v48, &qword_27E51B518, &qword_240E88C30);
    v70 = (v48 + *(v63 + 36));
    *v70 = v69;
    v70[1] = v66;
    if (*(v46 + 16) == 1)
    {
      sub_240E86AF4();
    }

    else
    {
      sub_240E86AE4();
    }

    sub_240E7A7AC();
    v71 = v114;
    sub_240E86C94();
    sub_240E7AC68(v48, &qword_27E51B520);
    v72 = v111;
    (*(v115 + 32))(v111, v71, v116);
    *(v72 + *(v113 + 36)) = 256;
    sub_240E7A760(v72, v67, &qword_27E51B530, &qword_240E88C48);
    if (v122)
    {
      v126[0] = 0;
      LOBYTE(v135) = 0;
      *v127 = a4;
      BYTE8(v127[0]) = 0;
      BYTE9(v127[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5B0, &unk_240E88D58);
      sub_240E7AD48();
      sub_240E869D4();
      goto LABEL_25;
    }

    v133 = 0;
    v131[0] = 0;
    v131[1] = 0;
    v132 = 1;
    v73 = v97;
    v74 = [v97 length];
    v75 = swift_allocObject();
    *(v75 + 16) = &v133;
    *(v75 + 24) = v131;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_240E7AFE0;
    *(v76 + 24) = v75;
    *&v129[16] = sub_240E7AFE4;
    *&v129[24] = v76;
    *&v128 = MEMORY[0x277D85DD0];
    *(&v128 + 1) = 1107296256;
    *v129 = sub_240E814CC;
    *&v129[8] = &block_descriptor_69;
    v77 = _Block_copy(&v128);

    [v73 enumerateAttributesInRange:0 options:v74 usingBlock:{0, v77}];
    _Block_release(v77);
    LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

    if ((v74 & 1) == 0)
    {
      if (!v133)
      {

        v68 = 0.0;
        v83 = 0;
        v123 = 0u;
        v84 = -256;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
LABEL_26:
        v89 = v98;
        sub_240E7AC1C(v67, v98, &qword_27E51B530, &qword_240E88C48);
        v90 = v99;
        *v99 = v68;
        *(v90 + 8) = 0;
        *(v90 + 9) = v122 ^ 1;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B590, &qword_240E88D38);
        sub_240E7AC1C(v89, v90 + *(v91 + 48), &qword_27E51B530, &qword_240E88C48);
        v92 = *(v91 + 64);
        v127[0] = v123;
        v127[1] = v121;
        v127[2] = v119;
        v127[3] = v120;
        *&v127[4] = v83;
        WORD4(v127[4]) = v84;
        memcpy(v90 + v92, v127, 0x4AuLL);
        sub_240E7AC1C(v127, &v128, &qword_27E51B598, &qword_240E88D40);
        sub_240E7AC68(v67, &qword_27E51B530);
        v128 = v123;
        *v129 = v121;
        *&v129[16] = v119;
        *&v129[32] = v120;
        *&v129[48] = v83;
        v130 = v84;
        sub_240E7AC68(&v128, &qword_27E51B598);
        return sub_240E7AC68(v89, &qword_27E51B530);
      }

      v78 = *MEMORY[0x277CE0FE0];
      if (a4 <= 0.0)
      {
        v86 = v94;
        v85 = v95;
        v87 = v96;
        (*(v95 + 104))(v94, v78, v96);

        v88 = sub_240E86D94();

        (*(v85 + 8))(v86, v87);
        *&v129[2] = v127[0];
        LOBYTE(v135) = 1;
        v125 = 1;
        v128 = v88;
        *v129 = 1;
        *&v129[18] = v127[1];
        *&v129[34] = v127[2];
        *&v129[48] = *(&v127[2] + 14);
        LOBYTE(v130) = 1;
      }

      else
      {
        v80 = v94;
        v79 = v95;
        v81 = v96;
        (*(v95 + 104))(v94, v78, v96);

        v82 = sub_240E86D94();

        (*(v79 + 8))(v80, v81);
        sub_240E86E24();
        sub_240E866F4();
        *&v124[38] = v137;
        *&v124[22] = v136;
        *&v124[6] = v135;
        *&v129[2] = *v124;
        LOBYTE(v127[0]) = 0;
        v128 = v82;
        *v129 = 1;
        *&v129[18] = *&v124[16];
        *&v129[34] = *&v124[32];
        *&v129[48] = *(&v137 + 1);
        LOBYTE(v130) = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5A0, &qword_240E88D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B228, &qword_240E88D50);
      sub_240E7ACBC();
      sub_240E6DF44();
      sub_240E869D4();
      memcpy(v127, v126, 0x49uLL);
      v125 = 1;
      BYTE9(v127[4]) = 1;
      sub_240E7AC1C(v126, &v128, &qword_27E51B5B0, &unk_240E88D58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5B0, &unk_240E88D58);
      sub_240E7AD48();
      sub_240E869D4();

      sub_240E7AC68(v126, &qword_27E51B5B0);
      v68 = 0.0;
LABEL_25:
      v123 = v128;
      v120 = *&v129[32];
      v121 = *v129;
      v119 = *&v129[16];
      v83 = *&v129[48];
      v84 = v130;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_240E790C0(uint64_t a1)
{
  switch(*(a1 + 18))
  {
    case 1:
      goto LABEL_3;
    case 2:
      return sub_240E86B44();
    case 3:
      if ((*(v1 + 16) & 1) == 0)
      {
        goto LABEL_7;
      }

      result = sub_240E86B14();
      break;
    case 4:
      return MEMORY[0x282132620]();
    default:
      if (*(v1 + 16))
      {
LABEL_7:
        result = sub_240E86A94();
      }

      else
      {
LABEL_3:
        result = sub_240E86B34();
      }

      break;
  }

  return result;
}

uint64_t sub_240E79104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_240E86D74();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0uLL;
  if (*(a1 + 16) == 1 && a4 > 0.0)
  {
    v29 = 0;
    v27[0] = 0;
    v27[1] = 0;
    LOBYTE(v28) = 1;
    v15 = *(a2 + 24);
    v16 = [v15 length];
    v13 = swift_allocObject();
    *(v13 + 16) = &v29;
    *(v13 + 24) = v27;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_240E7AFE0;
    *(v17 + 24) = v13;
    *&v32 = sub_240E7AFE4;
    *(&v32 + 1) = v17;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_240E814CC;
    *(&v31 + 1) = &block_descriptor_36;
    v18 = _Block_copy(&aBlock);

    [v15 enumerateAttributesInRange:0 options:v16 usingBlock:{0, v18}];
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
      sub_240E870A4();
      v26 = sub_240E86A24();
      sub_240E86624();
    }

    else
    {
      v19 = v29;

      if (!v19)
      {
        v13 = 0;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v14 = 0uLL;
        goto LABEL_9;
      }

      (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);

      v13 = sub_240E86D94();

      (*(v9 + 8))(v12, v8);
      sub_240E86E24();
    }

    sub_240E867C4();

    v14 = aBlock;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
  }

LABEL_9:
  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 24) = v20;
  *(a3 + 40) = v21;
  *(a3 + 56) = v22;
  *(a3 + 72) = v23;
  *(a3 + 88) = v24;
  *(a3 + 104) = v25;
  return result;
}

unint64_t sub_240E794DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_240E87184();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_240E7956C(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x65746F6E746F6F66;
      break;
    case 2:
      result = 0x656E696C64616568;
      break;
    case 3:
      result = 0x656772616CLL;
      break;
    case 4:
      result = 0x72614C6172747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_240E79630(unsigned __int8 a1)
{
  sub_240E871C4();
  MEMORY[0x245CD1EF0](a1);
  return sub_240E871F4();
}

unint64_t sub_240E7969C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240E794DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_240E796CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E7956C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240E79700(uint64_t a1)
{
  v2 = *v1;
  sub_240E871C4();
  MEMORY[0x245CD1EF0](v2);
  return sub_240E871F4();
}

void sub_240E79744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (*(a1 + 16))
  {
    v9 = sub_240E6DCA0(*MEMORY[0x277CEE300]);
    if (v10)
    {
      sub_240E6DC44(*(a1 + 56) + 32 * v9, &v37);
      if (swift_dynamicCast())
      {
        sub_240E74D28(0, &qword_27E51B180, 0x277D755B8);
        v11 = qword_27E51B0A0;

        if (v11 != -1)
        {
          swift_once();
        }

        v12 = qword_27E51CE98;
        v13 = qword_27E51CE98;
        v14 = sub_240E79AF0(v35, v36, v12);
        if (v14)
        {
          v15 = v14;
          v16 = v13;
          *a5 = sub_240E86DA4();

          [v15 size];
          v18 = v17;
          [v15 scale];
          v20 = v18 / v19;
          [v15 size];
          v22 = v21;
          [v15 scale];
          v24 = v23;

          *a6 = v20;
          *(a6 + 8) = v22 / v24;
          *(a6 + 16) = 0;
        }

        else
        {
        }
      }
    }
  }

  if (!*a5)
  {
    sub_240E6D14C(a1, &v37, *MEMORY[0x277CEE2C8]);
    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v25 = sub_240E86F74();
      sub_240E6D0E8(v35, &v37, v25, v26);

      if (v38)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v27 = sub_240E86F74();
        sub_240E6D0E8(v35, &v37, v27, v28);

        if (v38)
        {
          if ((swift_dynamicCast() & 1) != 0 && (sub_240E74D28(0, &qword_27E51B180, 0x277D755B8), sub_240E6B5C0(v35, v36), (v29 = sub_240E7F398(v35, v36, *&v35)) != 0))
          {
            v30 = v29;
            *a5 = sub_240E86D44();

            [v30 size];
            v32 = v31 / *&v35;
            [v30 size];
            v34 = v33;
            sub_240E6B618(v35, v36);

            *a6 = v32;
            *(a6 + 8) = v34 / *&v35;
            *(a6 + 16) = 0;
          }

          else
          {
            sub_240E6B618(v35, v36);
          }

          return;
        }

        sub_240E6B618(v35, v36);
      }

      else
      {
      }
    }

    sub_240E7AC68(&v37, &qword_27E51B178);
  }
}

id sub_240E79AF0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_240E86F44();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

uint64_t sub_240E79B70(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_240E871A4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v5 = *(a2 + 18);
  v6 = sub_240E7956C(*(a1 + 18));
  v8 = v7;
  if (v6 == sub_240E7956C(v5) && v8 == v9)
  {
  }

  else
  {
    v11 = sub_240E871A4();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 19) != *(a2 + 19))
  {
    return 0;
  }

  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  sub_240E74D28(0, &qword_281503718, 0x277D82BB8);
  if ((sub_240E870C4() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for FlexListItem(0) + 44);

  return MEMORY[0x28211DBA0](a1 + v12, a2 + v12);
}

uint64_t sub_240E79CE4(uint64_t a1)
{
  sub_240E871E4();
  sub_240E871E4();
  sub_240E7956C(*(v1 + 18));
  sub_240E86F94();

  MEMORY[0x245CD1EF0](*(v1 + 19));
  MEMORY[0x245CD1EF0](*(v1 + 20));
  return sub_240E870D4();
}

uint64_t sub_240E79D68()
{
  sub_240E871C4();
  sub_240E79CE4(v1);
  return sub_240E871F4();
}

uint64_t sub_240E79DB0(uint64_t a1)
{
  sub_240E871C4();
  sub_240E79CE4(v2);
  return sub_240E871F4();
}

uint64_t sub_240E79DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlexListItem(0) + 44);
  sub_240E864A4();
  OUTLINED_FUNCTION_3();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FlexListItem(uint64_t a1)
{
  result = qword_281503938;
  if (!qword_281503938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240E79F20(uint64_t a1)
{
  result = sub_240E74D28(319, &qword_281503748, 0x277CCA898);
  if (v2 <= 0x3F)
  {
    result = sub_240E864A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexListItem.Size(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FlexListItem.Size(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_240E7A16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B468;
  if (!qword_27E51B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B468);
  }

  return result;
}

unint64_t sub_240E7A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B470;
  if (!qword_27E51B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B470);
  }

  return result;
}

uint64_t sub_240E7A218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexListItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E7A27C(uint64_t a1)
{
  v2 = type metadata accessor for FlexListItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240E7A2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexListItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_33AppleMediaServicesUIPaymentSheets11LeadingItemVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_240E7A35C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_240E7A39C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_240E7A478(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = result;
  }

  return result;
}

void sub_240E7A4B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_240E7A588(uint64_t a1)
{
  v2 = sub_240E86D84();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_240E867E4();
}

unint64_t sub_240E7A650()
{
  result = qword_2815037C0;
  if (!qword_2815037C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B4F0, &qword_240E88C08);
    sub_240E7ADD4(&qword_281503778, &qword_27E51B538, &qword_240E88C50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037C0);
  }

  return result;
}

uint64_t sub_240E7A760(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_24();
  v6(v5);
  return v4;
}

unint64_t sub_240E7A7AC()
{
  result = qword_27E51B540;
  if (!qword_27E51B540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B520, &qword_240E88C38);
    sub_240E7A864();
    sub_240E7ADD4(&qword_281503780, &unk_27E51B588, &unk_240E88D30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B540);
  }

  return result;
}

unint64_t sub_240E7A864()
{
  result = qword_27E51B548;
  if (!qword_27E51B548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B518, &qword_240E88C30);
    sub_240E7A91C();
    sub_240E7ADD4(&qword_281503798, &unk_27E51B580, &unk_240E88D28, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B548);
  }

  return result;
}

unint64_t sub_240E7A91C()
{
  result = qword_27E51B550;
  if (!qword_27E51B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B510, &qword_240E88C28);
    sub_240E7A9D4();
    sub_240E7ADD4(&qword_281503788, &unk_27E51B578, &unk_240E88D20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B550);
  }

  return result;
}

unint64_t sub_240E7A9D4()
{
  result = qword_27E51B558;
  if (!qword_27E51B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B508, &qword_240E88C20);
    sub_240E7AA8C();
    sub_240E7ADD4(&qword_281503790, &unk_27E51B570, &unk_240E88D18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B558);
  }

  return result;
}

unint64_t sub_240E7AA8C()
{
  result = qword_27E51B560;
  if (!qword_27E51B560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B500, &qword_240E88C18);
    sub_240E7AB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B560);
  }

  return result;
}

unint64_t sub_240E7AB18()
{
  result = qword_27E51B568;
  if (!qword_27E51B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B4F8, &qword_240E88C10);
    sub_240E7A650();
    sub_240E7ABD4(&qword_27E51B238, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B568);
  }

  return result;
}

uint64_t sub_240E7ABD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240E7AC1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_24();
  v6(v5);
  return v4;
}

uint64_t sub_240E7AC68(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_240E7ACBC()
{
  result = qword_27E51B5A8;
  if (!qword_27E51B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B5A0, &qword_240E88D48);
    sub_240E6DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B5A8);
  }

  return result;
}

unint64_t sub_240E7AD48()
{
  result = qword_27E51B5B8;
  if (!qword_27E51B5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B5B0, &unk_240E88D58);
    sub_240E7ACBC();
    sub_240E6DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B5B8);
  }

  return result;
}

uint64_t sub_240E7ADD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_7_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240E7AE18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_240E7AEA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_240E7AF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B5D8;
  if (!qword_27E51B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B5D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_240E6DC44(v4, v2 - 144);
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_240E871A4();
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_240E871A4();
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_240E7B0B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_240E7B0F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240E7B19C(char a1)
{
  sub_240E871C4();
  MEMORY[0x245CD1EF0](a1 & 1);
  return sub_240E871F4();
}

uint64_t sub_240E7B200(uint64_t a1, uint64_t a2)
{
  v2 = sub_240E87184();

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

uint64_t sub_240E7B254@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = sub_240E869B4();
  }

  else
  {
    v6 = sub_240E869C4();
  }

  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5E0, &qword_240E88EB0);
  v15 = sub_240E7BD70(a1);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 25) = HIBYTE(a2) & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_240E7BF28;
  *(v9 + 24) = v8;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5E8, &qword_240E88ED8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5F0, &qword_240E88EE0);
  v12 = sub_240E6BAE4(&qword_27E51B5F8, &qword_27E51B5E8, &qword_240E88ED8, MEMORY[0x277D83980]);
  v13 = sub_240E6BAE4(&qword_27E51B600, &qword_27E51B5F0, &qword_240E88EE0, MEMORY[0x277CE14C0]);
  return sub_240E86DF4(&v15, KeyPath, sub_240E7BF48, v9, v10, v11, v12, MEMORY[0x277D83B98], v13);
}

uint64_t sub_240E7B424@<X0>(void *a1@<X1>, int a2@<W3>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v90 = a3;
  v7 = sub_240E86614();
  v85 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240E86DE4();
  KeyPath = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B608, &qword_240E88EE8);
  v13 = MEMORY[0x28223BE20](v93);
  v87 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B610, &qword_240E88EF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v94 = &v83 - v19;
  v20 = [a1 padding];
  v21 = sub_240E86F74();
  v23 = v22;

  LODWORD(v23) = sub_240E7B200(v21, v23);
  v24 = 0x278CBA000uLL;
  v25 = [a1 label];
  v89 = a2;
  LOBYTE(a4) = sub_240E7BC54(v25, a4, v26, a2 & 0x101);

  v88 = v23;
  if (a4)
  {
    sub_240E86DD4();
    if (sub_240E86E14() & 1) != 0 && (v27 = v85, (*(v85 + 104))(v9, *MEMORY[0x277CEE128], v7), v28 = sub_240E86604(), (*(v27 + 8))(v9, v7), (v28))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4B8, &qword_240E88BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_240E87DB0;
      v30 = sub_240E86A64();
      *(inited + 32) = v30;
      v31 = sub_240E86A84();
      *(inited + 33) = v31;
      v32 = sub_240E86A74();
      sub_240E86A74();
      if (sub_240E86A74() != v30)
      {
        v32 = sub_240E86A74();
      }

      sub_240E86A74();
      if (sub_240E86A74() != v31)
      {
        v32 = sub_240E86A74();
      }

      v33 = v93;
      v24 = 0x278CBA000;
    }

    else
    {
      v36 = sub_240E86A64();
      v32 = sub_240E86A74();
      sub_240E86A74();
      v37 = sub_240E86A74();
      v33 = v93;
      if (v37 != v36)
      {
        v32 = sub_240E86A74();
      }
    }

    sub_240E86684();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v87;
    (*(KeyPath + 32))(v87, v12, v92);
    v47 = v46 + *(v33 + 36);
    *v47 = v32;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    v48 = v86;
    sub_240E7BFE0(v46, v86);
    v35 = v94;
    sub_240E7BFE0(v48, v94);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v93;
    v35 = v94;
  }

  __swift_storeEnumTagSinglePayload(v35, v34, 1, v33);
  v49 = [a1 *(v24 + 3336)];
  v50 = [a1 image];
  v51 = [a1 accessibilityIdentifier];
  v52 = sub_240E86F74();
  v54 = v53;

  sub_240E6D5D0();
  v87 = sub_240E6DA6C(0xD00000000000004DLL, 0x8000000240E8A000);
  KeyPath = swift_getKeyPath();
  LOBYTE(v97[0]) = 0;
  sub_240E76080(v49, 11043042, 0xA300000000000000, v52, v54);
  v86 = v55;

  v56 = sub_240E7E044(v49, v50);
  v84 = v58;
  v85 = v57;
  v94 = v59;

  LODWORD(v93) = LOBYTE(v97[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4B8, &qword_240E88BC0);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_240E87DB0;
  LOBYTE(v52) = sub_240E86A64();
  *(v60 + 32) = v52;
  v61 = sub_240E86A84();
  *(v60 + 33) = v61;
  v62 = sub_240E86A74();
  sub_240E86A74();
  if (sub_240E86A74() != v52)
  {
    v62 = sub_240E86A74();
  }

  sub_240E86A74();
  if (sub_240E86A74() == v61)
  {
    LODWORD(v92) = v62;
  }

  else
  {
    LODWORD(v92) = sub_240E86A74();
  }

  v89 &= 1u;
  v63 = v89;
  sub_240E86684();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v115 = 0;
  v72 = v95;
  sub_240E7BF78(v35, v95, &qword_27E51B610, &qword_240E88EF0);
  v73 = v72;
  v74 = v90;
  sub_240E7BF78(v73, v90, &qword_27E51B610, &qword_240E88EF0);
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B618, &qword_240E88F28) + 48);
  v76 = v86;
  v77 = v87;
  v96[0] = v87;
  v96[1] = v86;
  LOBYTE(v96[2]) = v63;
  *(&v96[2] + 1) = *v114;
  HIDWORD(v96[2]) = *&v114[3];
  v78 = v56;
  v79 = v84;
  v80 = v85;
  v96[3] = v56;
  v96[4] = v85;
  v96[5] = v84;
  v96[6] = v94;
  v81 = KeyPath;
  v96[7] = KeyPath;
  LOBYTE(v96[8]) = v93;
  *(&v96[8] + 1) = v117[0];
  HIDWORD(v96[8]) = *(v117 + 3);
  LOBYTE(v96[9]) = v92;
  HIDWORD(v96[9]) = *&v116[3];
  *(&v96[9] + 1) = *v116;
  v96[10] = v65;
  v96[11] = v67;
  v96[12] = v69;
  v96[13] = v71;
  LOBYTE(v96[14]) = 0;
  memcpy((v74 + v75), v96, 0x71uLL);
  sub_240E7BF78(v96, v97, &qword_27E51B620, &unk_240E88F30);
  sub_240E6DFC8(v35, &qword_27E51B610, &qword_240E88EF0);
  v97[0] = v77;
  v97[1] = v76;
  v98 = v89;
  *v99 = *v114;
  *&v99[3] = *&v114[3];
  v100 = v78;
  v101 = v80;
  v102 = v79;
  v103 = v94;
  v104 = v81;
  v105 = v93;
  *v106 = v117[0];
  *&v106[3] = *(v117 + 3);
  v107 = v92;
  *&v108[3] = *&v116[3];
  *v108 = *v116;
  v109 = v65;
  v110 = v67;
  v111 = v69;
  v112 = v71;
  v113 = 0;
  sub_240E6DFC8(v97, &qword_27E51B620, &unk_240E88F30);
  return sub_240E6DFC8(v95, &qword_27E51B610, &qword_240E88EF0);
}

uint64_t sub_240E7BC54(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    return (a4 >> 8) & 1;
  }

  v4 = [a1 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_240E7C050();
  v5 = sub_240E86F34();

  sub_240E6D14C(v5, &v8, *MEMORY[0x277CEE2F8]);

  if (v9)
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_240E6DFC8(&v8, &qword_27E51B178, "V:");
  }

  return 1;
}

uint64_t sub_240E7BD50@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_240E7B254(*v1, v2 | *(v1 + 8), a1);
}

void *sub_240E7BD70(uint64_t a1)
{
  result = sub_240E6F3C4();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x245CD1E50](v4, a1);
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v10 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B628, &qword_240E88F40);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      a1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_240E7BF28@<X0>(void *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(v3 + 25))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_240E7B424(a1, v4 | *(v3 + 24), a2, a3);
}

uint64_t sub_240E7BF78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_240E7BFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B608, &qword_240E88EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E7C050()
{
  result = qword_281503740;
  if (!qword_281503740)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503740);
  }

  return result;
}

void *sub_240E7C0A8(void *result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = result[2];
  v5 = (MEMORY[0x277D84F90] + 32);
  v6 = result + 4;
  while (1)
  {
    if (v4 == v2)
    {
      v17 = v3[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v16 = __OFSUB__(v18, v1);
        v19 = v18 - v1;
        if (v16)
        {
          goto LABEL_27;
        }

        v3[2] = v19;
      }

      return v3;
    }

    v7 = v6[v2];
    if (v1)
    {

      v8 = v3;
    }

    else
    {
      v9 = v3[3];
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      v11 = v10 <= 1 ? 1 : v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B630, &qword_240E88F48);
      v8 = swift_allocObject();
      v12 = (_swift_stdlib_malloc_size(v8) - 32) / 16;
      v8[2] = v11;
      v8[3] = 2 * v12;
      v13 = v8 + 4;
      v14 = v3[3] >> 1;
      v5 = &v8[2 * v14 + 4];
      v1 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
      if (v3[2])
      {
        if (v8 != v3 || v13 >= &v3[2 * v14 + 4])
        {
          memmove(v13, v3 + 4, 16 * v14);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v16 = __OFSUB__(v1--, 1);
    if (v16)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5 += 2;
    ++v2;
    v3 = v8;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for FlexListView.Layout(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FlexListView.Layout(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_240E7C390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B648;
  if (!qword_27E51B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B648);
  }

  return result;
}

uint64_t sub_240E7C410@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a2@<X8>)@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  result = (*(v9 + 32))(v13 + v12, v11, v8);
  *a2 = sub_240E7CAD0;
  a2[1] = v13;
  return result;
}

uint64_t sub_240E7C55C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_240E86E24();
  a3[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B658, &qword_240E89078);
  return sub_240E7C5D4(a2, (a3 + *(v8 + 44)));
}

uint64_t sub_240E7C5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a1;
  v53 = a2;
  v4 = sub_240E86A04();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B660, &qword_240E89080);
  v8 = MEMORY[0x28223BE20](v51);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v50 = sub_240E86D34();
  sub_240E86704();
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B668, &qword_240E89088) + 36)];
  v14 = *(v5 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_240E86974();
  v17 = *(*(v16 - 8) + 104);
  v17(&v13[v14], v15, v16);
  sub_240E869E4();
  *v13 = v18;
  *(v13 + 1) = v19;
  *(v13 + 2) = v20;
  *(v13 + 3) = v21;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B670, &qword_240E89090) + 36)] = 256;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070);
  (*(*(v22 - 8) + 16))(v11, v49, v22);
  sub_240E86704();
  v17(&v7[*(v5 + 28)], v15, v16);
  sub_240E869E4();
  *v7 = v23;
  *(v7 + 1) = v24;
  *(v7 + 2) = v25;
  *(v7 + 3) = v26;
  if (qword_27E51B0A8 != -1)
  {
    swift_once();
  }

  v27 = qword_27E51B2E0;
  sub_240E866B4();
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B678, &qword_240E89098) + 36)];
  sub_240E7CB60(v7, v28);
  v29 = *&v54 * 0.5;
  v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B680, &qword_240E890A0) + 68);
  sub_240E7CB60(v7, v30);
  *(v30 + *(sub_240E869F4() + 20)) = v29;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B688, &qword_240E890A8) + 36);
  v32 = v55;
  *v31 = v54;
  *(v31 + 16) = v32;
  *(v31 + 32) = v56;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B690, &qword_240E890B0);
  *(v30 + *(v33 + 52)) = v27;
  *(v30 + *(v33 + 56)) = 256;

  v34 = sub_240E86E24();
  v36 = v35;
  sub_240E7CBC4(v7);
  v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B698, &qword_240E890B8) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = sub_240E86E24();
  v40 = v39;
  v41 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6A0, &qword_240E890C0) + 36));
  *v41 = v38;
  v41[1] = v40;
  sub_240E86704();
  sub_240E86704();
  sub_240E86E24();
  sub_240E866F4();
  v42 = v52;
  v43 = &v11[*(v51 + 36)];
  v44 = v58;
  *v43 = v57;
  *(v43 + 1) = v44;
  *(v43 + 2) = v59;
  sub_240E69CB8(v11, v42);
  v45 = v53;
  *v53 = v50;
  *(v45 + 4) = 256;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6A8, &qword_240E890C8);
  sub_240E69CB8(v42, v45 + *(v46 + 48));

  sub_240E69D20(v11);
  sub_240E69D20(v42);
}

uint64_t sub_240E7CAD0@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070) - 8);
  v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_240E7C55C(v5, a2);
}

uint64_t sub_240E7CB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_240E86A04();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E7CBC4(uint64_t a1)
{
  v2 = sub_240E86A04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E7CC20()
{
  result = qword_27E51B6B0;
  if (!qword_27E51B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6B8, &unk_240E890D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B6B0);
  }

  return result;
}

uint64_t sub_240E7CC84(uint64_t a1)
{
  v1 = a1;
  sub_240E871C4();
  v2 = sub_240E7956C(v1);
  OUTLINED_FUNCTION_3_4(v2, v3, v4);

  return sub_240E871F4();
}

uint64_t sub_240E7CCE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_240E871C4();
  v3 = sub_240E7956C(v2);
  OUTLINED_FUNCTION_3_4(v3, v4, v5);

  return sub_240E871F4();
}

uint64_t sub_240E7CD34(uint64_t a1, unsigned __int8 a2)
{
  sub_240E871C4();
  MEMORY[0x245CD1EF0](a2);
  return sub_240E871F4();
}

uint64_t sub_240E7CD78(uint64_t a1, char a2)
{
  sub_240E871C4();
  sub_240E86F94();

  return sub_240E871F4();
}

unint64_t sub_240E7CE10(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconAdornmentStyle(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for IconAdornmentStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_240E7CFD0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240E7CE10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_240E7D000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E51B6C0;
  if (!qword_27E51B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B6C0);
  }

  return result;
}

uint64_t sub_240E7D054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v4 = sub_240E867B4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v7 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6C8, &qword_240E89250);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6D0, &qword_240E89258);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v11);
  v69 = &v65 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6D8, &qword_240E89260);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6E0, &qword_240E89268);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6E8, &qword_240E89270);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v20);
  v22 = (&v65 - v21);
  v23 = *(v2 + 16);
  if (v23 == 7)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
    OUTLINED_FUNCTION_3();
    (*(v38 + 16))(v15, v66, v37);
    swift_storeEnumTagMultiPayload();
    sub_240E7DB7C();
    OUTLINED_FUNCTION_1_4();
    sub_240E6BAE4(v39, &qword_27E51B6F8, &qword_240E89288, v40);
    OUTLINED_FUNCTION_4_2();
    sub_240E869D4();
    v32 = &qword_240E89268;
    sub_240E6AF3C(v18, v69, &qword_27E51B6E0, &qword_240E89268);
    swift_storeEnumTagMultiPayload();
    sub_240E7DAC4();
    sub_240E7DCC0();
    sub_240E869D4();
    v35 = v18;
    v36 = &qword_27E51B6E0;
    return sub_240E6AFAC(v35, v36, v32);
  }

  v65 = a2;
  if (v23 == 1)
  {
    v24 = sub_240E7D7C8(v66);
    v25 = sub_240E7D97C();
    v26 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B740, &qword_240E892B8) + 36));
    v27 = *(v4 + 20);
    v28 = *MEMORY[0x277CE0118];
    sub_240E86974();
    OUTLINED_FUNCTION_3();
    (*(v29 + 104))(v26 + v27, v28);
    *v26 = v25;
    v26[1] = v25;
    *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
    *v22 = v24;
    sub_240E86E24();
    sub_240E866F4();
    v30 = (v22 + *(v19 + 36));
    v31 = v72;
    *v30 = v71;
    v30[1] = v31;
    v30[2] = v73;
    v32 = &qword_240E89270;
    sub_240E6AF3C(v22, v15, &qword_27E51B6E8, &qword_240E89270);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
    sub_240E7DB7C();
    OUTLINED_FUNCTION_1_4();
    sub_240E6BAE4(v33, &qword_27E51B6F8, &qword_240E89288, v34);
    OUTLINED_FUNCTION_4_2();
    sub_240E869D4();
    sub_240E6AF3C(v18, v69, &qword_27E51B6E0, &qword_240E89268);
    swift_storeEnumTagMultiPayload();
    sub_240E7DAC4();
    sub_240E7DCC0();
    sub_240E869D4();
    sub_240E6AFAC(v18, &qword_27E51B6E0, &qword_240E89268);
    v35 = v22;
    v36 = &qword_27E51B6E8;
    return sub_240E6AFAC(v35, v36, v32);
  }

  v42 = sub_240E7D97C();
  v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F0, &unk_240E89278) + 36)];
  v44 = *(v4 + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_240E86974();
  OUTLINED_FUNCTION_3();
  v48 = *(v47 + 104);
  v48(v43 + v44, v45, v46);
  *v43 = v42;
  v43[1] = v42;
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
  OUTLINED_FUNCTION_3();
  (*(v49 + 16))(v10, v66);
  v48(v7 + *(v4 + 20), v45, v46);
  *v7 = v42;
  v7[1] = v42;
  v50 = *v2;
  sub_240E866B4();
  v51 = &v10[*(v70 + 36)];
  sub_240E6AD34(v7, v51);
  v52 = *&v71 * 0.5;
  v53 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B700, &qword_240E89290) + 68);
  sub_240E6AD34(v7, v53);
  *(v53 + *(sub_240E867A4() + 20)) = v52;
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B708, &qword_240E89298) + 36);
  v55 = v72;
  *v54 = v71;
  *(v54 + 16) = v55;
  *(v54 + 32) = v73;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B710, &qword_240E892A0);
  *(v53 + *(v56 + 52)) = v50;
  *(v53 + *(v56 + 56)) = 256;

  v57 = sub_240E86E24();
  v59 = v58;
  sub_240E6AD98(v7);
  v60 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B718, &qword_240E892A8) + 36));
  *v60 = v57;
  v60[1] = v59;
  v61 = sub_240E86E24();
  v63 = v62;
  v64 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B720, &qword_240E892B0) + 36));
  *v64 = v61;
  v64[1] = v63;
  sub_240E69DC4(v10, v69);
  swift_storeEnumTagMultiPayload();
  sub_240E7DAC4();
  sub_240E7DCC0();
  sub_240E869D4();
  return sub_240E69E2C(v10);
}

uint64_t sub_240E7D7C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6F8, &qword_240E89288);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B768, &qword_240E892C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  if (*(v1 + 16) == 1)
  {
    v10(v9, a1, v3);
    *&v9[*(v7 + 36)] = xmmword_240E890E0;
    sub_240E7DE5C();
  }

  else
  {
    v10(v6, a1, v3);
    sub_240E6BAE4(&qword_27E51B748, &qword_27E51B6F8, &qword_240E89288, MEMORY[0x277CE04B0]);
  }

  return sub_240E86DC4();
}

double sub_240E7D97C()
{
  v1 = 0.5;
  result = 2.0;
  switch(*(v0 + 16))
  {
    case 1:
      return result;
    case 2:
    case 3:
    case 6:
      return v1 * *(v0 + 24);
    case 4:
      v1 = 0.22;
      return v1 * *(v0 + 24);
    default:
      v1 = 0.11;
      return v1 * *(v0 + 24);
  }
}

uint64_t sub_240E7DA10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_240E7DA50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}
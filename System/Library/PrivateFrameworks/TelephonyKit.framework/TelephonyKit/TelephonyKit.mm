__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Estimation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xED && a1[24])
  {
    return (*a1 + 237);
  }

  v3 = *a1;
  v4 = v3 >= 0x14;
  v5 = v3 - 20;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Estimation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 237;
    if (a3 >= 0xED)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 19;
    }
  }

  return result;
}

TelephonyKit::MigratorContext::Result_optional __swiftcall MigratorContext.Result.init(rawValue:)(TelephonyKit::MigratorContext::Result_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = TelephonyKit_MigratorContext_Result_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_26D24F3E4()
{
  result = qword_2804F5748;
  if (!qword_2804F5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5748);
  }

  return result;
}

uint64_t sub_26D24F438()
{
  sub_26D2627FC();
  sub_26D26281C();
  return sub_26D26282C();
}

uint64_t sub_26D24F4AC(uint64_t a1)
{
  sub_26D2627FC();
  sub_26D26281C();
  return sub_26D26282C();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D24F510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26D24F554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MigratorContext.Result(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MigratorContext.Result(uint64_t result, unsigned int a2, unsigned int a3)
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

TelephonyKit::Reason_optional __swiftcall Reason.init(rawValue:)(TelephonyKit::Reason_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= TelephonyKit_Reason_unknownDefault)
  {
    value = TelephonyKit_Reason_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_26D24F73C()
{
  result = qword_2804F5750;
  if (!qword_2804F5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5750);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_26D24F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v81 = a8;
  v82 = a7;
  v86 = a6;
  v89 = a1;
  v90 = a5;
  v84 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v78 - v19;
  v20 = sub_26D26249C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v24);
  v25 = sub_26D26248C();
  v87 = v26;
  v88 = v25;
  result = (*(v21 + 8))(v23, v20);
  if ((a14 & 0x8000000000000000) == 0)
  {
    v79 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5768, &qword_26D263280);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26D263220;
    *(inited + 32) = 0x6165724365746144;
    *(inited + 40) = 0xEB00000000646574;
    *(inited + 72) = sub_26D26244C();
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_26D26243C();
    strcpy((inited + 80), "SourceFileName");
    *(inited + 95) = -18;
    v29 = MEMORY[0x277D840E8];
    *(inited + 96) = a11;
    *(inited + 104) = a12;
    *(inited + 112) = a13;
    *(inited + 120) = v29;
    *(inited + 128) = 0x694C656372756F53;
    v30 = MEMORY[0x277D83E88];
    *(inited + 136) = 0xEA0000000000656ELL;
    *(inited + 144) = a14;
    v80 = a14;
    *(inited + 168) = v30;
    strcpy((inited + 176), "FunctionName");
    *(inited + 216) = v29;
    v31 = v81;
    *(inited + 189) = 0;
    *(inited + 190) = -5120;
    *(inited + 192) = v31;
    *(inited + 200) = a9;
    *(inited + 208) = a10;
    v32 = sub_26D250B00(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5770, &qword_26D263288);
    swift_arrayDestroy();
    v97 = v32;
    v33 = v82;
    if (v82)
    {
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5788, &unk_26D2632A0);
      *&v95 = v33;
      sub_26D250E94(&v95, v92);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v32;
      sub_26D2563A4(v92, 0xD000000000000013, 0x800000026D264380, isUniquelyReferenced_nonNull_native);
      v97 = v91;
    }

    else
    {
      sub_26D250A5C(0xD000000000000013, 0x800000026D264380, &v95);
      sub_26D250E34(&v95, &qword_2804F5778, &qword_26D263290);
    }

    v35 = v79;
    if (a2)
    {
      v96 = MEMORY[0x277D837D0];
      *&v95 = v89;
      *(&v95 + 1) = a2;
      sub_26D250E94(&v95, v92);

      v36 = v97;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v36;
      sub_26D2563A4(v92, 0xD00000000000001BLL, 0x800000026D264360, v37);
      v97 = v91;
    }

    else
    {
      sub_26D250A5C(0xD00000000000001BLL, 0x800000026D264360, &v95);
      sub_26D250E34(&v95, &qword_2804F5778, &qword_26D263290);
    }

    v38 = sub_26D26251C();
    v40 = v39;
    v41 = v83;
    sub_26D250EA4(v90, v83, &qword_2804F5860, &qword_26D263600);
    v42 = sub_26D26240C();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    if (v44(v41, 1, v42) == 1)
    {
      sub_26D250E34(v41, &qword_2804F5860, &qword_26D263600);
      sub_26D250A5C(v38, v40, &v95);

      sub_26D250E34(&v95, &qword_2804F5778, &qword_26D263290);
      v46 = v84;
      v45 = v85;
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v96 = v42;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v95);
      (*(v43 + 32))(boxed_opaque_existential_0, v41, v42);
      sub_26D250E94(&v95, v92);
      v48 = v97;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v48;
      sub_26D2563A4(v92, v38, v40, v49);

      v97 = v91;
      v46 = v84;
      v45 = v85;
      if (a2)
      {
LABEL_10:
        if (v46)
        {
          *&v95 = v89;
          *(&v95 + 1) = a2;

          MEMORY[0x26D6B7AB0](8250, 0xE200000000000000);
          MEMORY[0x26D6B7AB0](v35, v46);
          a2 = *(&v95 + 1);
          v35 = v95;
        }

        else
        {

          v35 = v89;
        }

        goto LABEL_17;
      }
    }

    if (v46)
    {

      a2 = v46;
    }

    else
    {
      a2 = 0;
    }

LABEL_17:
    sub_26D250EA4(v90, v45, &qword_2804F5860, &qword_26D263600);
    if (v44(v45, 1, v42) == 1)
    {
      sub_26D250E34(v45, &qword_2804F5860, &qword_26D263600);
      if (!a2)
      {
LABEL_26:
        v59 = v86;
        v60 = *(v86 + 16);
        if (v60 < 2)
        {
          if (v60 != 1)
          {
LABEL_31:
            v74 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v75 = sub_26D2624FC();

            v76 = sub_26D2624BC();

            v77 = [v74 initWithDomain:v75 code:v80 userInfo:v76];

            return v77;
          }

          v66 = sub_26D26251C();
          v68 = v67;
          swift_getErrorValue();
          v69 = v93;
          v70 = v94;
          v96 = v94;
          v71 = __swift_allocate_boxed_opaque_existential_0(&v95);
          (*(*(v70 - 8) + 16))(v71, v69, v70);
          sub_26D250E94(&v95, v92);
          v72 = v97;
          v73 = swift_isUniquelyReferenced_nonNull_native();
          v91 = v72;
          sub_26D2563A4(v92, v66, v68, v73);
        }

        else
        {
          v61 = sub_26D26251C();
          v63 = v62;
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5780, &qword_26D263298);
          *&v95 = v59;
          sub_26D250E94(&v95, v92);

          v64 = v97;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v91 = v64;
          sub_26D2563A4(v92, v61, v63, v65);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v50 = sub_26D2623FC();
      v51 = v45;
      v53 = v52;
      (*(v43 + 8))(v51, v42);
      if (!a2)
      {
        if (!v53)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (v53)
      {
        *&v95 = v35;
        *(&v95 + 1) = a2;

        MEMORY[0x26D6B7AB0](8250, 0xE200000000000000);
        MEMORY[0x26D6B7AB0](v50, v53);

        v53 = *(&v95 + 1);
        v50 = v95;
LABEL_25:
        v54 = sub_26D26251C();
        v56 = v55;
        v96 = MEMORY[0x277D837D0];
        *&v95 = v50;
        *(&v95 + 1) = v53;
        sub_26D250E94(&v95, v92);
        v57 = v97;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v57;
        sub_26D2563A4(v92, v54, v56, v58);

        v97 = v91;
        goto LABEL_26;
      }
    }

    v50 = v35;
    v53 = a2;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D25024C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_26D2627CC();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_26D2623EC();

  v11 = [v10 domain];
  v12 = sub_26D26251C();
  v14 = v13;

  v15 = [v10 code];
  v16 = [v10 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5760, &unk_26D263270);
  v17 = sub_26D2625FC();

  if (*(v17 + 16))
  {
    v18 = *(v17 + 32);
    v19 = v18;

    v26 = v12;
    v27 = v14;
    MEMORY[0x26D6B7AB0](58, 0xE100000000000000);
    v25 = v15;
    v20 = sub_26D2627BC();
    MEMORY[0x26D6B7AB0](v20);

    MEMORY[0x26D6B7AB0](47, 0xE100000000000000);
    swift_getErrorValue();
    v21 = sub_26D25024C(v24[2], v24[3]);
    MEMORY[0x26D6B7AB0](v21);
  }

  else
  {

    v26 = v12;
    v27 = v14;
    MEMORY[0x26D6B7AB0](58, 0xE100000000000000);
    v25 = v15;
    v22 = sub_26D2627BC();
    MEMORY[0x26D6B7AB0](v22);
  }

  return v26;
}

uint64_t sub_26D250518(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_26D2627CC();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_26D2623EC();

  v11 = [v10 userInfo];
  v12 = sub_26D2624CC();

  if (*(v12 + 16) && (v13 = sub_26D255A54(0xD00000000000001BLL, 0x800000026D264360), (v14 & 1) != 0))
  {
    sub_26D250D2C(*(v12 + 56) + 32 * v13, v17);

    if (swift_dynamicCast())
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_26D25072C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  DynamicType = swift_getDynamicType();
  v11 = sub_26D250CE0();
  v12 = *(v4 + 16);
  if (DynamicType == v11)
  {
    v12(v9, v2, a1);
    v14 = sub_26D2627CC();
    if (v14)
    {
      v15 = v14;
      (*(v4 + 8))(v9, a1);
    }

    else
    {
      v15 = swift_allocError();
      (*(v4 + 32))(v16, v9, a1);
    }

    v17 = sub_26D2623EC();

    v18 = [v17 localizedDescription];
    v19 = sub_26D26251C();

    return v19;
  }

  else
  {
    v12(v7, v2, a1);
    return sub_26D26252C();
  }
}

uint64_t sub_26D250920(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D25072C(a1, a2);
  v6 = v5;
  sub_26D250518(a1, a2);
  if (v7)
  {

    MEMORY[0x26D6B7AB0](8250, 0xE200000000000000);
    v8 = sub_26D2625CC();

    if (v8)
    {
      v9 = sub_26D26257C();

      v10 = sub_26D250C30(v9, v4, v6);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v4 = MEMORY[0x26D6B7A60](v10, v12, v14, v16);

      return v4;
    }
  }

  v17 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v17 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    return 0;
  }

  return v4;
}

double sub_26D250A5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26D255A54(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26D2567A0();
      v10 = v12;
    }

    sub_26D250E94((*(v10 + 56) + 32 * v8), a3);
    sub_26D256044(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_26D250B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5880, &qword_26D263450);
    v3 = sub_26D26278C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26D250EA4(v4, &v13, &qword_2804F5770, &qword_26D263288);
      v5 = v13;
      v6 = v14;
      result = sub_26D255A54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26D250E94(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26D250C30(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_26D26259C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26D2625EC();
}

unint64_t sub_26D250CE0()
{
  result = qword_2804F5758;
  if (!qword_2804F5758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F5758);
  }

  return result;
}

uint64_t sub_26D250D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26D250E34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_26D250E94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26D250EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static Log.loggerForFile(flair:sourceFile:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_26D26249C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v10);
  v11 = sub_26D26248C();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0x296C696E28;
  }

  if (!v13)
  {
    v13 = 0xE500000000000000;
  }

  if (a2)
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
    MEMORY[0x26D6B7AB0](v14, v13);
  }

  return sub_26D26246C();
}

uint64_t static Log.loggerFor(flair:category:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
    MEMORY[0x26D6B7AB0](a3, a4);
  }

  else
  {
  }

  return sub_26D26246C();
}

uint64_t static Log.loggerFor(flair:subcategory:sourceFile:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a8@<X8>)
{
  v24[1] = a8;
  v11 = sub_26D26249C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v15);
  v16 = sub_26D26248C();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  v19 = 0x296C696E28;
  if (v18)
  {
    v19 = v16;
  }

  v20 = 0xE500000000000000;
  if (v18)
  {
    v20 = v18;
  }

  v25 = v19;
  v26 = v20;
  MEMORY[0x26D6B7AB0](47, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](a3, a4);
  v22 = v25;
  v21 = v26;
  if (a2)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
    MEMORY[0x26D6B7AB0](v22, v21);
  }

  return sub_26D26246C();
}

uint64_t getEnumTagSinglePayload for Log(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Log(_WORD *result, int a2, int a3)
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

void sub_26D251428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_26D26240C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D26267C();
  v14 = sub_26D26273C();
  v16 = v15;
  sub_26D253F50(a4, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26D250E34(v9, &qword_2804F5860, &qword_26D263600);
    v17 = 0;
    v18 = 0;
    if (a5)
    {
LABEL_3:
      swift_getErrorValue();
      v19 = v29;
      v20 = v30;
      v21 = a5;
      v22 = sub_26D25024C(v19, v20);
      v27 = 0xABC220919B9FF0;
      v28 = 0xA700000000000000;
      MEMORY[0x26D6B7AB0](v22);

      MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
      v23 = v27;
      v24 = v28;
      v25 = a5;
      sub_26D251704(v14, v16, v17, v18, v23, v24, a5);

      return;
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = sub_26D2623FC();
    v18 = v26;
    (*(v11 + 8))(v13, v10);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  sub_26D251704(v14, v16, v17, v18, 0, 0xE000000000000000, 0);
}

uint64_t sub_26D251704(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v7 = a7;
  if (!a7)
  {
    v120 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  swift_getErrorValue();
  v120 = sub_26D250518(v125, v126);
  v14 = v13;
  swift_getErrorValue();
  v15 = sub_26D250920(v123, v124);
  v17 = v15;
  v18 = v16;
  if (v16)
  {
    if (v14 && (v15 == v120 && v16 == v14 || (sub_26D2627DC() & 1) != 0))
    {

      v19 = v14;
LABEL_9:
      v17 = 0;
      v18 = 0;
      v14 = v19;
    }
  }

  else
  {
    v19 = 0;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    if (a2)
    {
LABEL_18:
      a4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    a3 = 0;
    goto LABEL_18;
  }

  if (a2 && (a3 == a1 && a4 == a2 || (sub_26D2627DC() & 1) != 0))
  {
    goto LABEL_17;
  }

LABEL_19:
  if (v14)
  {
    if (v18)
    {
      if (a2)
      {
        if (a4)
        {
          v113 = v17;

          v20 = sub_26D26245C();
          v21 = sub_26D26267C();

          if (os_log_type_enabled(v20, v21))
          {
            v117 = v7;
            v22 = swift_slowAlloc();
            v112 = a6;
            v23 = a5;
            v24 = swift_slowAlloc();
            v127 = v24;
            *v22 = 136447234;
            *(v22 + 4) = sub_26D25AA9C(a1, a2, &v127);
            *(v22 + 12) = 2080;
            v25 = sub_26D25AA9C(a3, a4, &v127);

            *(v22 + 14) = v25;
            *(v22 + 22) = 2082;
            *(v22 + 24) = sub_26D25AA9C(v23, v112, &v127);
            *(v22 + 32) = 2082;
            v26 = sub_26D25AA9C(v120, v14, &v127);

            *(v22 + 34) = v26;
            *(v22 + 42) = 2080;
            v27 = sub_26D25AA9C(v113, v18, &v127);

            *(v22 + 44) = v27;
            _os_log_impl(&dword_26D24E000, v20, v21, "%{public}s: %s %{public}s%{public}s: %s", v22, 0x34u);
            swift_arrayDestroy();
            MEMORY[0x26D6B8170](v24, -1, -1);
            v28 = v22;
            v7 = v117;
LABEL_73:
            MEMORY[0x26D6B8170](v28, -1, -1);
            goto LABEL_74;
          }

          goto LABEL_63;
        }

        v20 = sub_26D26245C();
        v57 = sub_26D26267C();

        if (!os_log_type_enabled(v20, v57))
        {

          goto LABEL_64;
        }

        v58 = a6;
        v59 = a5;
        v32 = swift_slowAlloc();
        v118 = v7;
        v33 = swift_slowAlloc();
        v127 = v33;
        *v32 = 136446978;
        *(v32 + 4) = sub_26D25AA9C(a1, a2, &v127);
        *(v32 + 12) = 2082;
        *(v32 + 14) = sub_26D25AA9C(v59, v58, &v127);
        *(v32 + 22) = 2082;
        v60 = sub_26D25AA9C(v120, v14, &v127);

        *(v32 + 24) = v60;
        *(v32 + 32) = 2080;
        v61 = sub_26D25AA9C(v17, v18, &v127);

        *(v32 + 34) = v61;
        v36 = "%{public}s %{public}s%{public}s: %s";
        v37 = v57;
LABEL_45:
        _os_log_impl(&dword_26D24E000, v20, v37, v36, v32, 0x2Au);
        swift_arrayDestroy();
        v62 = v33;
        v7 = v118;
        MEMORY[0x26D6B8170](v62, -1, -1);
        v28 = v32;
        goto LABEL_73;
      }

      if (a4)
      {

        v43 = sub_26D26245C();
        v44 = sub_26D26267C();

        if (os_log_type_enabled(v43, v44))
        {
          v115 = v17;
          v45 = a6;
          v46 = a5;
          v47 = swift_slowAlloc();
          v119 = v7;
          v48 = swift_slowAlloc();
          v127 = v48;
          *v47 = 136315906;
          v49 = sub_26D25AA9C(a3, a4, &v127);

          *(v47 + 4) = v49;
          *(v47 + 12) = 2082;
          *(v47 + 14) = sub_26D25AA9C(v46, v45, &v127);
          *(v47 + 22) = 2082;
          v50 = sub_26D25AA9C(v120, v14, &v127);

          *(v47 + 24) = v50;
          *(v47 + 32) = 2080;
          v51 = sub_26D25AA9C(v115, v18, &v127);

          *(v47 + 34) = v51;
          _os_log_impl(&dword_26D24E000, v43, v44, "%s %{public}s%{public}s: %s", v47, 0x2Au);
          swift_arrayDestroy();
          v52 = v48;
          v7 = v119;
LABEL_82:
          MEMORY[0x26D6B8170](v52, -1, -1);
          v97 = v47;
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      v43 = sub_26D26245C();
      v85 = sub_26D26267C();

      if (!os_log_type_enabled(v43, v85))
      {

        goto LABEL_94;
      }

      v86 = v17;
      v87 = a6;
      v88 = a5;
      v47 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v127 = v89;
      *v47 = 136446722;
      *(v47 + 4) = sub_26D25AA9C(v88, v87, &v127);
      *(v47 + 12) = 2082;
      v90 = sub_26D25AA9C(v120, v14, &v127);

      *(v47 + 14) = v90;
      *(v47 + 22) = 2080;
      v91 = sub_26D25AA9C(v86, v18, &v127);

      *(v47 + 24) = v91;
      _os_log_impl(&dword_26D24E000, v43, v85, "%{public}s%{public}s: %s", v47, 0x20u);
      goto LABEL_80;
    }

    if (a2)
    {
      if (a4)
      {

        v20 = sub_26D26245C();
        v38 = sub_26D26267C();

        if (os_log_type_enabled(v20, v38))
        {
          v39 = a6;
          v40 = a5;
          v32 = swift_slowAlloc();
          v118 = v7;
          v33 = swift_slowAlloc();
          v127 = v33;
          *v32 = 136446978;
          *(v32 + 4) = sub_26D25AA9C(a1, a2, &v127);
          *(v32 + 12) = 2080;
          v41 = sub_26D25AA9C(a3, a4, &v127);

          *(v32 + 14) = v41;
          *(v32 + 22) = 2082;
          *(v32 + 24) = sub_26D25AA9C(v40, v39, &v127);
          *(v32 + 32) = 2082;
          v42 = sub_26D25AA9C(v120, v14, &v127);

          *(v32 + 34) = v42;
          v36 = "%{public}s: %s %{public}s%{public}s";
          v37 = v38;
          goto LABEL_45;
        }

        goto LABEL_63;
      }

      v81 = a5;

      v20 = sub_26D26245C();
      v82 = sub_26D26267C();

      if (!os_log_type_enabled(v20, v82))
      {
        goto LABEL_64;
      }

      v77 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v127 = v83;
      *v77 = 136446722;
      *(v77 + 4) = sub_26D25AA9C(a1, a2, &v127);
      *(v77 + 12) = 2082;
      *(v77 + 14) = sub_26D25AA9C(v81, a6, &v127);
      *(v77 + 22) = 2082;
      v84 = sub_26D25AA9C(v120, v14, &v127);

      *(v77 + 24) = v84;
      _os_log_impl(&dword_26D24E000, v20, v82, "%{public}s %{public}s%{public}s", v77, 0x20u);
      goto LABEL_71;
    }

    if (a4)
    {

      v43 = sub_26D26245C();
      v69 = sub_26D26267C();

      if (os_log_type_enabled(v43, v69))
      {
        v70 = a6;
        v71 = a5;
        v47 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v127 = v72;
        *v47 = 136315650;
        v73 = sub_26D25AA9C(a3, a4, &v127);

        *(v47 + 4) = v73;
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_26D25AA9C(v71, v70, &v127);
        *(v47 + 22) = 2082;
        v74 = sub_26D25AA9C(v120, v14, &v127);

        *(v47 + 24) = v74;
        _os_log_impl(&dword_26D24E000, v43, v69, "%s %{public}s%{public}s", v47, 0x20u);
        swift_arrayDestroy();
        v52 = v72;
        goto LABEL_82;
      }

LABEL_84:

      goto LABEL_94;
    }

    v43 = sub_26D26245C();
    v99 = sub_26D26267C();

    if (!os_log_type_enabled(v43, v99))
    {
      goto LABEL_94;
    }

    v104 = a6;
    v105 = a5;
    v47 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v127 = v89;
    *v47 = 136446466;
    *(v47 + 4) = sub_26D25AA9C(v105, v104, &v127);
    *(v47 + 12) = 2082;
    v106 = sub_26D25AA9C(v120, v14, &v127);

    *(v47 + 14) = v106;
    v103 = "%{public}s%{public}s";
LABEL_79:
    _os_log_impl(&dword_26D24E000, v43, v99, v103, v47, 0x16u);
LABEL_80:
    swift_arrayDestroy();
LABEL_81:
    v52 = v89;
    goto LABEL_82;
  }

  if (v18)
  {
    if (a2)
    {
      if (a4)
      {

        v20 = sub_26D26245C();
        v29 = sub_26D26267C();

        if (os_log_type_enabled(v20, v29))
        {
          v114 = v17;
          v30 = a6;
          v31 = a5;
          v32 = swift_slowAlloc();
          v118 = v7;
          v33 = swift_slowAlloc();
          v127 = v33;
          *v32 = 136446978;
          *(v32 + 4) = sub_26D25AA9C(a1, a2, &v127);
          *(v32 + 12) = 2080;
          v34 = sub_26D25AA9C(a3, a4, &v127);

          *(v32 + 14) = v34;
          *(v32 + 22) = 2082;
          *(v32 + 24) = sub_26D25AA9C(v31, v30, &v127);
          *(v32 + 32) = 2080;
          v35 = sub_26D25AA9C(v114, v18, &v127);

          *(v32 + 34) = v35;
          v36 = "%{public}s: %s %{public}s%s";
          v37 = v29;
          goto LABEL_45;
        }

LABEL_63:

LABEL_64:

LABEL_74:

        return sub_26D252BB0(v7);
      }

      v75 = a5;

      v20 = sub_26D26245C();
      v76 = sub_26D26267C();

      if (!os_log_type_enabled(v20, v76))
      {
        goto LABEL_64;
      }

      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v127 = v78;
      *v77 = 136446722;
      *(v77 + 4) = sub_26D25AA9C(a1, a2, &v127);
      *(v77 + 12) = 2082;
      *(v77 + 14) = sub_26D25AA9C(v75, a6, &v127);
      *(v77 + 22) = 2080;
      v79 = sub_26D25AA9C(v17, v18, &v127);

      *(v77 + 24) = v79;
      _os_log_impl(&dword_26D24E000, v20, v76, "%{public}s %{public}s%s", v77, 0x20u);
      swift_arrayDestroy();
      v80 = v78;
LABEL_72:
      MEMORY[0x26D6B8170](v80, -1, -1);
      v28 = v77;
      goto LABEL_73;
    }

    if (a4)
    {

      v43 = sub_26D26245C();
      v63 = sub_26D26267C();

      if (os_log_type_enabled(v43, v63))
      {
        v116 = v17;
        v64 = a6;
        v65 = a5;
        v47 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v127 = v66;
        *v47 = 136315650;
        v67 = sub_26D25AA9C(a3, a4, &v127);

        *(v47 + 4) = v67;
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_26D25AA9C(v65, v64, &v127);
        *(v47 + 22) = 2080;
        v68 = sub_26D25AA9C(v116, v18, &v127);

        *(v47 + 24) = v68;
        _os_log_impl(&dword_26D24E000, v43, v63, "%s %{public}s%s", v47, 0x20u);
        swift_arrayDestroy();
        v52 = v66;
        goto LABEL_82;
      }

      goto LABEL_84;
    }

    v43 = sub_26D26245C();
    v99 = sub_26D26267C();

    if (os_log_type_enabled(v43, v99))
    {
      v100 = a6;
      v101 = a5;
      v47 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v127 = v89;
      *v47 = 136446466;
      *(v47 + 4) = sub_26D25AA9C(v101, v100, &v127);
      *(v47 + 12) = 2080;
      v102 = sub_26D25AA9C(v17, v18, &v127);

      *(v47 + 14) = v102;
      v103 = "%{public}s%s";
      goto LABEL_79;
    }

LABEL_94:

    goto LABEL_95;
  }

  if (a2)
  {
    v121 = a5;
    if (a4)
    {

      v20 = sub_26D26245C();
      v53 = sub_26D26267C();

      if (os_log_type_enabled(v20, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v127 = v55;
        *v54 = 136446722;
        *(v54 + 4) = sub_26D25AA9C(v121, a6, &v127);
        *(v54 + 12) = 2082;
        *(v54 + 14) = sub_26D25AA9C(a1, a2, &v127);
        *(v54 + 22) = 2080;
        v56 = sub_26D25AA9C(a3, a4, &v127);

        *(v54 + 24) = v56;
        _os_log_impl(&dword_26D24E000, v20, v53, "%{public}s%{public}s: %s", v54, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6B8170](v55, -1, -1);
        v28 = v54;
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v20 = sub_26D26245C();
    v98 = sub_26D26267C();

    if (!os_log_type_enabled(v20, v98))
    {
      goto LABEL_74;
    }

    v77 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v127 = v83;
    *v77 = 136446466;
    *(v77 + 4) = sub_26D25AA9C(v121, a6, &v127);
    *(v77 + 12) = 2082;
    *(v77 + 14) = sub_26D25AA9C(a1, a2, &v127);
    _os_log_impl(&dword_26D24E000, v20, v98, "%{public}s%{public}s", v77, 0x16u);
LABEL_71:
    swift_arrayDestroy();
    v80 = v83;
    goto LABEL_72;
  }

  if (a4)
  {
    v92 = a5;

    v43 = sub_26D26245C();
    v93 = sub_26D26267C();

    if (os_log_type_enabled(v43, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v127 = v95;
      *v94 = 136446466;
      *(v94 + 4) = sub_26D25AA9C(v92, a6, &v127);
      *(v94 + 12) = 2080;
      v96 = sub_26D25AA9C(a3, a4, &v127);

      *(v94 + 14) = v96;
      _os_log_impl(&dword_26D24E000, v43, v93, "%{public}s%s", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B8170](v95, -1, -1);
      v97 = v94;
LABEL_83:
      MEMORY[0x26D6B8170](v97, -1, -1);
LABEL_95:

      return sub_26D252BB0(v7);
    }

    goto LABEL_94;
  }

  v107 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v107 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {

    v43 = sub_26D26245C();
    v108 = sub_26D26267C();

    if (!os_log_type_enabled(v43, v108))
    {
      goto LABEL_95;
    }

    v109 = a6;
    v110 = a5;
    v47 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v127 = v89;
    *v47 = 136446210;
    *(v47 + 4) = sub_26D25AA9C(v110, v109, &v127);
    _os_log_impl(&dword_26D24E000, v43, v108, "%{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v89);
    goto LABEL_81;
  }

  return sub_26D252BB0(v7);
}

uint64_t sub_26D252BB0(void *a1)
{
  if (!a1 || (v2 = v1, v36 = a1, v3 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5760, &unk_26D263270), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5798, &qword_26D263308), (swift_dynamicCast() & 1) == 0))
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    return sub_26D250E34(&v37, &qword_2804F5790, &qword_26D263300);
  }

  v4 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {
    return sub_26D250E34(&v37, &qword_2804F5790, &qword_26D263300);
  }

  v5 = v39;
  __swift_project_boxed_opaque_existential_1Tm(&v37, *(&v38 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_26D2608F8(*(v6 + 16), 0);
    v9 = sub_26D253D94(&v37, v8 + 4, v7, v6);
    v10 = v37;
    swift_bridgeObjectRetain_n();
    sub_26D253EEC(v10);
    if (v9 != v7)
    {
      goto LABEL_25;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *&v37 = v8;
  sub_26D2531B8(&v37);

  v13 = *(v37 + 16);
  if (!v13)
  {
  }

  v30[1] = v37;
  v9 = (v37 + 40);
  *&v12 = 136446466;
  v31 = v12;
  v32 = v2;
  v34 = v6;
  while (1)
  {
    v18 = --v13 ? 0x20AA8EE220 : 0x20A98EE220;
    if (!*(v6 + 16))
    {
      break;
    }

    v20 = *(v9 - 1);
    v19 = *v9;

    v21 = sub_26D255A54(v20, v19);
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_26D250D2C(*(v6 + 56) + 32 * v21, &v37);
    v23 = __swift_project_boxed_opaque_existential_1Tm(&v37, *(&v38 + 1));
    MEMORY[0x28223BE20](v23);
    (*(v25 + 16))(v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v35 = sub_26D26252C();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm(&v37);

    v28 = sub_26D26245C();
    v29 = sub_26D26267C();

    if (os_log_type_enabled(v28, v29))
    {
      v14 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *&v37 = v18;
      *v14 = v31;
      *(&v37 + 1) = 0xA500000000000000;

      MEMORY[0x26D6B7AB0](v20, v19);

      v15 = sub_26D25AA9C(v37, *(&v37 + 1), &v36);

      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      v16 = sub_26D25AA9C(v35, v27, &v36);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_26D24E000, v28, v29, "%{public}s: %s", v14, 0x16u);
      v17 = v33;
      swift_arrayDestroy();
      MEMORY[0x26D6B8170](v17, -1, -1);
      MEMORY[0x26D6B8170](v14, -1, -1);
    }

    else
    {
    }

    v9 += 2;
    v6 = v34;
    if (!v13)
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
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

char *sub_26D2530AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F57A8, &qword_26D263318);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D2531B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26D253F38(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26D253224(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26D253224(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26D2627AC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26D26260C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26D2533EC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26D25331C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26D25331C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26D2627DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D2533EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_26D253C7C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_26D2539C8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26D2627DC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26D2627DC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26D253C90(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26D253C90((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26D2539C8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26D253C7C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26D253BF0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26D2627DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_26D2539C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26D2627DC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26D2627DC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26D253BF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26D253C7C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26D253C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F57A0, &qword_26D263310);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_26D253D94(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26D253F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26D25411C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 100;
  }

  else
  {
    v2 = 101;
  }

  if (*a2)
  {
    v3 = 100;
  }

  else
  {
    v3 = 101;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26D2627DC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26D254188()
{
  sub_26D2627FC();
  sub_26D26256C();

  return sub_26D26282C();
}

uint64_t sub_26D2541E4(uint64_t a1)
{
  sub_26D26256C();
}

uint64_t sub_26D254224(uint64_t a1)
{
  sub_26D2627FC();
  sub_26D26256C();

  return sub_26D26282C();
}

uint64_t sub_26D25427C@<X0>(char *a2@<X8>)
{
  v3 = sub_26D26279C();

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

void sub_26D2542DC(uint64_t *a1@<X8>)
{
  v2 = 100;
  if (!*v1)
  {
    v2 = 101;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_26D2542F8()
{
  if (*v0)
  {
    return 0x7461642B4D495365;
  }

  else
  {
    return 1296651109;
  }
}

unint64_t sub_26D254334()
{
  result = qword_2804F57B0;
  if (!qword_2804F57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F57B0);
  }

  return result;
}

uint64_t sub_26D254388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_26D2564F4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_26D255A54(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_26D256944();
        v16 = v18;
      }

      result = sub_26D2561F4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_26D254490(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_26D256ABC(0, v2, 0);
    v28 = v31;
    v4 = a1 + 64;
    result = sub_26D2626EC();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v25 = v2;
    v26 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v27 = v6;
      v10 = (*(a1 + 48) + 16 * v5);
      v11 = (*(a1 + 56) + 16 * v5);
      v13 = *v11;
      v12 = v11[1];
      v29 = *v10;
      v30 = v10[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x26D6B7AB0](61, 0xE100000000000000);
      MEMORY[0x26D6B7AB0](v13, v12);

      v14 = v28;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_26D256ABC((v15 > 1), v16 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v29;
      *(v17 + 40) = v30;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v28 = v14;
      v7 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 72 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_26D2580C4(v5, v26, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_26D2580C4(v5, v26, 0);
      }

LABEL_4:
      v6 = v27 + 1;
      v5 = v8;
      if (v27 + 1 == v25)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_26D254730()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D26247C();
  __swift_allocate_value_buffer(v4, qword_2804F57C0);
  __swift_project_value_buffer(v4, qword_2804F57C0);
  v5 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v5);
  sub_26D26248C();
  (*(v1 + 8))(v3, v0);
  return sub_26D26246C();
}

uint64_t PairingParameters.description.getter()
{
  sub_26D26272C();

  if (*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode))
  {
    v1 = 0x7461642B4D495365;
  }

  else
  {
    v1 = 1296651109;
  }

  if (*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode))
  {
    v2 = 0xE900000000000061;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  MEMORY[0x26D6B7AB0](v1, v2);

  MEMORY[0x26D6B7AB0](0x6F6973736573202CLL, 0xEC0000003D44496ELL);
  MEMORY[0x26D6B7AB0](*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID), *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID + 8));
  MEMORY[0x26D6B7AB0](0x3D65646F63202CLL, 0xE700000000000000);
  MEMORY[0x26D6B7AB0](*(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code), *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code + 8));
  return 0x3D65646F6DLL;
}

id PairingParameters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PairingParameters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26D254B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v46 - v2;
  v3 = sub_26D26239C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID + 8);
  v54 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID);
  v55 = v7;

  sub_26D26238C();
  sub_26D257F60();
  v48 = sub_26D2626BC();
  v9 = v8;
  v10 = *(v4 + 8);
  v10(v6, v3);

  if (!v9)
  {
    if (qword_2804F5710 != -1)
    {
      swift_once();
    }

    v23 = sub_26D26247C();
    __swift_project_value_buffer(v23, qword_2804F57C0);
    v24 = sub_26D26240C();
    v25 = v47;
    (*(*(v24 - 8) + 56))(v47, 1, 1, v24);
    v26 = sub_26D26273C();
    v27 = v48;
    v29 = sub_26D24F91C(v26, v28, v48, 0, v25, MEMORY[0x277D84F90], 0, "toURL()", 7, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 34);

    swift_getErrorValue();
    v30 = sub_26D25024C(v52, v53);
    v32 = v31;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
    MEMORY[0x26D6B7AB0](v30, v32);

    MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
    v33 = v54;
    v34 = v55;
    v35 = v29;
    v36 = v27;
    v37 = v27;
    goto LABEL_13;
  }

  v46 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code + 8);
  v54 = *(v0 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code);
  v55 = v11;

  sub_26D26238C();
  v12 = sub_26D2626BC();
  v14 = v13;
  v10(v6, v3);

  if (!v14)
  {

    if (qword_2804F5710 != -1)
    {
      swift_once();
    }

    v38 = sub_26D26247C();
    __swift_project_value_buffer(v38, qword_2804F57C0);
    v39 = sub_26D26240C();
    v25 = v47;
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    v40 = sub_26D26273C();
    v29 = sub_26D24F91C(v40, v41, v12, 0, v25, MEMORY[0x277D84F90], 0, "toURL()", 7, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 37);

    swift_getErrorValue();
    v42 = sub_26D25024C(v50, v51);
    v44 = v43;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
    MEMORY[0x26D6B7AB0](v42, v44);

    MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
    v33 = v54;
    v34 = v55;
    v45 = v29;
    v36 = v12;
    v37 = v12;
LABEL_13:
    sub_26D251704(v36, 0, v37, 0, v33, v34, v29);

    sub_26D250E34(v25, &qword_2804F5860, &qword_26D263600);
    return swift_willThrow();
  }

  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v15;
  sub_26D2564F4(v48, v9, 115, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v49 = v54;
  sub_26D254388(v12, v14, 112, 0xE100000000000000);
  v17 = sub_26D254490(v49);

  v54 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5888, qword_26D263458);
  sub_26D258018();
  v18 = sub_26D2624EC();
  v20 = v19;

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_26D26272C();

  v54 = 0xD000000000000019;
  v55 = 0x800000026D2645F0;
  if (*(v46 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode))
  {
    v21 = 100;
  }

  else
  {
    v21 = 101;
  }

  MEMORY[0x26D6B7AB0](v21, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](35, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v18, v20);

  return v54;
}

Swift::Void __swiftcall PairingParameters.encode(with:)(NSCoder with)
{
  v2 = sub_26D2624FC();

  v3 = sub_26D2624FC();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_26D2624FC();
  v5 = sub_26D2624FC();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = sub_26D2624FC();
  v7 = sub_26D2624FC();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id PairingParameters.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PairingParameters.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_26D2555E4();
  v2 = sub_26D26268C();
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v3 = v2;
    sub_26D26250C();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_26D2555E4()
{
  result = qword_2804F57F0;
  if (!qword_2804F57F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F57F0);
  }

  return result;
}

unint64_t sub_26D255694@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26D2625EC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26D2605CC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26D2605CC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26D2625DC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26D26258C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26D26258C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26D2625EC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26D2605CC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26D2625EC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26D2605CC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26D2605CC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26D26258C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26D255A54(uint64_t a1, uint64_t a2)
{
  sub_26D2627FC();
  sub_26D26256C();
  v4 = sub_26D26282C();

  return sub_26D2566E8(a1, a2, v4);
}

uint64_t sub_26D255ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5880, &qword_26D263450);
  v33 = v4;
  result = sub_26D26277C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_26D250E94(v24, v34);
      }

      else
      {
        sub_26D250D2C(v24, v34);
      }

      sub_26D2627FC();
      sub_26D26256C();
      result = sub_26D26282C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_26D250E94(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26D255D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5878, &qword_26D263448);
  v37 = v4;
  result = sub_26D26277C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_26D2627FC();
      sub_26D26256C();
      result = sub_26D26282C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26D256044(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26D2626FC() + 1) & ~v5;
    do
    {
      sub_26D2627FC();

      sub_26D26256C();
      v10 = sub_26D26282C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26D2561F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26D2626FC() + 1) & ~v5;
    do
    {
      sub_26D2627FC();

      sub_26D26256C();
      v9 = sub_26D26282C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_26D2563A4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26D255A54(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26D2567A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26D255ACC(v16, a4 & 1);
    v11 = sub_26D255A54(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26D2627EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_26D250E94(a1, v22);
  }

  else
  {
    sub_26D25667C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_26D2564F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26D255A54(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26D255D84(v18, a5 & 1);
      v13 = sub_26D255A54(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_26D2627EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_26D256944();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_26D25667C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26D250E94(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_26D2566E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26D2627DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_26D2567A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5880, &qword_26D263450);
  v2 = *v0;
  v3 = sub_26D26276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26D250D2C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26D250E94(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_26D256944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5878, &qword_26D263448);
  v2 = *v0;
  v3 = sub_26D26276C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

char *sub_26D256ABC(char *a1, int64_t a2, char a3)
{
  result = sub_26D2530AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26D256ADC(void *a1, void *a2)
{
  sub_26D257F60();
  v2 = sub_26D2626AC();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v5 = 0;
  v6 = v2 + 40;
  v7 = MEMORY[0x277D84F90];
  v50 = v2 + 40;
  while (2)
  {
    v8 = v6 + 16 * v5;
    v9 = v5;
    while (1)
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        result = sub_26D2627EC();
        __break(1u);
        return result;
      }

      v5 = v9 + 1;

      v10 = sub_26D2626AC();
      if (*(v10 + 16) == 2)
      {
        break;
      }

      v8 += 16;
      ++v9;
      if (v4 == v5)
      {
        goto LABEL_21;
      }
    }

    v51 = v10;
    v11 = sub_26D2626CC();
    if (!v12)
    {
      v13 = v51[4];

      v11 = v13;
    }

    v14 = v7;
    if (v51[2] < 2uLL)
    {
      goto LABEL_42;
    }

    v48 = v12;
    v49 = v11;
    v15 = sub_26D2626CC();
    if (v16)
    {
      v46 = v16;
      v47 = v15;
    }

    else
    {
      v46 = v51[7];
      v47 = v51[6];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_26D26038C(0, v7[2] + 1, 1, v7);
    }

    v17 = v14;
    v18 = v14[2];
    v19 = v17;
    v20 = v17[3];
    if (v18 >= v20 >> 1)
    {
      v19 = sub_26D26038C((v20 > 1), v18 + 1, 1, v19);
    }

    v19[2] = v18 + 1;
    v21 = &v19[4 * v18];
    v7 = v19;
    v21[4] = v49;
    v21[5] = v48;
    v21[6] = v47;
    v21[7] = v46;
    v6 = v50;
    if (v4 - 1 != v9)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v52 = v7[2];
  if (v52)
  {
    v22 = 0;
    v23 = v7 + 7;
    v24 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v22 >= v7[2])
      {
        goto LABEL_39;
      }

      v28 = *(v23 - 3);
      v27 = *(v23 - 2);
      v29 = *(v23 - 1);
      v30 = *v23;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = sub_26D255A54(v28, v27);
      v34 = v24[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_40;
      }

      v38 = v33;
      if (v24[3] < v37)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v44 = v32;
      sub_26D256944();
      v32 = v44;
      if (v38)
      {
LABEL_23:
        v25 = v32;

        v26 = (v24[7] + 16 * v25);
        *v26 = v29;
        v26[1] = v30;

        goto LABEL_24;
      }

LABEL_32:
      v24[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v24[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v24[7] + 16 * v32);
      *v41 = v29;
      v41[1] = v30;
      v42 = v24[2];
      v36 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v36)
      {
        goto LABEL_41;
      }

      v24[2] = v43;
LABEL_24:
      ++v22;
      v23 += 4;
      if (v52 == v22)
      {
        goto LABEL_37;
      }
    }

    sub_26D255D84(v37, isUniquelyReferenced_nonNull_native);
    v32 = sub_26D255A54(v28, v27);
    if ((v38 & 1) != (v39 & 1))
    {
      goto LABEL_43;
    }

LABEL_31:
    if (v38)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v24 = MEMORY[0x277D84F98];
LABEL_37:

  return v24;
}

uint64_t sub_26D256EE4(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v117 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5868, &qword_26D263440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v117 - v9;
  v11 = sub_26D2623DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  sub_26D2623BC();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v121 = a2;
    v122 = v7;
    v29 = *(v12 + 32);
    v124 = v11;
    v29(v14, v10, v11);
    v123 = v14;
    v30 = sub_26D2623AC();
    v141 = 47;
    v142 = 0xE100000000000000;
    MEMORY[0x28223BE20](v30);
    v116[2] = &v141;
    v33 = sub_26D255694(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D257F08, v116, v31, v32, v117);
    a2 = v33;
    v117[1] = v2;
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = 0;
      v36 = v33 + 56;
      v127 = *(v33 + 16);
      v118 = v34 - 1;
      v125 = MEMORY[0x277D84F90];
      v119 = v33 + 56;
      v120 = v12;
      do
      {
        v37 = (v36 + 32 * v35);
        v38 = v35;
        while (1)
        {
          if (v38 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_56;
          }

          v39 = *(v37 - 3);
          v40 = *(v37 - 2);
          v35 = v38 + 1;
          v7 = *(v37 - 1);
          v41 = *v37;

          if (sub_26D26269C())
          {
            break;
          }

          v37 += 4;
          ++v38;
          if (v127 == v35)
          {
            v12 = v120;
            goto LABEL_18;
          }
        }

        v42 = MEMORY[0x26D6B7A60](v39, v40, v7, v41);
        v44 = v43;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_26D2604C0(0, *(v125 + 2) + 1, 1, v125);
        }

        v12 = v120;
        v7 = *(v125 + 2);
        v45 = *(v125 + 3);
        if (v7 >= v45 >> 1)
        {
          v125 = sub_26D2604C0((v45 > 1), v7 + 1, 1, v125);
        }

        v46 = v125;
        *(v125 + 2) = v7 + 1;
        v47 = &v46[16 * v7];
        *(v47 + 4) = v42;
        *(v47 + 5) = v44;
        v36 = v119;
      }

      while (v118 != v38);
    }

    else
    {
      v125 = MEMORY[0x277D84F90];
    }

LABEL_18:

    if (*(v125 + 2) != 2)
    {

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v51 = sub_26D26247C();
      v52 = __swift_project_value_buffer(v51, qword_2804F57C0);
      v53 = sub_26D26240C();
      v54 = v122;
      (*(*(v53 - 8) + 56))(v122, 1, 1, v53);
      v55 = sub_26D26273C();
      v57 = sub_26D24F91C(v55, v56, v126, v121, v54, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 58);

      swift_getErrorValue();
      v58 = v139;
      v59 = v140;
      goto LABEL_28;
    }

    if ((*(v125 + 4) != 49 || *(v125 + 5) != 0xE100000000000000) && (sub_26D2627DC() & 1) == 0)
    {

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v85 = sub_26D26247C();
      v52 = __swift_project_value_buffer(v85, qword_2804F57C0);
      v86 = sub_26D26240C();
      v54 = v122;
      (*(*(v86 - 8) + 56))(v122, 1, 1, v86);
      v87 = sub_26D26273C();
      v57 = sub_26D24F91C(v87, v88, v126, v121, v54, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 63);

      swift_getErrorValue();
      v58 = v137;
      v59 = v138;
      goto LABEL_28;
    }

    v48 = sub_26D26279C();

    if (v48)
    {
      v49 = v124;
      if (v48 != 1)
      {
        if (qword_2804F5710 != -1)
        {
          swift_once();
        }

        v89 = sub_26D26247C();
        v52 = __swift_project_value_buffer(v89, qword_2804F57C0);
        v90 = sub_26D26240C();
        v54 = v122;
        (*(*(v90 - 8) + 56))(v122, 1, 1, v90);
        v91 = sub_26D26273C();
        v57 = sub_26D24F91C(v91, v92, v126, v121, v54, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 68);

        swift_getErrorValue();
        v58 = v135;
        v59 = v136;
        goto LABEL_28;
      }

      v50 = 1;
    }

    else
    {
      v50 = 0;
      v49 = v124;
    }

    v68 = sub_26D2623CC();
    if (!v69)
    {
      v97 = v68;
      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v98 = sub_26D26247C();
      v99 = __swift_project_value_buffer(v98, qword_2804F57C0);
      v100 = sub_26D26240C();
      v101 = v122;
      (*(*(v100 - 8) + 56))(v122, 1, 1, v100);
      v102 = sub_26D26273C();
      v104 = sub_26D24F91C(v102, v103, v126, v121, v101, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 72);

      swift_getErrorValue();
      v105 = sub_26D25024C(v133, v134);
      v107 = v106;
      v141 = 0;
      v142 = 0xE000000000000000;
      sub_26D2624DC();
      MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
      MEMORY[0x26D6B7AB0](v105, v107);

      MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
      v108 = v141;
      v109 = v142;
      v110 = v104;
      v111 = v108;
      v28 = v99;
      sub_26D251704(v97, 0, v97, 0, v111, v109, v104);

      sub_26D250E34(v101, &qword_2804F5860, &qword_26D263600);
      goto LABEL_29;
    }

    v70 = sub_26D256ADC(v68, v69);

    if (v70[2] && (v71 = sub_26D255A54(115, 0xE100000000000000), (v72 & 1) != 0))
    {
      if (v70[2])
      {
        v73 = (v70[7] + 16 * v71);
        v75 = *v73;
        v74 = v73[1];

        v76 = sub_26D255A54(112, 0xE100000000000000);
        if (v77)
        {
          v78 = (v70[7] + 16 * v76);
          v80 = *v78;
          v79 = v78[1];

          v81 = type metadata accessor for PairingParameters();
          v82 = objc_allocWithZone(v81);
          v82[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_mode] = v50;
          v83 = &v82[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID];
          *v83 = v75;
          v83[1] = v74;
          v84 = &v82[OBJC_IVAR____TtC12TelephonyKit17PairingParameters_code];
          *v84 = v80;
          v84[1] = v79;
          v128.receiver = v82;
          v128.super_class = v81;
          v28 = objc_msgSendSuper2(&v128, sel_init);
          (*(v12 + 8))(v123, v49);
          return v28;
        }
      }

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v112 = sub_26D26247C();
      v52 = __swift_project_value_buffer(v112, qword_2804F57C0);
      v113 = sub_26D26240C();
      v54 = v122;
      (*(*(v113 - 8) + 56))(v122, 1, 1, v113);
      v114 = sub_26D26273C();
      v57 = sub_26D24F91C(v114, v115, v126, v121, v54, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 80);

      swift_getErrorValue();
      v58 = v129;
      v59 = v130;
    }

    else
    {

      if (qword_2804F5710 != -1)
      {
        swift_once();
      }

      v93 = sub_26D26247C();
      v52 = __swift_project_value_buffer(v93, qword_2804F57C0);
      v94 = sub_26D26240C();
      v54 = v122;
      (*(*(v94 - 8) + 56))(v122, 1, 1, v94);
      v95 = sub_26D26273C();
      v57 = sub_26D24F91C(v95, v96, v126, v121, v54, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 77);

      swift_getErrorValue();
      v58 = v131;
      v59 = v132;
    }

LABEL_28:
    v60 = sub_26D25024C(v58, v59);
    v62 = v61;
    v141 = 0;
    v142 = 0xE000000000000000;
    sub_26D2624DC();
    MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
    MEMORY[0x26D6B7AB0](v60, v62);

    MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
    v63 = v141;
    v64 = v142;
    v65 = v57;
    v66 = v63;
    v28 = v52;
    sub_26D251704(0, 0, 0, 0, v66, v64, v57);

    sub_26D250E34(v54, &qword_2804F5860, &qword_26D263600);
LABEL_29:
    swift_willThrow();
    (*(v12 + 8))(v123, v124);
    return v28;
  }

  sub_26D250E34(v10, &qword_2804F5868, &qword_26D263440);
  if (qword_2804F5710 != -1)
  {
LABEL_56:
    swift_once();
  }

  v15 = sub_26D26247C();
  v16 = __swift_project_value_buffer(v15, qword_2804F57C0);
  v17 = sub_26D26240C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = sub_26D26273C();
  v20 = sub_26D24F91C(v18, v19, v126, a2, v7, MEMORY[0x277D84F90], 0, "fromURL(_:)", 11, 2, "TelephonyKit/PairingParameters.swift", 36, 2u, 52);

  swift_getErrorValue();
  v21 = sub_26D25024C(v143, v144);
  v23 = v22;
  v141 = 0;
  v142 = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](11256352, 0xA300000000000000);
  MEMORY[0x26D6B7AB0](v21, v23);

  MEMORY[0x26D6B7AB0](2145218, 0xA300000000000000);
  v24 = v141;
  v25 = v142;
  v26 = v20;
  v27 = v24;
  v28 = v16;
  sub_26D251704(0, 0, 0, 0, v27, v25, v20);

  sub_26D250E34(v7, &qword_2804F5860, &qword_26D263600);
  swift_willThrow();
  return v28;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D257F08(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D2627DC() & 1;
  }
}

unint64_t sub_26D257F60()
{
  result = qword_2804F5870;
  if (!qword_2804F5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5870);
  }

  return result;
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

unint64_t sub_26D258018()
{
  result = qword_2804F5890;
  if (!qword_2804F5890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F5888, qword_26D263458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5890);
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

uint64_t sub_26D2580C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t dispatch thunk of Middleware.process(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26D258200;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26D258200(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

TelephonyKit::Selection_optional __swiftcall Selection.init(rawValue:)(TelephonyKit::Selection_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= TelephonyKit_Selection_unknownDefault)
  {
    value = TelephonyKit_Selection_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t Selection.description.getter()
{
  result = 0x73656C6946;
  switch(*v0)
  {
    case 1:
      result = 1936748609;
      break;
    case 2:
      result = 0x73746361746E6F43;
      break;
    case 3:
      result = 0x7261646E656C6143;
      break;
    case 4:
      result = 0x736948206C6C6143;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x736567617373654DLL;
      break;
    case 7:
      result = 0x657061706C6C6157;
      break;
    case 8:
      result = 0x736F746F6850;
      break;
    case 9:
      result = 0x736D72616C41;
      break;
    case 0xA:
      result = 0x65726373656D6F48;
      break;
    case 0xB:
      result = 0x636973754DLL;
      break;
    case 0xC:
      result = 0x654D206563696F56;
      break;
    case 0xD:
      result = 0x74656C6C6157;
      break;
    case 0xE:
      result = 0x73746E756F636341;
      break;
    case 0xF:
      result = 0x6174614420707041;
      break;
    case 0x10:
      result = 0x7365746F4ELL;
      break;
    case 0x11:
      result = 0x64726F7773736150;
      break;
    case 0x12:
      result = 0x20726573776F7242;
      break;
    case 0x13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26D2585A4()
{
  result = qword_2804F5900;
  if (!qword_2804F5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5900);
  }

  return result;
}

unint64_t sub_26D2585FC()
{
  result = qword_2804F5908;
  if (!qword_2804F5908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F5910, &qword_26D263518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Selection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Selection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26D2587B4()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D26247C();
  __swift_allocate_value_buffer(v4, qword_2804F5918);
  __swift_project_value_buffer(v4, qword_2804F5918);
  v5 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v5);
  v6 = sub_26D26248C();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x296C696E28;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v9, v10);

  return sub_26D26246C();
}

uint64_t sub_26D25895C()
{
  type metadata accessor for CrossPlatformCellularPlanClient.Actor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2804F5930 = v0;
  return result;
}

uint64_t static CrossPlatformCellularPlanClient.Actor.shared.getter()
{
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }
}

uint64_t CrossPlatformCellularPlanClient.Actor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26D258A5C()
{
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26D258AB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CrossPlatformCellularPlanClient.Actor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t CrossPlatformCellularPlanClient.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v1);
  return sub_26D26282C();
}

uint64_t sub_26D258B78()
{
  v1 = *v0;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v1);
  return sub_26D26282C();
}

uint64_t sub_26D258BEC(uint64_t a1)
{
  v2 = *v1;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v2);
  return sub_26D26282C();
}

uint64_t CrossPlatformCellularPlanClient.Role.hashValue.getter()
{
  v1 = *v0;
  sub_26D2627FC();
  MEMORY[0x26D6B7D10](v1);
  return sub_26D26282C();
}

uint64_t CrossPlatformCellularPlanClient.Device.sessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CrossPlatformCellularPlanClient.ManualPairing.session.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CrossPlatformCellularPlanClient.ManualPairing.passcode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id CrossPlatformCellularPlanClient.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_26D258D84(v2, v3, v4);
}

id sub_26D258D84(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t CrossPlatformCellularPlanClient.code.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  MEMORY[0x28223BE20](v1 - 8);
  sub_26D250EA4(v0 + 168, v6, &qword_2804F5938, &qword_26D263608);
  if (v7)
  {
    v2 = *(*(*__swift_project_boxed_opaque_existential_1Tm(v6, v7) + 16) + 64);
    if (v2)
    {
      v3 = v2;
      v4 = sub_26D254B2C();
    }

    else
    {
      v4 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    sub_26D250E34(v6, &qword_2804F5938, &qword_26D263608);
    return 0;
  }

  return v4;
}

void CrossPlatformCellularPlanClient.manualPairing.getter(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26D250EA4(v1 + 168, v16, &qword_2804F5938, &qword_26D263608);
  if (v17)
  {
    v4 = *(*(*__swift_project_boxed_opaque_existential_1Tm(v16, v17) + 16) + 64);
    if (v4)
    {
      v5 = v4;
      v6 = sub_26D254B2C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v13 = sub_26D256EE4(v6, v8);

    v9 = sub_26D26253C();
    v11 = v14;
    v10 = sub_26D26253C();
    v12 = v15;
  }

  else
  {
    sub_26D250E34(v16, &qword_2804F5938, &qword_26D263608);
    v9 = 0;
    v10 = 0;
    v11 = 0xE000000000000000;
    v12 = 0xE000000000000000;
  }

  *a1 = v9;
  a1[1] = v11;
  a1[2] = v10;
  a1[3] = v12;
}

uint64_t sub_26D259220@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26D25BBDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_26D25B044(v3, v4);
}

uint64_t sub_26D2592A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26D25BBB4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_26D25B044(v3, v4);
  result = sub_26D25B054(v7, v8);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t CrossPlatformCellularPlanClient.stateUpdateHandler.getter()
{
  v1 = *(v0 + 32);
  sub_26D25B044(v1, *(v0 + 40));
  return v1;
}

uint64_t CrossPlatformCellularPlanClient.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26D25B054(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CrossPlatformCellularPlanClient.init(exporter:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v4 = sub_26D26247C();
  __swift_project_value_buffer(v4, qword_2804F5918);
  v5 = sub_26D26245C();
  v6 = sub_26D26266C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26D24E000, v5, v6, "init() with exporter", v7, 2u);
    MEMORY[0x26D6B8170](v7, -1, -1);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 24) = 3;
  sub_26D250E34(a2 + 48, &qword_2804F5940, &qword_26D263610);

  return sub_26D25B064(a1, a2 + 48);
}

uint64_t CrossPlatformCellularPlanClient.init(importer:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v4 = sub_26D26247C();
  __swift_project_value_buffer(v4, qword_2804F5918);
  v5 = sub_26D26245C();
  v6 = sub_26D26266C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26D24E000, v5, v6, "init() with importer", v7, 2u);
    MEMORY[0x26D6B8170](v7, -1, -1);
  }

  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 3;
  sub_26D250E34(a2 + 88, &qword_2804F5948, &qword_26D263618);

  return sub_26D25B064(a1, a2 + 88);
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.start()()
{
  v1 = v0;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v2 = sub_26D26247C();
  __swift_project_value_buffer(v2, qword_2804F5918);
  v3 = sub_26D26245C();
  v4 = sub_26D26266C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26D24E000, v3, v4, "start()", v5, 2u);
    MEMORY[0x26D6B8170](v5, -1, -1);
  }

  if (*v1)
  {

    sub_26D2598CC();
  }

  else
  {

    sub_26D259770();
  }
}

uint64_t sub_26D259770()
{
  v1 = v0;
  result = sub_26D250EA4((v0 + 6), v13, &qword_2804F5940, &qword_26D263610);
  if (v14)
  {
    v3 = type metadata accessor for ReleaseCrossPlatformCellularPlanClientServerController();
    swift_allocObject();
    v4 = sub_26D25CE58(v13);
    v14 = v3;
    v15 = &off_287EA2368;
    v13[0] = v4;
    result = sub_26D25BC04(v13, (v0 + 16), &qword_2804F5950, &qword_26D263620);
    v5 = v0[19];
    if (v5)
    {
      v6 = v0[4];
      v7 = v1[5];
      v8 = v1[20];
      __swift_mutable_project_boxed_opaque_existential_1((v1 + 16), v1[19]);
      v9 = *(v8 + 8);
      v10 = *(v9 + 16);
      sub_26D25B044(v6, v7);
      result = v10(v6, v7, v5, v9);
      if (v1[19])
      {
        sub_26D25B0CC((v1 + 16), v13);
        v11 = v14;
        v12 = v15;
        __swift_project_boxed_opaque_existential_1Tm(v13, v14);
        (*(v12[1] + 4))(v11);
        return __swift_destroy_boxed_opaque_existential_0Tm(v13);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D2598CC()
{
  v1 = v0;
  result = sub_26D250EA4((v0 + 11), &v13, &qword_2804F5948, &qword_26D263618);
  if (v14)
  {
    v3 = type metadata accessor for ReleaseCrossPlatformCellularPlanClientClientController();
    swift_allocObject();
    v4 = sub_26D25C6D0(&v13);
    v14 = v3;
    v15 = &off_287EA2310;
    *&v13 = v4;
    result = sub_26D25BC04(&v13, (v0 + 21), &qword_2804F5938, &qword_26D263608);
    v5 = v0[24];
    if (v5)
    {
      v6 = v0[4];
      v7 = v1[5];
      v8 = v1[25];
      __swift_mutable_project_boxed_opaque_existential_1((v1 + 21), v1[24]);
      v9 = *(v8 + 8);
      v10 = *(v9 + 16);
      sub_26D25B044(v6, v7);
      result = v10(v6, v7, v5, v9);
      if (v1[24])
      {
        sub_26D25B0CC((v1 + 21), &v13);
        v11 = v14;
        v12 = v15;
        __swift_project_boxed_opaque_existential_1Tm(&v13, v14);
        (*(v12[1] + 4))(v11);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v13);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.stop()()
{
  v1 = v0;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v2 = sub_26D26247C();
  __swift_project_value_buffer(v2, qword_2804F5918);
  v3 = sub_26D26245C();
  v4 = sub_26D26266C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26D24E000, v3, v4, "stop()", v5, 2u);
    MEMORY[0x26D6B8170](v5, -1, -1);
  }

  if (*v1)
  {
    v6 = v1 + 168;
    v7 = *(v1 + 192);
    if (v7)
    {
      v8 = *(v1 + 200);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 168, *(v1 + 192));
      (*(*(v8 + 8) + 16))(0, 0, v7);
      if (*(v1 + 192))
      {
        sub_26D25B0CC(v1 + 168, v17);
        v10 = v18;
        v9 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v9 + 8) + 48))(v10);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5938;
    v12 = &qword_26D263608;
  }

  else
  {
    v6 = v1 + 128;
    v13 = *(v1 + 152);
    if (v13)
    {
      v14 = *(v1 + 160);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 128, *(v1 + 152));
      (*(*(v14 + 8) + 16))(0, 0, v13);
      if (*(v1 + 152))
      {
        sub_26D25B0CC(v1 + 128, v17);
        v16 = v18;
        v15 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v15 + 8) + 48))(v16);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5950;
    v12 = &qword_26D263620;
  }

  sub_26D250E34(v6, v11, v12);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.cancel()()
{
  v1 = v0;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v2 = sub_26D26247C();
  __swift_project_value_buffer(v2, qword_2804F5918);
  v3 = sub_26D26245C();
  v4 = sub_26D26266C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26D24E000, v3, v4, "cancel()", v5, 2u);
    MEMORY[0x26D6B8170](v5, -1, -1);
  }

  if (*v1)
  {
    v6 = v1 + 168;
    v7 = *(v1 + 192);
    if (v7)
    {
      v8 = *(v1 + 200);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 168, *(v1 + 192));
      (*(*(v8 + 8) + 16))(0, 0, v7);
      if (*(v1 + 192))
      {
        sub_26D25B0CC(v1 + 168, v17);
        v10 = v18;
        v9 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v9 + 8) + 40))(v10);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5938;
    v12 = &qword_26D263608;
  }

  else
  {
    v6 = v1 + 128;
    v13 = *(v1 + 152);
    if (v13)
    {
      v14 = *(v1 + 160);
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 128, *(v1 + 152));
      (*(*(v14 + 8) + 16))(0, 0, v13);
      if (*(v1 + 152))
      {
        sub_26D25B0CC(v1 + 128, v17);
        v16 = v18;
        v15 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        (*(*(v15 + 8) + 40))(v16);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    v11 = &qword_2804F5950;
    v12 = &qword_26D263620;
  }

  sub_26D250E34(v6, v11, v12);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
}

Swift::Void __swiftcall CrossPlatformCellularPlanClient.connect(code:)(Swift::String code)
{
  v2 = v1;
  object = code._object;
  countAndFlagsBits = code._countAndFlagsBits;
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v5 = sub_26D26247C();
  __swift_project_value_buffer(v5, qword_2804F5918);

  v6 = sub_26D26245C();
  v7 = sub_26D26266C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_26D25AA9C(countAndFlagsBits, object, v10);
    _os_log_impl(&dword_26D24E000, v6, v7, "connect() code=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x26D6B8170](v9, -1, -1);
    MEMORY[0x26D6B8170](v8, -1, -1);
  }

  if (*v2)
  {
    sub_26D26275C();
    __break(1u);
  }

  else
  {
    sub_26D250EA4((v2 + 128), v10, &qword_2804F5950, &qword_26D263620);
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1Tm(v10, v11);
      sub_26D25DA98(countAndFlagsBits, object);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    else
    {
      sub_26D250E34(v10, &qword_2804F5950, &qword_26D263620);
    }
  }
}

uint64_t CrossPlatformCellularPlanClient.send(data:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }

  v3[10] = qword_2804F5930;

  return MEMORY[0x2822009F8](sub_26D25A16C);
}

uint64_t sub_26D25A16C()
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_26D26247C();
  __swift_project_value_buffer(v3, qword_2804F5918);
  sub_26D25B130(v1, v2);
  v4 = sub_26D26245C();
  v5 = sub_26D26266C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (!v6)
  {
    sub_26D25B184(*(v0 + 56), *(v0 + 64));
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = *(*(v0 + 56) + 16);
    v12 = *(*(v0 + 56) + 24);
    v13 = __OFSUB__(v12, v11);
    v10 = v12 - v11;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v14 = *(v0 + 56);
    v15 = *(v0 + 60);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = *(v0 + 70);
LABEL_15:
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  *(result + 4) = v10;
  v19 = result;
  sub_26D25B184(v18, v17);
  _os_log_impl(&dword_26D24E000, v4, v5, "send() bytes=%ld", v19, 0xCu);
  MEMORY[0x26D6B8170](v19, -1, -1);
LABEL_16:
  v20 = *(v0 + 72);

  if (*v20 != 1)
  {
    return sub_26D26275C();
  }

  sub_26D250EA4(*(v0 + 72) + 168, v0 + 16, &qword_2804F5938, &qword_26D263608);
  v21 = *(v0 + 40);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v21);
    v22 = swift_task_alloc();
    *(v0 + 88) = v22;
    *v22 = v0;
    v22[1] = sub_26D25A444;
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);

    return sub_26D25EB58(v24, v23);
  }

  else
  {
    sub_26D250E34(v0 + 16, &qword_2804F5938, &qword_26D263608);
    v25 = *(v0 + 8);

    return v25(0, 0xF000000000000000);
  }
}

uint64_t sub_26D25A444(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x2822009F8](sub_26D25A55C);
}

uint64_t sub_26D25A55C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t CrossPlatformCellularPlanClient.sendNotification(data:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  if (qword_2804F5720 != -1)
  {
    swift_once();
  }

  v3[10] = qword_2804F5930;

  return MEMORY[0x2822009F8](sub_26D25A660);
}

uint64_t sub_26D25A660()
{
  if (qword_2804F5718 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_26D26247C();
  __swift_project_value_buffer(v3, qword_2804F5918);
  sub_26D25B130(v1, v2);
  v4 = sub_26D26245C();
  v5 = sub_26D26266C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (!v6)
  {
    sub_26D25B184(*(v0 + 56), *(v0 + 64));
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = *(*(v0 + 56) + 16);
    v12 = *(*(v0 + 56) + 24);
    v13 = __OFSUB__(v12, v11);
    v10 = v12 - v11;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v14 = *(v0 + 56);
    v15 = *(v0 + 60);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = *(v0 + 70);
LABEL_15:
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  *(result + 4) = v10;
  v19 = result;
  sub_26D25B184(v18, v17);
  _os_log_impl(&dword_26D24E000, v4, v5, "sendNotification() bytes=%ld", v19, 0xCu);
  MEMORY[0x26D6B8170](v19, -1, -1);
LABEL_16:
  v20 = *(v0 + 72);

  if (*v20)
  {
    return sub_26D26275C();
  }

  sub_26D250EA4(*(v0 + 72) + 128, v0 + 16, &qword_2804F5950, &qword_26D263620);
  v21 = *(v0 + 40);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v21);
    v22 = swift_task_alloc();
    *(v0 + 88) = v22;
    *v22 = v0;
    v22[1] = sub_26D25A92C;
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);

    return sub_26D25F01C(v24, v23);
  }

  else
  {
    sub_26D250E34(v0 + 16, &qword_2804F5950, &qword_26D263620);
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_26D25A92C()
{

  return MEMORY[0x2822009F8](sub_26D25AA3C);
}

uint64_t sub_26D25AA3C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26D25AA9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D25AB68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26D250D2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_26D25AB68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26D25AC74(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26D26274C();
    a6 = v11;
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

void *sub_26D25AC74(uint64_t a1, unint64_t a2)
{
  v3 = sub_26D25ACC0(a1, a2);
  sub_26D25ADF0(&unk_287EA1AA0);
  return v3;
}

void *sub_26D25ACC0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D25AEDC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26D26274C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26D2625BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D25AEDC(v10, 0);
        result = sub_26D26271C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26D25ADF0(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26D25AF50(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D25AEDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5970, &unk_26D263AC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26D25AF50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5970, &unk_26D263AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26D25B044(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26D25B054(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26D25B064(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_26D25B0CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D25B130(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26D25B184(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_26D25B1DC(uint64_t a1, uint64_t a2)
{
  result = qword_2804F5958;
  if (!qword_2804F5958)
  {
    type metadata accessor for CrossPlatformCellularPlanClient.Actor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5958);
  }

  return result;
}

unint64_t sub_26D25B258()
{
  result = qword_2804F5960;
  if (!qword_2804F5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5960);
  }

  return result;
}

unint64_t sub_26D25B2B0()
{
  result = qword_2804F5968;
  if (!qword_2804F5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5968);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12TelephonyKit31CrossPlatformCellularPlanClientV5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12TelephonyKit31CrossPlatformCellularPlanClientV5StateOIeghn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12TelephonyKit31CrossPlatformCellularPlanClientV10Importable_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_26D25B394(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26D25B3F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D25B4B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26D25B4FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_26D25B540(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CrossPlatformCellularPlanClient.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrossPlatformCellularPlanClient.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D25B6D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26D25B71C(uint64_t result, int a2, int a3)
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

uint64_t sub_26D25B768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26D25B7B0(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of CrossPlatformCellularPlanClient.Exportable.didReceive(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26D258200;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CrossPlatformCellularPlanClient.Importable.didReceiveNotification(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26D25BA88;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26D25BA88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26D25BB7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D25BC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t CrossPlatformCellularPlanClientMiddleware.process(data:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26D25BCAC);
}

uint64_t sub_26D25BCAC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26D25BDDC;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_26D25BDDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t CrossPlatformCellularPlanClientMiddleware.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26D25BF30(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_26D25BF58);
}

uint64_t sub_26D25BF58()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26D25C0C4;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t CrossPlatformCellularPlanServerMiddleware.process(data:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26D25C104);
}

uint64_t sub_26D25C104()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26D25C234;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_26D25C234(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t CrossPlatformCellularPlanServerMiddleware.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26D25C390(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_26D25C3B8);
}

uint64_t sub_26D25C3B8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_26D25C524;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_26D25C528()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D26247C();
  __swift_allocate_value_buffer(v4, qword_2804F5978);
  __swift_project_value_buffer(v4, qword_2804F5978);
  v5 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v5);
  v6 = sub_26D26248C();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x296C696E28;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v9, v10);

  return sub_26D26246C();
}

uint64_t sub_26D25C6D0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for ClientProxy();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  swift_allocObject();
  v4 = sub_26D25D8AC();
  *(v2 + 16) = v4;
  sub_26D25B0CC(a1, &v8);
  v5 = type metadata accessor for CrossPlatformCellularPlanClientMiddleware();
  v6 = swift_allocObject();
  sub_26D25BC74(&v8, v6 + 16);
  v9 = v5;
  v10 = &protocol witness table for CrossPlatformCellularPlanClientMiddleware;
  *&v8 = v6;
  swift_beginAccess();

  sub_26D25CC40(&v8, v4 + 24);
  swift_endAccess();

  sub_26D25BC74(a1, v2 + 24);
  return v2;
}

uint64_t sub_26D25C7C0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[11];
  v4 = v2[12];
  v2[11] = sub_26D25CBEC;
  v2[12] = v1;

  sub_26D25B054(v3, v4);
  v5 = v2[15];
  v6 = v2[16];
  v2[15] = sub_26D25CC18;
  v2[16] = v1;

  sub_26D25B054(v5, v6);
  return sub_26D25E9E0();
}

void sub_26D25C848(_BYTE *result)
{
  v2 = *result;
  if (*result)
  {
    if (v2 == 2)
    {
      v2 = 0;
      v6 = 3;
      v5 = 4;
      v7 = v1[8];
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = *(v1[2] + 64);
      if (v3)
      {
        v4 = (v3 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID);
        v5 = *v4;
        v2 = v4[1];

        v6 = 0;
        v7 = v1[8];
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = v1;
        if (qword_2804F5728 != -1)
        {
          swift_once();
        }

        v11 = sub_26D26247C();
        __swift_project_value_buffer(v11, qword_2804F5978);
        v12 = sub_26D26245C();
        v13 = sub_26D26267C();
        if (os_log_type_enabled(v12, v13))
        {
          v5 = 2;
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_26D24E000, v12, v13, "Found device, but missing pairing parameters", v14, 2u);
          MEMORY[0x26D6B8170](v14, -1, -1);

          v2 = 0;
        }

        else
        {

          v2 = 0;
          v5 = 2;
        }

        v6 = 2;
        v1 = v10;
        v7 = v10[8];
        if (!v7)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_10:
    v8 = v1[9];
    v15 = v5;
    v16 = v2;
    v17 = v6;
    v9 = v6;
    sub_26D25BC70(v7, v8);
    sub_26D258D84(v5, v2, v9);
    v7(&v15);
    sub_26D25B054(v7, v8);
    sub_26D25CC20(v5, v2, v9);
    sub_26D25CC20(v15, v16, v17);
    return;
  }

  v5 = 3;
  v6 = 3;
  v7 = v1[8];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_18:

  sub_26D25CC20(v5, v2, v6);
}

_BYTE *sub_26D25CA64(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    v3 = *(a2 + 72);
    v6[1] = *result;
    sub_26D25C0C8(v6);
    v4[0] = v6[0];
    v4[1] = 0;
    v5 = 2;

    v2(v4);
    return sub_26D25B054(v2, v3);
  }

  return result;
}

uint64_t sub_26D25CAE4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  sub_26D25B054(v0[8], v0[9]);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_26D25CB50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return sub_26D25B054(v4, v5);
}

uint64_t sub_26D25CB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *v3;
  v6 = *(v5 + 16);
  v7 = *(v6 + 88);
  v8 = *(v6 + 96);
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  sub_26D25B054(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v9 + 120);
  v11 = *(v9 + 128);
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  sub_26D25B054(v10, v11);
  return sub_26D25EA9C(v4);
}

void sub_26D25CC20(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_26D25CC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5990, &qword_26D263CD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D25CCB0()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D26247C();
  __swift_allocate_value_buffer(v4, qword_2804F5998);
  __swift_project_value_buffer(v4, qword_2804F5998);
  v5 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v5);
  v6 = sub_26D26248C();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x296C696E28;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_26D2624DC();
  MEMORY[0x26D6B7AB0](32, 0xE100000000000000);
  MEMORY[0x26D6B7AB0](v9, v10);

  return sub_26D26246C();
}

uint64_t sub_26D25CE58(void *a1)
{
  v2 = v1;
  type metadata accessor for ServerProxy();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_allocObject();
  v4 = sub_26D25D8AC();
  *(v2 + 16) = v4;
  sub_26D25B0CC(a1, &v8);
  v5 = type metadata accessor for CrossPlatformCellularPlanServerMiddleware();
  v6 = swift_allocObject();
  sub_26D25BC74(&v8, v6 + 16);
  v9 = v5;
  v10 = &protocol witness table for CrossPlatformCellularPlanServerMiddleware;
  *&v8 = v6;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  swift_beginAccess();
  sub_26D25CC40(&v8, v4 + 24);
  swift_endAccess();

  return v2;
}

uint64_t sub_26D25CF44()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[11];
  v4 = v2[12];
  v2[11] = sub_26D25D308;
  v2[12] = v1;

  sub_26D25B054(v3, v4);
  v5 = v2[15];
  v6 = v2[16];
  v2[15] = sub_26D25D334;
  v2[16] = v1;

  sub_26D25B054(v5, v6);
  return sub_26D25E9E0();
}

void sub_26D25CFCC(_BYTE *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 2)
    {
      v2 = 0;
      v6 = 3;
      v5 = 4;
      v7 = v1[3];
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = *(v1[2] + 64);
      if (v3)
      {
        v4 = (v3 + OBJC_IVAR____TtC12TelephonyKit17PairingParameters_sessionID);
        v5 = *v4;
        v2 = v4[1];

        v6 = 0;
        v7 = v1[3];
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = v1;
        if (qword_2804F5730 != -1)
        {
          swift_once();
        }

        v11 = sub_26D26247C();
        __swift_project_value_buffer(v11, qword_2804F5998);
        v12 = sub_26D26245C();
        v13 = sub_26D26267C();
        if (os_log_type_enabled(v12, v13))
        {
          v5 = 2;
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_26D24E000, v12, v13, "Found device, but missing pairing parameters", v14, 2u);
          MEMORY[0x26D6B8170](v14, -1, -1);

          v2 = 0;
        }

        else
        {

          v2 = 0;
          v5 = 2;
        }

        v6 = 2;
        v1 = v10;
        v7 = v10[3];
        if (!v7)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_10:
    v8 = v1[4];
    v15 = v5;
    v16 = v2;
    v17 = v6;
    v9 = v6;
    sub_26D25BC70(v7, v8);
    sub_26D258D84(v5, v2, v9);
    v7(&v15);
    sub_26D25B054(v7, v8);
    sub_26D25CC20(v5, v2, v9);
    sub_26D25CC20(v15, v16, v17);
    return;
  }

  v5 = 3;
  v6 = 3;
  v7 = v1[3];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_18:

  sub_26D25CC20(v5, v2, v6);
}

_BYTE *sub_26D25D1E8(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    v6[1] = *result;
    sub_26D25C0C8(v6);
    v4[0] = v6[0];
    v4[1] = 0;
    v5 = 2;

    v2(v4);
    return sub_26D25B054(v2, v3);
  }

  return result;
}

uint64_t sub_26D25D268()
{

  sub_26D25B054(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D25D2CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 32);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return sub_26D25B054(v4, v5);
}

uint64_t sub_26D25D4B4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_26D25D51C);
}

uint64_t sub_26D25D51C()
{
  v1 = *(v0 + 16);
  v1[2](v1, 2);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D25D594()
{
  v0 = sub_26D25D97C();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_26D25D5E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D25D628()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26D25BA88;

  return sub_26D25D4B4(v2);
}

uint64_t sub_26D25D6D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26D25D8A8;

  return sub_26D260D30(v2, v3, v4);
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D25D7D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D25D8A8;

  return sub_26D260E1C(a1, v4, v5, v6);
}

uint64_t sub_26D25D8AC()
{
  type metadata accessor for XPCConnection();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 24) = 0u;
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  sub_26D25CC40(v4, v0 + 24);
  swift_endAccess();
  v2 = *(v0 + 64);
  *(v0 + 64) = 0;

  swift_beginAccess();
  *(v0 + 80) = 0;

  return v0;
}

uint64_t sub_26D25D97C()
{

  sub_26D250E34(v0 + 24, &qword_2804F5990, &qword_26D263CD8);

  sub_26D25B054(*(v0 + 88), *(v0 + 96));
  sub_26D25B054(*(v0 + 104), *(v0 + 112));
  sub_26D25B054(*(v0 + 120), *(v0 + 128));
  sub_26D25B054(*(v0 + 136), *(v0 + 144));
  sub_26D25B054(*(v0 + 152), *(v0 + 160));
  return v0;
}

void sub_26D25DA98(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D2619D0();
  if (v2)
  {
    v3 = v2;
    oslog = sub_26D2624FC();
    [v3 connectWithCode_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v4 = sub_26D26247C();
    __swift_project_value_buffer(v4, qword_2804F59B8);
    oslog = sub_26D26245C();
    v5 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26D24E000, oslog, v5, "failed to establish xpc", v6, 2u);
      MEMORY[0x26D6B8170](v6, -1, -1);
    }
  }
}

TelephonyKit::XPCDaemonState_optional sub_26D25DBD0(Swift::UInt8 a1)
{
  result.value = XPCDaemonState.init(rawValue:)(a1).value;
  if (v6 != 10)
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      v4 = *(v1 + 96);
      v5 = v6;

      v3(&v5);
      return sub_26D25B054(v3, v4);
    }
  }

  return result;
}

TelephonyKit::Reason_optional sub_26D25DC38(Swift::UInt8 a1)
{
  result.value = Reason.init(rawValue:)(a1).value;
  if (v6 != 18)
  {
    v3 = *(v1 + 120);
    if (v3)
    {
      v4 = *(v1 + 128);
      v5 = v6;

      v3(&v5);
      return sub_26D25B054(v3, v4);
    }
  }

  return result;
}

uint64_t sub_26D25DCA0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5860, &qword_26D263600);
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_2804F5738 != -1)
  {
    swift_once();
  }

  v6 = sub_26D26247C();
  __swift_project_value_buffer(v6, qword_2804F59B8);

  v7 = sub_26D26245C();
  v8 = sub_26D26266C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26D25AA9C(a1, a2, &v12);
    _os_log_impl(&dword_26D24E000, v7, v8, "Received code. code=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x26D6B8170](v10, -1, -1);
    MEMORY[0x26D6B8170](v9, -1, -1);
  }

  *(v2 + 64) = sub_26D256EE4(a1, a2);

  return MEMORY[0x2821F96F8]();
}

void sub_26D25DF60(Swift::UInt8 a1, uint64_t a2, uint64_t a3)
{
  Selection.init(rawValue:)(a1);
  v6 = v23[0];
  if (v23[0] == 20)
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v7 = sub_26D26247C();
    __swift_project_value_buffer(v7, qword_2804F59B8);
    oslog = sub_26D26245C();
    v8 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 16777472;
      v9[4] = a1;
      _os_log_impl(&dword_26D24E000, oslog, v8, "received an unexpected selection. selection=%hhu", v9, 5u);
      MEMORY[0x26D6B8170](v9, -1, -1);
    }
  }

  else
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v10 = sub_26D26247C();
    __swift_project_value_buffer(v10, qword_2804F59B8);
    v11 = sub_26D26245C();
    v12 = sub_26D26266C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 16777984;
      *(v13 + 4) = v6;
      *(v13 + 5) = 2048;
      *(v13 + 7) = a2;
      *(v13 + 15) = 2048;
      *(v13 + 17) = a3;
      _os_log_impl(&dword_26D24E000, v11, v12, "estimated. selection=%hhu, bytes=%llu, items=%llu", v13, 0x19u);
      MEMORY[0x26D6B8170](v13, -1, -1);
    }

    v15 = sub_26D25D9F4(v23);
    v16 = *v14;
    if (*v14)
    {
      v17 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_26D2606D8(0, *(v16 + 2) + 1, 1, v16);
        *v17 = v16;
      }

      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_26D2606D8((v19 > 1), v20 + 1, 1, v16);
        *v17 = v16;
      }

      *(v16 + 2) = v20 + 1;
      v21 = &v16[24 * v20];
      v21[32] = v6;
      *(v21 + 5) = a2;
      *(v21 + 6) = a3;
      (v15)(v23, 0);
    }

    else
    {
      (v15)(v23, 0);
    }
  }
}

void sub_26D25E240(Swift::UInt8 a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Selection.init(rawValue:)(a1);
  v10 = v36[0];
  if (LOBYTE(v36[0]) == 20)
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v11 = sub_26D26247C();
    __swift_project_value_buffer(v11, qword_2804F59B8);
    oslog = sub_26D26245C();
    v12 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 16777472;
      v13[4] = a1;
      _os_log_impl(&dword_26D24E000, oslog, v12, "received an unexpected selection. selection=%hhu", v13, 5u);
      MEMORY[0x26D6B8170](v13, -1, -1);
    }

LABEL_21:

    return;
  }

  if (a2 > 3u)
  {
    if (qword_2804F5738 != -1)
    {
      swift_once();
    }

    v27 = sub_26D26247C();
    __swift_project_value_buffer(v27, qword_2804F59B8);
    oslog = sub_26D26245C();
    v28 = sub_26D26267C();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136315394;
      v37 = v10;
      v31 = Selection.description.getter();
      v33 = sub_26D25AA9C(v31, v32, v36);

      *(v29 + 4) = v33;
      *(v29 + 12) = 256;
      *(v29 + 14) = a2;
      _os_log_impl(&dword_26D24E000, oslog, v28, "received an unexpected result. selection=%s, result=%hhu", v29, 0xFu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x26D6B8170](v30, -1, -1);
      MEMORY[0x26D6B8170](v29, -1, -1);

      return;
    }

    goto LABEL_21;
  }

  if (qword_2804F5738 != -1)
  {
    swift_once();
  }

  v14 = sub_26D26247C();
  __swift_project_value_buffer(v14, qword_2804F59B8);
  v15 = sub_26D26245C();
  v16 = sub_26D26266C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 16778496;
    *(v17 + 4) = v10;
    *(v17 + 5) = 256;
    *(v17 + 7) = a2;
    *(v17 + 8) = 2048;
    *(v17 + 10) = a3;
    *(v17 + 18) = 2048;
    *(v17 + 20) = a4;
    *(v17 + 28) = 2048;
    *(v17 + 30) = a5;
    _os_log_impl(&dword_26D24E000, v15, v16, "transferred. selection=%hhu, result=%hhu, bytes=%llu, items=%llu, errors=%llu", v17, 0x26u);
    MEMORY[0x26D6B8170](v17, -1, -1);
  }

  v19 = sub_26D25DA48(v36);
  v20 = *v18;
  if (*v18)
  {
    v21 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26D2607F4(0, *(v20 + 2) + 1, 1, v20);
      *v21 = v20;
    }

    v24 = *(v20 + 2);
    v23 = *(v20 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v34 = sub_26D2607F4((v23 > 1), v24 + 1, 1, v20);
      v25 = v24 + 1;
      v20 = v34;
      *v21 = v34;
    }

    *(v20 + 2) = v25;
    v26 = &v20[32 * v24];
    v26[32] = v10;
    v26[33] = a2;
    *(v26 + 5) = a3;
    *(v26 + 6) = a4;
    *(v26 + 7) = a5;
    (v19)(v36, 0);
  }

  else
  {
    (v19)(v36, 0);
  }
}

uint64_t sub_26D25E688(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26D25E6AC);
}

uint64_t sub_26D25E6AC()
{
  v1 = v0[17];
  swift_beginAccess();
  sub_26D26031C(v1 + 24, (v0 + 2));
  if (v0[5])
  {
    sub_26D25B0CC((v0 + 2), (v0 + 7));
    sub_26D250E34((v0 + 2), &qword_2804F5990, &qword_26D263CD8);
    v2 = v0[10];
    v3 = v0[11];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v2);
    v9 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_26D25E87C;
    v6 = v0[15];
    v5 = v0[16];

    return v9(v6, v5, v2, v3);
  }

  else
  {
    sub_26D250E34((v0 + 2), &qword_2804F5990, &qword_26D263CD8);
    v8 = v0[1];

    return v8(0, 0xF000000000000000);
  }
}

uint64_t sub_26D25E87C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;

  return MEMORY[0x2822009F8](sub_26D25E97C);
}

uint64_t sub_26D25E97C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_26D25E9E0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  result = sub_26D261A74();
  if (result)
  {
    result = *(v2 + 16);
    if (result)
    {
      v4 = [result remoteObjectProxy];
      sub_26D2626DC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78);
      result = swift_dynamicCast();
      if (result)
      {
        [v5 addWithClient_];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26D25EA9C(char a1)
{
  v3 = *(v1 + 16);
  result = sub_26D261A74();
  if (result)
  {
    result = *(v3 + 16);
    if (result)
    {
      v5 = [result remoteObjectProxy];
      sub_26D2626DC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78);
      result = swift_dynamicCast();
      if (result)
      {
        [v6 removeWithCancelled_];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26D25EB58(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59F0, &qword_26D263E98);
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D25EC28);
}

uint64_t sub_26D25EC28()
{
  v1 = *(v0[27] + 16);
  if (sub_26D261A74() & 1) != 0 && (v2 = *(v1 + 16)) != 0 && ([v2 remoteObjectProxy], sub_26D2626DC(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78), (swift_dynamicCast()))
  {
    v4 = v0[29];
    v3 = v0[30];
    v5 = v0[28];
    v6 = v0[24];
    v0[31] = v6;
    v7 = sub_26D26241C();
    v0[32] = v7;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_26D25EEBC;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59F8, &qword_26D263EA0);
    sub_26D26262C();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26D25FFF0;
    v0[13] = &block_descriptor_68;
    [v6 sendWithData:v7 completionHandler:?];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v9 = v0[1];

    return v9(0, 0xF000000000000000);
  }
}

uint64_t sub_26D25EEBC()
{

  return MEMORY[0x2822009F8](sub_26D25EF9C);
}

uint64_t sub_26D25EF9C()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  v3 = v0[22];
  v2 = v0[23];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_26D25F01C(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59E8, &qword_26D263E90);
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D25F0EC);
}

uint64_t sub_26D25F0EC()
{
  v1 = *(v0[25] + 16);
  if (sub_26D261A74() & 1) != 0 && (v2 = *(v1 + 16)) != 0 && ([v2 remoteObjectProxy], sub_26D2626DC(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78), (swift_dynamicCast()))
  {
    v4 = v0[27];
    v3 = v0[28];
    v5 = v0[26];
    v6 = v0[22];
    v0[29] = v6;
    v7 = sub_26D26241C();
    v0[30] = v7;
    v0[2] = v0;
    v0[3] = sub_26D25F360;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    sub_26D26262C();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26D26007C;
    v0[13] = &block_descriptor;
    [v6 sendNotificationWithData:v7 completionHandler:v0 + 10];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_26D25F360()
{

  return MEMORY[0x2822009F8](sub_26D25F440);
}

uint64_t sub_26D25F440()
{
  v1 = *(v0 + 240);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D25F4AC()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D26247C();
  __swift_allocate_value_buffer(v4, qword_2804F59B8);
  __swift_project_value_buffer(v4, qword_2804F59B8);
  v5 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v5);
  sub_26D26248C();
  (*(v1 + 8))(v3, v0);
  return sub_26D26246C();
}

uint64_t sub_26D25F774(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_26D25F7DC);
}

uint64_t sub_26D25F7DC()
{
  v1 = *(v0 + 16);
  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D25F884(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_26D25FC30(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a1;

  v6 = sub_26D26242C();
  v8 = v7;

  v3[4] = v6;
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_26D25FD0C;

  return sub_26D25E688(v6, v8);
}

uint64_t sub_26D25FD0C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *v2;

  sub_26D25B184(v7, v6);

  if (a2 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_26D26241C();
    sub_26D26021C(a1, a2);
  }

  v10 = *(v5 + 24);
  (v10)[2](v10, v9);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_26D25FEC0(uint64_t result, double a2, double a3)
{
  v3 = *(result + 152);
  if (v3)
  {
    v5 = *(result + 160);
    v6 = a3 < 0.0;
    if (a3 >= 0.0)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0.0;
    }

    sub_26D25B044(v3, v5);
    v3(*&v7, v6, a2);

    return sub_26D25B054(v3, v5);
  }

  return result;
}

uint64_t sub_26D25FFF0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_26D26242C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59F0, &qword_26D263E98);
  return sub_26D26263C();
}

uint64_t sub_26D26007C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59E8, &qword_26D263E90);
  return sub_26D26263C();
}

uint64_t sub_26D2600C4()
{
  sub_26D25D97C();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_26D26011C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D260164()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26D25D8A8;

  return sub_26D25FC30(v2, v3, v4);
}

uint64_t sub_26D26021C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D25B184(result, a2);
  }

  return result;
}

uint64_t sub_26D260230()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D260270()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26D25BA88;

  return sub_26D25F774(v2);
}

uint64_t sub_26D26031C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5990, &qword_26D263CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_26D26038C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5A00, &qword_26D263EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5A08, &qword_26D263EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D2604C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F57A8, &qword_26D263318);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D2605CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F5A10, &qword_26D263EB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D2606D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59E0, &qword_26D263E88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_26D2607F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D8, &qword_26D263E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_26D2608F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F57A8, &qword_26D263318);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}
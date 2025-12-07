void sub_27055EDB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2703CAAEC(a1, __dst, &unk_2807D4890, &qword_2705E2880);
  if (*(&__dst[1] + 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D8, &unk_2705F2790);
    if (swift_dynamicCast())
    {
      v5 = *(*__src + 16);
      if (v5)
      {
        v6 = a2;
        v7 = *__src + 32;
        v8 = MEMORY[0x277D84F90];
        do
        {
          sub_2703D7F04(v7, __dst);
          sub_27055EDB0(__dst, __src);
          sub_2703B2934(__dst, &unk_2807D4890, &qword_2705E2880);
          if (*&__src[24])
          {
            sub_2703E43D4(__src, __dst);
            sub_2703D7F04(__dst, __src);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_27057255C();
              v8 = v10;
            }

            v9 = *(v8 + 16);
            if (v9 >= *(v8 + 24) >> 1)
            {
              sub_27057255C();
              v8 = v11;
            }

            __swift_destroy_boxed_opaque_existential_1(__dst);
            *(v8 + 16) = v9 + 1;
            sub_2703E43D4(__src, (v8 + 32 * v9 + 32));
          }

          else
          {
            sub_2703B2934(__src, &unk_2807D4890, &qword_2705E2880);
          }

          v7 += 32;
          --v5;
        }

        while (v5);

        a2 = v6;
      }

      else
      {

        v8 = MEMORY[0x277D84F90];
      }

      *(a2 + 24) = v4;
      *a2 = v8;
      return;
    }
  }

  else
  {
    sub_2703B2934(__dst, &unk_2807D4890, &qword_2705E2880);
  }

  sub_2703CAAEC(a1, __dst, &unk_2807D4890, &qword_2705E2880);
  if (*(&__dst[1] + 1))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7558, &unk_27060E2D0);
    if (swift_dynamicCast())
    {
      v33 = v12;
      v34 = a2;
      v13 = sub_2705D7494();
      v14 = 0;
      v15 = *__src + 64;
      v35 = *__src;
      v16 = 1 << *(*__src + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(*__src + 64);
      v19 = (v16 + 63) >> 6;
      while (2)
      {
        while (2)
        {
          if (!v18)
          {
            goto LABEL_22;
          }

          while (1)
          {
            v20 = v14;
LABEL_26:
            v21 = __clz(__rbit64(v18));
            v18 &= v18 - 1;
            v22 = v21 | (v20 << 6);
            sub_2703BD1EC(*(v35 + 48) + 40 * v22, &v38);
            sub_2703D7F04(*(v35 + 56) + 32 * v22, v37);
            *__src = v38;
            *&__src[16] = v39;
            *&__src[32] = v40;
            sub_2703E43D4(v37, &__src[40]);
LABEL_27:
            memcpy(__dst, __src, 0x48uLL);
            if (!*(&__dst[1] + 1))
            {

              v34[3] = v33;
              *v34 = v13;
              return;
            }

            *__src = __dst[0];
            *&__src[16] = __dst[1];
            *&__src[32] = *&__dst[2];
            sub_2703E43D4((&__dst[2] + 8), v36);
            sub_27055EDB0(v36, &v38);
            sub_2703B2934(v36, &unk_2807D4890, &qword_2705E2880);
            if (*(&v39 + 1))
            {
              break;
            }

            sub_2703D7E30(__src);
            sub_2703B2934(&v38, &unk_2807D4890, &qword_2705E2880);
            if (!v18)
            {
LABEL_22:
              while (1)
              {
                v20 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  break;
                }

                if (v20 >= v19)
                {
                  v18 = 0;
                  memset(__src, 0, sizeof(__src));
                  goto LABEL_27;
                }

                v18 = *(v15 + 8 * v20);
                ++v14;
                if (v18)
                {
                  v14 = v20;
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_50;
            }
          }

          sub_2703E43D4(&v38, v37);
          sub_2703BD1EC(__src, &v38);
          sub_2703D7F04(v37, v36);
          swift_isUniquelyReferenced_nonNull_native();
          v23 = sub_2703D7390(&v38);
          if (__OFADD__(v13[2], (v24 & 1) == 0))
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v25 = v23;
          v26 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7620, &unk_27060E6B8);
          if (sub_2705D7E04())
          {
            v27 = sub_2703D7390(&v38);
            if ((v26 & 1) != (v28 & 1))
            {
              goto LABEL_52;
            }

            v25 = v27;
          }

          if (v26)
          {
            v29 = (v13[7] + 32 * v25);
            __swift_destroy_boxed_opaque_existential_1(v29);
            sub_2703E43D4(v36, v29);
            sub_2703D7E30(&v38);
            __swift_destroy_boxed_opaque_existential_1(v37);
            sub_2703D7E30(__src);
            continue;
          }

          break;
        }

        v13[(v25 >> 6) + 8] |= 1 << v25;
        sub_2703BD1EC(&v38, v13[6] + 40 * v25);
        sub_2703E43D4(v36, (v13[7] + 32 * v25));
        sub_2703D7E30(&v38);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_2703D7E30(__src);
        v30 = v13[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (!v31)
        {
          v13[2] = v32;
          continue;
        }

        break;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      sub_2705D82D4();
      __break(1u);
      return;
    }
  }

  else
  {
    sub_2703B2934(__dst, &unk_2807D4890, &qword_2705E2880);
  }

  sub_2703CAAEC(a1, __dst, &unk_2807D4890, &qword_2705E2880);
  if (*(&__dst[1] + 1))
  {
    sub_27046C2B0();
    if (swift_dynamicCast())
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  else
  {
    sub_2703B2934(__dst, &unk_2807D4890, &qword_2705E2880);
  }

  sub_2703CAAEC(a1, a2, &unk_2807D4890, &qword_2705E2880);
}

uint64_t sub_27055F3D0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a4;
  v40 = a3;
  v6 = sub_2705D6524();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2_80(v7, v35);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return sub_2705D7494();
  }

  v50 = v4;
  v9 = swift_allocObject();
  v39 = v9;
  *(v9 + 16) = sub_2705D7494();
  v35 = v9 + 16;
  v37 = 0x80000002706171C0;
  v38 = a1;
  v10 = (a1 + 40);
  v36 = xmmword_2705DC030;
  v11 = v39;
  do
  {
    v43 = v8;
    v12 = *(v10 - 1);
    v13 = *v10;
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2705D7D04();

    v46 = 0xD000000000000022;
    v47 = v37;
    v14 = v40;
    v15 = v42;
    MEMORY[0x2743A3A90](v40, v42);
    OUTLINED_FUNCTION_12_39();
    OUTLINED_FUNCTION_4_66();
    MEMORY[0x2743A3A90](0x3F203D3D20, 0xE500000000000000);
    v16 = v47;
    v44 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520, &qword_27060E0A8);
    inited = swift_initStackObject();
    *(inited + 16) = v36;
    *(inited + 32) = v12;
    *(inited + 40) = v13;
    *(inited + 48) = 3;
    v18 = swift_allocObject();
    v19 = v41;
    v18[2] = v41;
    v18[3] = v14;
    v18[4] = v15;
    v18[5] = v11;
    v18[6] = v38;
    v20 = MEMORY[0x28223BE20](v18);
    v34[2] = v19;
    v34[3] = v44;
    v34[4] = v16;
    v34[5] = inited;
    v34[6] = sub_2705600A0;
    v34[7] = v20;

    v21 = v50;
    sub_2705C9B9C(sub_270557A04, v34);
    v50 = v21;
    if (v21)
    {

      swift_setDeallocating();
      sub_2705CD7C4();

      return v16;
    }

    swift_setDeallocating();
    sub_2705CD7C4();

    v10 += 2;
    v8 = v43 - 1;
  }

  while (v43 != 1);
  if (qword_2807D7378 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_2807D7378);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v22 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v22);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2705E6EB0;
  v46 = v41;
  v47 = v40;
  v48 = v42;
  v49 = &type metadata for AppKeyValueTable;

  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    v26 = sub_2705D7564();
    v28 = v27;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_1_80();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_5_69(MetatypeMetadata);
    sub_2703B2934(v45, &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_7_24();
    v45[3] = MEMORY[0x277D837D0];
    v45[0] = v26;
    v45[1] = v28;
    sub_2705D64E4();
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_1_80();
    v30 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_5_69(v30);
  }

  sub_2703B2934(v45, &unk_2807D4890, &qword_2705E2880);
  v31 = v39;
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_2705D6514();
  OUTLINED_FUNCTION_8_54();
  swift_beginAccess();
  v16 = *(v31 + 16);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7628, &qword_27060E6C8);
  v46 = v16;

  sub_2705D64E4();
  sub_2703B2934(&v46, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0, &unk_27060E0B0);
  v46 = v38;

  sub_2705D64E4();
  sub_2703B2934(&v46, &unk_2807D4890, &qword_2705E2880);
  OUTLINED_FUNCTION_12_20();
  sub_2705D6534();
  v32 = sub_2705D7A64();
  sub_2705B6DB8(v32, v23);

  return v16;
}

unint64_t sub_27055F9E4()
{
  result = qword_2807D7618;
  if (!qword_2807D7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7618);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppKeyValueTable.InternalKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27055FB14);
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

uint64_t sub_27055FB4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2705D6524();
  MEMORY[0x28223BE20](v11 - 8);
  sub_27055D598(a2, a3, a4, &v26);
  if (!v6)
  {
    if (*(&v26 + 1))
    {
      v28 = v26;
      v29 = v27[0];
      v30 = v27[1];
      sub_2703CAAEC(&v28, &v26, &qword_2807D6758, &unk_2706107F0);
      v12 = v26;
      sub_2703CAAEC(&v28, v23, &qword_2807D6758, &unk_2706107F0);

      sub_2703E43D4(&v24, v25);
      swift_beginAccess();
      sub_27055879C(v25, v12, *(&v12 + 1));
      swift_endAccess();
      sub_2703B2934(&v28, &qword_2807D6758, &unk_2706107F0);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_2703B2934(&v26, qword_2807D7630, qword_27060E6D0);
      if (qword_2807D7378 != -1)
      {
        swift_once();
      }

      v31 = qword_28081C5F8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
      sub_2705D6574();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2705E6EB0;
      *&v28 = a2;
      *(&v28 + 1) = a3;
      *&v29 = a4;
      *(&v29 + 1) = &type metadata for AppKeyValueTable;

      v14 = AMSLogKey();
      if (v14)
      {
        v15 = v14;
        v16 = sub_2705D7564();
        v18 = v17;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
        DynamicType = swift_getDynamicType();
        *(&v27[0] + 1) = swift_getMetatypeMetadata();
        *&v26 = DynamicType;
        sub_2705D64E4();
        sub_2703B2934(&v26, &unk_2807D4890, &qword_2705E2880);
        sub_2705D6504();
        *(&v27[0] + 1) = MEMORY[0x277D837D0];
        *&v26 = v16;
        *(&v26 + 1) = v18;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
        v20 = swift_getDynamicType();
        *(&v27[0] + 1) = swift_getMetatypeMetadata();
        *&v26 = v20;
      }

      sub_2705D64E4();
      sub_2703B2934(&v26, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v28);
      sub_2705D6514();
      sub_2705D6504();
      *(&v29 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0, &unk_27060E0B0);
      *&v28 = a6;

      sub_2705D64E4();
      sub_2703B2934(&v28, &unk_2807D4890, &qword_2705E2880);
      sub_2705D6504();
      sub_2705D6534();
      v21 = sub_2705D7A74();
      sub_2705B6DB8(v21, v13);
    }
  }

  return 1;
}

uint64_t sub_27055FFF0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_27055782C(a1, a2);
  }

  return a1;
}

uint64_t sub_270560004(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_27046DCA4(a1, a2);
  }

  return a1;
}

uint64_t sub_270560018()
{

  return swift_deallocObject();
}

uint64_t sub_270560050()
{

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_80()
{
  __swift_project_boxed_opaque_existential_1((v0 - 176), *(v0 - 152));

  return swift_getDynamicType();
}

void OUTLINED_FUNCTION_4_66()
{

  JUMPOUT(0x2743A3A90);
}

uint64_t OUTLINED_FUNCTION_5_69(uint64_t a1)
{
  *(v2 - 184) = a1;
  *(v2 - 208) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_8_54()
{

  return sub_2705D6504();
}

void OUTLINED_FUNCTION_12_39()
{

  JUMPOUT(0x2743A3A90);
}

uint64_t OUTLINED_FUNCTION_13_39()
{
  __swift_project_boxed_opaque_existential_1((v0 - 144), *(v0 - 120));

  return swift_getDynamicType();
}

uint64_t sub_2705601FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
}

uint64_t sub_2705602E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_270560350(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 253;
}

void sub_270560478(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        JUMPOUT(0x270560630);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_270560670(uint64_t a1, uint64_t a2)
{
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x2743A3A90](a1, a2);
  MEMORY[0x2743A3A90](10272, 0xE200000000000000);
  MEMORY[0x2743A3A90](0x696669746E656469, 0xEA00000000007265);
  MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270617210);
  v4 = OUTLINED_FUNCTION_1_78();
  MEMORY[0x2743A3A90](v4);
  MEMORY[0x2743A3A90](0x202C4C41455220, 0xE700000000000000);
  MEMORY[0x2743A3A90](0x7463656A626FLL, 0xE600000000000000);
  MEMORY[0x2743A3A90](0x29424F4C4220, 0xE600000000000000);
  sub_2705C7664(0, 0xE000000000000000, MEMORY[0x277D84F90]);
}

id sub_27056087C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2705608B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() currentProcess];
  v5 = [v3 ams:v4 configurationWithProcessInfo:0 bag:?];

  v6 = sub_2705D7534();
  [v5 set:v6 sourceApplicationBundleIdentifier:?];

  v7 = objc_allocWithZone(MEMORY[0x277CCACD8]);
  v8 = sub_270560AE4(0, 10000000, 0, 0);
  [v5 setURLCache_];

  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithConfiguration_delegate_delegateQueue_, v5, 0, 0);

  return v9;
}

id sub_270560A1C(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

id sub_270560AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_2705D7534();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithMemoryCapacity:a1 diskCapacity:a2 diskPath:v7];

  return v8;
}

uint64_t sub_270560BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780, &unk_27060E7D0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_270560C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780, &unk_27060E7D0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AsyncSerialQueue(uint64_t a1)
{
  result = qword_2807D7788;
  if (!qword_2807D7788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270560CAC(uint64_t a1)
{
  sub_270560D18(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_270560D18(uint64_t a1)
{
  if (!qword_2807D7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D77A0, &qword_270610260);
    v1 = sub_2705D7914();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D7798);
    }
  }
}

uint64_t sub_270560D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73E8, qword_27060D960);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8, &qword_27060E7F8);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77B0, &qword_27060E800);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780, &unk_27060E7D0);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  v34 = v6;
  v35 = a2;
  (*(v6 + 16))(v9, a2, v4);
  v37 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A0, &qword_270610260);
  sub_2705D7944();
  sub_2703CAAEC(v23, v21, &qword_2807D77B0, &qword_27060E800);
  result = __swift_getEnumTagSinglePayload(v21, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v24 - 8) + 32))(v32, v21, v24);
    v26 = v31;
    v27 = v33;
    (*(v11 + 16))(v31, v17, v33);
    v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v11 + 32))(v29 + v28, v26, v27);
    v30 = v36;
    sub_2705619D8(0, 0, v36, &unk_27060E810, v29);

    (*(v34 + 8))(v35, v4);
    sub_2703B2934(v30, &qword_2807CEDD0, &qword_2705E8160);
    (*(v11 + 8))(v17, v27);
    return sub_2703B2934(v23, &qword_2807D77B0, &qword_27060E800);
  }

  return result;
}

uint64_t sub_270561144(uint64_t a1, uint64_t a2)
{
  sub_2703B2934(a2, &qword_2807D77B0, &qword_27060E800);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780, &unk_27060E7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_2705611FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77B8, qword_27060E820);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2705612C8, 0, 0);
}

uint64_t sub_2705612C8()
{
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8, &qword_27060E7F8);
  sub_2705D7924();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_0_79(v1);
  v2 = *(v0 + 40);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_270561378()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_270561468, 0, 0);
}

uint64_t sub_270561468()
{
  OUTLINED_FUNCTION_2_2();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_2705615B4;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2705615B4()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  *v3 = *v0;

  sub_2703B8280(v5, v4);
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v6;
  OUTLINED_FUNCTION_0_79(v7);
  v8 = v1[5];

  return MEMORY[0x2822003E8](v2 + 2, 0, 0, v8);
}

uint64_t sub_270561738()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8, &qword_27060E7F8);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2705617FC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77A8, &qword_27060E7F8) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12_12(v7);
  *v8 = v9;
  v8[1] = sub_2705618F0;

  return sub_2705611FC(a1, v5, v6, v1 + v4);
}

uint64_t sub_2705618F0()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2705619D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2703CAAEC(a3, v24 - v10, &qword_2807CEDD0, &qword_2705E8160);
  v12 = sub_2705D78D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2703B2934(v11, &qword_2807CEDD0, &qword_2705E8160);
  }

  else
  {
    sub_2705D78C4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2705D7844();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2705D75F4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_270561C7C()
{

  return swift_deallocObject();
}

uint64_t sub_270561CB4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_37(v1);

  return v4(v3);
}

id sub_270561D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_270555980();

  return sub_270561DF0(a1, a2, a3, a4);
}

id sub_270561DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2705D7534();

  v5 = sub_2705D7534();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

unint64_t sub_270561F10(uint64_t a1)
{
  v1 = sub_2705D7EB4();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_270561F5C(char a1)
{
  result = 0x69746375646F7250;
  switch(a1)
  {
    case 1:
      result = 0x7972726143;
      break;
    case 2:
      result = 0x65706F6C65766544;
      break;
    case 3:
      result = 0x75646F7270657250;
      break;
    case 4:
      result = 0x696D627573657250;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270562050@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270561F10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_270562080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270561F5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2705620AC(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = sub_2705D6524();
  v6 = OUTLINED_FUNCTION_23_0(v5);
  MEMORY[0x28223BE20](v6);
  if (qword_2807D7388 != -1)
  {
    OUTLINED_FUNCTION_11_43(&qword_2807D7388);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v7 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2705E6EB0;
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77C0, &unk_27060E868);
  v24[0] = &type metadata for Bootstrap;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    v11 = sub_2705D7564();
    v13 = v12;

    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    v14 = OUTLINED_FUNCTION_22_20();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = v14;
    sub_2705D64E4();
    sub_2704B667C(v22);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v22[0] = v11;
    v22[1] = v13;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    v15 = OUTLINED_FUNCTION_22_20();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v22[0] = v15;
    sub_2705D64E4();
  }

  sub_2704B667C(v22);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_2705D64C4();
  v16 = sub_2705D7A54();
  sub_2705B6DB8(v16, v8);

  sub_2705D6914();
  sub_2705D68D4();
  __swift_project_boxed_opaque_existential_1(v22, MetatypeMetadata);
  sub_2705D6CB4();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  LOBYTE(v24[0]) = a1;
  sub_2705D6CA4();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  type metadata accessor for JSRuntime();
  swift_allocObject();
  v24[0] = sub_2705829D0(v3);
  sub_2705D6CA4();

  OUTLINED_FUNCTION_5_70(v19);
  v17 = [objc_opt_self() currentProcess];
  if (qword_2807D7348 != -1)
  {
    OUTLINED_FUNCTION_0_74(&qword_2807D7348);
  }

  sub_27056252C(v17, qword_28081C558, v24);

  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_27056288C(v24);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_27056252C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a6@<X8>)
{
  v14[1] = a6;
  v8 = sub_2705D6DE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_2705D6DC4();
  sub_2705D6CA4();
  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2703CACA0(0, &unk_2807CF460, 0x277CEE620);
  v21[0] = a2;
  sub_2705D6CA4();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_2703CACA0(0, &qword_2807D7850, 0x277CEE598);
  v20[0] = a3;
  sub_2705D6CA4();
  OUTLINED_FUNCTION_9_48(v21);
  OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_5_70(v20);
  sub_2703CACA0(0, &qword_2807D7858, 0x277CEE6A0);
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C94();
  OUTLINED_FUNCTION_5_70(v19);
  sub_2703CACA0(0, &qword_2807D5008, 0x277CB8F48);
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C84();
  OUTLINED_FUNCTION_5_70(v18);
  sub_2703CACA0(0, &qword_2807D77C8, 0x277CEE6F0);
  v12 = [objc_allocWithZone(type metadata accessor for AppURLSession()) init];
  v16[0] = v12;
  sub_2705D6CA4();

  OUTLINED_FUNCTION_9_48(v17);
  OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_5_70(v16);
  type metadata accessor for CoreMediaAPIService(0);
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C84();
  OUTLINED_FUNCTION_9_48(v15);
  OUTLINED_FUNCTION_15_39();
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_27056288C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AppDatabase();
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7828, &unk_27060EA10);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7830, &unk_27060EA20);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7838, &unk_27060EA30);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E0, &unk_27060E980);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7840, &unk_27060EA40);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7848, &qword_27060EA50);
  sub_2705D6C84();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_270564000(v8);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_270562B60()
{
  OUTLINED_FUNCTION_2_2();
  v0[52] = v1;
  v0[53] = v2;
  v3 = sub_2705D6D04();
  v0[54] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[55] = v4;
  v0[56] = swift_task_alloc();
  v5 = sub_2705D6524();
  OUTLINED_FUNCTION_23_0(v5);
  v0[57] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_270562C38()
{
  if (qword_2807D7388 != -1)
  {
    OUTLINED_FUNCTION_11_43(&qword_2807D7388);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v1 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2705E6EB0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77C0, &unk_27060E868);
  v0[35] = v3;
  v0[32] = &type metadata for Bootstrap;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = (v0 + 44);
    v7 = sub_2705D7564();
    v9 = v8;

    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v0 + 32, v3);
    DynamicType = swift_getDynamicType();
    v0[43] = swift_getMetatypeMetadata();
    v0[40] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C((v0 + 40));
    sub_2705D6504();
    v0[47] = MEMORY[0x277D837D0];
    v0[44] = v7;
    v0[45] = v9;
  }

  else
  {
    v6 = (v0 + 36);
    sub_2705D6514();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v0 + 32, v3);
    v11 = swift_getDynamicType();
    v0[39] = swift_getMetatypeMetadata();
    v0[36] = v11;
  }

  sub_2705D64E4();
  sub_2704B667C(v6);
  v12 = v0[56];
  v13 = v0[54];
  v14 = v0[55];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  sub_2705D64C4();
  v15 = sub_2705D7A54();
  sub_2705B6DB8(v15, v2);

  v0[58] = sub_2703CACA0(0, &qword_2807D77C8, 0x277CEE6F0);
  v16 = objc_opt_self();
  v0[59] = v16;
  v17 = [v16 currentProcess];
  *v12 = 0xD00000000000001CLL;
  v12[1] = 0x8000000270615880;
  v12[2] = 0;
  v12[3] = 0;
  (*(v14 + 104))(v12, *MEMORY[0x277D22228], v13);
  swift_unknownObjectRetain();
  v18 = swift_task_alloc();
  v0[60] = v18;
  *v18 = v0;
  v18[1] = sub_270562FC4;
  v19 = v0[56];
  v20 = v0[53];

  return MEMORY[0x2821809B0](v17, v20, v19);
}

uint64_t sub_270562FC4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v2[48] = v1;
  v2[49] = v4;
  v2[50] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v7 + 488) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2705630C8()
{
  v1 = v0[59];
  sub_2705D6914();
  sub_2705D68D4();
  OUTLINED_FUNCTION_9_48(v0 + 7);
  sub_2705D6CB4();
  OUTLINED_FUNCTION_5_70(v0 + 12);
  sub_2705D6654();
  OUTLINED_FUNCTION_1_81();
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v2 = [v1 currentProcess];
  if (qword_2807D7348 != -1)
  {
    OUTLINED_FUNCTION_0_74(&qword_2807D7348);
  }

  v3 = v0[49];
  sub_27056252C(v2, qword_28081C558, v0 + 22);

  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v0[51] = v3;
  sub_2705D6CA4();
  OUTLINED_FUNCTION_9_48(v0 + 27);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_270563388(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_2705632FC()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270563388(void *a1)
{
  sub_270564000(a1);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E0, &unk_27060E980);
  v2 = objc_allocWithZone(type metadata accessor for JSLog());
  v4 = sub_27059B4CC(0x2D6567617373656DLL, 0xEF736A2D65676170);
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_270563494(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for JSAMS(0);
  OUTLINED_FUNCTION_1_81();
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  type metadata accessor for JSBag();
  OUTLINED_FUNCTION_1_81();
  sub_2705D6C94();
  OUTLINED_FUNCTION_9_48(v2);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  sub_2705637AC(v4);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_2705635CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  objc_allocWithZone(type metadata accessor for JSBag());

  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_27056368C;

  return sub_27058A034();
}

uint64_t sub_27056368C()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_7_55();
  v4 = v3;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_15();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_8_55();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_3_74();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

id sub_2705637AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    v3 = result;
    sub_2703CACA0(0, &qword_2807D77D8, 0x277CD4660);
    v5[0] = v3;
    sub_2705D6CA4();

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_2705D6CB4();
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2705D7054();
    sub_2705D6C94();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2705D6CB4();
    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_destroy_boxed_opaque_existential_1(v5);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270563908@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_5_70(a1);
  type metadata accessor for MessagePageJSAMS();
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C84();
  OUTLINED_FUNCTION_5_70(v7);
  type metadata accessor for JSBag();
  OUTLINED_FUNCTION_0_80();
  sub_2705D6C94();
  OUTLINED_FUNCTION_9_48(v6);
  OUTLINED_FUNCTION_15_39();
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_270563A78(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_270563A24()
{
  v2 = OUTLINED_FUNCTION_17_30();
  v4 = objc_allocWithZone(v3(v2));

  result = v0(v5);
  *v1 = result;
  return result;
}

id sub_270563A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = a3;
  v5 = sub_2705D4484();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    v9 = result;
    sub_2703CACA0(0, &qword_2807D77D8, 0x277CD4660);
    v14[0] = v9;
    sub_2705D6CA4();

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_2705D6CB4();
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_2705D7054();
    (*(v6 + 16))(&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
    v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v11 = swift_allocObject();
    (*(v6 + 32))(v11 + v10, &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    sub_2705D6C94();

    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_2705D6CB4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270563CD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppDatabase();
  sub_2705D68B4();
  result = sub_270559938(v4, 0);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_270563D4C@<X0>(uint64_t *a1@<X8>)
{
  sub_2705D68B4();
  v2 = objc_allocWithZone(type metadata accessor for JSApp());
  result = sub_270581F64(v4);
  *a1 = result;
  return result;
}

id sub_270563DF8@<X0>(uint64_t *a1@<X8>)
{
  sub_2703CACA0(0, &unk_2807CF460, 0x277CEE620);
  sub_2705D68B4();
  sub_2705D68B4();
  v2 = objc_allocWithZone(type metadata accessor for JSClient());
  result = sub_27058AEE0(v5, v4);
  *a1 = result;
  return result;
}

uint64_t sub_270563ED8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  sub_2705D68B4();
  type metadata accessor for JSRuntime();
  sub_2705D68B4();
  v6 = objc_allocWithZone(a1(0));
  result = (a2)(v8);
  *a3 = result;
  return result;
}

uint64_t sub_270564000(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D6CB4();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E8, &unk_27060E990);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F0, &unk_27060E9A0);
  v8[0] = [objc_allocWithZone(type metadata accessor for JSDevice(0)) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F8, &unk_27060E9B0);
  v7[0] = [objc_allocWithZone(type metadata accessor for JSLocalize()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7800, &unk_27060E9C0);
  v6[0] = [objc_allocWithZone(type metadata accessor for JSLocation()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7808, &unk_27060E9D0);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7810, &unk_27060E9E0);
  v4[0] = [objc_allocWithZone(type metadata accessor for JSPrivacy()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7818, &unk_27060E9F0);
  v3[0] = [objc_allocWithZone(type metadata accessor for JSUserNotifications()) init];
  sub_2705D6CA4();

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7820, &unk_27060EA00);
  sub_2705D6C84();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2705D6CB4();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void *sub_2705643FC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSAccountStore();
  v4.receiver = objc_allocWithZone(v2);
  v4.super_class = v2;
  result = objc_msgSendSuper2(&v4, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2705644DC()
{
  v2 = OUTLINED_FUNCTION_17_30();
  v4 = objc_allocWithZone(v3(v2));

  result = v0(v5);
  *v1 = result;
  return result;
}

uint64_t sub_270564530(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2705645C8;

  return sub_2705A7114();
}

uint64_t sub_2705645C8()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_7_55();
  v4 = v3;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_15();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_8_55();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_3_74();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_2705646E8()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_1_4();
  return v1();
}

uint64_t sub_270564718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_27056368C;

  return sub_2705A77A8();
}

uint64_t sub_2705647B8(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_2705D6DE4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_2705648D0;

  return MEMORY[0x28217F228](v3);
}

uint64_t sub_2705648D0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2705649CC()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  sub_2703CACA0(0, &qword_2807D7858, 0x277CEE6A0);
  *v3 = v0;
  v3[1] = sub_270564AD0;
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_270564AD0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270564BD4()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  **(v0 + 24) = *(v0 + 16);
  (*(v1 + 8))(v2, v3);

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_270564C54()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270564CB0()
{
  OUTLINED_FUNCTION_23_14();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_270564D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860, &qword_27060EA60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = sub_2705D6DA4();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_270565450;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2703C9880;
  aBlock[3] = &block_descriptor_5;
  v9 = _Block_copy(aBlock);

  [v6 createSnapshotWithCompletion_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_270564EFC(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860, &qword_27060EA60);
    return sub_2705D7874();
  }

  else
  {
    if (!a2)
    {
      sub_2705654F0();
      swift_allocError();
      *v5 = 0;
      v5[1] = 0;
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860, &qword_27060EA60);
    return sub_2705D7864();
  }
}

void sub_270564FB0(void *a1@<X8>)
{
  v2 = objc_opt_self();
  sub_2703CACA0(0, &unk_2807CF460, 0x277CEE620);
  sub_2705D68B4();
  v3 = [v2 ams:v4 sharedAccountStoreForClient:?];

  *a1 = v3;
}

uint64_t sub_27056504C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2705D6DE4();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D68B4();
  type metadata accessor for CoreMediaAPIService(0);
  swift_allocObject();
  result = sub_270566B00(v4);
  *a1 = result;
  return result;
}

unint64_t sub_270565100()
{
  result = qword_2807D77D0;
  if (!qword_2807D77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D77D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JavaScriptEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270565220);
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

uint64_t sub_270565268()
{
  sub_2705D4484();
  OUTLINED_FUNCTION_11_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2705652E4()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  v5 = v4;
  v6 = sub_2705D4484();
  OUTLINED_FUNCTION_23_0(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_270411828;

  return sub_270564718(v5, v3, v0 + v8);
}

uint64_t sub_2705653C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860, &qword_27060EA60);
  OUTLINED_FUNCTION_11_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_270565450(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7860, &qword_27060EA60);
  OUTLINED_FUNCTION_23_0(v4);

  return sub_270564EFC(a1, a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2705654F0()
{
  result = qword_2807D7868;
  if (!qword_2807D7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7868);
  }

  return result;
}

uint64_t sub_270565544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_270565594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2705655E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_270565600(void *result, int a2)
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

uint64_t OUTLINED_FUNCTION_11_43(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_15_39()
{

  return sub_2705D6CB4();
}

uint64_t OUTLINED_FUNCTION_22_20()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return swift_getDynamicType();
}

id sub_27056576C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_2705657EC(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_2705D7534();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2705657EC(SEL *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v7, *a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_2705D7564();

  return v5;
}

uint64_t sub_2705658DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8, &unk_2705F6750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E10F0;
  *(inited + 32) = 0x6E69616D6F64;
  *(inited + 40) = 0xE600000000000000;
  v3 = [v1 domain];
  v4 = sub_2705D7564();
  v6 = v5;

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  v8 = [v1 code];
  v9 = MEMORY[0x277D83B88];
  *(inited + 96) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x6F666E4972657375;
  *(inited + 136) = 0xE800000000000000;
  v10 = [v1 userInfo];
  v11 = sub_2705D7464();

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0, &qword_2705F2A80);
  *(inited + 144) = v11;
  v12 = sub_2705D7494();
  v13 = sub_2705657EC(&selRef_ams_message);
  if (v14)
  {
    *(&v31 + 1) = v7;
    *&v30 = v13;
    *(&v30 + 1) = v14;
    sub_2703E43D4(&v30, v29);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_75();
    sub_2705664F8(v15, v16, 0xE700000000000000);
    v12 = v28;
  }

  else
  {
    v17 = sub_2703D7318(0x6567617373656DLL, 0xE700000000000000);
    if (v18)
    {
      v19 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750, &unk_2706095B0);
      sub_2705D7E04();

      sub_2703E43D4((*(v12 + 56) + 32 * v19), &v30);
      sub_2705D7E24();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    sub_2703B2934(&v30, &unk_2807D4890, &qword_2705E2880);
  }

  v20 = sub_2705657EC(&selRef_ams_title);
  if (v21)
  {
    *(&v31 + 1) = v7;
    *&v30 = v20;
    *(&v30 + 1) = v21;
    sub_2703E43D4(&v30, v29);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_75();
    sub_2705664F8(v22, v23, 0xE500000000000000);
    return v28;
  }

  else
  {
    v24 = sub_2703D7318(0x656C746974, 0xE500000000000000);
    if (v25)
    {
      v26 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750, &unk_2706095B0);
      sub_2705D7E04();
      v12 = *&v29[0];

      sub_2703E43D4((*(v12 + 56) + 32 * v26), &v30);
      sub_2705D7E24();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    sub_2703B2934(&v30, &unk_2807D4890, &qword_2705E2880);
  }

  return v12;
}

id sub_270565CB4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    sub_2705D6F34();
    sub_270566624();
    v5 = swift_allocError();
    v52 = 0;
    v53 = 0;
    sub_2705D6F04();
  }

  v6 = a1;
  v7 = sub_2705D4354();

  v8 = [v7 userInfo];
  v9 = MEMORY[0x277D837D0];
  sub_2705D7464();

  if (!a1 || (v61[0] = a1, v10 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7880, qword_27060EAF0), (swift_dynamicCast() & 1) == 0))
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_15;
  }

  if (!*(&v59 + 1))
  {
LABEL_15:
    sub_2703B2934(&v58, &qword_2807D7878, &unk_27060EAE0);
    goto LABEL_16;
  }

  sub_2703B291C(&v58, v61);
  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2_81();
  v11 = sub_2705D4204();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_2705D7564();
    *(&v59 + 1) = v9;
    *&v58 = v13;
    *(&v58 + 1) = v14;
    sub_2703E43D4(&v58, v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_81(isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v21, v22, v52, v53, v54, v55, v56[0]);
  }

  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2_81();
  v23 = sub_2705D41F4();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    sub_2705D7564();
    *(&v59 + 1) = v9;
    *&v58 = v25;
    *(&v58 + 1) = v26;
    sub_2703E43D4(&v58, v56);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_81(v27, v28, v29, v30, v31, v32, v33, v34, v52, v53, v54, v55, v56[0]);
  }

  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2_81();
  v35 = sub_2705D4214();
  if (v36)
  {
    v37 = v35;
    v38 = v36;
    sub_2705D7564();
    *(&v59 + 1) = v9;
    *&v58 = v37;
    *(&v58 + 1) = v38;
    sub_2703E43D4(&v58, v56);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_81(v39, v40, v41, v42, v43, v44, v45, v46, v52, v53, v54, v55, v56[0]);
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
LABEL_16:
  v47 = [v7 domain];
  if (!v47)
  {
    sub_2705D7564();
    v47 = sub_2705D7534();
  }

  v48 = [v7 code];
  v49 = sub_2705D7454();

  v57.receiver = v2;
  v57.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v57, sel_initWithDomain_code_userInfo_, v47, v48, v49);

  return v50;
}

id sub_2705660E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_2705D7534();

  if (a4)
  {
    v9 = sub_2705D7454();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

double sub_270566214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_2703D7318(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750, &unk_2706095B0);
    sub_2705D7E04();

    sub_2703E43D4((*(v9 + 56) + 32 * v7), a3);
    sub_2705D7E24();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2705662FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2703D7318(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7890, &unk_27060EB28);
    sub_2705D7E04();

    sub_27055CA34(*(v9 + 56) + 8 * v8, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7528, &qword_27060E420);
    result = sub_2705D7E24();
    *v3 = v9;
  }

  else
  {
    *a3 = 0;
  }

  *(a3 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t sub_270566404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2703D7318(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7888, &qword_27060EB18);
  sub_2705D7E04();

  v7 = *(*(v9 + 56) + 16 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7450, &qword_27060EB20);
  sub_2705D7E24();
  *v3 = v9;
  return v7;
}

_OWORD *sub_2705664F8(_OWORD *a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6750, &unk_2706095B0);
  if ((OUTLINED_FUNCTION_4_67() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_2703D7318(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_2703E43D4(a1, v15);
  }

  else
  {
    sub_270566908(v10, a2, a3, a1, v14);
  }
}

unint64_t sub_270566624()
{
  result = qword_2807D7870;
  if (!qword_2807D7870)
  {
    sub_2705D6F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7870);
  }

  return result;
}

uint64_t sub_2705666A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7890, &unk_27060EB28);
  if ((OUTLINED_FUNCTION_4_67() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_2703D7318(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = v14[7] + 8 * v10;

    return sub_2705669E0(a1, v15);
  }

  else
  {
    sub_270566974(v10, a2, a3, a1, v14);
  }
}

void sub_2705667C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_2703D7318(a3, a4);
  OUTLINED_FUNCTION_0_6();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7888, &qword_27060EB18);
  if ((sub_2705D7E04() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_2703D7318(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = v17[7] + 16 * v13;
    v19 = *v18;
    *v18 = a1;
    *(v18 + 8) = a2;
  }

  else
  {
    sub_2703BCDB0(v13, a3, a4, a1, a2, v17);
  }
}

_OWORD *sub_270566908(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_270566974(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27055CA34(a4, a5[7] + 8 * a1);
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

uint64_t sub_2705669E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7528, &qword_27060E420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *OUTLINED_FUNCTION_0_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_2705664F8(&a13, v13, v14);
}

uint64_t OUTLINED_FUNCTION_4_67()
{

  return sub_2705D7E04();
}

uint64_t sub_270566AC0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_270566B00(a1);
  return v2;
}

uint64_t sub_270566B00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C0, &unk_27060D940);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  *(&v14 - v6) = 3;
  v8 = *MEMORY[0x277D85188];
  sub_2705D6154();
  OUTLINED_FUNCTION_14();
  (*(v9 + 104))(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C8, &qword_270612230);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D0, &qword_27060D950);
  swift_allocObject();
  *(v2 + 16) = sub_27055457C(v7);
  v11 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore19CoreMediaAPIService_bag;
  sub_2705D6DE4();
  OUTLINED_FUNCTION_14();
  (*(v12 + 32))(v2 + v11, a1);
  return v2;
}

uint64_t sub_270566C5C()
{
  OUTLINED_FUNCTION_2_2();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = type metadata accessor for CoreMediaAPIRequest(0);
  v1[22] = v4;
  OUTLINED_FUNCTION_23_0(v4);
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_270566CE8()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *v1;
    v5 = *(v1 + 32);
    *(v0 + 88) = *(v1 + 16);
    *(v0 + 72) = v4;
    *(v0 + 80) = v2;
    *(v0 + 56) = *(v1 + 16);
    *(v0 + 136) = v5;
    OUTLINED_FUNCTION_4_68();
    sub_270569AE8(v7, v3 + v6, v8);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = *(v0 + 88);
    *(v3 + 32) = v5;
    sub_2703C2E9C(v1, v0 + 16, &qword_2807D78B0, &qword_27060EB68);
    sub_270435FF0(v0 + 72, v0 + 104);
    sub_270435FF0(v0 + 56, v0 + 120);
    sub_2703C2E9C(v0 + 136, v0 + 144, &qword_2807D78B8, &qword_27060EB70);
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_270566EA0;

    return sub_270567108();
  }

  else
  {
    sub_270568F54();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_1_4();

    return v12();
  }
}

uint64_t sub_270566EA0()
{
  OUTLINED_FUNCTION_10_48();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v10 = v9;
  *v10 = *v1;
  *(v9 + 200) = v0;

  v11 = *(v8 + 184);
  if (!v0)
  {
    *(v9 + 224) = v3;
    *(v9 + 208) = v5;
    *(v9 + 216) = v7;
  }

  sub_270568FA8(v11);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_270566FF0()
{
  OUTLINED_FUNCTION_2_2();
  sub_270569004(v0 + 72);
  sub_270569004(v0 + 56);
  sub_2703C2EFC(v0 + 136, &qword_2807D78B8, &qword_27060EB70);

  v1 = *(v0 + 8);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 224);

  return v1(v2, v3, v4);
}

uint64_t sub_270567084()
{
  OUTLINED_FUNCTION_2_2();
  sub_270569004(v0 + 72);
  sub_270569004(v0 + 56);
  sub_2703C2EFC(v0 + 136, &qword_2807D78B8, &qword_27060EB70);

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_270567108()
{
  OUTLINED_FUNCTION_2_2();
  v1[19] = v2;
  v1[20] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D78C0, &unk_27060EB78);
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = sub_2705D4484();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for CoreMediaAPIRequest.RequestType(0);
  v1[28] = v5;
  OUTLINED_FUNCTION_23_0(v5);
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_270567260()
{
  v1 = v0[29];
  v2 = v0[19];
  type metadata accessor for CoreMediaAPIRequest(0);
  OUTLINED_FUNCTION_4_68();
  sub_270569AE8(v2 + v3, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[29];
  if (!EnumCaseMultiPayload)
  {
    (*(v0[25] + 32))(v0[27], v6, v0[24]);
    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = sub_270567618;
    v8 = v0[27];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[25] + 32))(v0[26], v6, v0[24]);
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = sub_270567870;
    v8 = v0[26];
LABEL_5:
    v10 = v0[19];

    return sub_270567EBC(v10, v8);
  }

  v12 = *v6;
  if (*v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v0[22];
    v25 = v0[23];
    v24 = v0[21];
    v14 = v0[19];
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];

    v19 = sub_2705D6DA4();
    v20 = objc_allocWithZone(MEMORY[0x277CEE570]);
    v21 = sub_270569940(v12, v15, v16, v18, v17, v19);
    v0[36] = v21;
    [v21 setAccount_];
    v22 = [v21 perform];
    v0[37] = v22;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_270567AC8;
    swift_continuation_init();
    v0[17] = v24;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 14);
    sub_2703CACA0(0, &qword_2807D78C8, 0x277CEE568);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
    sub_2705D7854();
    (*(v13 + 32))(boxed_opaque_existential_1Tm, v25, v24);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2705686B0;
    v0[13] = &block_descriptor_6;
    [v22 resultWithCompletion_];
    (*(v13 + 8))(boxed_opaque_existential_1Tm, v24);
    EnumCaseMultiPayload = (v0 + 2);
  }

  return MEMORY[0x282200938](EnumCaseMultiPayload);
}

uint64_t sub_270567618()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_17_14();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v8 = v7;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_27056772C()
{
  OUTLINED_FUNCTION_10_48();
  v1 = v0[32];
  (*(v0[25] + 8))(v0[27], v0[24]);
  v2 = v0[31];
  v3 = v0[32];
  v4 = v1;
  v5 = sub_270569A70(v3);
  if (v5 && (v6 = sub_2705687B0(v5), , v6))
  {
    sub_2705A4A54(v6);
    OUTLINED_FUNCTION_8_56();

    if (v2)
    {
      OUTLINED_FUNCTION_12_40();

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_11_44();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_39();

  OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_11_44();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_270567870()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_17_14();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 280) = v3;
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_270567984()
{
  OUTLINED_FUNCTION_10_48();
  v1 = v0[35];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v2 = v0[34];
  v3 = v0[35];
  v4 = v1;
  v5 = sub_270569A70(v3);
  if (v5 && (v6 = sub_2705687B0(v5), , v6))
  {
    sub_2705A4A54(v6);
    OUTLINED_FUNCTION_8_56();

    if (v2)
    {
      OUTLINED_FUNCTION_12_40();

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_11_44();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_39();

  OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_11_44();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_270567AC8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_270567BC8()
{
  OUTLINED_FUNCTION_10_48();
  v1 = *(v0 + 296);

  v2 = *(v0 + 144);
  v3 = sub_270569A70(v2);
  if (v3)
  {
    v4 = sub_2705687B0(v3);

    if (v4)
    {
      sub_2705A4A54(v4);
      OUTLINED_FUNCTION_8_56();
    }
  }

  OUTLINED_FUNCTION_14_39();

  OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_11_44();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_270567D04()
{
  OUTLINED_FUNCTION_23_14();
  (*(v0[25] + 8))(v0[27], v0[24]);
  OUTLINED_FUNCTION_13_40();

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_270567D94()
{
  OUTLINED_FUNCTION_23_14();
  (*(v0[25] + 8))(v0[26], v0[24]);
  OUTLINED_FUNCTION_13_40();

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_270567E24(uint64_t a1)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 288);
  swift_willThrow();

  OUTLINED_FUNCTION_13_40();

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_270567EBC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D78D0, &unk_27060EB90);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_2705D4484();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_2705D3FE4();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = *(type metadata accessor for CoreMediaAPIRequest(0) - 8);
  v3[31] = v7;
  v3[32] = *(v7 + 64);
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2705680A4, 0, 0);
}

uint64_t sub_2705680A4()
{
  v1 = v0;
  v22 = v0 + 2;
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v20 = v0[29];
  v21 = v0[28];
  v5 = v0[26];
  v18 = v0[27];
  v19 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v6 = v0[21];
  v23 = v0 + 18;
  v24 = v0[22];
  v7 = v0[19];
  v17 = v0[20];
  v0[34] = *(v6 + 16);
  v8 = *v7;
  v0[35] = *v7;
  v9 = v7[1];
  v0[36] = v9;
  sub_270569AE8(v7, v2, type metadata accessor for CoreMediaAPIRequest);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_270569C5C(v2, v11 + v10);

  v12 = sub_270568C0C(v8, v9, sub_270569CC0, v11);
  v1[37] = v12;

  (*(v5 + 16))(v18, v17, v19);
  sub_2705D3FD4();
  v13 = sub_2705D3FC4();
  (*(v20 + 8))(v3, v21);
  v14 = [v12 dataTaskPromiseWithRequest_];
  v1[38] = v14;

  v1[2] = v1;
  v1[7] = v23;
  v1[3] = sub_2705683E0;
  swift_continuation_init();
  v1[17] = v24;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1 + 14);
  sub_2703CACA0(0, &qword_2807D78D8, 0x277CEE6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08, &unk_2705F2E30);
  sub_2705D7854();
  (*(v26 + 32))(boxed_opaque_existential_1Tm, v25, v24);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_270568C84;
  v1[13] = &block_descriptor_10;
  [v14 resultWithCompletion_];
  (*(v26 + 8))(boxed_opaque_existential_1Tm, v24);

  return MEMORY[0x282200938](v22);
}

uint64_t sub_2705683E0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2705684E0()
{
  OUTLINED_FUNCTION_10_48();
  v1 = *(v0 + 144);

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CEE568]) initWithResult_];
  }

  v3 = *(v0 + 296);
  sub_270569184(*(v0 + 280), *(v0 + 288));

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_2705685E0(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[35];
  swift_willThrow();

  sub_270569184(v5, v3);

  OUTLINED_FUNCTION_1_4();

  return v6();
}

uint64_t sub_270568764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t))
{
  v8 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return a5(&v8, v6);
}

unint64_t sub_2705687B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0138, &qword_27060EBA0);
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
  while (1)
  {
    if (!v5)
    {
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
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2703BD1EC(*(a1 + 48) + 40 * v10, __src);
    sub_2703D7F04(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_2703BD1EC(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_2703D7F04(&__dst[40], v20);
    sub_2703C2EFC(__dst, &qword_2807D78E0, &qword_27060EBA8);
    v21 = v18;
    sub_2703E43D4(v20, v22);
    v11 = v21;
    sub_2703E43D4(v22, v23);
    sub_2703E43D4(v23, &v21);
    result = sub_2703D7318(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = sub_2703E43D4(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_2703E43D4(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_2703C2EFC(__dst, &qword_2807D78E0, &qword_27060EBA8);

  return 0;
}

void sub_270568A68(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];

  v7 = sub_2705D6DA4();
  v8 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v9 = sub_270569A08(v5, v6, v7);
  v10 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v9 bag:sub_2705D6DA4()];

  swift_unknownObjectRelease();
  [v10 setAccount_];
  v11 = [objc_allocWithZone(MEMORY[0x277CEE560]) init];
  [v10 setResponseDecoder_];

  v12 = [objc_allocWithZone(type metadata accessor for AppURLSession()) init];
  v13 = objc_allocWithZone(MEMORY[0x277CEE550]);
  v14 = v12;
  v15 = [v13 initWithTokenService_];
  [v14 setProtocolHandler_];

  v16 = v10;
  [v14 setRequestEncoder_];

  *a3 = v14;
}

id sub_270568C0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *), uint64_t a4)
{
  os_unfair_lock_lock((v4 + 16));
  v8 = sub_270569058((v4 + 24), a1, a2, a3);
  os_unfair_lock_unlock((v4 + 16));
  return v8;
}

void sub_270568C98(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v15 = a3;
    OUTLINED_FUNCTION_3_76();
    sub_270568764(v9, v10, a4, a5, v11);
  }

  else if (a2)
  {
    v12 = a2;
    OUTLINED_FUNCTION_2_82();
    sub_270568764(v9, v13, a4, a5, v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_270568D64()
{

  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore19CoreMediaAPIService_bag;
  sub_2705D6DE4();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_270568DC4()
{

  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore19CoreMediaAPIService_bag;
  sub_2705D6DE4();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CoreMediaAPIService(uint64_t a1)
{
  result = qword_2807D7898;
  if (!qword_2807D7898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270568EB4(uint64_t a1)
{
  result = sub_2705D6DE4();
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

unint64_t sub_270568F54()
{
  result = qword_2807D78A8;
  if (!qword_2807D78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D78A8);
  }

  return result;
}

uint64_t sub_270568FA8(uint64_t a1)
{
  v2 = type metadata accessor for CoreMediaAPIRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_270569058(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v17[1] = a3;
  v17[0] = a2;
  result = sub_2705573D4(a2, a3, *a1);
  if (!result)
  {
    a4(&v18, v17);
    v14 = v18;

    v11 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_2705667C0(v11, 1, a2, a3, isUniquelyReferenced_nonNull_native);

    v13 = v16;
    goto LABEL_5;
  }

  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v11 = result;

    v12 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *a1;
    sub_2705667C0(v11, v10, a2, a3, v12);

    v13 = v18;
LABEL_5:
    *a1 = v13;
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_270569184(uint64_t a1, uint64_t a2)
{
  v5 = sub_2705D6154();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C0, &unk_27060D940);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  sub_2703C2E9C(v2 + *(*v2 + 112), &v14 - v10, &qword_2807D73C0, &unk_27060D940);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C8, &qword_270612230);
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_270569334(a1, a2, v8);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_270569334(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v33 = sub_2705D6164();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2705D6194();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2705D61B4();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = sub_2705D6174();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2703CACA0(0, &qword_2807CEC80, 0x277D85C78);
  (*(v15 + 104))(v17, *MEMORY[0x277D851D0], v14);
  v18 = sub_2705D7B44();
  (*(v15 + 8))(v17, v14);
  sub_2705D61A4();
  MEMORY[0x2743A25F0](v11, v29);
  v29 = *(v8 + 8);
  v29(v11, v7);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v31;
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v22;
  aBlock[4] = sub_270569DC4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2703C9520;
  aBlock[3] = &block_descriptor_20;
  v23 = _Block_copy(aBlock);

  sub_2705D6184();
  v37 = MEMORY[0x277D84F90];
  sub_270569DE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4C0, &unk_270612520);
  sub_2703CAA2C();
  v25 = v32;
  v24 = v33;
  sub_2705D7C94();
  MEMORY[0x2743A3ED0](v13, v6, v25, v23);
  _Block_release(v23);

  (*(v36 + 8))(v25, v24);
  (*(v34 + 8))(v6, v35);
  v29(v13, v28);
}

os_unfair_lock_s *sub_2705697B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    os_unfair_lock_lock(result + 4);
    sub_270569838(&v6[6]._os_unfair_lock_opaque, a2, a3);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

void sub_270569838(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_2703D7318(a2, a3);
    if (v8)
    {
      v9 = *(v3 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = v11 - 1;
      if (v11 == 1)
      {
        v13 = v10;
        v16 = sub_270566404(a2, a3);
      }

      else if (__OFSUB__(v11, 1))
      {
        __break(1u);
      }

      else
      {
        v14 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *a1;
        sub_2705667C0(v14, v12, a2, a3, isUniquelyReferenced_nonNull_native);

        *a1 = v17;
      }
    }
  }
}

id sub_270569940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2705D7534();

  v10 = sub_2705D7534();

  v11 = [v6 initWithType:a1 clientIdentifier:v9 clientVersion:v10 bag:a6];

  swift_unknownObjectRelease();
  return v11;
}

id sub_270569A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2705D7534();

  v6 = [v3 initWithClientIdentifier:v5 bag:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_270569A70(void *a1)
{
  v2 = [a1 responseDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2705D7464();

  return v3;
}

uint64_t sub_270569AE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_270569B48()
{
  v1 = (type metadata accessor for CoreMediaAPIRequest(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  type metadata accessor for CoreMediaAPIRequest.RequestType(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_2705D4484();
    OUTLINED_FUNCTION_14();
    (*(v4 + 8))(v0 + v2 + v3);
  }

  return swift_deallocObject();
}

uint64_t sub_270569C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMediaAPIRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_270569CC0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CoreMediaAPIRequest(0);
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  sub_270568A68(a1, v7, a2);
}

uint64_t sub_270569D40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_270569D84()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_270569DE8()
{
  result = qword_2807CF4B8;
  if (!qword_2807CF4B8)
  {
    sub_2705D6164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF4B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoreMediaAPIService.FetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270569F0CLL);
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

unint64_t sub_270569F48()
{
  result = qword_2807D78F8;
  if (!qword_2807D78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D78F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_56()
{
}

uint64_t OUTLINED_FUNCTION_12_40()
{
}

uint64_t OUTLINED_FUNCTION_13_40()
{
}

uint64_t OUTLINED_FUNCTION_14_39()
{
}

uint64_t sub_27056A0A0(char a1)
{
  result = 0x79616C6544736ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 11:
      OUTLINED_FUNCTION_3_77();
      result = v6 + 3;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6954646E65747865;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      OUTLINED_FUNCTION_3_77();
      result = v9 - 2;
      break;
    case 7:
      result = 0x636E79537473616CLL;
      break;
    case 8:
      result = 0x65747441636E7973;
      break;
    case 9:
      OUTLINED_FUNCTION_3_77();
      result = v5 + 2;
      break;
    case 10:
      result = 0x764F656372756F73;
      break;
    case 12:
      result = 0x727265764F6C7275;
      break;
    case 13:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      OUTLINED_FUNCTION_3_77();
      result = v4 + 15;
      break;
    case 15:
      OUTLINED_FUNCTION_3_77();
      result = v7 + 14;
      break;
    case 17:
      OUTLINED_FUNCTION_3_77();
      result = v8 + 20;
      break;
    default:
      OUTLINED_FUNCTION_3_77();
      result = v3 | 4;
      break;
  }

  return result;
}

uint64_t sub_27056A32C(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_0_82();
  v2 = OUTLINED_FUNCTION_2_83();

  CFPreferencesAppSynchronize(v2);

  keyExistsAndHasValidFormat = 0;
  sub_27056A0A0(a1);
  v3 = sub_2705D7534();

  v4 = OUTLINED_FUNCTION_2_83();

  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v4, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return 2;
  }
}

CFIndex sub_27056A42C(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_0_82();
  v2 = OUTLINED_FUNCTION_2_83();

  CFPreferencesAppSynchronize(v2);

  keyExistsAndHasValidFormat = 0;
  sub_27056A0A0(a1);
  v3 = sub_2705D7534();

  v4 = OUTLINED_FUNCTION_2_83();

  AppIntegerValue = CFPreferencesGetAppIntegerValue(v3, v4, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue;
  }

  else
  {
    return 0;
  }
}

CFPropertyListRef sub_27056A524(char a1)
{
  OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_0_82();
  v2 = OUTLINED_FUNCTION_2_83();

  CFPreferencesAppSynchronize(v2);

  sub_27056A0A0(a1);
  v3 = sub_2705D7534();

  v4 = OUTLINED_FUNCTION_2_83();

  v5 = CFPreferencesCopyAppValue(v3, v4);

  return v5;
}

id sub_27056A5D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_27056A62C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_2_83()
{

  return sub_2705D7534();
}

void *sub_27056A6D0(uint64_t a1)
{
  sub_27047D5E0();
  v2 = sub_2705D7494();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = a1;

  v8 = 0;
  v31 = v7;
  v32 = a1 + 64;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
      v11 = *(*(v33 + 48) + v10);
      v12 = *(*(v33 + 56) + v10);
      v13 = sub_2705D7564();
      v15 = v14;
      v16 = v12;
      v34 = v11;
      v17 = v16;

      swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_2703D7318(v13, v15);
      if (__OFADD__(v2[2], (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_2807D7900, &qword_27060ECA8);
      if (sub_2705D7E04())
      {
        v22 = sub_2703D7318(v13, v15);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      v6 &= v6 - 1;
      if (v21)
      {

        v24 = v2[7];
        v25 = *(v24 + 8 * v20);
        *(v24 + 8 * v20) = v17;
      }

      else
      {
        v2[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v2[6] + 16 * v20);
        *v26 = v13;
        v26[1] = v15;
        *(v2[7] + 8 * v20) = v17;

        v27 = v2[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_21;
        }

        v2[2] = v29;
      }

      v8 = v9;
      v7 = v31;
      v3 = v32;
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
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2705D82D4();
  __break(1u);
  return result;
}

uint64_t sub_27056A964(void (*a1)(uint64_t, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v110 = a1;
  v111 = a2;
  v14 = sub_2705D7C14();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_51(&v85 - v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v96 = sub_2705D7C14();
  OUTLINED_FUNCTION_1_14();
  v123 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51(&v85 - v19);
  OUTLINED_FUNCTION_1_14();
  i = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_11();
  v95 = v22;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v23);
  v94 = &v85 - v24;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v26);
  OUTLINED_FUNCTION_1_14();
  v105 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_11();
  v124 = v29;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51(v31);
  OUTLINED_FUNCTION_1_14();
  v104 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_11();
  v120 = v34;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  v119 = v36;
  v126 = a4;
  v37 = a5;
  v117 = swift_getTupleTypeMetadata2();
  v116 = sub_2705D7C14();
  OUTLINED_FUNCTION_1_14();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_11();
  v115 = v41;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_58();
  v114 = v43;
  v125 = TupleTypeMetadata2;
  sub_2705D7804();
  v102 = a6;
  v103 = a7;
  v98 = a9;
  v127 = sub_2705D7494();
  if ((a3 & 0xC000000000000001) != 0)
  {
    v44 = sub_2705D7E34();
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v118 = v44 | 0x8000000000000000;
  }

  else
  {
    v48 = -1 << *(a3 + 32);
    v46 = ~v48;
    v45 = a3 + 64;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v47 = v50 & *(a3 + 64);
    v118 = a3;
  }

  v122 = (v104 + 32);
  v121 = (v105 + 32);
  v85 = v46;
  v86 = (v46 + 64) >> 6;
  v100 = v104 + 16;
  v99 = v105 + 16;
  v112 = (v39 + 32);
  v92 = (i + 32);
  v91 = (i + 16);
  v90 = v103 - 8;
  v89 = (i + 8);
  v108 = (v104 + 8);
  v109 = v105 + 8;
  v88 = v102 - 8;
  v87 = (v123 + 8);

  v52 = 0;
  v53 = v101;
  v54 = v106;
  for (i = v45; ; v45 = i)
  {
    v55 = v119;
    if ((v118 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_2705D7E44())
    {
      sub_2705D8114();
      swift_unknownObjectRelease();
      v54 = v106;
      sub_2705D8114();
      swift_unknownObjectRelease();
      v57 = v52;
      v123 = v47;
      goto LABEL_17;
    }

    v64 = 1;
    v58 = v52;
    v123 = v47;
    v54 = v106;
LABEL_20:
    v61 = v117;
    v63 = v115;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v63, v64, 1, v61);
    v65 = v114;
    (*v112)();
    if (__swift_getEnumTagSinglePayload(v65, 1, v61) == 1)
    {
      sub_2703B5C38(v118);
      return v127;
    }

    v66 = *(v61 + 48);
    v67 = v120;
    (*v122)(v120, v65, v126);
    v68 = v65 + v66;
    v69 = v124;
    (*v121)(v124, v68, v37);
    v110(v67, v69);
    if (__swift_getEnumTagSinglePayload(v53, 1, v125) == 1)
    {
      v70 = OUTLINED_FUNCTION_4_69();
      v71(v70);
      (*v108)(v67, v126);
      result = (*v87)(v53, v96);
    }

    else
    {
      v72 = v93;
      v73 = v125;
      (*v92)(v93, v53, v125);
      v74 = *v91;
      v75 = v94;
      (*v91)(v94, v72, v73);
      v107 = *(v73 + 48);
      v76 = v95;
      v74(v95, v72, v73);
      v77 = *(v73 + 48);
      v78 = v103;
      v79 = *(v103 - 8);
      v80 = v97;
      (*(v79 + 32))(v97, &v76[v77], v103);
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v78);
      v81 = v102;
      sub_2705D74B4();
      sub_2705D74C4();
      (*v89)(v72, v125);
      v82 = OUTLINED_FUNCTION_4_69();
      v83(v82);
      (*v108)(v120, v126);
      v53 = v101;
      (*(*(v81 - 8) + 8))(v76, v81);
      v84 = v78;
      v54 = v106;
      result = (*(v79 + 8))(&v75[v107], v84);
    }

    v52 = v58;
    v47 = v123;
  }

  v56 = v47;
  v57 = v52;
  if (v47)
  {
LABEL_14:
    v123 = (v56 - 1) & v56;
    OUTLINED_FUNCTION_6_66();
    v59(v55);
    OUTLINED_FUNCTION_6_66();
    v60(v54);
LABEL_17:
    v61 = v117;
    v62 = *(v117 + 48);
    v63 = v115;
    (*v122)();
    (*v121)(v63 + v62, v54, v37);
    v64 = 0;
    v58 = v57;
    goto LABEL_21;
  }

  v58 = v52;
  while (1)
  {
    v57 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v57 >= v86)
    {
      v123 = 0;
      v64 = 1;
      goto LABEL_20;
    }

    v56 = *(v45 + 8 * v57);
    ++v58;
    if (v56)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27056B340(uint64_t a1)
{
  sub_2705D83B4();
  sub_2703B66B4(v3, *v1);
  return sub_2705D8414();
}

uint64_t sub_27056B380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v79[3] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v79);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a4);
  if (*(a2 + 16))
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    LODWORD(v10) = *(a2 + 48);
    v11 = OUTLINED_FUNCTION_64();
    sub_27056B884(v11, v12, v10);

    v13 = sub_2705799B0(1, a2);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if (v18)
    {
      sub_2705D82A4();
      swift_unknownObjectRetain_n();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
        v21 = MEMORY[0x277D84F90];
      }

      v22 = *(v21 + 16);

      if (__OFSUB__(v19 >> 1, v17))
      {
        goto LABEL_50;
      }

      if (v22 != (v19 >> 1) - v17)
      {
        goto LABEL_51;
      }

      v23 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v71 = v23;
      if (v23)
      {
        goto LABEL_12;
      }

      v71 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      sub_27057E0E8(v13, v15, v17, v19);
      v71 = v20;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      if (!v10)
      {
        break;
      }

      if (v10 == 1)
      {
        sub_2703D7F04(v79, &v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500, &qword_270610A90);
        OUTLINED_FUNCTION_0_83(v24, v25, v26, v27, v28, v29, v30, v31, v66, v67, v68, v71, v75);
        if (swift_dynamicCast())
        {
          if ((v8 & 0x8000000000000000) == 0 && v8 < *(v75 + 16))
          {
            sub_2703D7F04(v75 + 32 * v8 + 32, &v77);

            v32 = v78;
            v33 = __swift_project_boxed_opaque_existential_1(&v77, v78);
            v10 = sub_27056B380(v33, v72, v69, v32);

LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(&v77);
            goto LABEL_44;
          }
        }

LABEL_40:

        goto LABEL_43;
      }

      sub_2703D7F04(v79, &v77);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500, &qword_270610A90);
      OUTLINED_FUNCTION_0_83(v46, v47, v48, v49, v50, v51, v52, v53, v66, v67, v68, v71, v75);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      v66 = v9;
      v67 = v8;
      v9 = 0;
      v17 = v75;
      v8 = *(v75 + 16);
      v19 = v75 + 32;
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v8 == v9)
        {

          sub_27056B898(v67, v66, 2);
          goto LABEL_44;
        }

        if (v9 >= *(v17 + 16))
        {
          break;
        }

        sub_2703D7F04(v19, &v77);
        v54 = v78;
        v55 = __swift_project_boxed_opaque_existential_1(&v77, v78);
        v56 = sub_27056B380(v55, v74, v68, v54);
        __swift_destroy_boxed_opaque_existential_1(&v77);
        v57 = *(v56 + 16);
        v58 = *(v10 + 16);
        v15 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          goto LABEL_46;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v15 > *(v10 + 24) >> 1)
        {
          sub_270572630();
          v10 = v59;
        }

        if (*(v56 + 16))
        {
          if ((*(v10 + 24) >> 1) - *(v10 + 16) < v57)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v57)
          {
            v60 = *(v10 + 16);
            v61 = __OFADD__(v60, v57);
            v62 = v60 + v57;
            if (v61)
            {
              goto LABEL_49;
            }

            *(v10 + 16) = v62;
          }
        }

        else
        {

          if (v57)
          {
            goto LABEL_47;
          }
        }

        v19 += 32;
        ++v9;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_unknownObjectRelease();
    }

    sub_2703D7F04(v79, &v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8, &unk_2705F27A0);
    OUTLINED_FUNCTION_0_83(v34, v35, v36, v37, v38, v39, v40, v41, v66, v67, v68, v71, v75);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_64();
      sub_270557A00();

      if (v76)
      {
        sub_2703E43D4(&v75, &v77);
        v42 = v78;
        v43 = __swift_project_boxed_opaque_existential_1(&v77, v78);
        v10 = sub_27056B380(v43, v73, v70, v42);

        v44 = OUTLINED_FUNCTION_64();
        sub_27056B898(v44, v45, 0);
        goto LABEL_21;
      }

      sub_27056B8AC(&v75);
    }

    else
    {
    }

    v63 = OUTLINED_FUNCTION_64();
    sub_27056B898(v63, v64, 0);
LABEL_43:
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4488, &unk_27060ECB0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2705DC030;
    sub_2703D7F04(v79, v10 + 32);
  }

LABEL_44:
  __swift_destroy_boxed_opaque_existential_1(v79);
  return v10;
}

uint64_t sub_27056B884(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_27056B898(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_27056B8AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D80, &qword_27060F290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_27056B91C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27056B9E8);
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

uint64_t sub_27056BA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_SD25UnifiedMessagingKitJSCoreSSRszs8SendableR_rlE16KeyPathComponent33_63BF0C609BFBA2E39A2C1A736038BCDALLOySSq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

id sub_27056BB14@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  v13 = sub_2705D6524();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2705D4434();
  LOBYTE(a5) = (*(a5 + 24))(v14);

  if (a5)
  {
    v15 = sub_2705D4484();
    OUTLINED_FUNCTION_4_4();
    (*(v16 + 16))(a6, a1, v15);

    return __swift_storeEnumTagSinglePayload(a6, 0, 1, v15);
  }

  else
  {
    v52 = a3;
    v55 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    sub_2705D6574();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2705E6EB0;
    v62 = a4;
    __swift_allocate_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_4_4();
    v51 = v6;
    v50 = *(v19 + 16);
    v50();
    v20 = AMSLogKey();
    v21 = MEMORY[0x277D837D0];
    v54 = a6;
    if (v20)
    {
      v22 = v20;
      v23 = sub_2705D7564();
      v25 = v24;

      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_15_22();
      MetatypeMetadata = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_2_84(MetatypeMetadata);
      sub_2704B667C(&v58);
      sub_2705D6504();
      v60 = v21;
      v58 = v23;
      v59 = v25;
    }

    else
    {
      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v27 = OUTLINED_FUNCTION_22_20();
      v60 = swift_getMetatypeMetadata();
      v58 = v27;
    }

    sub_2705D64E4();
    sub_2704B667C(&v58);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_2705D6514();
    sub_2705D6504();
    v28 = sub_2705D4484();
    v62 = v28;
    __swift_allocate_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_4_4();
    v30 = *(v29 + 16);
    v53 = v28;
    v30();
    sub_2705D64E4();
    sub_2704B667C(v61);
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    sub_2705D6534();
    if (qword_2807D7368 != -1)
    {
      swift_once();
    }

    v31 = sub_2705D7A64();
    sub_2705B6DB8(v31, v18);

    v32 = [objc_opt_self() defaultManager];
    v33 = sub_2705D43C4();
    if (v52)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_27056C5C0();
      v34 = sub_2705D7454();
    }

    else
    {
      v34 = 0;
    }

    v35 = MEMORY[0x277D837D0];
    v61[0] = 0;
    v36 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:v55 & 1 attributes:v34 error:v61];

    v56 = v61[0];
    if (v36)
    {
      (v30)(v54, a1, v53);
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v53);

      return v56;
    }

    else
    {
      v37 = v61[0];
      v38 = sub_2705D4364();

      swift_willThrow();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_2705E6EB0;
      v62 = a4;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v61);
      (v50)(boxed_opaque_existential_1Tm, v51, a4);
      v41 = AMSLogKey();
      if (v41)
      {
        v42 = v41;
        v43 = sub_2705D7564();
        v45 = v44;

        sub_2705D6514();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_15_22();
        v46 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_2_84(v46);
        sub_2704B667C(&v58);
        sub_2705D6504();
        v60 = v35;
        v58 = v43;
        v59 = v45;
      }

      else
      {
        sub_2705D6514();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        v47 = OUTLINED_FUNCTION_22_20();
        v60 = swift_getMetatypeMetadata();
        v58 = v47;
      }

      sub_2705D64E4();
      sub_2704B667C(&v58);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v61);
      sub_2705D6514();
      sub_2705D6504();
      swift_getErrorValue();
      v62 = v57;
      __swift_allocate_boxed_opaque_existential_1Tm(v61);
      OUTLINED_FUNCTION_4_4();
      (*(v48 + 16))();
      sub_2705D64E4();
      sub_2704B667C(v61);
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      sub_2705D6534();
      v49 = sub_2705D7A74();
      sub_2705B6DB8(v49, v39);

      return __swift_storeEnumTagSinglePayload(v54, 1, 1, v53);
    }
  }
}

uint64_t sub_27056C388(uint64_t a1, uint64_t a2)
{
  v3 = sub_2705D7534();
  v4 = [v2 contentsAtPath_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2705D44C4();

  return v5;
}

id sub_27056C428(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2705D43C4();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_27056C5C0();
    a3 = sub_2705D7454();
  }

  v11[0] = 0;
  v8 = [v4 createDirectoryAtURL:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v11];

  if (v8)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_2705D4364();

  return swift_willThrow();
}

id sub_27056C564(uint64_t a1, uint64_t a2)
{
  v3 = sub_2705D7534();
  v4 = [v2 fileExistsAtPath_];

  return v4;
}

unint64_t sub_27056C5C0()
{
  result = qword_2807D7440;
  if (!qword_2807D7440)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_84(uint64_t a1)
{
  *(v2 - 136) = a1;
  *(v2 - 160) = v1;

  return sub_2705D64E4();
}

uint64_t type metadata accessor for FilterConfig(uint64_t a1)
{
  result = qword_2807D7A68;
  if (!qword_2807D7A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27056C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_24();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  swift_getKeyPath();
  sub_2705D7214();

  OUTLINED_FUNCTION_26_22();
}

uint64_t sub_27056C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_13_1();
  return a5(v6);
}

uint64_t sub_27056CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v4);
  sub_2705D45E4();
}

uint64_t sub_27056CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v4);
  sub_2705D7334();
}

uint64_t sub_27056CBE0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_13_1();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_13_1();
    return a3(v6);
  }
}

unint64_t sub_27056CCB8()
{
  result = qword_2807D7A18;
  if (!qword_2807D7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7A18);
  }

  return result;
}

uint64_t sub_27056CED0(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_27056F198(v3);
  OUTLINED_FUNCTION_9_49(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, a1, v14, v15);
}

uint64_t sub_27056CF6C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_27056F198(&qword_2807D73E0);
  sub_2705D7334();
}

uint64_t sub_27056D098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_27056D58C(a1, &v6 - v3);
  return sub_27056D278(v4);
}

uint64_t sub_27056D278(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_27056F198(v3);
  OUTLINED_FUNCTION_9_49(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, a1, v14, v15);

  return sub_27056D418(a1);
}

uint64_t sub_27056D31C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_27056F198(&qword_2807D73E0);
  sub_27056DE80(&unk_2807D7A30, &unk_2807D7A38, MEMORY[0x277CC9580], MEMORY[0x277D84F40]);
  sub_2705D7334();
}

uint64_t sub_27056D418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_27056D480(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  sub_27056D12C(v4, v5, v6, v7);
  return sub_27056D51C;
}

void sub_27056D51C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_27056D58C(v3, v2);
    sub_27056D278(v2);
    sub_27056D418(v3);
  }

  else
  {
    sub_27056D278(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_27056D58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_27056D5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_24();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  swift_getKeyPath();
  sub_27056F558();
  sub_2705D7214();

  v19 = OUTLINED_FUNCTION_13_1();
  sub_27046DCA4(v19, v20);
  OUTLINED_FUNCTION_26_22();
}

uint64_t sub_27056D68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_13_1();
  sub_27055782C(v6, v7);
  v8 = OUTLINED_FUNCTION_13_1();
  return a5(v8);
}

uint64_t sub_27056D818(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v6);
  sub_2705D45E4();
  sub_27046DCA4(a1, a2);
}

uint64_t sub_27056D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_84();
  sub_27056F198(v4);
  sub_27056F558();
  sub_2705D7334();
}

uint64_t sub_27056D9E8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_30_6();
    sub_27055782C(v4, v5);
    v6 = OUTLINED_FUNCTION_30_6();
    a3(v6);
    v7 = OUTLINED_FUNCTION_30_6();

    return sub_27046DCA4(v7, v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_30_6();
    return a3(v10);
  }
}

uint64_t sub_27056DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_16_29();
  sub_27056DAC4(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *sub_27056DAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v45 = *v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for FilterConfig(0);
  v6[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D8, &qword_27060D958);
  OUTLINED_FUNCTION_0_84();
  v17 = sub_27056F198(v16);
  v46 = v15;
  v47 = v15;
  v48 = v17;
  v49 = v17;
  OUTLINED_FUNCTION_3_78();
  v6[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1Tm(v6 + 3);
  OUTLINED_FUNCTION_13_41();
  sub_2705D72E4();
  *(v6 + 16) = 1;
  sub_2705D4624();
  sub_27056C7C0(a1, a2, (v6 + 3), v18, &unk_27060EE70, v19, v20, v21, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  sub_27056C7C0(a3, a4, (v6 + 3), v22, &unk_27060EE98, v23, v24, v25, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v26 = sub_27056DD98(v7);
  v28 = v27;

  sub_27056D5FC(v26, v28, (v6 + 3), v29, &unk_27060EEC0, v30, v31, v32, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  swift_getKeyPath();
  v46 = 0;
  sub_2705D7214();

  v33 = sub_2705D4594();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v33);
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_27056DE80(v34, v35, v36, MEMORY[0x277D84F40]);
  sub_2705D7214();

  sub_27056D418(v14);
  *(v6 + 16) = 0;
  v37 = sub_27056DEE8(MEMORY[0x277D84F90]);
  sub_27056D5FC(v37, v38, (v6 + 3), v39, &unk_27060EF40, v40, v41, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  return v6;
}

uint64_t sub_27056DD98(char a1)
{
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A88, &qword_27060F170);
  v2 = sub_27056F498(&unk_2807D7AB0);
  OUTLINED_FUNCTION_17_31(v2, v3, v4, v5, v6, v7, v8, v9, v12, a1);
  v10 = sub_2705D4024();

  return v10;
}

void sub_27056DE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25_24();
  if (!OUTLINED_FUNCTION_10_7(v5))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3E10, &qword_2705F4350);
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_12_41();
    atomic_store(swift_getWitnessTable(), v4);
  }

  OUTLINED_FUNCTION_26_22();
}

uint64_t sub_27056DEE8(uint64_t a1)
{
  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A78, &qword_27060F168);
  sub_27056F430(&unk_2807D7AA8, &unk_2807D7A38, MEMORY[0x277CC9580], MEMORY[0x277D83948]);
  v1 = sub_2705D4024();

  return v1;
}

uint64_t sub_27056DFDC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_16_29();
  sub_27056E010();
  return v1;
}

uint64_t sub_27056E010()
{
  OUTLINED_FUNCTION_22_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - v3;
  v5 = type metadata accessor for FilterConfig(0);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D8, &qword_27060D958);
  OUTLINED_FUNCTION_0_84();
  v7 = sub_27056F198(v6);
  v38 = v5;
  v39 = v5;
  v40 = v7;
  v41 = v7;
  OUTLINED_FUNCTION_3_78();
  *(v0 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_13_41();
  sub_2705D72E4();
  *(v0 + 16) = 1;
  sub_2705D4624();
  v8 = *v1;
  v9 = v1[1];

  sub_27056C7C0(v8, v9, v0 + 24, v10, &unk_27060EE70, v11, v12, v13, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v14 = v1[2];
  v15 = v1[3];

  sub_27056C7C0(v14, v15, v0 + 24, v16, &unk_27060EE98, v17, v18, v19, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v20 = sub_27056DD98(v1[4]);
  sub_27056D5FC(v20, v21, v0 + 24, v22, &unk_27060EEC0, v23, v24, v25, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v26 = v1[5];
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  v38 = v26;
  sub_2705D7214();

  v27 = type metadata accessor for FilterConfigLookalike(0);
  sub_27056D58C(v1 + *(v27 + 32), v4);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_67();
  sub_27056DE80(v28, v29, v30, MEMORY[0x277D84F40]);
  sub_2705D7214();

  sub_27056D418(v4);
  *(v0 + 16) = 0;
  v31 = sub_27056DEE8(*(v1 + *(v27 + 36)));
  sub_27056D5FC(v31, v32, v0 + 24, v33, &unk_27060EF40, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  sub_27056E2D4(v1);
  return v0;
}

uint64_t sub_27056E2D4(uint64_t a1)
{
  v2 = type metadata accessor for FilterConfigLookalike(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27056E330@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  OUTLINED_FUNCTION_4();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v13 = sub_27056C678(v3, v6, v7, v8, v9, v10, v11, v12, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v15 = v14;
  v22 = sub_27056C8D4(v13, v14, v16, v17, v18, v19, v20, v21, v42, v13, v44, v45, v46, v47, v48, v49, v50, v51);
  v24 = v23;
  v25 = sub_27056E53C();
  v33 = sub_27056CDA8(v25, v26, v27, v28, v29, v30, v31, v32, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_27056D12C(v33, v34, v35, v36);
  v37 = sub_27056E650();
  v38 = type metadata accessor for FilterConfigLookalike(0);
  v39 = *(v38 + 32);
  v40 = sub_2705D4594();
  __swift_storeEnumTagSinglePayload(a1 + v39, 1, 1, v40);
  *a1 = v43;
  a1[1] = v15;
  a1[2] = v22;
  a1[3] = v24;
  a1[4] = v25;
  a1[5] = v33;
  sub_27056E710(v5, a1 + v39);
  *(a1 + *(v38 + 36)) = v37;
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v38);
}

uint64_t sub_27056E45C()
{
  OUTLINED_FUNCTION_22_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  sub_27056CED0(*(v0 + 40));
  v4 = type metadata accessor for FilterConfigLookalike(0);
  sub_27056D58C(v0 + *(v4 + 32), v3);
  sub_27056D278(v3);
  v5 = sub_27056DEE8(*(v0 + *(v4 + 36)));
  return sub_27056D7F8(v5, v6);
}

uint64_t sub_27056E568(uint64_t a1, uint64_t a2)
{
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A88, &qword_27060F170);
  sub_27056F498(&unk_2807D7A90);
  sub_2705D3FF4();

  return v3;
}

uint64_t sub_27056E67C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1();
  v5 = v4;
  v6 = a2();
  sub_27046DCA4(v3, v5);
  if (v6)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_27056E710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27056E780(uint64_t a1, uint64_t a2)
{
  sub_2705D4014();
  swift_allocObject();
  sub_2705D4004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A78, &qword_27060F168);
  sub_27056F430(&unk_2807D7A80, &unk_2807D7A28, MEMORY[0x277CC95A0], MEMORY[0x277D83978]);
  sub_2705D3FF4();

  return v3;
}

uint64_t sub_27056E8B8(__int128 *a1)
{
  OUTLINED_FUNCTION_34_12(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_2703B291C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t (*sub_27056E908(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_2703B4E54(v1 + 24, v3);
  return sub_27056E984;
}

uint64_t sub_27056E988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7A40, &qword_27060EF70);
  sub_2705D73B4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27060EE60;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  swift_getKeyPath();
  sub_2705D7414();
  swift_allocObject();
  sub_2705D7424();
  sub_27056F198(&unk_2807D7A48);
  OUTLINED_FUNCTION_10_49();
  sub_2705D73A4();
  return v0;
}

uint64_t sub_27056EC40(__int128 *a1)
{
  v2 = OUTLINED_FUNCTION_16_29();
  sub_27056EC74(a1);
  return v2;
}

uint64_t sub_27056EC74(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FilterConfig(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D8, &qword_27060D958);
  OUTLINED_FUNCTION_0_84();
  v7[0] = v4;
  v7[1] = v4;
  v8 = sub_27056F198(v5);
  v9 = v8;
  OUTLINED_FUNCTION_3_78();
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1Tm((v2 + 24));
  OUTLINED_FUNCTION_13_41();
  sub_2705D72E4();
  *(v2 + 16) = 1;
  sub_2705D4624();
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_34_12(v2 + 24, v7);
  __swift_destroy_boxed_opaque_existential_1((v2 + 24));
  sub_2703B291C(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_27056ED78()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore12FilterConfig___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_27056EDD8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore12FilterConfig___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27056EE74()
{
  sub_2705D83B4();
  type metadata accessor for FilterConfig(0);
  OUTLINED_FUNCTION_0_84();
  v1 = sub_27056F198(v0);
  OUTLINED_FUNCTION_17_31(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_2705D7314();
  return sub_2705D8414();
}

uint64_t (*sub_27056F014(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_2703B4E54(v1 + 24, v3);
  return sub_27056F600;
}

void sub_27056F090(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_2703B4E54(*a1, v2 + 40);
    OUTLINED_FUNCTION_34_12(v3 + 24, v2 + 104);
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_2703B291C((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_34_12(v3 + 24, v2 + 40);
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_2703B291C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

unint64_t sub_27056F198(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27056F258(uint64_t a1, uint64_t a2)
{
  sub_2705D83B4();
  swift_getWitnessTable();
  sub_2705D7314();
  return sub_2705D8414();
}

uint64_t sub_27056F2EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t sub_27056F360(uint64_t a1)
{
  result = sub_2705D4634();
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

void sub_27056F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25_24();
  if (!OUTLINED_FUNCTION_10_7(v5))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7A78, &qword_27060F168);
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_12_41();
    atomic_store(swift_getWitnessTable(), v4);
  }

  OUTLINED_FUNCTION_26_22();
}

unint64_t sub_27056F498(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7A88, &qword_27060F170);
    v4();
    OUTLINED_FUNCTION_12_41();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27056F504()
{
  result = qword_2807D7A98;
  if (!qword_2807D7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7A98);
  }

  return result;
}

unint64_t sub_27056F558()
{
  result = qword_2807D7AA0;
  if (!qword_2807D7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7AA0);
  }

  return result;
}

unint64_t sub_27056F5AC()
{
  result = qword_2807D7AB8;
  if (!qword_2807D7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7AB8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_5_71()
{

  return sub_27056F198(v0);
}

uint64_t OUTLINED_FUNCTION_9_49(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a1, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{

  return sub_2705D45E4();
}

uint64_t OUTLINED_FUNCTION_15_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_16_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2705D45F4();
}

uint64_t sub_27056F7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = type metadata accessor for FilterConfigLookalike(0);
  v18 = *(v17 + 32);
  sub_2705D4594();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  result = sub_27056E710(a7, a9 + v18);
  *(a9 + *(v17 + 36)) = a8;
  return result;
}

uint64_t sub_27056F8BC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_27056F914()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_27056F944(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_27056F9A4(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_27056FA20@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FilterConfigLookalike(0) + 32);

  return sub_27056D58C(v3, a1);
}

uint64_t sub_27056FA64()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = v1 + *(type metadata accessor for FilterConfigLookalike(v2) + 32);

  return sub_27056E710(v0, v3);
}

uint64_t sub_27056FAA4()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterConfigLookalike(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_27056FAE4()
{
  type metadata accessor for FilterConfigLookalike(0);
}

uint64_t sub_27056FB18()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = *(type metadata accessor for FilterConfigLookalike(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t sub_27056FB54()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterConfigLookalike(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_27056FB94@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = type metadata accessor for FilterConfigLookalike(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for FilterActivityHistoryStats(0);
  sub_27056D58C(v1 + v5, a1 + *(v6 + 20));
  v7 = *(v1 + *(v4 + 36));
  *a1 = v3;
  *(a1 + *(v6 + 24)) = v7;
}

uint64_t sub_27056FC38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  v2 = OUTLINED_FUNCTION_23_0(v1);
  MEMORY[0x28223BE20](v2);
  v64 = &v61 - v3;
  v4 = sub_2705D4594();
  OUTLINED_FUNCTION_1_14();
  v65 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v61 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98, &unk_2705F3900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705F38E0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v11 = MEMORY[0x277D837D0];
  v12 = v0[1];
  *(inited + 48) = *v0;
  *(inited + 56) = v12;
  *(inited + 72) = v11;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 88) = 0xE900000000000065;
  v13 = v0[3];
  *(inited + 96) = v0[2];
  *(inited + 104) = v13;
  *(inited + 120) = v11;
  *(inited + 128) = 0x6F6974617265706FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = v0[4];
  v15 = *(v14 + 16);
  v66 = inited;
  v67 = v0;
  if (v15)
  {
    v69 = v4;
    *&v74 = MEMORY[0x277D84F90];

    sub_2704ADD94(0, v15, 0);
    v16 = v74;
    v17 = (v14 + 72);
    do
    {
      v18 = *(v17 - 4);
      v19 = *(v17 - 24);
      v21 = *(v17 - 2);
      v20 = *(v17 - 1);
      v76 = *(v17 - 5);
      v77 = v18;
      v78 = v19;
      v79 = v21;
      v80 = v20;
      v81 = *v17;
      v22 = v81;

      sub_27056B884(v21, v20, v22);
      v23 = sub_270579A48();

      sub_27056B898(v21, v20, v22);
      *&v74 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = OUTLINED_FUNCTION_46_7(v24);
        sub_2704ADD94(v26, v25 + 1, 1);
        v16 = v74;
      }

      v17 += 48;
      *(v16 + 16) = v25 + 1;
      *(v16 + 8 * v25 + 32) = v23;
      --v15;
    }

    while (v15);
    v4 = v69;
    inited = v66;
    v0 = v67;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0, &qword_2705F3F80);
  *(inited + 144) = v16;
  OUTLINED_FUNCTION_47_3();
  *(inited + 168) = v27;
  *(inited + 176) = v28;
  *(inited + 184) = 0xEA0000000000746ELL;
  *(inited + 192) = v0[5];
  OUTLINED_FUNCTION_46_9();
  *(inited + 216) = v29;
  *(inited + 224) = v30;
  *(inited + 232) = v31;
  v32 = type metadata accessor for FilterConfigLookalike(0);
  v33 = v32;
  v34 = *(v0 + *(v32 + 36));
  v35 = *(v34 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v62 = v32;
    *&v74 = MEMORY[0x277D84F90];
    sub_27057177C(0, v35, 0);
    v36 = v74;
    v37 = *(v65 + 16);
    v38 = v34 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v68 = *(v65 + 72);
    v69 = v37;
    v39 = (v65 + 8);
    do
    {
      v40 = v70;
      v69(v70, v38, v4);
      sub_2705D4554();
      v42 = v41;
      v43 = v4;
      (*v39)(v40, v4);
      *&v74 = v36;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_27057177C((v44 > 1), v45 + 1, 1);
        v36 = v74;
      }

      *(v36 + 16) = v45 + 1;
      *(v36 + 8 * v45 + 32) = v42;
      v38 += v68;
      --v35;
      v4 = v43;
    }

    while (v35);
    inited = v66;
    v0 = v67;
    v33 = v62;
  }

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC0, &unk_27060F178);
  *(inited + 240) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  v46 = sub_2705D7494();
  v47 = v0 + *(v33 + 32);
  v48 = v64;
  sub_27056D58C(v47, v64);
  if (__swift_getEnumTagSinglePayload(v48, 1, v4) == 1)
  {
    sub_2703C2EFC(v48, &qword_2807D3E10, &qword_2705F4350);
  }

  else
  {
    v49 = v65;
    v50 = v63;
    (*(v65 + 32))(v63, v48, v4);
    sub_2705D4554();
    v75 = MEMORY[0x277D839F8];
    *&v74 = v51;
    sub_2703E43D4(&v74, &v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v46;
    __swift_mutable_project_boxed_opaque_existential_1(&v72, v73);
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v53);
    OUTLINED_FUNCTION_4_0();
    (*(v56 + 16))(v55 - v54);
    v57 = OUTLINED_FUNCTION_25_25();
    sub_2705732E0(v57, v58, isUniquelyReferenced_nonNull_native, &v71, v59);
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v46 = v71;
    (*(v49 + 8))(v50, v4);
  }

  return v46;
}

uint64_t sub_270570228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D6524();
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v6 = type metadata accessor for FilterConfigLookalike(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v12 = *(v11 + 32);
  v13 = sub_2705D4594();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  sub_2703D5404(0x7265746C6966, 0xE600000000000000, a1, &v112);
  if (!v114)
  {

    sub_2703C2EFC(&v112, &unk_2807D4890, &qword_2705E2880);
LABEL_24:
    if (qword_2807D7370 != -1)
    {
LABEL_51:
      OUTLINED_FUNCTION_6_68(&qword_2807D7370);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v47 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v47);
    OUTLINED_FUNCTION_29_8();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_2705E6EB0;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC8, &qword_27060F188);
    *&v112 = v6;
    v49 = AMSLogKey();
    if (v49)
    {
      v50 = v49;
      v51 = sub_2705D7564();
      v52 = v10;
      v54 = v53;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1(&v112, v114);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v115 = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(&v115, &unk_2807D4890, &qword_2705E2880);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v115 = v51;
      v116 = v54;
      v10 = v52;
      sub_2705D64E4();
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v56 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v56);
    }

    sub_2703C2EFC(&v115, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v112);
    sub_2705D64C4();
    v57 = sub_2705D7A64();
    v58 = v48;
    goto LABEL_37;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8, &unk_2705F27A0);
  if ((OUTLINED_FUNCTION_50_8(v17, v18, v19, v17) & 1) == 0)
  {

    goto LABEL_24;
  }

  v20 = v115;
  sub_270557A00();
  v110 = a2;
  v107 = v12;
  if (!v114)
  {

    sub_2703C2EFC(&v112, &qword_2807D3D80, &qword_27060F290);
LABEL_31:
    if (qword_2807D7370 != -1)
    {
      OUTLINED_FUNCTION_6_68(&qword_2807D7370);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    OUTLINED_FUNCTION_4_41();
    v59 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v59);
    OUTLINED_FUNCTION_29_8();
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_2705E6EB0;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC8, &qword_27060F188);
    *&v112 = v6;
    v61 = AMSLogKey();
    if (v61)
    {
      v62 = v61;
      v63 = v6;
      v64 = sub_2705D7564();
      v65 = v10;
      v67 = v66;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v68 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v68);
      v69 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v69, v70, &qword_2705E2880);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v115 = v64;
      v116 = v67;
      v10 = v65;
      v6 = v63;
      sub_2705D64E4();
      v71 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v71, v72, &qword_2705E2880);
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v73 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v73);
      sub_2703C2EFC(&v115, &unk_2807D4890, &qword_2705E2880);
    }

    v12 = v107;
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v112);
    sub_2705D64C4();
    v57 = sub_2705D7A64();
    v58 = v60;
LABEL_37:
    sub_2705B6DB8(v57, v58);
    goto LABEL_38;
  }

  v109 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  v10 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {

    v10 = v109;
    goto LABEL_31;
  }

  v106 = v6;
  v21 = v115;
  v6 = v116;
  sub_2703D5404(25705, 0xE200000000000000, a1, &v112);

  if (!v114)
  {

    sub_2703C2EFC(&v112, &unk_2807D4890, &qword_2705E2880);
LABEL_41:
    if (qword_2807D7370 != -1)
    {
      OUTLINED_FUNCTION_6_68(&qword_2807D7370);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    OUTLINED_FUNCTION_4_41();
    v78 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v78);
    OUTLINED_FUNCTION_29_8();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_2705E6EB0;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC8, &qword_27060F188);
    *&v112 = v106;
    v80 = AMSLogKey();
    if (v80)
    {
      v81 = v80;
      v82 = sub_2705D7564();
      v84 = v83;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v85 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v85);
      v86 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v86, v87, &qword_2705E2880);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = v10;
      v115 = v82;
      v116 = v84;
      sub_2705D64E4();
      v88 = OUTLINED_FUNCTION_45_9();
      sub_2703C2EFC(v88, v89, &qword_2705E2880);
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_8_57();
      v95 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_27_18(v95);
      sub_2703C2EFC(&v115, &unk_2807D4890, &qword_2705E2880);
    }

    v10 = v109;
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v112);
    sub_2705D64C4();
    v96 = sub_2705D7A64();
    sub_2705B6DB8(v96, v79);
    v6 = v106;
    goto LABEL_38;
  }

  if ((OUTLINED_FUNCTION_50_8(v22, v23, v24, MEMORY[0x277D837D0]) & 1) == 0)
  {

    goto LABEL_41;
  }

  v101 = v21;
  v103 = v6;
  v100 = v115;
  v102 = v116;
  v105 = v20 + 64;
  v25 = 1 << *(v20 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v20 + 64);
  v104 = (v25 + 63) >> 6;
  v108 = v20;

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v27)
  {
LABEL_16:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v28 << 6);
    v33 = (v108[6] + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    sub_2703D7F04(v108[7] + 32 * v32, &v113);
    *&v112 = v34;
    *(&v112 + 1) = v35;
    sub_2703D7F04(&v113, v111);
    swift_bridgeObjectRetain_n();
    sub_270579D6C(v34, v35, v111, &v115);
    v10 = v115;
    v36 = v116;
    v37 = v117;
    v38 = MetatypeMetadata;
    v39 = v119;
    v6 = v120;
    sub_2703C2EFC(&v112, &qword_2807D7AD0, &unk_27060F190);
    if (v36)
    {
      v97 = v10;
      v98 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_27057271C(0, *(v29 + 2) + 1, 1, v29);
      }

      v40 = v37;
      v6 = v10;
      v10 = *(v29 + 2);
      v41 = *(v29 + 3);
      v42 = v10 + 1;
      if (v10 >= v41 >> 1)
      {
        v44 = OUTLINED_FUNCTION_46_7(v41);
        v99 = v45;
        v46 = sub_27057271C(v44, v45, 1, v29);
        v42 = v99;
        v40 = v37;
        v29 = v46;
      }

      *(v29 + 2) = v42;
      v43 = &v29[48 * v10];
      *(v43 + 4) = v97;
      *(v43 + 5) = v36;
      v43[48] = v40;
      *(v43 + 7) = v38;
      *(v43 + 8) = v39;
      v43[72] = v98;
    }
  }

  v12 = v107;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v30 >= v104)
    {
      break;
    }

    v27 = *(v105 + 8 * v30);
    ++v28;
    if (v27)
    {
      v28 = v30;
      goto LABEL_16;
    }
  }

  v90 = *(v29 + 2);
  v91 = v108[2];

  if (v90 == v91)
  {
    *v109 = v100;
    v109[1] = v102;
    v109[2] = v101;
    v109[3] = v103;
    v109[4] = v29;
    v109[5] = 0;
    sub_2703C2EFC(v109 + v107, &qword_2807D3E10, &qword_2705F4350);
    OUTLINED_FUNCTION_3_14();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v13);
    *(v109 + *(v106 + 36)) = MEMORY[0x277D84F90];
    sub_2705734B0(v109, v110);
    __swift_storeEnumTagSinglePayload(v110, 0, 1, v106);
    return sub_27056E2D4(v109);
  }

  v6 = v106;
  v10 = v109;
LABEL_38:

  sub_2703C2EFC(v10 + v12, &qword_2807D3E10, &qword_2705F4350);
  OUTLINED_FUNCTION_3_14();
  return __swift_storeEnumTagSinglePayload(v74, v75, v76, v6);
}

uint64_t sub_270570E08@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FilterActivityHistoryStats(0) + 20);

  return sub_27056D58C(v3, a1);
}

uint64_t sub_270570E4C()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = v1 + *(type metadata accessor for FilterActivityHistoryStats(v2) + 20);

  return sub_27056E710(v0, v3);
}

uint64_t sub_270570E8C()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterActivityHistoryStats(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_270570ECC()
{
  type metadata accessor for FilterActivityHistoryStats(0);
}

uint64_t sub_270570F00()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = *(type metadata accessor for FilterActivityHistoryStats(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t sub_270570F3C()
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for FilterActivityHistoryStats(v0);
  return OUTLINED_FUNCTION_12_26();
}

uint64_t sub_270570F7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  v2 = OUTLINED_FUNCTION_23_0(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - v3;
  v5 = sub_2705D4594();
  OUTLINED_FUNCTION_1_14();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98, &unk_2705F3900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E6EB0;
  OUTLINED_FUNCTION_47_3();
  v15[4] = v16;
  v15[5] = 0xEA0000000000746ELL;
  v15[6] = *v0;
  OUTLINED_FUNCTION_46_9();
  v17[9] = v18;
  v17[10] = v19;
  v17[11] = v20;
  v48 = type metadata accessor for FilterActivityHistoryStats(0);
  v21 = *(v0 + *(v48 + 24));
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v43 = inited;
    v44 = v0;
    v45 = v4;
    v46 = v13;
    *&v54 = MEMORY[0x277D84F90];
    sub_27057177C(0, v22, 0);
    v23 = v54;
    v47 = v7;
    v25 = *(v7 + 16);
    v24 = v7 + 16;
    v50 = v25;
    v26 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v49 = *(v24 + 56);
    do
    {
      v50(v11, v26, v5);
      sub_2705D4554();
      v28 = v27;
      (*(v24 - 8))(v11, v5);
      *&v54 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = OUTLINED_FUNCTION_46_7(v29);
        sub_27057177C(v31, v30 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = v30 + 1;
      *(v23 + 8 * v30 + 32) = v28;
      v26 += v49;
      --v22;
    }

    while (v22);
    v7 = v47;
    v13 = v46;
    v4 = v45;
    v0 = v44;
    inited = v43;
  }

  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7AC0, &unk_27060F178);
  *(inited + 96) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
  v32 = sub_2705D7494();
  sub_27056D58C(v0 + *(v48 + 20), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2703C2EFC(v4, &qword_2807D3E10, &qword_2705F4350);
  }

  else
  {
    (*(v7 + 32))(v13, v4, v5);
    sub_2705D4554();
    v55 = MEMORY[0x277D839F8];
    *&v54 = v33;
    sub_2703E43D4(&v54, &v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v32;
    __swift_mutable_project_boxed_opaque_existential_1(&v52, v53);
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_4_0();
    (*(v38 + 16))(v37 - v36);
    v39 = OUTLINED_FUNCTION_25_25();
    sub_2705732E0(v39, v40, isUniquelyReferenced_nonNull_native, &v51, v41);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v32 = v51;
    (*(v7 + 8))(v13, v5);
  }

  return v32;
}

uint64_t sub_270571440(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = sub_2705D4594();
  OUTLINED_FUNCTION_1_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for FilterConfigLookalike(0);
  v16 = *(v15 + 36);
  v43 = v15;
  v44 = v16;
  v17 = *(v2 + v16);
  v41 = *(v10 + 16);
  v42 = a1;
  v41(v14, a1, v8);

  v18 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_56();
    sub_270572888(0, v28 + 1, 1, v17, v29, v30, v31, v32);
    v18 = v33;
  }

  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  if (v20 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_46_7(v19);
    OUTLINED_FUNCTION_7_56();
    sub_270572888(v34, v20 + 1, 1, v18, v35, v36, v37, v38);
    v18 = v39;
  }

  *(v18 + 16) = v20 + 1;
  (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, v14, v8);
  v45 = v18;
  if (v20 < 0xA)
  {
  }

  else
  {
    result = sub_27057E284(0, v20 - 9, v20 + 1, v18);
    if (v22)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    if (result < 0)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_270572E20(0, result);

    v18 = v45;
  }

  *(v2 + v44) = v18;
  v23 = *(v2 + 40);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 40) = v25;
  v26 = *(v43 + 32);
  sub_27056D58C(v2 + v26, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  result = sub_2703C2EFC(v7, &qword_2807D3E10, &qword_2705F4350);
  if (EnumTagSinglePayload == 1)
  {
    sub_2703C2EFC(v2 + v26, &qword_2807D3E10, &qword_2705F4350);
    v41(v2 + v26, v42, v8);
    return __swift_storeEnumTagSinglePayload(v2 + v26, 0, 1, v8);
  }

  return result;
}

char *sub_27057177C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27057187C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27057179C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_270571A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2705717BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_270571C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2705717DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_270571D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2705717FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_270571E54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27057181C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_270571F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27057183C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27057209C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27057185C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2705721A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27057187C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B88, &qword_27060F278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_27057197C()
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_40_8();
  if (v5)
  {
    OUTLINED_FUNCTION_13_22();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = OUTLINED_FUNCTION_86_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_19_26();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_45_5();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_37_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_45_5();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_15_1();
}

void *sub_270571A64(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B70, &unk_27060F258);
  v10 = *(type metadata accessor for FilterConfigLookalike(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FilterConfigLookalike(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2705722DC(a4 + v16, v8, v13 + v16, type metadata accessor for FilterConfigLookalike);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_270571C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B20, &unk_27060F200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_270571D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B08, &qword_27060F1E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_270571E54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B58, &qword_27060F248);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_270571F68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B10, &qword_27060F1E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B18, &unk_27060F1F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27057209C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2705721A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B40, &qword_27060F230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B48, &qword_27060F238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2705722DC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_14(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_37_12();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_37_12();

    MEMORY[0x2821FE820](v9);
  }
}

unint64_t sub_2705723AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B38, &qword_27060F228);

      return MEMORY[0x2821FE820](a3);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B38, &qword_27060F228);

    return MEMORY[0x2821FE828](a3);
  }

  return result;
}

void sub_27057247C()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_28_18();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520, &qword_27060E0A8);
    v8 = OUTLINED_FUNCTION_30_17(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_12_42();
    *(v8 + 2) = v3;
    *(v8 + 3) = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = v8 + 32;
  v11 = v0 + 32;
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27057255C()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8, &unk_2705E9BA0);
    v7 = OUTLINED_FUNCTION_86_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_45(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270572630()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4488, &unk_27060ECB0);
    v7 = OUTLINED_FUNCTION_86_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_45(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[32 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_15_18();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
    OUTLINED_FUNCTION_22_22();
    swift_arrayInitWithCopy();
  }
}

char *sub_27057271C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B80, &qword_27060F270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_270572888(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_13_22();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_30_10();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_270572D30(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_2705722DC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270572984()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_28_18();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B60, &qword_27060FED0);
    v8 = OUTLINED_FUNCTION_30_17(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_12_42();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[3 * v3 + 4] <= v8 + 4)
    {
      v11 = OUTLINED_FUNCTION_15_18();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B68, &qword_27060F250);
    OUTLINED_FUNCTION_22_22();
    swift_arrayInitWithCopy();
  }
}

void sub_270572A9C()
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_40_8();
  if (v5)
  {
    OUTLINED_FUNCTION_13_22();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = OUTLINED_FUNCTION_86_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_19_26();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_45_5();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_37_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_45_5();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_15_1();
}

void sub_270572B84()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B50, &qword_27060F240);
    v7 = OUTLINED_FUNCTION_86_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_45(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270572C54()
{
  OUTLINED_FUNCTION_31_9();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_22(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_26();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B30, &qword_27060F220);
      v7 = OUTLINED_FUNCTION_86_2();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_19_26();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        sub_2705723AC(v0 + 32, v2, (v7 + 4));
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B38, &qword_27060F228);
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_10();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_22();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_270572D30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_1_1(v8);
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_29_8();
  v13 = v12 & ~v11;
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v10)
  {
    if ((result - v13) != 0x8000000000000000 || v10 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v10);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_270572E20(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2705CDA48(v4 - v6, 1);
  v8 = *v2;
  v9 = *(sub_2705D4594() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_2705722DC(v10 + v11 * a2, v13 - a2, v12, MEMORY[0x277CC9578]);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_270572F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_54_7();
  v8 = v7;
  v25[3] = MEMORY[0x277D837D0];
  v25[0] = v9;
  v25[1] = v10;
  sub_2703D7318(v11, v12);
  OUTLINED_FUNCTION_0_6();
  if (v13)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v15 = *v8;
  if (v6)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v16);
    v18 = OUTLINED_FUNCTION_0_85(v17, v25[0]);
    v19(v18);
    v20 = OUTLINED_FUNCTION_17_32();
    sub_270573C88(v20, v21, v22, v23, v24, v15);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

void sub_2705730A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_18_25();
  v23 = v9;
  OUTLINED_FUNCTION_49_6(v9, v10, v11);
  OUTLINED_FUNCTION_0_6();
  if (v12)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v14 = *v7;
  if (v8)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v15);
    v17 = OUTLINED_FUNCTION_0_85(v16, v23);
    v18(v17);
    v19 = OUTLINED_FUNCTION_17_32();
    sub_270573C04(v19, v20, v21, v22, v14);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

void sub_2705731C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_18_25();
  LOBYTE(v23) = v9;
  OUTLINED_FUNCTION_49_6(v9, v10, v11);
  OUTLINED_FUNCTION_0_6();
  if (v12)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v14 = *v7;
  if (v8)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v15);
    v17 = OUTLINED_FUNCTION_0_85(v16, v23);
    v18(v17);
    v19 = OUTLINED_FUNCTION_17_32();
    sub_270573B80(v19, v20, v21, v22, v14);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

_OWORD *sub_2705732E0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  v23[0] = a5;
  v8 = MEMORY[0x277D839F8];
  v24 = MEMORY[0x277D839F8];
  v9 = *a4;
  v10 = sub_2703D7318(a1, a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
  if ((sub_2705D7E04() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2703D7318(a1, a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *a4;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return sub_2703E43D4(v23, v17);
  }

  else
  {
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v23, v8);
    MEMORY[0x28223BE20](v19);
    v21 = (v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    sub_270573D0C(v12, a1, a2, v16, *v21);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }
}

uint64_t sub_2705734B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterConfigLookalike(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270573528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_87(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2705735C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270573650(uint64_t a1)
{
  sub_27057373C();
  if (v1 <= 0x3F)
  {
    sub_27057378C(319, &qword_2807D3E30, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_27057378C(319, &qword_2807D7AF0, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27057373C()
{
  if (!qword_2807D7AE8)
  {
    v0 = sub_2705D7834();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D7AE8);
    }
  }
}

void sub_27057378C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2705D4594();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_270573800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_87(*(a1 + *(a3 + 24)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2705738C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10, &qword_2705F4350);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_27057397C(uint64_t a1)
{
  sub_27057378C(319, &qword_2807D3E30, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_27057378C(319, &qword_2807D7AF0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_270573A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_18_25();
  v10 = v9;
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0, &qword_2705F3F80);
  v22[0] = v10;
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_0_6();
  if (v11)
  {
    __break(1u);
LABEL_10:
    sub_2705D82D4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8, &unk_2705F3910);
  if (OUTLINED_FUNCTION_16_30())
  {
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_20_24();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v13 = *v7;
  if (v8)
  {
    OUTLINED_FUNCTION_13_42();
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
    OUTLINED_FUNCTION_3_79();
    MEMORY[0x28223BE20](v14);
    v16 = OUTLINED_FUNCTION_0_85(v15, v22[0]);
    v17(v16);
    v18 = OUTLINED_FUNCTION_17_32();
    sub_270573D90(v18, v19, v20, v21, v13);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_52_5();
  }

  OUTLINED_FUNCTION_15_1();
}

_OWORD *sub_270573B80(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_270573C04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_270573C88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_2703E43D4(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_270573D0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2703E43D4(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_270573D90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0, &qword_2705F3F80);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_2703E43D4(&v15, (a5[7] + 32 * a1));
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

uint64_t OUTLINED_FUNCTION_6_68(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_57()
{
  __swift_project_boxed_opaque_existential_1((v0 - 184), *(v0 - 160));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_11_45(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 32);
  return result;
}

_OWORD *OUTLINED_FUNCTION_13_42()
{
  v3 = (*(v0 + 56) + 32 * v1);
  __swift_destroy_boxed_opaque_existential_1(v3);

  return sub_2703E43D4((v2 - 96), v3);
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return sub_2705D7E04();
}

unint64_t OUTLINED_FUNCTION_26_23()
{

  return sub_2703D7318(v1, v0);
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1)
{
  *(v2 - 112) = a1;
  *(v2 - 136) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_30_17(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_49_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 72) = v3;

  return sub_2703D7318(a2, a3);
}

uint64_t OUTLINED_FUNCTION_50_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 96, v0);
}

uint64_t OUTLINED_FUNCTION_52_5()
{
}

uint64_t sub_270574134()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C40, &unk_27060F4E0);
  swift_allocObject();
  result = sub_2705C3B14();
  qword_28081C568 = result;
  return result;
}

uint64_t *sub_270574180()
{
  if (qword_2807D7358 != -1)
  {
    OUTLINED_FUNCTION_18_26(&qword_2807D7358);
  }

  return &qword_28081C568;
}

uint64_t sub_2705741C0()
{
  if (qword_2807D7358 != -1)
  {
    OUTLINED_FUNCTION_18_26(&qword_2807D7358);
  }
}

uint64_t sub_27057420C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_15();
  v2 = swift_allocObject();
  sub_27057425C();
  return v2;
}

void sub_27057425C()
{
  OUTLINED_FUNCTION_10_1();
  v53 = v1;
  v59 = v0;
  v51 = v3;
  v4 = sub_2705D7354();
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v52 = v6;
  sub_2705D7364();
  OUTLINED_FUNCTION_0();
  v55 = v8;
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v54 = v9;
  v10 = sub_2705D73C4();
  v11 = OUTLINED_FUNCTION_23_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_23_0(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v16 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_57();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v50 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v57 = &v50 - v25;
  MEMORY[0x28223BE20](v24);
  v58 = &v50 - v26;
  v27 = [objc_opt_self() defaultManager];
  v28 = [v27 URLsForDirectory:14 inDomains:1];

  v29 = sub_2705D77C4();
  sub_2705748D4(v29, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {

    sub_2703C2EFC(v15, &unk_2807D4280, &unk_2705E4700);
    sub_27057497C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v18 + 32))(v58, v15, v16);
    sub_2705D4404();
    sub_2705D4404();

    v30 = *(v18 + 8);
    v30(v2, v16);
    v31 = v57;
    sub_2705D4404();
    v51 = v30;
    v30(v23, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B98, &unk_2706118F0);
    v32 = swift_allocObject();
    v50 = xmmword_2705DC030;
    *(v32 + 16) = xmmword_2705DC030;
    v33 = type metadata accessor for FilterConfig(0);
    OUTLINED_FUNCTION_1_85();
    v36 = sub_270578A70(v34, 255, v35);
    *(v32 + 32) = v33;
    *(v32 + 40) = v36;
    sub_2705D73D4();
    sub_2705D7434();
    OUTLINED_FUNCTION_27_19();
    swift_allocObject();
    sub_2705D7444();
    (*(v18 + 16))(v23, v31, v16);

    sub_2705D7344();
    v37 = v54;
    sub_2705D7374();
    sub_2705D72C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BA0, &qword_27060F280);
    v38 = v55;
    v39 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v50;
    v41 = v56;
    (*(v38 + 16))(v40 + v39, v37, v56);

    v42 = v53;
    v43 = sub_2705D72B4();
    if (!v42)
    {
      v59[4] = v43;
      sub_2705D7294();
      OUTLINED_FUNCTION_27_19();
      swift_allocObject();

      sub_2705D72A4();
      OUTLINED_FUNCTION_21_3();
      sub_2705D7394();
      OUTLINED_FUNCTION_27_19();
      swift_allocObject();
      OUTLINED_FUNCTION_94();
      v45 = sub_2705D7384();

      (*(v38 + 8))(v37, v41);
      v46 = v51;
      v51(v57, v16);
      v46(v58, v16);
      OUTLINED_FUNCTION_14_41();
      v49 = sub_270578A70(v47, 255, v48);
      v59[2] = v45;
      v59[3] = v49;
      goto LABEL_6;
    }

    (*(v38 + 8))(v37, v41);
    v44 = v51;
    v51(v57, v16);
    v44(v58, v16);
  }

  type metadata accessor for FilterConfigStorage();
  swift_deallocPartialClassInstance();
LABEL_6:
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2705748D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2705D4484();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

unint64_t sub_27057497C()
{
  result = qword_2807D7B90;
  if (!qword_2807D7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7B90);
  }

  return result;
}

uint64_t sub_2705749F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for FilterConfigLookalike(0);
  v6 = v5;
  if (v4)
  {
    sub_2705734B0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_270574A98()
{
  OUTLINED_FUNCTION_10_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (sub_27057676C(v8, v6))
  {

    sub_27056C9F8(v5, v3);
    type metadata accessor for FilterConfig(0);
    v10 = sub_27056DD98(v1);
    sub_27056CD0C(v10, v11);
  }

  else
  {
    type metadata accessor for FilterConfig(0);
    OUTLINED_FUNCTION_27_19();
    swift_allocObject();

    sub_27056DAC4(v9, v7, v5, v3, v1);
    type metadata accessor for FilterConfigStorage();
    OUTLINED_FUNCTION_0_86();
    sub_270578A70(v12, v13, v14);
    OUTLINED_FUNCTION_94();
    sub_2705D7224();
    OUTLINED_FUNCTION_1_85();
    sub_270578A70(v15, 255, v16);
    sub_2705D7284();
  }

  type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v17, v18, v19);
  OUTLINED_FUNCTION_94();
  sub_2705D7224();
  sub_2705D7254();

  OUTLINED_FUNCTION_11_3();
}

void sub_270574C48()
{
  OUTLINED_FUNCTION_10_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8, &qword_27060F288);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_3();
  v4 = type metadata accessor for FilterConfigLookalike(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v46 = v6;
  v7 = sub_2705D6524();
  v8 = OUTLINED_FUNCTION_23_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  if (qword_2807D7370 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v9 = OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_1_1(v9);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2705E6EB0;
    v47 = type metadata accessor for FilterConfigStorage();
    v53 = v47;
    v52[0] = v0;
    v48 = v0;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      v45 = sub_2705D7564();
      v44 = v13;

      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_3_38();
      MetatypeMetadata = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_2_32(MetatypeMetadata);
      OUTLINED_FUNCTION_46_10(&v49);
      OUTLINED_FUNCTION_7_24();
      v51 = MEMORY[0x277D837D0];
      v49 = v45;
      v50 = v44;
      sub_2705D64E4();
      OUTLINED_FUNCTION_46_10(&v49);
    }

    else
    {
      OUTLINED_FUNCTION_34_17();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v15 = OUTLINED_FUNCTION_19_11(v52);
      v51 = swift_getMetatypeMetadata();
      v49 = v15;
      sub_2705D64E4();
      sub_2703C2EFC(&v49, &unk_2807D4890, &qword_2705E2880);
    }

    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v52);
    sub_2705D64C4();
    v16 = sub_2705D7A94();
    sub_2705B6DB8(v16, v10);

    sub_270557A00();
    if (!v53)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518, &unk_2705F2A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0, &qword_2705F3F80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v17 = 0;
    v0 = v49;
    v18 = *(v49 + 16);
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 == v17)
      {

        sub_2705752B0(v19);
        goto LABEL_23;
      }

      if (v17 >= *(v0 + 16))
      {
        break;
      }

      v21 = sub_27046C7B8(v20);
      sub_270570228(v21, v1);

      if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
      {
        sub_2703C2EFC(v1, &qword_2807D7BB8, &qword_27060F288);
        ++v17;
      }

      else
      {
        sub_2705788D8(v1, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = OUTLINED_FUNCTION_21_8();
          sub_27057285C(v28, v29, v30, v19);
          v19 = v31;
        }

        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v32 = OUTLINED_FUNCTION_46_7(v22);
          v54 = v33;
          sub_27057285C(v32, v33, 1, v19);
          v24 = v54;
          v19 = v34;
        }

        ++v17;
        *(v19 + 16) = v24;
        OUTLINED_FUNCTION_16_31();
        sub_2705788D8(v27, v19 + v25 + *(v26 + 72) * v23);
      }
    }

    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_2_86();
    swift_once();
  }

  sub_2703C2EFC(v52, &qword_2807D3D80, &qword_27060F290);
LABEL_18:
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2705E6EB0;
  v53 = v47;
  v52[0] = v48;

  v36 = AMSLogKey();
  if (v36)
  {
    v37 = v36;
    v38 = sub_2705D7564();
    v40 = v39;

    OUTLINED_FUNCTION_35_15();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    v41 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(v41);
    OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_7_24();
    v51 = MEMORY[0x277D837D0];
    v49 = v38;
    v50 = v40;
    sub_2705D64E4();
    OUTLINED_FUNCTION_26_24();
  }

  else
  {
    OUTLINED_FUNCTION_34_17();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_3_38();
    v42 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_2_32(v42);
    sub_2703C2EFC(&v49, &unk_2807D4890, &qword_2705E2880);
  }

  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_2705D64C4();
  v43 = sub_2705D7A94();
  sub_2705B6DB8(v43, v35);
LABEL_23:

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2705752B0(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    v4 = type metadata accessor for FilterConfigLookalike(0);
    OUTLINED_FUNCTION_1_1(v4);

    sub_270574A98();
    if (v1)
    {
    }

    ++v2;
  }

  return result;
}

void sub_2705753D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  v95 = v21;
  v24 = v20;
  v26 = v25;
  v28 = v27;
  v29 = sub_2705D6524();
  v30 = OUTLINED_FUNCTION_23_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_26();
  v91 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8, &qword_27060F288);
  v33 = OUTLINED_FUNCTION_23_0(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_57();
  MEMORY[0x28223BE20](v34);
  v96 = OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_0();
  v88 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26();
  v92 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC0, &qword_27060F298);
  OUTLINED_FUNCTION_23_0(v38);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC8, &qword_27060F2A0);
  OUTLINED_FUNCTION_0();
  v93 = v41;
  v94 = v40;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  v44 = &v83 - v43;
  v89 = v28;
  v90 = v26;
  v97 = v28;
  v98 = v26;
  type metadata accessor for FilterConfig(0);
  sub_2705D45D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BD0, &unk_27060F2A8);
  OUTLINED_FUNCTION_8_9();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_1_85();
  sub_270578A70(v49, 255, v50);
  sub_2705D72D4();
  v51 = type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v52, v53, v54);
  v55 = v24;
  sub_2705D7224();
  v56 = v95;
  v57 = sub_2705D7264();
  if (v56)
  {
    (*(v93 + 8))(v44, v94);
  }

  else
  {
    v58 = v57;
    v84 = v51;
    v85 = v55;
    v87 = 0;
    v86 = v44;

    v59 = sub_2703CAFD0(v58);
    v60 = 0;
    v95 = MEMORY[0x277D84F90];
    while (v59 != v60)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A4130](v60, v58);
      }

      else
      {
        if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      if (__OFADD__(v60, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_27056E330(v23);
      sub_27057898C(v23, v22);

      if (__swift_getEnumTagSinglePayload(v22, 1, v96) == 1)
      {
        sub_2703C2EFC(v22, &qword_2807D7BB8, &qword_27060F288);
        ++v60;
      }

      else
      {
        sub_2705788D8(v22, v92);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = OUTLINED_FUNCTION_21_8();
          sub_27057285C(v65, v66, v67, v68);
          v95 = v69;
        }

        v62 = *(v95 + 16);
        v61 = *(v95 + 24);
        v63 = v88;
        if (v62 >= v61 >> 1)
        {
          v70 = OUTLINED_FUNCTION_46_7(v61);
          sub_27057285C(v70, v62 + 1, 1, v95);
          v63 = v88;
          v95 = v71;
        }

        v64 = v95;
        *(v95 + 16) = v62 + 1;
        sub_2705788D8(v92, v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62);
        ++v60;
      }
    }

    if (qword_2807D7370 == -1)
    {
      goto LABEL_18;
    }

LABEL_25:
    OUTLINED_FUNCTION_2_86();
    swift_once();
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
    v72 = OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_1_1(v72);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_2705E6EB0;
    v102 = v84;
    v101[0] = v85;

    v74 = AMSLogKey();
    if (v74)
    {
      v75 = v74;
      v76 = sub_2705D7564();
      v78 = v77;

      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v101, v102);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v99[0] = DynamicType;
      sub_2705D64E4();
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v99[0] = v76;
      v99[1] = v78;
      sub_2705D64E4();
      OUTLINED_FUNCTION_26_24();
    }

    else
    {
      OUTLINED_FUNCTION_34_17();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v80 = OUTLINED_FUNCTION_19_11(v101);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v99[0] = v80;
      sub_2705D64E4();
      sub_2703C2EFC(v99, &unk_2807D4890, &qword_2705E2880);
    }

    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v101);
    sub_2705D6514();
    sub_2705D6504();
    v81 = *(v95 + 16);
    v102 = MEMORY[0x277D83B88];
    v101[0] = v81;
    sub_2705D64E4();
    sub_2703C2EFC(v101, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    v102 = MEMORY[0x277D837D0];
    v101[0] = v89;
    v101[1] = v90;

    sub_2705D64E4();
    sub_2703C2EFC(v101, &unk_2807D4890, &qword_2705E2880);
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    sub_2705D6534();
    v82 = sub_2705D7A94();
    sub_2705B6DB8(v82, v73);

    (*(v93 + 8))(v86, v94);
  }

  OUTLINED_FUNCTION_11_3();
}
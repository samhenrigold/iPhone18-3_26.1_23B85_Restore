uint64_t sub_2143C19C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  v2 = *MEMORY[0x277CD3618];
  *(inited + 32) = *MEMORY[0x277CD3618];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  v3 = v2;
  sub_214045EE0(inited);
  swift_setDeallocating();
  sub_2143C2394(inited + 32);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v4 = sub_2146D9468();

  v5 = CGImageSourceCopyProperties(v0, v4);

  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2146D9478();
    }
  }

  return 0;
}

double sub_2143C1E68(size_t index)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, index, 0);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2146D9478();
    }
  }

  return 0.0;
}

uint64_t sub_2143C2394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C2420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_2143C247C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2143C24F4(uint64_t a1)
{
  v2 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  sub_2146D91D8(v2, &dword_213FAF000, qword_280B35408, "Getting data representation for DigitalTouchBalloon", 51, 2, MEMORY[0x277D84F90]);
  v3 = sub_2143C25AC(v1);
  v5 = v4;
  v6 = sub_2146D8A38();
  sub_213FB54FC(v3, v5);
  return v6;
}

uint64_t sub_2143C25AC(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Header(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DigitalTouchBalloon(0);
  v6 = sub_2143C27C4(a1 + *(v5 + 20));
  v8 = v7;
  v10 = v9;
  sub_2143C2AFC(a1, v4);
  v11 = &v4[*(v2 + 28)];
  v12 = *v11;
  v13 = v11[1];
  sub_21402D9F8(v6, v8);
  sub_213FDC6BC(v12, v13);
  *v11 = v6;
  v11[1] = v8;
  v4[*(v2 + 20)] = v10;
  sub_2143C504C(&qword_27C912768, type metadata accessor for ETP_Header, asc_21473BA70);
  v14 = sub_2146D8FC8();
  sub_2143C5094(v4, type metadata accessor for ETP_Header);
  sub_213FB54FC(v6, v8);
  return v14;
}

uint64_t sub_2143C27C4(uint64_t a1)
{
  v2 = type metadata accessor for VideoMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DigitalTouchMessage(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143C4FE4(a1, v7, type metadata accessor for DigitalTouchMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v17 = *(v7 + 1);
        v32 = *v7;
        v33 = v17;
        *&v34 = *(v7 + 4);
        v18 = *(v7 + 1);
        v27 = *v7;
        v28 = v18;
        *&v29 = *(v7 + 4);
        v12 = sub_2143C49FC(&v27);
        sub_2142EE378(&v32);
      }

      else
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_2143C4F7C(v7, v4, type metadata accessor for VideoMessage);
      v12 = sub_2143C3934(v4);
      sub_2143C5094(v4, type metadata accessor for VideoMessage);
    }

    else
    {
      v20 = *(v7 + 1);
      v21 = *(v7 + 2);
      v22 = v7[24];
      *&v32 = *v7;
      *(&v32 + 1) = v20;
      *&v33 = v21;
      BYTE8(v33) = v22;
      v12 = sub_2143C4558(&v32);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v7 + 3);
      v14 = *(v7 + 1);
      v34 = *(v7 + 2);
      v35 = v13;
      v15 = *(v7 + 3);
      v36[0] = *(v7 + 4);
      v16 = *(v7 + 1);
      v32 = *v7;
      v33 = v16;
      v29 = v34;
      v30 = v15;
      v31[0] = *(v7 + 4);
      *(v36 + 14) = *(v7 + 78);
      *(v31 + 14) = *(v7 + 78);
      v27 = v32;
      v28 = v14;
      v12 = sub_2143C3694(&v27);
      sub_2142EDB54(&v32);
    }

    else
    {
      v23 = *(v7 + 1);
      v24 = *(v7 + 2);
      v25 = v7[24];
      *&v32 = *v7;
      *(&v32 + 1) = v23;
      *&v33 = v24;
      BYTE8(v33) = v25;
      v12 = sub_2143C2C04(&v32);
    }
  }

  else
  {
    v9 = *(v7 + 1);
    v10 = *(v7 + 2);
    v11 = v7[24];
    if (EnumCaseMultiPayload)
    {
      v19 = v7[25];
      *&v32 = *v7;
      *(&v32 + 1) = v9;
      *&v33 = v10;
      BYTE8(v33) = v11;
      BYTE9(v33) = v19;
      v12 = sub_2143C30B8(&v32);
    }

    else
    {
      *&v32 = *v7;
      *(&v32 + 1) = v9;
      *&v33 = v10;
      BYTE8(v33) = v11;
      v12 = sub_2143C2C04(&v32);
    }
  }

  return v12;
}

int *sub_2143C2AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = type metadata accessor for ETP_Header(0);
  *(a2 + v4[5]) = 8;
  v5 = a2 + v4[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a2 + v4[7]) = xmmword_2146E68C0;
  v6 = a2 + v4[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (a2 + v4[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v4[10];
  *(a2 + v8) = 2;
  v9 = a2 + v4[11];
  *v9 = 0;
  *(v9 + 8) = 1;
  *v7 = sub_2146D8B28();
  v7[1] = v10;
  result = type metadata accessor for DigitalTouchHeader(0);
  *v5 = *(a1 + result[6]);
  *(v5 + 8) = 0;
  *v9 = *(a1 + result[7]);
  *(v9 + 8) = 0;
  *(a2 + v8) = *(a1 + result[8]);
  v12 = a1 + result[5];
  if ((*(v12 + 4) & 1) == 0)
  {
    *v6 = *v12;
    *(v6 + 4) = 0;
  }

  return result;
}

uint64_t sub_2143C2C04(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Tap(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = sub_2146D8DE8();
  v7 = &v4[*(v2 + 20)];
  *v7 = xmmword_2146E68C0;
  v8 = &v4[*(v2 + 24)];
  *v8 = xmmword_2146E68C0;
  v44 = v2;
  v9 = &v4[*(v2 + 28)];
  *v9 = xmmword_2146E68C0;
  if (v5)
  {
    v43 = v9;
    v10 = *(v5 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v45 = MEMORY[0x277D84F90];

      sub_21409FE8C(0, v10, 0);
      v11 = v45;
      v12 = *(v45 + 16);
      v13 = 32;
      do
      {
        v14 = *(v5 + v13);
        v45 = v11;
        v15 = *(v11 + 24);
        v2 = v12 + 1;
        if (v12 >= v15 >> 1)
        {
          sub_21409FE8C((v15 > 1), v12 + 1, 1);
          v11 = v45;
        }

        *(v11 + 16) = v2;
        *(v11 + 4 * v12 + 32) = v14;
        v13 += 32;
        ++v12;
        --v10;
      }

      while (v10);
    }

    v16 = *(v11 + 16);
    if (!(v16 >> 61))
    {
      v17 = sub_214601D60(v11 + 32, v11 + 32 + 4 * v16);
      v19 = v18;

      v6 = sub_213FDC6BC(*v8, *(v8 + 1));
      *v8 = v17;
      *(v8 + 1) = v19;
      v20 = *(v5 + 16);
      v21 = MEMORY[0x277D84F90];
      if (!v20)
      {
LABEL_17:
        v26 = *(v21 + 16);
        if (v26 + 0x4000000000000000 >= 0)
        {
          v27 = sub_214601D60(v21 + 32, v21 + 32 + 2 * v26);
          v29 = v28;

          v6 = sub_213FDC6BC(*v7, *(v7 + 1));
          *v7 = v27;
          *(v7 + 1) = v29;
          v30 = *(v5 + 16);
          v31 = MEMORY[0x277D84F90];
          if (v30)
          {
            v45 = MEMORY[0x277D84F90];

            sub_21409FE8C(0, v30, 0);
            v31 = v45;
            v2 = *(v45 + 16);
            v32 = 60;
            do
            {
              v33 = *(v5 + v32);
              v45 = v31;
              v34 = *(v31 + 24);
              if (v2 >= v34 >> 1)
              {
                sub_21409FE8C((v34 > 1), v2 + 1, 1);
                v31 = v45;
              }

              *(v31 + 16) = v2 + 1;
              *(v31 + 4 * v2 + 32) = v33;
              v32 += 32;
              ++v2;
              --v30;
            }

            while (v30);
          }

          v35 = *(v31 + 16);
          if (!(v35 >> 61))
          {
            v36 = sub_214601D60(v31 + 32, v31 + 32 + 4 * v35);
            v38 = v37;

            v39 = v43;
            sub_213FDC6BC(*v43, *(v43 + 1));
            *v39 = v36;
            v39[1] = v38;
            sub_2143C504C(&qword_27C912780, type metadata accessor for ETP_Tap, byte_21473B8E0);
            v40 = sub_2146D8FC8();
LABEL_26:
            sub_2143C5094(v4, type metadata accessor for ETP_Tap);
            return v40;
          }

LABEL_30:
          __break(1u);
          v42 = v6;
          swift_once();
          sub_2146D91D8(v42, &dword_213FAF000, qword_280B35408, "Tap protobuf did not serialize, returning empty data", 52, 2, MEMORY[0x277D84F90], v43, v44);

          v40 = 0;
          goto LABEL_26;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v45 = MEMORY[0x277D84F90];

      v6 = sub_21409FE6C(0, v20, 0);
      v22 = 0;
      v21 = v45;
      v23 = (v5 + 58);
      while (v22 < *(v5 + 16))
      {
        if (*v23)
        {
          goto LABEL_31;
        }

        v2 = *(v23 - 1);
        v45 = v21;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          v6 = sub_21409FE6C((v24 > 1), v25 + 1, 1);
          v21 = v45;
        }

        ++v22;
        *(v21 + 16) = v25 + 1;
        *(v21 + 2 * v25 + 32) = v2;
        v23 += 32;
        if (v20 == v22)
        {

          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C30B8(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Doodle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 25);
  v7 = sub_2146D8DE8();
  v8 = &v4[*(v2 + 5)];
  *v8 = 0;
  v8[4] = 1;
  v9 = &v4[*(v2 + 6)];
  *v9 = xmmword_2146E68C0;
  v10 = &v4[*(v2 + 7)];
  *v10 = xmmword_2146E68C0;
  v11 = &v4[*(v2 + 8)];
  *v11 = xmmword_2146E68C0;
  if (!v5)
  {
    goto LABEL_50;
  }

  v12 = *(v5 + 16);
  if (HIDWORD(v12))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v64 = v10;
  v61 = v4;
  v62 = v9;
  v63 = v6;
  v58 = v11;
  v60 = v2;
  *v8 = v12;
  v8[4] = 0;

  if (v12)
  {
    v6 = 0;
    v59 = 0;
    v13 = v5 + 64;
    v65 = v12;
    v56 = v12 - 1;
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v68 = MEMORY[0x277D84F90];
    v66 = v5;
    v57 = v5 + 64;
    do
    {
      v2 = (v13 + 40 * v6);
      while (1)
      {
        if (v6 >= *(v5 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v16 = *(v2 - 2);
        if (!v16)
        {
          goto LABEL_50;
        }

        v17 = *(v16 + 16);
        if (HIDWORD(v17))
        {
          goto LABEL_44;
        }

        v18 = v14;
        v19 = *(v2 - 1);
        v20 = *v2;
        v67 = *(v2 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_214095AE0(0, *(v15 + 2) + 1, 1, v15);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_214095AE0((v21 > 1), v22 + 1, 1, v15);
        }

        *(v15 + 2) = v22 + 1;
        *&v15[4 * v22 + 32] = v20 | (v17 << 16);
        v23 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_214095AE0(0, *(v23 + 2) + 1, 1, v23);
        }

        v14 = v18;
        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v25 >= v24 >> 1)
        {
          v23 = sub_214095AE0((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 2) = v25 + 1;
        v68 = v23;
        *&v23[4 * v25 + 32] = v19;
        v26 = *(v16 + 16);
        if (v26)
        {
          break;
        }

        ++v6;

        v2 += 20;
        v5 = v66;
        if (v65 == v6)
        {
          goto LABEL_32;
        }
      }

      v55 = (v6 + 1);
      v2 = (v16 + 36);
      do
      {
        v27 = v14;
        v28 = *(v2 - 1);
        v29 = *v2;
        v31 = *(v15 + 2);
        v30 = *(v15 + 3);
        if (v31 >= v30 >> 1)
        {
          v15 = sub_214095AE0((v30 > 1), v31 + 1, 1, v15);
        }

        *(v15 + 2) = v31 + 1;
        *&v15[4 * v31 + 32] = v28;
        v14 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2140959E4(0, *(v27 + 2) + 1, 1, v27);
        }

        v33 = *(v14 + 2);
        v32 = *(v14 + 3);
        if (v33 >= v32 >> 1)
        {
          v14 = sub_2140959E4((v32 > 1), v33 + 1, 1, v14);
        }

        v2 += 4;
        *(v14 + 2) = v33 + 1;
        *&v14[2 * v33 + 32] = v29;
        --v26;
      }

      while (v26);

      v7 = swift_bridgeObjectRelease_n();
      v13 = v57;
      v34 = v56 == v6;
      v5 = v66;
      v6 = v55;
    }

    while (!v34);
  }

  else
  {
    v59 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v68 = MEMORY[0x277D84F90];
  }

LABEL_32:

  v35 = *(v68 + 2);
  if (v35 >> 61)
  {
    goto LABEL_46;
  }

  v36 = sub_214601D60((v68 + 32), &v68[4 * v35 + 32]);
  v38 = v37;

  v39 = v64;
  v7 = sub_213FDC6BC(*v64, *(v64 + 1));
  *v39 = v36;
  v39[1] = v38;
  v40 = *(v15 + 2);
  if (v40 >> 61)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = sub_214601D60((v15 + 32), &v15[4 * v40 + 32]);
  v43 = v42;

  v44 = v62;
  sub_213FDC6BC(*v62, *(v62 + 1));
  *v44 = v41;
  v44[1] = v43;
  if (!v63)
  {

LABEL_38:
    sub_2143C504C(&qword_27C912770, type metadata accessor for ETP_Doodle, byte_21473B610);
    v2 = v61;
    v6 = v59;
    v50 = sub_2146D8FC8();
    if (!v6)
    {
      v51 = v50;
      goto LABEL_42;
    }

    v7 = sub_2146D9BB8();
    if (qword_280B35358 == -1)
    {
LABEL_40:
      sub_2146D91D8(v7, &dword_213FAF000, qword_280B35408, "Doodle protobuf did not serialize, returning empty data", 55, 2, MEMORY[0x277D84F90]);

      v51 = 0;
LABEL_42:
      sub_2143C5094(v2, type metadata accessor for ETP_Doodle);
      return v51;
    }

LABEL_48:
    v53 = v7;
    swift_once();
    v7 = v53;
    goto LABEL_40;
  }

  v45 = *(v14 + 2);
  if (v45 + 0x4000000000000000 >= 0)
  {
    v46 = sub_214601D60((v14 + 32), &v14[2 * v45 + 32]);
    v48 = v47;

    v49 = v58;
    sub_213FDC6BC(*v58, *(v58 + 1));
    *v49 = v46;
    v49[1] = v48;
    goto LABEL_38;
  }

  __break(1u);
LABEL_50:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C3694(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Heartbeat(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v10 = *(a1 + 48);
  v9 = *(a1 + 52);
  v11 = *(a1 + 56);
  HIDWORD(v21) = *(a1 + 80);
  v12 = *(a1 + 84);
  sub_2146D8DE8();
  v13 = &v4[v2[5]];
  *v13 = 0;
  v13[4] = 1;
  v14 = &v4[v2[6]];
  *v14 = 0;
  v14[4] = 1;
  v15 = &v4[v2[7]];
  *v15 = 0;
  v15[4] = 1;
  v16 = &v4[v2[8]];
  *v16 = 0;
  v16[4] = 1;
  v17 = &v4[v2[9]];
  *v17 = 0;
  v17[4] = 1;
  v18 = &v4[v2[10]];
  *v18 = 0;
  v18[4] = 1;
  if (v6 & 1) != 0 || (*v13 = v5, v13[4] = 0, (v8) || (*v14 = v7, v14[4] = 0, *v15 = v10, v15[4] = 0, *v16 = v9, v16[4] = 0, *v17 = v11, v17[4] = 0, (v12))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v18 = HIDWORD(v21);
    v18[4] = 0;
    sub_2143C504C(&qword_27C912778, type metadata accessor for ETP_Heartbeat, byte_21473B778);
    v19 = sub_2146D8FC8();
    sub_2143C5094(v4, type metadata accessor for ETP_Heartbeat);
    return v19;
  }

  return result;
}

uint64_t sub_2143C3934(char *a1)
{
  v117 = *MEMORY[0x277D85DE8];
  v108 = type metadata accessor for DigitalTouchBalloon(0);
  v104 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v3 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DigitalTouchHeader(0);
  MEMORY[0x28223BE20](v107);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for ETP_Header(0);
  v5 = MEMORY[0x28223BE20](v113);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v106 = &v96 - v9;
  MEMORY[0x28223BE20](v8);
  v110 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v96 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v96 - v17;
  v19 = type metadata accessor for ETP_Video(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v99 = &v21[v19[5]];
  *v99 = xmmword_2146E68C0;
  v101 = &v21[v19[6]];
  v102 = v19;
  v105 = xmmword_2146E68C0;
  *v101 = xmmword_2146E68C0;
  v22 = v19[7];
  v23 = *a1;
  v103 = v21;
  v21[v22] = v23;
  v111 = type metadata accessor for VideoMessage(0);
  v112 = a1;
  v24 = *(v111 + 20);
  sub_2143C4EA4(&a1[v24], v18);
  v25 = type metadata accessor for IntroBalloon(0);
  v26 = *(*(v25 - 8) + 48);
  LODWORD(v21) = v26(v18, 1, v25);
  sub_2143C4F14(v18);
  if (v21 == 1)
  {
    v27 = v111;
    v28 = v112;
    goto LABEL_6;
  }

  sub_2143C4EA4(&v112[v24], v16);
  if (v26(v16, 1, v25) == 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v29 = &v16[*(v25 + 20)];
  v30 = *(v29 + 1);
  v98 = *v29;
  v31 = *(v29 + 2);
  v97 = v29[24];
  v96 = v29[25];

  sub_2143C5094(v16, type metadata accessor for IntroBalloon);
  v114[0] = v98;
  v114[1] = v30;
  v114[2] = v31;
  v115 = v97;
  v116 = v96;
  v32 = sub_2143C30B8(v114);
  v98 = v33;

  v34 = v112;
  v35 = &v112[v24];
  v36 = v109;
  sub_2143C4EA4(v35, v109);
  if (v26(v36, 1, v25) == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v34;
  v37 = v100;
  sub_2143C4FE4(v36, v100, type metadata accessor for DigitalTouchHeader);
  sub_2143C5094(v36, type metadata accessor for IntroBalloon);
  v38 = v110;
  sub_2143C2AFC(v37, v110);
  sub_2143C5094(v37, type metadata accessor for DigitalTouchHeader);
  v39 = v113;
  *(v38 + *(v113 + 20)) = 3;
  v40 = v38 + *(v39 + 28);
  sub_213FDC6BC(*v40, *(v40 + 8));
  v41 = v98;
  *v40 = v32;
  *(v40 + 8) = v41;
  sub_2143C504C(&qword_27C912768, type metadata accessor for ETP_Header, asc_21473BA70);
  v42 = sub_2146D8FC8();
  v44 = v43;
  v45 = v99;
  sub_213FDC6BC(*v99, *(v99 + 1));
  *v45 = v42;
  v45[1] = v44;
  v27 = v111;
  sub_2143C5094(v110, type metadata accessor for ETP_Header);
LABEL_6:
  v109 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v46 = *&v28[*(v27 + 24) + 16];
  if (!v46)
  {
LABEL_26:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v46 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v104 = *(v104 + 72);
    v100 = v46;

    do
    {
      v111 = v47;
      v112 = 0;
      sub_2143C4FE4(v48, v3, type metadata accessor for DigitalTouchBalloon);
      v54 = sub_2143C27C4(&v3[*(v108 + 20)]);
      v56 = v55;
      LODWORD(v110) = v57;
      sub_2146D8DE8();
      v58 = v113;
      v7[*(v113 + 20)] = 8;
      v59 = v3;
      v60 = &v7[v58[6]];
      *v60 = 0;
      v60[8] = 1;
      *&v7[v58[7]] = v105;
      v61 = &v7[v58[8]];
      *v61 = 0;
      v61[4] = 1;
      v62 = v7;
      v63 = &v7[v58[9]];
      *v63 = 0;
      v63[1] = 0;
      v64 = v58[10];
      v62[v64] = 2;
      v65 = &v62[v58[11]];
      *v65 = 0;
      v65[8] = 1;
      *v63 = sub_2146D8B28();
      v63[1] = v66;
      v7 = v62;
      v67 = v107;
      *v60 = *&v59[*(v107 + 24)];
      v60[8] = 0;
      v3 = v59;
      *v65 = *&v59[v67[7]];
      v65[8] = 0;
      v62[v64] = v59[v67[8]];
      v68 = &v59[v67[5]];
      if ((v68[4] & 1) == 0)
      {
        *v61 = *v68;
        v61[4] = 0;
      }

      v69 = v62;
      v70 = v106;
      sub_2143C4F7C(v69, v106, type metadata accessor for ETP_Header);
      v71 = v113;
      v72 = (v70 + *(v113 + 28));
      v73 = *v72;
      v74 = v72[1];
      sub_21402D9F8(v54, v56);
      v75 = v74;
      v76 = v70;
      sub_213FDC6BC(v73, v75);
      *v72 = v54;
      v72[1] = v56;
      *(v70 + *(v71 + 20)) = v110;
      sub_2143C504C(&qword_27C912768, type metadata accessor for ETP_Header, asc_21473BA70);
      v77 = v112;
      v78 = sub_2146D8FC8();
      if (v77)
      {
        v80 = sub_2146D9BB8();
        if (qword_280B35358 != -1)
        {
          v81 = v80;
          swift_once();
          v80 = v81;
        }

        sub_2146D91D8(v80, &dword_213FAF000, qword_280B35408, "Message protobuf did not serialize, returning empty data", 56, 2, MEMORY[0x277D84F90]);

        sub_213FB54FC(v54, v56);
        sub_2143C5094(v76, type metadata accessor for ETP_Header);
        v49 = 0;
        v50 = 0xC000000000000000;
      }

      else
      {
        v49 = v78;
        v50 = v79;
        sub_2143C5094(v76, type metadata accessor for ETP_Header);
        sub_213FB54FC(v54, v56);
      }

      v51 = objc_allocWithZone(MEMORY[0x277CBEB28]);
      v52 = sub_2146D8A38();
      v53 = [v51 initWithData_];

      sub_213FB54FC(v49, v50);
      [v109 addObject_];

      sub_2143C5094(v3, type metadata accessor for DigitalTouchBalloon);
      v48 += v104;
      v47 = v111 - 1;
    }

    while (v111 != 1);
  }

  v82 = objc_opt_self();
  v114[0] = 0;
  v83 = [v82 archivedDataWithRootObject:v109 requiringSecureCoding:1 error:v114];
  v84 = v114[0];
  if (v83)
  {
    v85 = sub_2146D8A58();
    v87 = v86;

    v88 = v101;
    sub_213FDC6BC(*v101, *(v101 + 1));
    *v88 = v85;
    v88[1] = v87;
  }

  else
  {
    v89 = v84;
    v90 = sub_2146D8838();

    swift_willThrow();
    v91 = sub_2146D9BB8();
    if (qword_280B35358 != -1)
    {
      v95 = v91;
      swift_once();
      v91 = v95;
    }

    sub_2146D91D8(v91, &dword_213FAF000, qword_280B35408, "Failed to archive playingMessages", 33, 2, MEMORY[0x277D84F90]);
  }

  v92 = v103;
  sub_2143C504C(&qword_27C912788, type metadata accessor for ETP_Video, aQg);
  v93 = sub_2146D8FC8();
  sub_2143C5094(v92, type metadata accessor for ETP_Video);

  return v93;
}

uint64_t sub_2143C4558(uint64_t a1)
{
  v3 = type metadata accessor for ETP_Kiss(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = sub_2146D8DE8();
  v8 = &v5[v3[5]];
  *v8 = xmmword_2146E68C0;
  v9 = &v5[v3[6]];
  *v9 = xmmword_2146E68C0;
  v10 = &v5[v3[7]];
  *v10 = xmmword_2146E68C0;
  if (v6)
  {
    v44 = v8;
    v11 = *(v6 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v43 = v3;
      v45 = MEMORY[0x277D84F90];

      sub_21409FE8C(0, v11, 0);
      v12 = v45;
      v13 = *(v45 + 16);
      v14 = 32;
      do
      {
        v15 = *(v6 + v14);
        v45 = v12;
        v16 = *(v12 + 24);
        v1 = v13 + 1;
        if (v13 >= v16 >> 1)
        {
          sub_21409FE8C((v16 > 1), v13 + 1, 1);
          v12 = v45;
        }

        *(v12 + 16) = v1;
        *(v12 + 4 * v13 + 32) = v15;
        v14 += 8;
        ++v13;
        --v11;
      }

      while (v11);
    }

    v17 = *(v12 + 16);
    if (v17 >> 61)
    {
      __break(1u);
    }

    else
    {
      v18 = sub_214601D60(v12 + 32, v12 + 32 + 4 * v17);
      v20 = v19;

      v7 = sub_213FDC6BC(*v9, *(v9 + 1));
      *v9 = v18;
      *(v9 + 1) = v20;
      v21 = *(v6 + 16);
      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v45 = MEMORY[0x277D84F90];

        sub_21409FE6C(0, v21, 0);
        v22 = v45;
        v1 = *(v45 + 16);
        v23 = 36;
        do
        {
          v24 = *(v6 + v23);
          v45 = v22;
          v25 = *(v22 + 24);
          if (v1 >= v25 >> 1)
          {
            sub_21409FE6C((v25 > 1), v1 + 1, 1);
            v22 = v45;
          }

          *(v22 + 16) = v1 + 1;
          *(v22 + 2 * v1 + 32) = v24;
          v23 += 8;
          ++v1;
          --v21;
        }

        while (v21);
      }

      v26 = *(v22 + 16);
      if (v26 + 0x4000000000000000 >= 0)
      {
        v27 = sub_214601D60(v22 + 32, v22 + 32 + 2 * v26);
        v29 = v28;

        v7 = sub_213FDC6BC(*v10, *(v10 + 1));
        *v10 = v27;
        *(v10 + 1) = v29;
        v30 = *(v6 + 16);
        v31 = MEMORY[0x277D84F90];
        if (v30)
        {
          v45 = MEMORY[0x277D84F90];

          sub_21409FE6C(0, v30, 0);
          v31 = v45;
          v1 = *(v45 + 16);
          v32 = 38;
          do
          {
            v33 = *(v6 + v32);
            v45 = v31;
            v34 = *(v31 + 24);
            if (v1 >= v34 >> 1)
            {
              sub_21409FE6C((v34 > 1), v1 + 1, 1);
              v31 = v45;
            }

            *(v31 + 16) = v1 + 1;
            *(v31 + 2 * v1 + 32) = v33;
            v32 += 8;
            ++v1;
            --v30;
          }

          while (v30);
        }

        v35 = *(v31 + 16);
        if (v35 + 0x4000000000000000 >= 0)
        {
          v36 = sub_214601D60(v31 + 32, v31 + 32 + 2 * v35);
          v38 = v37;

          v39 = v44;
          sub_213FDC6BC(*v44, *(v44 + 1));
          *v39 = v36;
          v39[1] = v38;
          sub_2143C504C(&qword_27C912790, type metadata accessor for ETP_Kiss, byte_21473B1B0);
          v40 = sub_2146D8FC8();
LABEL_24:
          sub_2143C5094(v5, type metadata accessor for ETP_Kiss);
          return v40;
        }

LABEL_27:
        __break(1u);
        v42 = v7;
        swift_once();
        sub_2146D91D8(v42, &dword_213FAF000, qword_280B35408, "Kiss protobuf did not serialize, returning empty data", 53, 2, MEMORY[0x277D84F90]);

        v40 = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C49FC(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Anger(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v8 = *(a1 + 24);
  v7 = *(a1 + 28);
  v9 = *(a1 + 32);
  v10 = sub_2146D8DE8();
  v11 = &v4[v2[5]];
  *v11 = 0;
  v11[4] = 1;
  v12 = &v4[v2[6]];
  *v12 = 0;
  v12[4] = 1;
  v13 = &v4[v2[7]];
  *v13 = 0;
  v13[4] = 1;
  v14 = &v4[v2[8]];
  *v14 = xmmword_2146E68C0;
  v43 = v2;
  v15 = &v4[v2[9]];
  *v15 = xmmword_2146E68C0;
  if ((v6 & 1) == 0)
  {
    v42 = v14;
    *v11 = v5;
    v11[4] = 0;
    *v12 = v8;
    v12[4] = 0;
    *v13 = v7;
    v13[4] = 0;
    v16 = *(v9 + 16);
    v17 = MEMORY[0x277D84F90];
    v41 = v9;
    if (v16)
    {
      v44 = MEMORY[0x277D84F90];
      v10 = sub_21409FE8C(0, v16, 0);
      v18 = v44;
      v19 = (v9 + 32);
      v20 = *(v44 + 16);
      v21 = v16;
      do
      {
        v22 = *v19;
        v19 += 2;
        v6 = v22;
        v44 = v18;
        v23 = *(v18 + 24);
        v24 = v20 + 1;
        if (v20 >= v23 >> 1)
        {
          v10 = sub_21409FE8C((v23 > 1), v20 + 1, 1);
          v18 = v44;
        }

        *(v18 + 16) = v24;
        *(v18 + 4 * v20++ + 32) = v6;
        --v21;
      }

      while (v21);
    }

    else
    {
      v24 = *(MEMORY[0x277D84F90] + 16);
      v18 = MEMORY[0x277D84F90];
    }

    if (v24 >> 61)
    {
      __break(1u);
    }

    else
    {
      v25 = sub_214601D60(v18 + 32, v18 + 32 + 4 * v24);
      v27 = v26;

      v10 = sub_213FDC6BC(*v15, *(v15 + 1));
      *v15 = v25;
      *(v15 + 1) = v27;
      if (v16)
      {
        v44 = v17;
        v10 = sub_21409FE6C(0, v16, 0);
        v17 = v44;
        v28 = (v41 + 36);
        v29 = *(v44 + 16);
        do
        {
          v30 = *v28;
          v28 += 4;
          v6 = v30;
          v44 = v17;
          v31 = *(v17 + 24);
          v32 = v29 + 1;
          if (v29 >= v31 >> 1)
          {
            v10 = sub_21409FE6C((v31 > 1), v29 + 1, 1);
            v17 = v44;
          }

          *(v17 + 16) = v32;
          *(v17 + 2 * v29++ + 32) = v6;
          --v16;
        }

        while (v16);
      }

      else
      {
        v32 = *(v17 + 16);
      }

      if ((v32 + 0x4000000000000000) >= 0)
      {
        v33 = sub_214601D60(v17 + 32, v17 + 32 + 2 * v32);
        v35 = v34;

        v36 = v42;
        sub_213FDC6BC(*v42, *(v42 + 1));
        *v36 = v33;
        v36[1] = v35;
        sub_2143C504C(&qword_27C912798, type metadata accessor for ETP_Anger, aIj);
        v37 = sub_2146D8FC8();
LABEL_19:
        sub_2143C5094(v4, type metadata accessor for ETP_Anger);
        return v37;
      }
    }

    __break(1u);
    v39 = v10;
    swift_once();
    sub_2146D91D8(v39, &dword_213FAF000, qword_280B35408, "Anger protobuf did not serialize, returning empty data", 54, 2, MEMORY[0x277D84F90]);

    v37 = 0;
    goto LABEL_19;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C4DEC(uint64_t a1)
{
  v2 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  sub_2146D91D8(v2, &dword_213FAF000, qword_280B35408, "Getting data representation for DigitalTouchBalloon", 51, 2, MEMORY[0x277D84F90]);
  v3 = sub_2143C25AC(v1);
  v5 = v4;
  v6 = sub_2146D8A38();
  sub_213FB54FC(v3, v5);
  return v6;
}

uint64_t sub_2143C4EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143C4F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143C4F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C4FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C504C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143C5094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2143C50F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904170, &unk_2146EAAD0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F51C;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 20;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21438F51C;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214043840(inited, a1);
}

uint64_t sub_2143C5258@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 26);
  v5 = *(v1 + 27);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
  *(a1 + 19) = v5;
}

__n128 sub_2143C527C(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];
  v4 = a1[1].n128_u8[2];
  v5 = a1[1].n128_u8[3];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 26) = v4;
  *(v1 + 27) = v5;
  return result;
}

uint64_t sub_2143C52D4()
{
  if ((*(v0 + 26) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2143C5338@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904160, &unk_2146EAAC0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F51C;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 750;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21438F51C;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214044028(inited, a1);
}

uint64_t DoodleMessage.$strokes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 DoodleMessage.$strokes.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t DoodleMessage.strokes.getter()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t SingleStroke.$stroke.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 SingleStroke.$stroke.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t SingleStroke.stroke.getter()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C56B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  v5 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 sub_2143C56DC(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v3;
  v1[1].n128_u8[4] = v4;
  v1[1].n128_u8[5] = v5;
  return result;
}

uint64_t sub_2143C5734@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  v5 = *(v1 + 45);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 sub_2143C5758(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 44) = v4;
  *(v1 + 45) = v5;
  return result;
}

uint64_t sub_2143C57B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 85);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 sub_2143C57D4(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];

  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u32[0] = v3;
  v1[5].n128_u8[4] = v4;
  v1[5].n128_u8[5] = v5;
  return result;
}

uint64_t sub_2143C582C()
{
  if (*(v0 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C5890()
{
  if ((*(v0 + 44) & 1) == 0)
  {
    return *(v0 + 40);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C58F4()
{
  if (*(v0 + 84))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t VideoMessage.$playingMessages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoMessage(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

__n128 VideoMessage.$playingMessages.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for VideoMessage(0) + 24));

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t VideoMessage.playingMessages.getter()
{
  if (*(v0 + *(type metadata accessor for VideoMessage(0) + 24) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2143C5AC0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904138, qword_2147384F0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_214309284;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 100;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21438F51C;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214043990(inited, a1);
}

uint64_t _s9BlastDoor10TapMessageV5_tapsAA9UntrustedVySayAA06SingleC0VGGvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 _s9BlastDoor10TapMessageV5_tapsAA9UntrustedVySayAA06SingleC0VGGvs_0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t _s9BlastDoor10TapMessageV4tapsSayAA06SingleC0VGvg_0()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t AngerMessage.$duration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  v5 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 AngerMessage.$duration.setter(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v3;
  v1[1].n128_u8[4] = v4;
  v1[1].n128_u8[5] = v5;
  return result;
}

uint64_t AngerMessage.duration.getter()
{
  if (*(v0 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t VideoMessage.MediaType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2143C5ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C5FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C6050@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2143C60B8(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2143C6180(uint64_t a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_2143C6228(uint64_t a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2143C62C4(double a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2143C6360(char a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*TapMessage.taps.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C6474;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*TapMessage.$taps.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C6510;
}

uint64_t sub_2143C6544@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (*(result + 26))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 24);
  }

  return result;
}

uint64_t (*sub_2143C65C8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 26))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 24);
    return sub_2143C6650;
  }

  return result;
}

uint64_t sub_2143C667C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 18);
  v7 = *(a1 + 19);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 26) = v6;
  *(a2 + 27) = v7;
  return result;
}

uint64_t (*sub_2143C66E8(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 26);
  v6 = *(v1 + 27);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 18) = v5;
  *(a1 + 19) = v6;

  return sub_2143C6750;
}

uint64_t sub_2143C6750(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 18);
  v7 = *(a1 + 19);
  if (a2)
  {

    *(v2 + 8) = v4;
    *(v2 + 16) = v3;
    *(v2 + 24) = v5;
    *(v2 + 26) = v6;
    *(v2 + 27) = v7;
  }

  else
  {

    *(v2 + 8) = v4;
    *(v2 + 16) = v3;
    *(v2 + 24) = v5;
    *(v2 + 26) = v6;
    *(v2 + 27) = v7;
  }

  return result;
}

void DoodleMessage.strokes.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *v1;
  v6 = *(v1 + 24);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*DoodleMessage.strokes.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C9440;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143C6A08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

void (*DoodleMessage.$strokes.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C9444;
}

void SingleStroke.stroke.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *v1;
  v6 = *(v1 + 24);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*SingleStroke.stroke.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C9440;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*SingleStroke.$stroke.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C9444;
}

uint64_t sub_2143C6E70@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

uint64_t (*sub_2143C6ED4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 16);
    return sub_2143C9418;
  }

  return result;
}

uint64_t sub_2143C6F5C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 20) = v6;
  *(a2 + 21) = v7;
  return result;
}

uint64_t (*sub_2143C6FC8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C9454;
}

uint64_t sub_2143C7030@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 44))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 40);
  }

  return result;
}

uint64_t (*sub_2143C70B4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 44))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 40);
    return sub_2143C713C;
  }

  return result;
}

uint64_t sub_2143C7168(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 44) = v6;
  *(a2 + 45) = v7;
  return result;
}

uint64_t (*sub_2143C71D4(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 44);
  v6 = *(v1 + 45);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C723C;
}

uint64_t sub_2143C723C(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  if (a2)
  {

    *(v2 + 24) = v4;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    *(v2 + 44) = v6;
    *(v2 + 45) = v7;
  }

  else
  {

    *(v2 + 24) = v4;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    *(v2 + 44) = v6;
    *(v2 + 45) = v7;
  }

  return result;
}

uint64_t sub_2143C7380@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 84))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 80);
  }

  return result;
}

uint64_t (*sub_2143C7404(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 84))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 80);
    return sub_2143C748C;
  }

  return result;
}

uint64_t sub_2143C74B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v5;
  *(a2 + 84) = v6;
  *(a2 + 85) = v7;
  return result;
}

uint64_t (*sub_2143C7524(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 84);
  v6 = *(v1 + 85);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C758C;
}

uint64_t sub_2143C758C(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  if (a2)
  {

    *(v2 + 64) = v4;
    *(v2 + 72) = v3;
    *(v2 + 80) = v5;
    *(v2 + 84) = v6;
    *(v2 + 85) = v7;
  }

  else
  {

    *(v2 + 64) = v4;
    *(v2 + 72) = v3;
    *(v2 + 80) = v5;
    *(v2 + 84) = v6;
    *(v2 + 85) = v7;
  }

  return result;
}

BlastDoor::VideoMessage::MediaType_optional __swiftcall VideoMessage.MediaType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2143C765C()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143C76AC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_2143C76E4(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x216055860](v3);
  return sub_2146DA9B8();
}

void *sub_2143C7730@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2143C7750(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t VideoMessage.intro.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoMessage(0) + 20);

  return sub_2143C4EA4(v3, a1);
}

uint64_t VideoMessage.intro.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VideoMessage(0) + 20);

  return sub_2143C78D8(a1, v3);
}

uint64_t sub_2143C78D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143C7990@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for VideoMessage(0) + 24) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_2143C7A24(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for VideoMessage(0);
  sub_2140325F8(v1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void VideoMessage.playingMessages.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VideoMessage(0) + 24);
  v8 = a1;
  v4 = *v3;
  v7 = *(v3 + 24);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v4(&v8, &v7, v6))
  {

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*VideoMessage.playingMessages.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for VideoMessage(0) + 24);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C7CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VideoMessage(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

void sub_2143C7D3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for VideoMessage(0) + 24);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

void (*VideoMessage.$playingMessages.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for VideoMessage(0) + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t IntroBalloon.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntroBalloon(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 IntroBalloon.content.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for IntroBalloon(0) + 20));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

double sub_2143C8030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  a5(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void _s9BlastDoor10TapMessageV4tapsSayAA06SingleC0VGvs_0(uint64_t a1)
{
  v7 = a1;
  v3 = *v1;
  v6 = *(v1 + 24);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*KissMessage.kisses.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C9440;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*KissMessage.$kisses.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C9444;
}

uint64_t (*AngerMessage.duration.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 16);
    return sub_2143C8468;
  }

  return result;
}

uint64_t (*AngerMessage.$duration.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C84F8;
}

uint64_t sub_2143C84FC(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  if (a2)
  {

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 20) = v6;
    *(v2 + 21) = v7;
  }

  else
  {

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 20) = v6;
    *(v2 + 21) = v7;
  }

  return result;
}

uint64_t sub_2143C86A4(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C906930, type metadata accessor for DigitalTouchBalloon, aY_72);
  result = sub_2143C8728(&qword_27C906960, type metadata accessor for DigitalTouchBalloon, byte_2146F8FD8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C8728(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143C8770(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C9067B0, type metadata accessor for DigitalTouchMessage, aW_8);
  result = sub_2143C8728(&qword_27C9067C8, type metadata accessor for DigitalTouchMessage, byte_214702B28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C87F4(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C9067A8, type metadata accessor for DigitalTouchHeader, asc_2146F9000);
  result = sub_2143C8728(&qword_27C9067C0, type metadata accessor for DigitalTouchHeader, byte_2146F9028);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143C8984()
{
  result = qword_27C9127A0;
  if (!qword_27C9127A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessage.MediaType, &type metadata for VideoMessage.MediaType, v0, v1);
    atomic_store(result, &qword_27C9127A0);
  }

  return result;
}

uint64_t sub_2143C8A04(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C90C8D8, type metadata accessor for VideoMessage, protocol conformance descriptor for VideoMessage);
  result = sub_2143C8728(&qword_27C90C8A0, type metadata accessor for VideoMessage, protocol conformance descriptor for VideoMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C8A88(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C906918, type metadata accessor for IntroBalloon, protocol conformance descriptor for IntroBalloon);
  result = sub_2143C8728(&qword_27C906950, type metadata accessor for IntroBalloon, protocol conformance descriptor for IntroBalloon);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C8BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_10Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_2143C8C70(uint64_t a1)
{
  result = type metadata accessor for DigitalTouchHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DigitalTouchMessage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2143C8CF4(uint64_t a1)
{
  result = type metadata accessor for VideoMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2143C8DB0(uint64_t a1)
{
  sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    sub_214086448();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_2143C8E84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143C8ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2143C8F34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143C8F7C(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

__n128 __swift_memcpy86_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2143C9018(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 86))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143C9060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 86) = 1;
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

    *(result + 86) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2143C90F4(uint64_t a1)
{
  sub_2143C9188(319);
  if (v1 <= 0x3F)
  {
    sub_2143C91E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143C9188(uint64_t a1)
{
  if (!qword_280B30A50)
  {
    type metadata accessor for IntroBalloon(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B30A50);
    }
  }
}

void sub_2143C91E0(uint64_t a1)
{
  if (!qword_27C9127A8)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906920, &qword_214738410);
    v5 = type metadata accessor for Validated(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27C9127A8);
    }
  }
}

uint64_t sub_2143C927C(uint64_t a1)
{
  result = type metadata accessor for DigitalTouchHeader(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2143C9310(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143C9358(uint64_t result, int a2, int a3)
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

unint64_t sub_2143C93C0()
{
  result = qword_27C9127B0;
  if (!qword_27C9127B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessage.MediaType, &type metadata for VideoMessage.MediaType, v0, v1);
    atomic_store(result, &qword_27C9127B0);
  }

  return result;
}

unint64_t sub_2143C9460@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2143C9580@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143C95D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_i64[0];
  v7 = v1[3].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u64[1] = v4;
  v1[4].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143C9640()
{
  if (*(v0 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);

    return v1;
  }

  return result;
}

uint64_t sub_2143C96CC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2143C9708(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2143C9744(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_2143C9780(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_2143C97EC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2143C981C()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_2143C984C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void sub_2143C98A4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 32);
  v8 = *(v2 + 64);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 48), *(v2 + 56));

    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143C99E8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 48);
  *(v3 + 24) = v5;
  v6 = *(v1 + 56);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214030A78;
  }

  return result;
}

void (*sub_2143C9AC0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214030E84;
}

uint64_t sub_2143C9B60()
{
  v1 = *(v0 + 72);

  return v1;
}

void sub_2143C9B90(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_2143C9BF4(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_2143C9C30(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

__n128 sub_2143C9C60@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 152);
  result = *(v1 + 162);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_2143C9C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v2;
  *(v1 + 152) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 162) = result;
  return result;
}

uint64_t sub_2143C9D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_2143C9D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143C9DD8(uint64_t result, int a2, int a3)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2143C9E74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2143C9EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2143C9F2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t BasicTapBack.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 BasicTapBack.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t BasicTapBack.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

BlastDoor::BasicTapBack::AssociatedMessageType_optional __swiftcall BasicTapBack.AssociatedMessageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 2999)
  {
    if (rawValue <= 2002)
    {
      switch(rawValue)
      {
        case 2000:
          *v1 = 0;
          return rawValue;
        case 2001:
          *v1 = 1;
          return rawValue;
        case 2002:
          *v1 = 2;
          return rawValue;
      }
    }

    else
    {
      if (rawValue <= 2004)
      {
        if (rawValue == 2003)
        {
          *v1 = 3;
        }

        else
        {
          *v1 = 4;
        }

        return rawValue;
      }

      if (rawValue == 2005)
      {
        *v1 = 5;
        return rawValue;
      }

      if (rawValue == 2006)
      {
        *v1 = 6;
        return rawValue;
      }
    }

LABEL_31:
    *v1 = 14;
    return rawValue;
  }

  if (rawValue <= 3002)
  {
    if (rawValue == 3000)
    {
      *v1 = 7;
    }

    else if (rawValue == 3001)
    {
      *v1 = 8;
    }

    else
    {
      *v1 = 9;
    }
  }

  else
  {
    if (rawValue > 3004)
    {
      if (rawValue == 3005)
      {
        *v1 = 12;
        return rawValue;
      }

      if (rawValue == 3006)
      {
        *v1 = 13;
        return rawValue;
      }

      goto LABEL_31;
    }

    if (rawValue == 3003)
    {
      *v1 = 10;
    }

    else
    {
      *v1 = 11;
    }
  }

  return rawValue;
}

uint64_t sub_2143CA324()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738A70[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2143CA3AC(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738A70[v2]);
  return sub_2146DA9B8();
}

uint64_t BasicTapBack.associatedMessageGUID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void BasicTapBack.associatedMessageGUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t BasicTapBack.associatedMessageFallbackHash.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void BasicTapBack.associatedMessageFallbackHash.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t BasicTapBack.associatedMessageRange.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

void BasicTapBack.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 56);
  v6 = *(v1 + 80);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 72) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*BasicTapBack.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*BasicTapBack.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

BlastDoor::BasicTapBack::MessageSummaryInfo::AssociatedMessageMessageSummaryInfoTypeContentType __swiftcall BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType.init(defaultingRawValue:)(Swift::Int_optional defaultingRawValue)
{
  v2 = defaultingRawValue.value == 1;
  if (defaultingRawValue.value == 3)
  {
    v2 = 2;
  }

  if (defaultingRawValue.is_nil)
  {
    v2 = 0;
  }

  *v1 = v2;
  return defaultingRawValue.value;
}

BlastDoor::BasicTapBack::MessageSummaryInfo::AssociatedMessageMessageSummaryInfoTypeContentType_optional __swiftcall BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2030100u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2143CA92C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738AE0[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2143CA9B4(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738AE0[v2]);
  return sub_2146DA9B8();
}

uint64_t BasicTapBack.MessageSummaryInfo.summary.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void BasicTapBack.MessageSummaryInfo.summary.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t BasicTapBack.messageSummaryInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2142E597C(v2, v3, v4);
}

__n128 BasicTapBack.messageSummaryInfo.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_2142E58B8(v1[11], v1[12], v1[13]);
  result = v4;
  *(v1 + 11) = v4;
  v1[13] = v2;
  return result;
}

uint64_t BasicTapBack.plainTextBody.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void BasicTapBack.plainTextBody.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t BasicTapBack.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0x7061546369736142, 0xEC0000006B636142);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v1, v2);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2143CADA8()
{
  result = qword_27C9127B8;
  if (!qword_27C9127B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.AssociatedMessageType, &type metadata for BasicTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9127B8);
  }

  return result;
}

unint64_t sub_2143CAE2C()
{
  result = qword_27C9127C0;
  if (!qword_27C9127C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType, &type metadata for BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType, v0, v1);
    atomic_store(result, &qword_27C9127C0);
  }

  return result;
}

uint64_t sub_2143CAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143CAF44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143CAF8C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2143CB02C()
{
  result = qword_27C9127C8;
  if (!qword_27C9127C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType, &type metadata for BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType, v0, v1);
    atomic_store(result, &qword_27C9127C8);
  }

  return result;
}

unint64_t sub_2143CB080()
{
  result = qword_27C9127D0;
  if (!qword_27C9127D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.AssociatedMessageType, &type metadata for BasicTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9127D0);
  }

  return result;
}

uint64_t sub_2143CB0D4()
{
  sub_2143CB17C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t SharedETATrip.bridgedToObjectiveC.getter()
{
  sub_2143CB17C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143CB17C()
{
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v20 = v0[5];
  v21 = v1;
  v22 = v2;
  v23 = *(v0 + 128);
  v4 = v0[3];
  v17 = v0[2];
  v18 = v4;
  v19 = v3;
  v5 = v0[1];
  v15 = *v0;
  v16 = v5;
  sub_21431F3BC();
  v6 = sub_2146D87B8();
  v8 = v7;
  v9 = MEMORY[0x277D84F98];
  v14 = MEMORY[0x277D84F98];
  if (v7 >> 60 == 15)
  {
    sub_2144AEF6C(0xD000000000000010, 0x800000021478BC50, v13);

    sub_2143CB438(v13);
    return v14;
  }

  else
  {
    *(&v16 + 1) = MEMORY[0x277CC9318];
    *&v15 = v6;
    *(&v15 + 1) = v7;
    v11 = v6;
    sub_213FDC730(&v15, v13);
    sub_21402D9F8(v11, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v13, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);

    sub_213FDC6BC(v11, v8);
    return v9;
  }
}

unint64_t sub_2143CB318(uint64_t a1)
{
  *(a1 + 8) = sub_21431FBF0();
  result = sub_21431F3BC();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2143CB37C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143CB3C4(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143CB438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913170, &qword_2146EAB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143CB4A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result;
  if (result == 106 && a2 == 0xE100000000000000 || (result = sub_2146DA6A8(), (result & 1) != 0))
  {
    *a3 = 0;
  }

  else if (v4 == 108 && a2 == 0xE100000000000000 || (result = sub_2146DA6A8(), (result & 1) != 0))
  {
    *a3 = 1;
  }

  else
  {
    sub_2143CB57C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2143CB57C()
{
  result = qword_27C9127D8;
  if (!qword_27C9127D8)
  {
    result = swift_getWitnessTable(byte_214738E80, &type metadata for SharedETASessionMessage.SessionMessageTypeNotSupported, v0, v1);
    atomic_store(result, &qword_27C9127D8);
  }

  return result;
}

uint64_t sub_2143CB5D0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2143CB6A4()
{
  sub_2143CB774();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143CB70C()
{
  sub_2143CB774();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143CB774()
{
  if (*v0)
  {
    v7 = MEMORY[0x277D837D0];
    v1 = 108;
  }

  else
  {
    v7 = MEMORY[0x277D837D0];
    v1 = 106;
  }

  *&v6 = v1;
  *(&v6 + 1) = 0xE100000000000000;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x4B646E616D6D6F63, 0xEA00000000007965, isUniquelyReferenced_nonNull_native);
  return v2;
}

unint64_t sub_2143CB820()
{
  result = qword_27C9127E0;
  if (!qword_27C9127E0)
  {
    result = swift_getWitnessTable(asc_214738CA0, &type metadata for SharedETASessionMessage, v0, v1);
    atomic_store(result, &qword_27C9127E0);
  }

  return result;
}

uint64_t sub_2143CB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143CB938()
{
  result = qword_27C9127E8;
  if (!qword_27C9127E8)
  {
    result = swift_getWitnessTable(byte_214738D08, &type metadata for SharedETASessionMessage, v0, v1);
    atomic_store(result, &qword_27C9127E8);
  }

  return result;
}

uint64_t sub_2143CB98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = sub_2146D9D38();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v3);
  v10 = *(v5 - 8);
  result = (*(v10 + 48))(v8, 1, v5);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v8, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_2143CBAC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_2146D9D38();
  (*(*(v5 - 8) + 8))(v2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 32))(v2, a1, v4);
  v6 = *(v8 + 56);

  return v6(v2, 0, 1, v4);
}

uint64_t sub_2143CBBDC(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t sub_2143CBC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  (*(v8 + 16))(&v12 - v6);
  v10 = type metadata accessor for Encoded(0, v4, v5, v9);
  return sub_2143CBAC0(v7, v10);
}

void (*sub_2143CBD68(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  sub_2143CB98C(a2, v11);
  return sub_2143CBE74;
}

void sub_2143CBE74(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_2143CBAC0(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_2143CBAC0((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2143CBF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Encoded(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return sub_2143CBBDC(v7, v5);
}

void (*sub_2143CC008(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_2143CC12C;
}

void sub_2143CC12C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2143CC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_2143CC338(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t sub_2143CC3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  v9 = *(type metadata accessor for Encoded(0, a2, a3, v8) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 32);

  return v11(a4 + v9, a1, AssociatedTypeWitness);
}

uint64_t sub_2143CC4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2143CC5B0(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 0x676E69646F636E65;
  }
}

uint64_t sub_2143CC5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143CC4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2143CC620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_214739048, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2143CC674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_214739048, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2143CC6C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = AssociatedTypeWitness;
  v12 = sub_2146DA258();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v45 - v15;
  v62 = swift_getAssociatedTypeWitness();
  v55 = *(v62 - 8);
  v16 = MEMORY[0x28223BE20](v62);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v45 - v18;
  v20 = type metadata accessor for Encoded.CodingKeys(255, a2, a3, v19);
  swift_getWitnessTable(byte_214739048, v20);
  v60 = sub_2146DA258();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v22 = &v45 - v21;
  v24 = type metadata accessor for Encoded(0, a2, a3, v23);
  v46 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v47 = v7;
  v25 = *(v7 + 56);
  v65 = &v45 - v26;
  v25();
  v27 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = v63;
  sub_2146DAA08();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    v31 = sub_2146D9D38();
    return (*(*(v31 - 8) + 8))(v65, v31);
  }

  else
  {
    v63 = v24;
    v29 = v22;
    v30 = v59;
    v67 = 0;
    swift_getAssociatedConformanceWitness();
    sub_2146DA1C8();
    v45 = a3;
    v66 = 1;
    sub_2146DA0B8();
    v57 = v29;
    v32 = v51;
    (*(v53 + 16))(v51, v30, v54);
    v33 = v55;
    v34 = v50;
    v36 = v61;
    v35 = v62;
    AssociatedConformanceWitness = *(v55 + 16);
    AssociatedConformanceWitness(v50, v61, v62);
    v37 = v52;
    (*(v45 + 48))(v32, v34, a2);
    v38 = v63;
    AssociatedConformanceWitness(&v65[*(v63 + 36)], v36, v35);
    v39 = v47;
    v40 = v48;
    (*(v47 + 16))(v48, v37, a2);
    v41 = v40;
    v42 = v65;
    sub_2143CBAC0(v41, v38);
    (*(v39 + 8))(v37, a2);
    (*(v53 + 8))(v59, v54);
    (*(v33 + 8))(v36, v35);
    (*(v58 + 8))(v57, v60);
    v43 = v46;
    (*(v46 + 16))(v49, v42, v38);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return (*(v43 + 8))(v42, v38);
  }
}

uint64_t sub_2143CCDD8(void *a1, uint64_t a2)
{
  v38 = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = AssociatedTypeWitness;
  v6 = sub_2146DA3F8();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v36 = &v29 - v8;
  v46 = *(v3 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v37 = v4;
  v44 = swift_getAssociatedTypeWitness();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v29 - v13;
  v16 = type metadata accessor for Encoded.CodingKeys(255, v3, v4, v15);
  swift_getWitnessTable(byte_214739048, v16);
  v45 = sub_2146DA3F8();
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v18 = &v29 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v38;
  v19 = v39;
  v21 = v37;
  sub_2146DAA28();
  sub_2143CB98C(v20, v12);
  (*(v21 + 64))(v19 + *(v20 + 36), v3, v21);
  v22 = *(v46 + 8);
  v23 = v12;
  v24 = v44;
  v46 += 8;
  v22(v23, v3);
  v48 = 0;
  swift_getAssociatedConformanceWitness();
  v41 = v14;
  v25 = v43;
  sub_2146DA388();
  if (v25)
  {
    (*(v42 + 8))(v41, v24);
    return (*(v40 + 8))(v18, v45);
  }

  else
  {
    v30 = v22;
    v47 = 1;
    v27 = v36;
    v43 = v18;
    sub_2146DA288();
    sub_2143CB98C(v20, v35);
    v28 = v41;
    (*(v21 + 56))(v27, v41, v3, v21);
    v30(v35, v3);
    (*(v33 + 8))(v36, v34);
    (*(v42 + 8))(v28, v44);
    return (*(v40 + 8))(v43, v45);
  }
}

uint64_t sub_2143CD38C(uint64_t a1)
{
  result = sub_2146D9D38();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2143CD430(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = (v15 & ~v13) + *(*(AssociatedTypeWitness - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v8 >= v11)
        {
          v25 = (*(v6 + 48))(a1, v7, v5);
          if (v25 >= 2)
          {
            return v25 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v23 = *(v10 + 48);

          return v23((a1 + v15) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_2143CD6A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v9)
  {
    v15 = *(v8 + 64);
  }

  else
  {
    v15 = *(v8 + 64) + 1;
  }

  v16 = *(v12 + 80);
  v17 = ((v15 + v16) & ~v16) + *(v12 + 64);
  if (a3 <= v14)
  {
    goto LABEL_21;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v11 = 4;
      if (v14 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }

LABEL_21:
    if (v14 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v11 = 1;
  if (v14 >= a2)
  {
LABEL_31:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v17] = 0;
    }

    else if (v11)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v10 >= v13)
      {
        if (v10 >= a2)
        {
          v27 = *(v28 + 56);

          v27(a1, (a2 + 1), v9, v7);
        }

        else
        {
          if (v15 <= 3)
          {
            v24 = ~(-1 << (8 * v15));
          }

          else
          {
            v24 = -1;
          }

          if (v15)
          {
            v25 = v24 & (~v10 + a2);
            if (v15 <= 3)
            {
              v26 = v15;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v15);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }
      }

      else
      {
        v23 = *(v12 + 56);

        v23(&a1[v15 + v16] & ~v16, a2);
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_22:
  v20 = ~v14 + a2;
  if (v17 >= 4)
  {
    bzero(a1, v17);
    *a1 = v20;
    v21 = 1;
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_59:
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_59;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v11 > 1)
    {
LABEL_63:
      if (v11 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v11 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v11)
  {
    a1[v17] = v21;
  }
}

unint64_t sub_2143CDAA0(uint64_t a1)
{
  *(a1 + 8) = sub_21431E8C4();
  result = sub_21431DD58();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143CDB14(uint64_t a1)
{
  *(a1 + 8) = sub_2143CDBC8(&qword_27C9127F0, protocol conformance descriptor for PlayedReceipt);
  result = sub_2143CDBC8(&qword_27C9127F8, protocol conformance descriptor for PlayedReceipt);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PlayedReceipt(uint64_t a1)
{
  result = qword_280B30980;
  if (!qword_280B30980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2143CDBC8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for PlayedReceipt(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143CDC34@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903160 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DF0);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2143D1848(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SwiftRegexValidator);
  *(v8 + 16) = sub_2143D3FAC;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2143D1848(v4, v13 + v9, type metadata accessor for SwiftRegexValidator);
  *(v12 + 16) = sub_2143D3FAC;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF60;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF94;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

unint64_t sub_2143CDF98@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903160 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DF0);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2143D1848(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SwiftRegexValidator);
  *(v8 + 16) = sub_214302808;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2143D1848(v4, v13 + v9, type metadata accessor for SwiftRegexValidator);
  *(v12 + 16) = sub_2143D3FAC;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF28;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF54;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

unint64_t sub_2143CE308@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t CPIMMessage.NamespaceHeader.$namePrefix.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CPIMMessage.NamespaceHeader.$namePrefix.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t CPIMMessage.NamespaceHeader.namePrefix.getter()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t _s9BlastDoor11CPIMMessageV10FromHeaderV16_sourceURIStringAA9UntrustedVySSGvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 _s9BlastDoor11CPIMMessageV10FromHeaderV16_sourceURIStringAA9UntrustedVySSGvs_0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t _s9BlastDoor11CPIMMessageV10FromHeaderV15sourceURIStringSSvg_0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t CPIMMessage.MlsEraIdHeader.$eraId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 CPIMMessage.MlsEraIdHeader.$eraId.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t CPIMMessage.MlsEraIdHeader.eraId.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*CPIMMessage.ToHeader.destinationURIString.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.ToHeader.$destinationURIString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*CPIMMessage.FromHeader.sourceURIString.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.FromHeader.$sourceURIString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t CPIMMessage.DateTimeHeader.dateTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CPIMMessage.DateTimeHeader.dateTime.setter(uint64_t a1)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void CPIMMessage.NamespaceHeader.namePrefix.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*CPIMMessage.NamespaceHeader.namePrefix.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*CPIMMessage.NamespaceHeader.$namePrefix.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t CPIMMessage.NamespaceHeader.namespaceURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CPIMMessage.NamespaceHeader(0) + 20);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CPIMMessage.NamespaceHeader.namespaceURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CPIMMessage.NamespaceHeader(0) + 20);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*CPIMMessage.IMDNMessageIDHeader.messageID.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.IMDNMessageIDHeader.$messageID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

BlastDoor::CPIMMessage::IMDNDispositionNotificationHeader::NotifyRequirement_optional __swiftcall CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x69737365636F7270;
  v3 = 0x79616C70736964;
  if (v1 != 3)
  {
    v3 = 0x726F777265746E69;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2143CF138()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143CF230(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143CF314(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143CF414(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x69737365636F7270;
  v5 = 0xE700000000000000;
  v6 = 0x79616C70736964;
  if (v2 != 3)
  {
    v6 = 0x726F777265746E69;
    v5 = 0xEC000000676E696BLL;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x8000000214787700;
  if (*v1)
  {
    v7 = 0x8000000214787720;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v8;
  a1[1] = v3;
}

BlastDoor::CPIMMessage::RCSAdvisedAction_optional __swiftcall CPIMMessage.RCSAdvisedAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

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

  *v2 = v5;
  return result;
}

uint64_t CPIMMessage.RCSAdvisedAction.rawValue.getter()
{
  if (*v0)
  {
    return 1701079400;
  }

  else
  {
    return 1852989815;
  }
}

uint64_t sub_2143CF654(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1701079400;
  }

  else
  {
    v2 = 1852989815;
  }

  if (*a2)
  {
    v3 = 1701079400;
  }

  else
  {
    v3 = 1852989815;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2143CF6CC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143CF734(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143CF780(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143CF7E4(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2143CF844(uint64_t *a1@<X8>)
{
  v2 = 1852989815;
  if (*v1)
  {
    v2 = 1701079400;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t (*CPIMMessage.MlsDerivedContentSignatureHeader.derivedContentSignature.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.MlsDerivedContentSignatureHeader.$derivedContentSignature.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t (*CPIMMessage.MlsEpochAuthenticatorHeader.epochAuthenticator.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.MlsEpochAuthenticatorHeader.$epochAuthenticator.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2143CFB84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *a2 = *(a1 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_2143CFBF4(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void _s9BlastDoor11CPIMMessageV10FromHeaderV15sourceURIStringSSvs_0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*CPIMMessage.MlsOriginalMessageIdHeader.originalMessageId.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143CFE84(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *v3;
    v10 = *(v3 + 32);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 16) = v4;
      *(v3 + 24) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *v3;
  v10 = *(v3 + 32);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 16) = v4;
  *(v3 + 24) = v2;
}

uint64_t sub_2143D00A4(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
}

uint64_t (*CPIMMessage.MlsOriginalMessageIdHeader.$originalMessageId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2143D01AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t sub_2143D027C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

uint64_t (*CPIMMessage.MlsEraIdHeader.eraId.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

uint64_t sub_2143D038C(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
}

void (*CPIMMessage.MlsEraIdHeader.$eraId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

void sub_2143D0480(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
  }

  free(v2);
}

BlastDoor::CPIMMessage::Namespace_optional __swiftcall CPIMMessage.Namespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CPIMMessage.Namespace.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2143D05EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "urn:ietf:params:imdn";
  v4 = 0xD000000000000017;
  if (v2 == 1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v2 == 1)
  {
    v6 = "urn:ietf:params:imdn";
  }

  else
  {
    v6 = "http://www.gsma.com/rcs";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "positive-delivery";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = "http://www.gsma.com/rcs";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "positive-delivery";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2143D06C4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143D0760(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143D07E8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143D088C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "urn:ietf:params:imdn";
  v4 = 0xD000000000000017;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = "http://www.gsma.com/rcs";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "positive-delivery";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

BlastDoor::CPIMMessage::EncapsulatedMessage::ContentType_optional __swiftcall CPIMMessage.EncapsulatedMessage.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v2 = 0x2F6567617373656DLL;
    v5 = 0xD000000000000016;
    if (v1 != 10)
    {
      v5 = 0xD000000000000019;
    }

    if (v1 != 9)
    {
      v2 = v5;
    }

    v3 = 0xD00000000000001ELL;
    v6 = 0xD000000000000010;
    if (v1 != 7)
    {
      v6 = 0xD00000000000001FLL;
    }

    if (v1 != 6)
    {
      v3 = v6;
    }

    v4 = *v0 <= 8u;
  }

  else
  {
    v2 = 0x616C702F74786574;
    if (v1 == 4)
    {
      v2 = 0xD000000000000024;
    }

    if (v1 == 3)
    {
      v2 = 0xD000000000000029;
    }

    v3 = 0xD00000000000002CLL;
    if (v1 == 1)
    {
      v3 = 0xD000000000000025;
    }

    if (!*v0)
    {
      v3 = 0xD000000000000028;
    }

    v4 = *v0 <= 2u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2143D0AF8()
{
  v0 = CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  v2 = v1;
  if (v0 == CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_2143D0B94()
{
  sub_2146DA958();
  CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143D0BFC(uint64_t a1)
{
  CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  sub_2146D9698();

  return result;
}

uint64_t sub_2143D0C60(uint64_t a1)
{
  sub_2146DA958();
  CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2143D0CD0@<X0>(unint64_t *a1@<X8>)
{
  result = CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void CPIMMessage.EncapsulatedMessage.TransferEncoding.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_2143D0E30()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2143D0E94(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_2143D0EE0(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

uint64_t sub_2143D1214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143D1314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t CPIMMessage.Header.toValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    v9 = *v6;
    v10 = *(v6 + 1);
    v8 = v6[32];
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  return result;
}

uint64_t CPIMMessage.Header.fromValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = v6[32];
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v10 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t CPIMMessage.Header.dateTimeValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2143D1848(v6, a1, type metadata accessor for CPIMMessage.DateTimeHeader);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v7 = 1;
  }

  v8 = type metadata accessor for CPIMMessage.DateTimeHeader(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t CPIMMessage.Header.namespaceValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2143D1848(v6, a1, type metadata accessor for CPIMMessage.NamespaceHeader);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v7 = 1;
  }

  v8 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_2143D1848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CPIMMessage.Header.imdnMessageIDValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = v6[32];
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v10 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t CPIMMessage.Header.imdnDispositionNotificationValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t CPIMMessage.Header.rcsAdviseActionValue.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v8 = 2;
  }

  *a1 = v8;
  return result;
}

uint64_t CPIMMessage.Header.mlsDerivedContentSignatureValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = v6[32];
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v10 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t CPIMMessage.Header.mlsEpochAuthenticatorValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = v6[32];
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v10 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t CPIMMessage.Header.mlsEraIdValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v8 = *v6;
    v9 = *(v6 + 2);
    v10 = v6[24] | (v6[25] << 8);
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Header);
    v9 = 0;
    v10 = 0;
    v8 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  return result;
}

uint64_t CPIMMessage.Content.messageValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.Content);
    v7 = 1;
  }

  else
  {
    sub_2143D1848(v6, a1, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    v7 = 0;
  }

  v8 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_2143D1FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CPIMMessage.Content.multipartMessageValue.getter()
{
  v1 = type metadata accessor for CPIMMessage.Content(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v0, v3, type metadata accessor for CPIMMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v3;
  }

  sub_2143D1FA0(v3, type metadata accessor for CPIMMessage.Content);
  return 0;
}

__n128 CPIMMessage.EncapsulatedMessage.Content.rcsPushLocationValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x1FFFFFF00FELL;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    v8 = *(v6 + 1);
    *a1 = *v6;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(v6 + 2);
    result = *(v6 + 42);
    *(a1 + 42) = result;
  }

  return result;
}

double CPIMMessage.EncapsulatedMessage.Content.cpmGroupData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(v6 + 3);
    *(a1 + 32) = *(v6 + 2);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(v6 + 32);
    v8 = *(v6 + 1);
    *a1 = *v6;
    *(a1 + 16) = v8;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    *&v8 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  return *&v8;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.botSuggestionValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2143D1848(v6, a1, type metadata accessor for Chatbot.RootMessage);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.RootMessage(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.botMessageValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2143D1848(v6, a1, type metadata accessor for Chatbot.RootMessage);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.RootMessage(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.fileTransferValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_2143D1848(v6, a1, type metadata accessor for RCSFileTransferInfo);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v7 = 1;
  }

  v8 = type metadata accessor for RCSFileTransferInfo(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.textPlainValue.getter()
{
  v1 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v0, v3, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    return *v3;
  }

  sub_2143D1FA0(v3, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  return 0;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.composingIndicatorValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_2143D1848(v6, a1, type metadata accessor for IMCompositionIndication);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v7 = 1;
  }

  v8 = type metadata accessor for IMCompositionIndication(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.imdnValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_2143D1848(v6, a1, type metadata accessor for IMDispositionNotification);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v7 = 1;
  }

  v8 = type metadata accessor for IMDispositionNotification(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.conferenceInfoValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_2143D1848(v6, a1, type metadata accessor for SIPConferenceInfo);
    v7 = 0;
  }

  else
  {
    sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v7 = 1;
  }

  v8 = type metadata accessor for SIPConferenceInfo(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_2143D2B2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_2143D1214(v7, &v16 - v10, a2);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v13 = *v11;
    v14 = *(v11 + 1);
    v15 = v11[32];
  }

  else
  {
    result = sub_2143D1FA0(v11, a3);
    v15 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a4 = v13;
  *(a4 + 16) = v14;
  *(a4 + 32) = v15;
  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.serverMLSRCSContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = v6[32];
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v10 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.mlsFileTransfer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  result = swift_getEnumCaseMultiPayload();
  if (result == 11)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = v6[32];
  }

  else
  {
    result = sub_2143D1FA0(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v10 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_2143D2E3C(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90D3F8, type metadata accessor for CPIMMessage.DateTimeHeader, protocol conformance descriptor for CPIMMessage.DateTimeHeader);
  result = sub_2143D2EC0(&qword_27C90D390, type metadata accessor for CPIMMessage.DateTimeHeader, protocol conformance descriptor for CPIMMessage.DateTimeHeader);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143D2EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143D2F08(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90D3F0, type metadata accessor for CPIMMessage.NamespaceHeader, protocol conformance descriptor for CPIMMessage.NamespaceHeader);
  result = sub_2143D2EC0(&qword_27C90D388, type metadata accessor for CPIMMessage.NamespaceHeader, protocol conformance descriptor for CPIMMessage.NamespaceHeader);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D2FBC()
{
  result = qword_27C912800;
  if (!qword_27C912800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement, &type metadata for CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement, v0, v1);
    atomic_store(result, &qword_27C912800);
  }

  return result;
}

unint64_t sub_2143D3040()
{
  result = qword_27C912808;
  if (!qword_27C912808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.RCSAdvisedAction, &type metadata for CPIMMessage.RCSAdvisedAction, v0, v1);
    atomic_store(result, &qword_27C912808);
  }

  return result;
}

uint64_t sub_2143D3144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D3184()
{
  result = qword_27C912810;
  if (!qword_27C912810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.Namespace, &type metadata for CPIMMessage.Namespace, v0, v1);
    atomic_store(result, &qword_27C912810);
  }

  return result;
}

uint64_t sub_2143D3208(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C908F20, type metadata accessor for CPIMMessage.Header, protocol conformance descriptor for CPIMMessage.Header);
  result = sub_2143D2EC0(&qword_27C908F40, type metadata accessor for CPIMMessage.Header, protocol conformance descriptor for CPIMMessage.Header);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D3290()
{
  result = qword_27C912828;
  if (!qword_27C912828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.ContentType, &type metadata for CPIMMessage.EncapsulatedMessage.ContentType, v0, v1);
    atomic_store(result, &qword_27C912828);
  }

  return result;
}

uint64_t sub_2143D3314(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90AE60, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.Content);
  result = sub_2143D2EC0(&qword_27C90AE78, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.Content);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D339C()
{
  result = qword_27C912840;
  if (!qword_27C912840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.TransferEncoding, &type metadata for CPIMMessage.EncapsulatedMessage.TransferEncoding, v0, v1);
    atomic_store(result, &qword_27C912840);
  }

  return result;
}

uint64_t sub_2143D3420(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90D520, type metadata accessor for CPIMMessage.EncapsulatedMessage, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage);
  result = sub_2143D2EC0(&qword_27C90D500, type metadata accessor for CPIMMessage.EncapsulatedMessage, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143D34A4(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C908F28, type metadata accessor for CPIMMessage.Content, protocol conformance descriptor for CPIMMessage.Content);
  result = sub_2143D2EC0(&qword_27C908F48, type metadata accessor for CPIMMessage.Content, protocol conformance descriptor for CPIMMessage.Content);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143D3528(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C912858, type metadata accessor for CPIMMessage, protocol conformance descriptor for CPIMMessage);
  result = sub_2143D2EC0(&qword_27C912860, type metadata accessor for CPIMMessage, protocol conformance descriptor for CPIMMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

void sub_2143D3624(uint64_t a1)
{
  sub_2143D3DA0(319, &qword_27C912878, type metadata accessor for CPIMMessage.Header);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CPIMMessage.Content(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2143D370C(uint64_t a1)
{
  result = sub_2146D8B08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_2143D38F8(uint64_t a1)
{
  sub_214084AA4(319);
  if (v1 <= 0x3F)
  {
    sub_2146D8958();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2143D39DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143D3A24(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2143D3A98(uint64_t a1)
{
  result = type metadata accessor for CPIMMessage.DateTimeHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CPIMMessage.NamespaceHeader(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2143D3B8C(uint64_t a1)
{
  result = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2143D3C18(uint64_t a1)
{
  result = type metadata accessor for Chatbot.RootMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RCSFileTransferInfo(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for IMCompositionIndication(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for IMDispositionNotification(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SIPConferenceInfo(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_2143D3D10(uint64_t a1)
{
  type metadata accessor for CPIMMessage.EncapsulatedMessage(319);
  if (v1 <= 0x3F)
  {
    sub_2143D3DA0(319, &qword_27C9128E0, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2143D3DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9978();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2143D3DF4()
{
  result = qword_27C9128E8;
  if (!qword_27C9128E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.TransferEncoding, &type metadata for CPIMMessage.EncapsulatedMessage.TransferEncoding, v0, v1);
    atomic_store(result, &qword_27C9128E8);
  }

  return result;
}

unint64_t sub_2143D3E48()
{
  result = qword_27C9128F0;
  if (!qword_27C9128F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.ContentType, &type metadata for CPIMMessage.EncapsulatedMessage.ContentType, v0, v1);
    atomic_store(result, &qword_27C9128F0);
  }

  return result;
}

unint64_t sub_2143D3E9C()
{
  result = qword_27C9128F8;
  if (!qword_27C9128F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.RCSAdvisedAction, &type metadata for CPIMMessage.RCSAdvisedAction, v0, v1);
    atomic_store(result, &qword_27C9128F8);
  }

  return result;
}

unint64_t sub_2143D3EF0()
{
  result = qword_27C912900;
  if (!qword_27C912900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement, &type metadata for CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement, v0, v1);
    atomic_store(result, &qword_27C912900);
  }

  return result;
}

uint64_t sub_2143D3FB0(uint64_t a1)
{
  v4 = v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21409A9C0;

  return sub_2143D4060(a1, v4);
}

uint64_t sub_2143D4060(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = _s5CodecVMa(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2143D412C, 0, 0);
}

uint64_t sub_2143D412C()
{
  *(v0 + 208) = [*(v0 + 144) trackID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912958, &unk_214739C60);
  v1 = sub_2146D8B98();
  *(v0 + 184) = v1;
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_2143D420C;

  return MEMORY[0x2821FAF00](v0 + 120, v1, 0, 0);
}

uint64_t sub_2143D420C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2143D4734;
  }

  else
  {

    v2 = sub_2143D4328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_2143D4328()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    v20 = *(v0 + 120);
    v2 = sub_2146DA028();
    v1 = v20;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v21 = *(v0 + 144);

    v8 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = v1;
  v26 = MEMORY[0x277D84F90];
  result = sub_21409FE08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = v26;
  v9 = v3;
  v24 = v3 & 0xC000000000000001;
  v25 = v3;
  do
  {
    if (v24)
    {
      v10 = MEMORY[0x216054E00](v5, v9);
    }

    else
    {
      v10 = *(v9 + 8 * v5 + 32);
    }

    v11 = v10;
    sub_2146D9CA8();
    v12 = CMFormatDescriptionGetExtensions(v11);
    if (v12)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_2146D9478();
      }

      v12 = 0;
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = (v13 + *(v6 + 20));
    *v15 = v12;
    v15[1] = 0;
    sub_2146D9C98();

    sub_2143DA580(v13, v14, _s5CodecVMa);
    v17 = *(v26 + 16);
    v16 = *(v26 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_21409FE08((v16 > 1), v17 + 1, 1);
    }

    v18 = *(v0 + 176);
    ++v5;
    *(v26 + 16) = v17 + 1;
    sub_2143DA580(v18, v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, _s5CodecVMa);
    v9 = v25;
  }

  while (v2 != v5);
  v19 = *(v0 + 144);

LABEL_19:
  v22 = *(v0 + 136);
  *v22 = *(v0 + 208);
  *(v22 + 8) = v8;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2143D4734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2143D47C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D9C68();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2143D4828()
{
  v1 = *(v0 + *(_s5CodecVMa(0) + 20));

  return v1;
}

uint64_t _s5CodecVMa(uint64_t a1)
{
  result = qword_27C912940;
  if (!qword_27C912940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2143D48B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s5CodecVMa(0) + 24);
  v4 = sub_2146D9C88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2143D4930()
{
  v0 = sub_2146D86D8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  __swift_allocate_value_buffer(v5, qword_27C912908);
  __swift_project_value_buffer(v0, qword_27C912908);
  sub_2146D8658();
  sub_2146D8688();
  sub_2146D8698();
  v8 = *(v1 + 8);
  v8(v4, v0);
  return (v8)(v7, v0);
}

uint64_t sub_2143D4A6C(uint64_t a1)
{
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8], MEMORY[0x277D850F0]);
  sub_2146D94E8();
  if (*(v1 + *(_s5CodecVMa(0) + 20) + 8))
  {
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100], MEMORY[0x277D85108]);
  return sub_2146D94E8();
}

uint64_t sub_2143D4B94()
{
  sub_2146DA958();
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8], MEMORY[0x277D850F0]);
  sub_2146D94E8();
  if (*(v0 + *(_s5CodecVMa(0) + 20) + 8))
  {
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100], MEMORY[0x277D85108]);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_2143D4CD4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8], MEMORY[0x277D850F0]);
  sub_2146D94E8();
  if (*(v1 + *(a1 + 20) + 8))
  {
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100], MEMORY[0x277D85108]);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_2143D4E0C(uint64_t a1, uint64_t a2)
{
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8], MEMORY[0x277D850F0]);
  sub_2146D94E8();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100], MEMORY[0x277D85108]);
  return sub_2146D94E8();
}

uint64_t sub_2143D4F2C(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8], MEMORY[0x277D850F0]);
  sub_2146D94E8();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100], MEMORY[0x277D85108]);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

BOOL sub_2143D5098(uint64_t a1, uint64_t a2)
{
  v4 = _s5CodecVMa(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v22 = *(v8 + 72);
    while (1)
    {
      sub_2143DA4B8(v13, v10, _s5CodecVMa);
      sub_2143DA4B8(v14, v7, _s5CodecVMa);
      sub_2146D9C68();
      sub_2143DA5E8(&qword_27C9054F8, MEMORY[0x277D850E8], MEMORY[0x277D850F8]);
      sub_2146D97C8();
      sub_2146D97C8();
      if (v24 != v23)
      {
        break;
      }

      v15 = *(v4 + 20);
      v16 = &v10[v15];
      v17 = *&v10[v15 + 8];
      v18 = &v7[v15];
      v19 = *(v18 + 1);
      if (v17)
      {
        if (!v19)
        {
          break;
        }

        v20 = *v16 == *v18 && v17 == v19;
        if (!v20 && (sub_2146DA6A8() & 1) == 0)
        {
          break;
        }
      }

      else if (v19)
      {
        break;
      }

      sub_2146D9C88();
      sub_2143DA5E8(&qword_27C912950, MEMORY[0x277D85100], MEMORY[0x277D85110]);
      sub_2146D97C8();
      sub_2146D97C8();
      sub_2143DA520(v7, _s5CodecVMa);
      sub_2143DA520(v10, _s5CodecVMa);
      result = v24 == v23;
      if (v24 == v23)
      {
        v14 += v22;
        v13 += v22;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }

    sub_2143DA520(v7, _s5CodecVMa);
    sub_2143DA520(v10, _s5CodecVMa);
  }

  return 0;
}

uint64_t sub_2143D53BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2146DA6A8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2143D544C(uint64_t a1, uint64_t a2)
{
  v66[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v58 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_85;
  }

  if (!v11 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  v62 = 0;
  v63 = v15;
  v64 = v4;
  while (1)
  {
    sub_2143DA4B8(v13, v10, type metadata accessor for HealthSharingSetupInvitationToken);
    sub_2143DA4B8(v14, v7, type metadata accessor for HealthSharingSetupInvitationToken);
    v16 = *(v4 + 20);
    v17 = &v10[v16];
    v18 = *&v10[v16 + 8];
    v19 = &v7[v16];
    v20 = *(v19 + 1);
    if (v18)
    {
      if (!v20)
      {
        goto LABEL_84;
      }

      v21 = *v17 == *v19 && v18 == v20;
      if (!v21 && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v20)
    {
      goto LABEL_84;
    }

    v22 = *(v4 + 24);
    v23 = *&v10[v22];
    v24 = *&v10[v22 + 8];
    v25 = &v7[v22];
    v26 = *v25;
    v27 = v25[1];
    if (v24 >> 60 == 15)
    {
      if (v27 >> 60 != 15)
      {
        goto LABEL_81;
      }

      sub_213FDCA18(v23, v24);
      sub_213FDCA18(v26, v27);
      goto LABEL_52;
    }

    if (v27 >> 60 == 15)
    {
LABEL_81:
      sub_213FDCA18(v23, v24);
      sub_213FDCA18(v26, v27);
      sub_213FDC6BC(v23, v24);
      v55 = v26;
      v56 = v27;
      goto LABEL_83;
    }

    v28 = v24 >> 62;
    v29 = v27 >> 62;
    if (v24 >> 62 != 3)
    {
      break;
    }

    if (v23)
    {
      v30 = 0;
    }

    else
    {
      v30 = v24 == 0xC000000000000000;
    }

    v31 = 0;
    v32 = v30 && v27 >> 62 == 3;
    if (!v32 || v26 || v27 != 0xC000000000000000)
    {
      goto LABEL_39;
    }

    sub_213FDCA18(0, 0xC000000000000000);
    sub_213FDCA18(0, 0xC000000000000000);
    sub_213FDC6BC(0, 0xC000000000000000);
    v33 = 0;
    v34 = 0xC000000000000000;
LABEL_53:
    sub_213FDC6BC(v33, v34);
    v4 = v64;
LABEL_54:
    sub_2146D8DF8();
    sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = sub_2146D9578();
    sub_2143DA520(v7, type metadata accessor for HealthSharingSetupInvitationToken);
    sub_2143DA520(v10, type metadata accessor for HealthSharingSetupInvitationToken);
    if (v41)
    {
      v14 += v63;
      v13 += v63;
      if (--v11)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v40 = *(v23 + 16);
      v39 = *(v23 + 24);
      v37 = __OFSUB__(v39, v40);
      v31 = v39 - v40;
      if (v37)
      {
        goto LABEL_89;
      }

LABEL_39:
      if (v29 <= 1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = 0;
      if (v29 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_33:
    if (v29 == 2)
    {
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      v37 = __OFSUB__(v35, v36);
      v38 = v35 - v36;
      if (v37)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      goto LABEL_46;
    }

    if (v31)
    {
      goto LABEL_82;
    }

LABEL_51:
    sub_213FDCA18(v23, v24);
    sub_213FDCA18(v26, v27);
    sub_213FDC6BC(v26, v27);
LABEL_52:
    v33 = v23;
    v34 = v24;
    goto LABEL_53;
  }

  if (v28)
  {
    LODWORD(v31) = HIDWORD(v23) - v23;
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      goto LABEL_88;
    }

    v31 = v31;
    if (v29 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  v31 = BYTE6(v24);
  if (v29 > 1)
  {
    goto LABEL_33;
  }

LABEL_40:
  if (v29)
  {
    LODWORD(v38) = HIDWORD(v26) - v26;
    if (__OFSUB__(HIDWORD(v26), v26))
    {
      goto LABEL_87;
    }

    v38 = v38;
  }

  else
  {
    v38 = BYTE6(v27);
  }

LABEL_46:
  if (v31 == v38)
  {
    if (v31 >= 1)
    {
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          v42 = *(v23 + 16);
          v59 = *(v23 + 24);
          v60 = v42;
          sub_213FDCA18(v23, v24);
          v61 = v26;
          sub_213FDCA18(v26, v27);
          v43 = sub_2146D8728();
          if (v43)
          {
            v44 = v43;
            v45 = sub_2146D8758();
            v46 = v60;
            if (__OFSUB__(v60, v45))
            {
              goto LABEL_92;
            }

            v58 = v60 - v45 + v44;
          }

          else
          {
            v58 = 0;
            v46 = v60;
          }

          if (__OFSUB__(v59, v46))
          {
            goto LABEL_91;
          }

          sub_2146D8748();
          v52 = v58;
          goto LABEL_77;
        }

        memset(v66, 0, 14);
        sub_213FDCA18(v23, v24);
        sub_213FDCA18(v26, v27);
LABEL_71:
        v50 = v62;
        sub_2143D9A20(v66, v26, v27, &v65);
        v62 = v50;
        sub_213FDC6BC(v26, v27);
        v51 = v65;
      }

      else
      {
        if (!v28)
        {
          v66[0] = v23;
          LOWORD(v66[1]) = v24;
          BYTE2(v66[1]) = BYTE2(v24);
          BYTE3(v66[1]) = BYTE3(v24);
          BYTE4(v66[1]) = BYTE4(v24);
          BYTE5(v66[1]) = BYTE5(v24);
          sub_213FDCA18(v23, v24);
          sub_213FDCA18(v26, v27);
          goto LABEL_71;
        }

        v60 = (v23 >> 32) - v23;
        if (v23 >> 32 < v23)
        {
          goto LABEL_90;
        }

        sub_213FDCA18(v23, v24);
        v61 = v26;
        sub_213FDCA18(v26, v27);
        v47 = sub_2146D8728();
        if (v47)
        {
          v59 = v47;
          v48 = sub_2146D8758();
          if (__OFSUB__(v23, v48))
          {
            goto LABEL_93;
          }

          v49 = v23 - v48 + v59;
        }

        else
        {
          v49 = 0;
        }

        sub_2146D8748();
        v52 = v49;
LABEL_77:
        v53 = v61;
        v54 = v62;
        sub_2143D9A20(v52, v61, v27, v66);
        v62 = v54;
        sub_213FDC6BC(v53, v27);
        v51 = v66[0];
      }

      sub_213FDC6BC(v23, v24);
      v4 = v64;
      if ((v51 & 1) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_82:
  sub_213FDCA18(v23, v24);
  sub_213FDCA18(v26, v27);
  sub_213FDC6BC(v26, v27);
  v55 = v23;
  v56 = v24;
LABEL_83:
  sub_213FDC6BC(v55, v56);
LABEL_84:
  sub_2143DA520(v7, type metadata accessor for HealthSharingSetupInvitationToken);
  sub_2143DA520(v10, type metadata accessor for HealthSharingSetupInvitationToken);
LABEL_85:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_2143D5B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 96)
  {
    v4 = a1 + i;
    if (*(a1 + i + 57))
    {
      break;
    }

    v5 = a2 + i;
    if (*(a2 + i + 57))
    {
      break;
    }

    if (*(v4 + 56))
    {
      if ((*(v5 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v6 = 0;
      if ((*(v5 + 56) & 1) != 0 || *(v4 + 48) != *(v5 + 48))
      {
        return v6;
      }
    }

    if (*(v4 + 89) & 1) != 0 || (*(v5 + 89))
    {
      break;
    }

    if (*(v4 + 88))
    {
      if ((*(v5 + 88) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v6 = 0;
      if ((*(v5 + 88) & 1) != 0 || *(v4 + 80) != *(v5 + 80))
      {
        return v6;
      }
    }

    if (*(v4 + 121) & 1) != 0 || (*(v5 + 121))
    {
      break;
    }

    if (*(v4 + 120))
    {
      if ((*(v5 + 120) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v6 = 0;
      if ((*(v5 + 120) & 1) != 0 || *(v4 + 112) != *(v5 + 112))
      {
        return v6;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143D5CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  v12 = MEMORY[0x28223BE20](v65);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v52 - v15;
  v58 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  v16 = MEMORY[0x28223BE20](v58);
  v67 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v52 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = *(a1 + 16);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v63 = (v5 + 48);
  v54 = (v5 + 32);
  v55 = v14;
  v56 = (v5 + 8);
  v25 = *(v18 + 72);
  v52 = v11;
  v53 = v25;
  v26 = v60;
  v27 = v64;
  v28 = v21;
  v66 = v4;
  while (1)
  {
    result = sub_2143DA4B8(v23, v27, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    if (!v28)
    {
      break;
    }

    v61 = v28;
    v30 = v67;
    sub_2143DA4B8(v24, v67, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    v31 = *(v65 + 48);
    v32 = v27;
    sub_213FB2E54(v27, v26, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2E54(v30, v26 + v31, &qword_27C913090, &unk_2146E9DB0);
    v33 = *v63;
    v34 = (*v63)(v26, 1, v4);
    v62 = v24;
    if (v34 == 1)
    {
      if (v33(v26 + v31, 1, v4) != 1)
      {
        goto LABEL_23;
      }

      sub_213FB2DF4(v26, &qword_27C913090, &unk_2146E9DB0);
      v4 = v66;
    }

    else
    {
      v35 = v52;
      sub_213FB2E54(v26, v52, &qword_27C913090, &unk_2146E9DB0);
      if (v33(v26 + v31, 1, v4) == 1)
      {
        v51 = v35;
        goto LABEL_21;
      }

      v36 = v26 + v31;
      v37 = v57;
      (*v54)(v57, v36, v4);
      sub_2143DA5E8(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v38 = sub_2146D9578();
      v4 = v66;
      v39 = v38;
      v40 = *v56;
      v41 = v37;
      v26 = v60;
      (*v56)(v41, v66);
      v40(v35, v4);
      sub_213FB2DF4(v26, &qword_27C913090, &unk_2146E9DB0);
      v32 = v64;
      if ((v39 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v42 = *(v58 + 20);
    v43 = *(v65 + 48);
    v44 = v55;
    sub_213FB2E54(v32 + v42, v55, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2E54(v67 + v42, v44 + v43, &qword_27C913090, &unk_2146E9DB0);
    if (v33(v44, 1, v4) == 1)
    {
      if (v33(v44 + v43, 1, v4) != 1)
      {
        v26 = v44;
        v32 = v64;
        goto LABEL_23;
      }

      sub_213FB2DF4(v44, &qword_27C913090, &unk_2146E9DB0);
      sub_2143DA520(v67, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
      v27 = v64;
      sub_2143DA520(v64, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    }

    else
    {
      sub_213FB2E54(v44, v59, &qword_27C913090, &unk_2146E9DB0);
      if (v33(v44 + v43, 1, v4) == 1)
      {
        v51 = v59;
        v26 = v44;
LABEL_21:
        v32 = v64;
        (*v56)(v51, v4);
LABEL_23:
        sub_213FB2DF4(v26, &qword_27C913180, &qword_214739C58);
LABEL_24:
        sub_2143DA520(v67, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
        sub_2143DA520(v32, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
        return 0;
      }

      v45 = v57;
      (*v54)(v57, v44 + v43, v4);
      sub_2143DA5E8(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v46 = v59;
      v47 = sub_2146D9578();
      v4 = v66;
      v48 = v47;
      v49 = *v56;
      v50 = v45;
      v26 = v60;
      (*v56)(v50, v66);
      v49(v46, v4);
      sub_213FB2DF4(v44, &qword_27C913090, &unk_2146E9DB0);
      sub_2143DA520(v67, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
      v27 = v64;
      sub_2143DA520(v64, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }

    v24 = v62 + v53;
    v23 += v53;
    v28 = v61 - 1;
    if (v61 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2143D6458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2143DA4B8(v13, v10, type metadata accessor for CSDMHandleProto);
        sub_2143DA4B8(v14, v7, type metadata accessor for CSDMHandleProto);
        v16 = v4[5];
        v17 = v10[v16];
        v18 = v7[v16];
        if (v17 == 4)
        {
          if (v18 != 4)
          {
            goto LABEL_38;
          }
        }

        else if (v17 != v18)
        {
          goto LABEL_38;
        }

        v19 = v4[6];
        v20 = &v10[v19];
        v21 = *&v10[v19 + 8];
        v22 = &v7[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (!v23 || (*v20 == *v22 ? (v24 = v21 == v23) : (v24 = 0), !v24 && (sub_2146DA6A8() & 1) == 0))
          {
LABEL_38:
            sub_2143DA520(v7, type metadata accessor for CSDMHandleProto);
            sub_2143DA520(v10, type metadata accessor for CSDMHandleProto);
            goto LABEL_39;
          }
        }

        else if (v23)
        {
          goto LABEL_38;
        }

        v25 = v4[7];
        v26 = &v10[v25];
        v27 = *&v10[v25 + 8];
        v28 = &v7[v25];
        v29 = *(v28 + 1);
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_38;
          }

          v30 = *v26 == *v28 && v27 == v29;
          if (!v30 && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v29)
        {
          goto LABEL_38;
        }

        v31 = v4[8];
        v32 = &v10[v31];
        v33 = *&v10[v31 + 8];
        v34 = &v7[v31];
        v35 = *(v34 + 1);
        if (v33)
        {
          if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v35)
        {
          goto LABEL_38;
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = sub_2146D9578();
        sub_2143DA520(v7, type metadata accessor for CSDMHandleProto);
        sub_2143DA520(v10, type metadata accessor for CSDMHandleProto);
        if (v36)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v36 & 1;
      }
    }

    v36 = 1;
  }

  else
  {
LABEL_39:
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t sub_2143D6790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 96);
  for (i = (a2 + 96); ; i += 10)
  {
    v5 = *(v3 - 5);
    if (!v5)
    {
      break;
    }

    v6 = *(i - 5);
    if (!v6)
    {
      break;
    }

    v7 = *(v3 - 1);
    v8 = *v3;
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v3 - 6) == *(i - 6) && v5 == v6;
    if (!v11 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

    if (v8 == 1 || v10 == 1)
    {
      break;
    }

    if (v8)
    {
      if (!v10 || (v7 != v9 || v8 != v10) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10)
      {
        return 0;
      }

      sub_213FDC9D0(v9, 0);
      sub_213FDC9D0(v7, 0);
    }

    v3 += 10;
    if (!--v2)
    {
      return 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143D691C(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 64);
    for (i = (a1 + 64); ; i += 6)
    {
      if (*(i - 8) != *(v4 - 8))
      {
        return 0;
      }

      v6 = *i;
      if (*i >> 60 == 15 || (v7 = *v4, *v4 >> 60 == 15))
      {
        result = sub_2146DA018();
        __break(1u);
        return result;
      }

      v8 = *(i - 1);
      v9 = *(v4 - 1);
      v10 = v6 >> 62;
      v11 = v7 >> 62;
      if (v6 >> 62 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = *(v8 + 16);
          v17 = *(v8 + 24);
          v15 = __OFSUB__(v17, v18);
          v12 = v17 - v18;
          if (v15)
          {
            goto LABEL_62;
          }

          goto LABEL_26;
        }

        v12 = 0;
        if (v11 <= 1)
        {
          goto LABEL_27;
        }
      }

      else if (v10)
      {
        LODWORD(v12) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_61;
        }

        v12 = v12;
        if (v11 <= 1)
        {
LABEL_27:
          if (v11)
          {
            LODWORD(v16) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
            }

            v16 = v16;
          }

          else
          {
            v16 = BYTE6(v7);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v12 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_27;
        }
      }

LABEL_20:
      if (v11 != 2)
      {
        if (v12)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_60;
      }

LABEL_31:
      if (v12 != v16)
      {
        return 0;
      }

      if (v12 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v8 + 16);
          v30 = *(v8 + 24);

          sub_213FDCA18(v8, v6);

          sub_213FDCA18(v9, v7);
          sub_213FDCA18(v8, v6);
          sub_213FDCA18(v9, v7);
          v22 = sub_2146D8728();
          if (v22)
          {
            v23 = sub_2146D8758();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_65;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_64;
          }

          sub_2146D8748();
          v24 = v22;
          v25 = v9;
          v26 = v7;
          v3 = v31;
          goto LABEL_52;
        }

        memset(v33, 0, 14);

        sub_213FDCA18(v8, v6);

        sub_213FDCA18(v9, v7);
        sub_213FDCA18(v8, v6);
        sub_213FDCA18(v9, v7);
        v19 = v9;
        v20 = v7;
      }

      else
      {
        if (v10)
        {
          if (v8 >> 32 < v8)
          {
            goto LABEL_63;
          }

          sub_213FDCA18(v8, v6);

          sub_213FDCA18(v9, v7);
          sub_213FDCA18(v8, v6);
          sub_213FDCA18(v9, v7);
          v27 = sub_2146D8728();
          if (v27)
          {
            v28 = sub_2146D8758();
            if (__OFSUB__(v8, v28))
            {
              goto LABEL_66;
            }

            v27 += v8 - v28;
          }

          sub_2146D8748();
          v24 = v27;
          v25 = v9;
          v26 = v7;
LABEL_52:
          sub_2143D9A20(v24, v25, v26, v33);
          sub_213FDC6BC(v8, v6);
          sub_213FDC6BC(v9, v7);

          sub_213FDC6BC(v9, v7);

          sub_213FDC6BC(v8, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(i - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);

        sub_213FDCA18(v8, v6);

        sub_213FDCA18(v9, v7);
        sub_213FDCA18(v8, v6);
        sub_213FDCA18(v9, v7);
        v19 = v9;
        v20 = v7;
      }

      sub_2143D9A20(v33, v19, v20, &v32);
      sub_213FDC6BC(v8, v6);
      sub_213FDC6BC(v9, v7);

      sub_213FDC6BC(v9, v7);

      sub_213FDC6BC(v8, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    v12 = 0;
    if (!v8 && v6 == 0xC000000000000000 && v7 >> 62 == 3)
    {
      v12 = 0;
      if (!v9 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_26:
    if (v11 <= 1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  return 1;
}
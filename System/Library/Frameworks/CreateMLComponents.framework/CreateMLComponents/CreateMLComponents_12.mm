unint64_t sub_237D5E228()
{
  result = qword_27DEB19F0[0];
  if (!qword_27DEB19F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB19F0);
  }

  return result;
}

uint64_t sub_237D5E318(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237D5E398(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 40) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 40) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_237D5E518(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 40) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
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
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 40] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 8) = 0u;
            *(a1 + 24) = 0u;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237D5E770(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t LinearRegressorModel.coefficients.getter(uint64_t a1)
{
  v11 = *v1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = v8;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  v3 = sub_237C96710(&qword_280C8CCD8, &qword_27DEB02F8, &qword_237F0F350, MEMORY[0x277D84280]);
  sub_237C9339C(sub_237D5E9BC, &v7, v2, v8, MEMORY[0x277D84A98], v3);
  v5 = v4;

  return v5;
}

double LinearRegressorModel.init<A>(coefficients:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v11 = sub_237C8FFEC(sub_237D5EBC4, v13, a3, MEMORY[0x277D839F8], MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], a7);
  (*(*(a3 - 8) + 8))(a1, a3);
  *a8 = v11;
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 65) = 0u;
  return result;
}

double sub_237D5EAD0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  sub_237EF8190();
  return result;
}

uint64_t LinearRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a4;
  v6[18] = a5;
  v6[15] = a2;
  v6[16] = a3;
  v6[14] = a1;
  v7 = *(a5 + 16);
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  memcpy(v6 + 2, v5, 0x51uLL);

  return MEMORY[0x2822009F8](sub_237D5ED00, 0, 0);
}

void sub_237D5ED00()
{
  v37 = v0;
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(v0[18] + 24);
  sub_237EF7E90();
  v2 = *(sub_237EF7E20() + 16);

  v3 = sub_237EF7E20();
  v4 = v3;
  if (v2 == 1)
  {
    if (!*(v3 + 16))
    {

      __break(1u);
      JUMPOUT(0x2383E2DF0);
    }

    v5 = *(v3 + 32);

    v7 = v0[2];
    v8 = *(v7 + 16);
    if (v5 == v8 - 1)
    {
      if (v8 >> 60)
      {
        __break(1u);
      }

      else
      {
        if ((8 * v8) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
        {
          MEMORY[0x28223BE20](isStackAllocationSafe);
          sub_237D5F180(&v33 - v9, v8, v11, v0 + 2, v12, v13, v14, v1, *(v10 + 32));
          v24 = v0[22];
          v25 = v0[19];
          v26 = v0[14];
          v27 = *(v0[20] + 32);
          v27(v24, v0[21], v25);
          v27(v26, v24, v25);
LABEL_13:

LABEL_10:
          OUTLINED_FUNCTION_45();

          __asm { BRAA            X1, X16 }
        }

        v29 = v0[18];
        v28 = v0[19];
        v31 = v0[16];
        v30 = v0[17];
        v32 = v0[15];
        v4 = swift_slowAlloc();
        sub_237D5F180(v4, v8, v32, v0 + 2, v31, v30, v28, v1, *(v29 + 32));
      }

      MEMORY[0x2383E2DF0](v4, -1, -1);
      goto LABEL_13;
    }

    v4 = sub_237EF7E20();
    sub_237EF9330();

    v34 = 0xD00000000000001ELL;
    v35 = 0x8000000237EFD610;
    v0[13] = *(v7 + 16) - 1;
    v17 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v17);

    MEMORY[0x2383E0710](0x6F6720747562205DLL, 0xEA00000000002074);
    sub_237EF7E20();
    v18 = MEMORY[0x2383E0A10]();
    v20 = v19;

    MEMORY[0x2383E0710](v18, v20);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v16 = v34;
    v15 = v35;
  }

  else
  {
    v15 = 0x8000000237EFD5E0;
    v16 = 0xD000000000000024;
  }

  sub_237C84150();
  swift_allocError();
  *v21 = v4;
  *(v21 + 8) = v16;
  *(v21 + 16) = v15;
  *(v21 + 24) = 0;
  *(v21 + 32) = 6;
  swift_willThrow();

  goto LABEL_10;
}

uint64_t sub_237D5F180(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_237EF7E90();
  swift_getWitnessTable();
  v26 = a9;
  v27[0] = sub_237EF7F50();
  v24 = a7;
  v25 = a8;
  v14 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D6030C, v23, v14, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable);
  v17 = v16;

  sub_237DBD8DC(v17, a1, a2);

  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + a2 - 1) = 0x3FF0000000000000;
    if (a1)
    {
      v19 = *a4;
      v20 = *(*a4 + 16);
      v21 = type metadata accessor for LinearRegressorModel(0, a7, a8, a9);
      v22 = *(v21 - 8);
      (*(v22 + 16))(v27, a4, v21);
      dot(_:_:)(a1, a2, 1, v19 + 32, v20, 1);
      (*(v22 + 8))(a4, v21);
      return sub_237EF81D0();
    }
  }

  __break(1u);
  return result;
}

double sub_237D5F3A8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  sub_237EF8190();
  return result;
}

void sub_237D5F49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v21 = v20;
  v23 = v22[3];
  v48 = v22[2];
  v49 = v24;
  v46 = v22[4];
  v47 = v23;
  v45 = type metadata accessor for LinearRegressorModel.Storage(0, v48, v23, v46);
  OUTLINED_FUNCTION_1();
  v51 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v45 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v45 - v36;
  v52 = *v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_237F03530;
  *(v38 + 32) = *(v52 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  v39 = v45;
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8, &qword_237F0F350, MEMORY[0x277D84268]);
  sub_237EF7E40();
  v40 = *(v31 + 16);
  v50 = v29;
  v40(v34, v37, v29);
  sub_237D5F774(v34, v48, v28, v47, v46);
  v41 = *(v49 + 24);
  v42 = *(v49 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v49, v41);
  v43 = *(v42 + 8);
  WitnessTable = swift_getWitnessTable();
  v43(v28, v39, WitnessTable, v41, v42);
  (*(v51 + 8))(v28, v39);
  (*(v31 + 8))(v37, v50);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D5F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for LinearRegressorModel.Storage(0, a2, a4, a5);
  *a3 = 0;
  *(a3 + 1) = 0;
  v8 = *(v7 + 44);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a1, v9);
}

void sub_237D5F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v51 = v28;
  v52 = v27;
  v53 = v29;
  v30 = type metadata accessor for LinearRegressorModel.Storage(0, v23, v29, v27);
  OUTLINED_FUNCTION_1();
  v50 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  v34 = v49 - v33;
  v36 = *(v26 + 24);
  v35 = *(v26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v36);
  v37 = *(v35 + 8);
  WitnessTable = swift_getWitnessTable();
  v37(v30, v30, WitnessTable, v36, v35);
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350, MEMORY[0x277CBFD28]);
    v49[0] = sub_237EF7F50();
    v49[1] = v49;
    a10 = v49[0];
    MEMORY[0x28223BE20](v49[0]);
    v40 = v52;
    v39 = v53;
    v49[-4] = v24;
    v49[-3] = v39;
    v49[-2] = v40;
    v49[-1] = v24;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
    v42 = sub_237C96710(qword_27DEB1B78, &qword_27DEAECA8, &qword_237F15D00, MEMORY[0x277D83988]);
    sub_237C9339C(sub_237D60514, &v49[-6], v41, v24, MEMORY[0x277D84A98], v42);
    v44 = v43;

    a10 = v44;
    v45 = sub_237EF8A60();
    v46 = swift_getWitnessTable();
    v48 = LinearRegressorModel.init<A>(coefficients:)(&a10, v24, v45, v53, v40, v46, v47, v51);
    (*(v50 + 8))(v34, v30, v48);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D5FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return LinearRegressorModel.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

void sub_237D5FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v35 = v23;
  v36 = v24;
  v26 = v25;
  type metadata accessor for LinearRegressorModel.Storage.CodingKeys(255, v27[2], v27[3], v27[4]);
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  v28 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v35 - v32;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_237EFA1B0();
  v34 = v36;
  sub_237EF99D0();
  if (!v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
    sub_237D0A15C(&qword_280C8CD70, MEMORY[0x277D83A08], MEMORY[0x277CBFD38]);
    sub_237EF9A70();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D5FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v62 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v57 = v32;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v56 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  v59 = &v54 - v35;
  type metadata accessor for LinearRegressorModel.Storage.CodingKeys(255, v29, v27, v25);
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  v61 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v58 = v36;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  v38 = type metadata accessor for LinearRegressorModel.Storage(0, v29, v27, v25);
  OUTLINED_FUNCTION_1();
  v55 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v42 = (&v54 - v41);
  v43 = v31[3];
  v63 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v43);
  v44 = v62;
  sub_237EFA190();
  if (v44)
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    v45 = v59;
    v46 = v60;
    *v42 = sub_237EF98D0();
    v42[1] = v47;
    v62 = v42;
    sub_237D0A15C(&qword_280C8CD68, MEMORY[0x277D83A30], MEMORY[0x277CBFD48]);
    v48 = v46;
    sub_237EF9970();
    v49 = OUTLINED_FUNCTION_3_52();
    v50(v49);
    v51 = v38;
    v52 = v62;
    (*(v56 + 32))(v62 + *(v38 + 44), v45, v48);
    v53 = v55;
    (*(v55 + 16))(v57, v52, v51);
    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(v53 + 8))(v52, v51);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D600A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D09370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D600D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D60128(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D601C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D60200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D60244(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_237D60284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_237D60330(uint64_t a1)
{
  sub_237D0A09C();
  if (v1 <= 0x3F)
  {
    sub_237D0A0EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_237D603F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Transformer.adaptedAsAnnotatedPredictionTransformer<A>(annotationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, a2, v7);
  return (*(v6 + 32))(a3, v9, a2);
}

uint64_t sub_237D6064C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237D606BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237D607F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237D609FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v10 = a5[3];
  v5[4] = v10;
  v5[5] = *(v10 - 8);
  v5[6] = swift_task_alloc();
  v11 = a5[4];
  v5[7] = v11;
  v12 = a5[2];
  v5[8] = v12;
  v5[9] = swift_getAssociatedTypeWitness();
  v13 = swift_task_alloc();
  v5[10] = v13;
  v16 = (*(v11 + 24) + **(v11 + 24));
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_237D60BF8;

  return v16(v13, a2, a3, a4, v12, v11);
}

uint64_t sub_237D60BF8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_237D60E04;
  }

  else
  {
    v2 = sub_237D60D0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237D60D0C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for AnnotatedPrediction(0, AssociatedTypeWitness, v5, v9);
  (*(v4 + 16))(v3, v6 + *(v10 + 36), v5);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v3, v1, v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_237D60E04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237D60E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return sub_237D609FC(a1, a2, a3, a4, a5);
}

uint64_t sub_237D60F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_237D60F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_237D60FD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_237C63670(0, 0, 0);
  result = v10;
  v6 = (a1 + 32);
  if (v4)
  {
    while (a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = *v6;
      v11 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        sub_237C63670(v8 > 1, v9 + 1, 1);
        result = v11;
      }

      *(result + 16) = v9 + 1;
      *(result + 4 * v9 + 32) = v7 / a2;
      ++v6;
      --v4;
      ++a2;
      if (!v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237D610C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = *(a1 + 32);
  sub_237D0B340(0, v1, 0, MEMORY[0x277D84F90]);
  v5 = v4;
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
LABEL_17:
    sub_237D0B340(v6 > 1, v8, 1, v5);
    v5 = v20;
  }

  *(v5 + 16) = v8;
  *(v5 + 8 * v7 + 32) = v3;
  sub_237EF8260();
  v2 = sub_237C60B7C(1, v2);
  v8 = v9;
  v3 = v10;
  v12 = v11 >> 1;
  while (v12 != v3)
  {
    if (v3 >= v12)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = *(v8 + 8 * v3);
    v6 = v5 + 24;
    v15 = *(v5 + 24 + 8 * v13);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_16;
    }

    v17 = *v6;
    v7 = v13 + 1;
    if (v13 >= v17 >> 1)
    {
      sub_237D0B340(v17 > 1, v13 + 1, 1, v5);
      v5 = v18;
    }

    *(v5 + 16) = v7;
    v6 = v5 + 8 * v13;
    *(v6 + 32) = v16;
    ++v3;
  }

  swift_unknownObjectRelease();
  return v5;
}

void *sub_237D61218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    goto LABEL_39;
  }

  v6 = MEMORY[0x277D84F90];
  v48 = *(a1 + 16);
  if (v3)
  {
    v49 = MEMORY[0x277D84F90];
    sub_237C62DB0(0, v48, 0);
    v6 = v49;
    v7 = (a2 + 32);
    v8 = v49[2];
    v9 = v48;
    do
    {
      v10 = *v7;
      v49 = v6;
      v11 = *(v6 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_237C62DB0(v11 > 1, v8 + 1, 1);
        v6 = v49;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 8 * v8 + 32) = v10;
      ++v7;
      ++v8;
      --v9;
    }

    while (v9);
  }

  sub_237EF8260();
  sub_237EF8260();
  v49 = sub_237DBA688(a1, v6);
  v2 = 0;
  sub_237D64888(&v49);

  v12 = v49;
  v13 = v49[2];
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v49 = MEMORY[0x277D84F90];
    sub_237C62DB0(0, v13, 0);
    v15 = v49;
    v16 = v49[2];
    v17 = v12 + 5;
    do
    {
      v19 = *v17;
      v17 += 2;
      v18 = v19;
      v49 = v15;
      v20 = *(v15 + 24);
      if (v16 >= v20 >> 1)
      {
        sub_237C62DB0(v20 > 1, v16 + 1, 1);
        v15 = v49;
      }

      *(v15 + 16) = v16 + 1;
      *(v15 + 8 * v16++ + 32) = v18;
      --v13;
    }

    while (v13);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v21 = sub_237D610C8(v15);

  v22 = sub_237ED81A4(v21);
  if ((v23 & 1) == 0)
  {
    v24 = v22;

    v25 = sub_237EF8260();
    v2 = sub_237D60FD8(v25, 1);

    v47 = v2;
    if (v24 < 1)
    {

      sub_237CDC1E8(v48, 1.0);
      v27 = v32;
      if (v48)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = *(v21 + 16);
      if (v26)
      {
        v49 = v14;
        sub_237C63670(0, v26, 0);
        v27 = v49;
        v28 = v49[2];
        v29 = 32;
        do
        {
          v30 = *(v21 + v29);
          v49 = v27;
          v31 = v27[3];
          if (v28 >= v31 >> 1)
          {
            sub_237C63670(v31 > 1, v28 + 1, 1);
            v27 = v49;
          }

          v27[2] = v28 + 1;
          *(v27 + v28 + 8) = v30 / v24;
          v29 += 8;
          ++v28;
          --v26;
        }

        while (v26);

        v2 = v47;
        if (!v48)
        {
          goto LABEL_33;
        }

LABEL_24:
        v49 = v14;
        sub_237C636E8(0, v48, 0);
        v33 = v48;
        if (v48 > v2[2])
        {
          __break(1u);
        }

        else if (v48 <= v27[2])
        {
          if (v48 <= v12[2])
          {
            v34 = 0;
            v35 = v49;
            v36 = v2 + 4;
            v37 = v49[2];
            v38 = 12 * v37;
            v39 = 4;
            do
            {
              v40 = *(v36 + v34);
              v41 = *(v27 + v34 + 8);
              v42 = v12[v39];
              v49 = v35;
              v43 = v35[3];
              v44 = v37 + v34 + 1;
              if (v37 + v34 >= v43 >> 1)
              {
                sub_237C636E8((v43 > 1), v37 + v34 + 1, 1);
                v33 = v48;
                v35 = v49;
              }

              ++v34;
              v35[2] = v44;
              v45 = (v35 + v38);
              v45[8] = v40;
              v45[9] = v41;
              v45[10] = v42;
              v38 += 12;
              v39 += 2;
            }

            while (v33 != v34);

            return v35;
          }

          goto LABEL_37;
        }

        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v27 = MEMORY[0x277D84F90];
      if (v48)
      {
        goto LABEL_24;
      }
    }

LABEL_33:

    return MEMORY[0x277D84F90];
  }

LABEL_38:
  __break(1u);
LABEL_39:
  sub_237EF9740("Fatal error", 11, 2, 0xD000000000000051, 0x8000000237EFE510, "CreateMLComponents/PrecisionRecallCurve.swift", 45, 2, 58);
  __break(1u);

  __break(1u);
  return result;
}

void sub_237D616B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *v8;
  v16 = *(v8 + 8);
  v17 = sub_237EF8DD0();
  if (v17)
  {
    sub_237C84150();
    swift_allocError();
    *v25 = 0xD00000000000002CLL;
    *(v25 + 8) = 0x8000000237EFE480;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    switch(v16)
    {
      case 2:
        v26 = sub_237EF8260();
        sub_237D623D4(v26, a3, a4);
        if (v30)
        {
          sub_237D62A40(v29, 2);
        }

        break;
      case 3:
        sub_237D618C4(a1, a2, a3, a4, a5, a6, a7, a8);
        break;
      default:
        OUTLINED_FUNCTION_12_31(v17, v18, v19, v20, v21, v22, v23, v24, a6);
        OUTLINED_FUNCTION_22_20();
        MEMORY[0x28223BE20](v27);
        OUTLINED_FUNCTION_20_20();
        sub_237EF82A0();

        break;
    }
  }
}

void sub_237D618C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a8;
  v110 = a7;
  v109 = a6;
  v108 = a5;
  v106 = a2;
  v107 = a1;
  v10 = *(a4 + 16);
  v100 = *(v10 - 1);
  MEMORY[0x28223BE20](a1);
  v96 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = v91 - v13;
  OUTLINED_FUNCTION_12_7();
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = v91 - v15;
  v17 = *(a4 + 24);
  v120 = sub_237EF8100();
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_237EF92A0();
    sub_237EF8CC0();
    a3 = v121;
    v92 = v122;
    v18 = v123;
    v99 = v124;
    v19 = v125;
  }

  else
  {
    v20 = -1 << *(a3 + 32);
    v21 = *(a3 + 56);
    v92 = a3 + 56;
    v22 = ~v20;
    v23 = -v20;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v19 = v24 & v21;
    sub_237EF8260();
    v18 = v22;
    v99 = 0;
  }

  v103 = 0;
  v91[1] = v18;
  v25 = (v18 + 64) >> 6;
  v102 = (v100 + 16);
  v98 = v100 + 32;
  v93 = (v100 + 8);
  v94 = v25;
  v97 = a3;
  v95 = v16;
  if (a3 < 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v19)
  {
    v26 = v99;
LABEL_17:
    v101 = (v19 - 1) & v19;
    (*(v100 + 16))(v16, *(a3 + 48) + *(v100 + 72) * (__clz(__rbit64(v19)) | (v26 << 6)), v10);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v10);
      v28 = v112;
      v29 = OUTLINED_FUNCTION_31_0();
      v31 = v30(v29);
      MEMORY[0x28223BE20](v31);
      v32 = v108;
      v91[-8] = v10;
      v91[-7] = v32;
      v91[-6] = v109;
      v91[-5] = v17;
      v33 = v110;
      v34 = v111;
      v91[-4] = v110;
      v91[-3] = v34;
      v91[-2] = v28;
      v35 = v103;
      sub_237C9339C(sub_237D6579C, &v91[-10], v32, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v33);
      v37 = *(v36 + 16);
      if (!v37)
      {
        break;
      }

      v38 = *(v36 + 32);
      v39 = v37 - 1;
      if (v39)
      {
        v41 = (v36 + 36);
        v42 = (v36 + 36);
        v43 = v39;
        v40 = *(v36 + 32);
        do
        {
          v44 = *v42++;
          v45 = v44;
          if (v44 < v40)
          {
            v40 = v45;
          }

          --v43;
        }

        while (v43);
        do
        {
          v46 = *v41++;
          v47 = v46;
          if (v38 < v46)
          {
            v38 = v47;
          }

          --v39;
        }

        while (v39);
      }

      else
      {
        v40 = *(v36 + 32);
      }

      v103 = v35;

      if (v40 <= v38)
      {
        v48 = 0.0;
        v49 = v40;
        v104 = v10;
        v105 = v17;
        while (1)
        {
          v16 = v112;
          sub_237DF8EA4();
          v51 = v50;
          sub_237DF8F00();
          v115 = v52;
          v53 = *(v52 + 16);
          v54 = v51[2];
          v55 = v54 >= v53 ? *(v52 + 16) : v51[2];
          OUTLINED_FUNCTION_17_26(MEMORY[0x277D84F90]);
          v56 = OUTLINED_FUNCTION_16_27();
          v116 = v51;
          v114 = v54;
          if (v55)
          {
            break;
          }

LABEL_40:
          v10 = v116;
          v62 = v115;
          v63 = v114;
          while (v53 != v55)
          {
            if (v55 >= v53)
            {
              goto LABEL_80;
            }

            if (__OFADD__(v55, 1))
            {
              goto LABEL_81;
            }

            if (v63 == v55)
            {
              break;
            }

            if (v55 >= v63)
            {
              goto LABEL_82;
            }

            v16 = v10[v55 + 4];
            *&v117 = v56;
            v65 = *(v56 + 16);
            v64 = *(v56 + 24);
            if (v65 >= v64 >> 1)
            {
              v66 = OUTLINED_FUNCTION_11_31(v64);
              sub_237C62DB0(v66, v65 + 1, 1);
              v56 = OUTLINED_FUNCTION_16_27();
            }

            *(v56 + 16) = v65 + 1;
            *(v56 + 8 * v65 + 32) = v16;
            ++v55;
          }

          v113 = sub_237CAE03C(v56);
          v67 = *(v62 + 16);
          v68 = v10[2];
          if (v68 >= v67)
          {
            v69 = *(v62 + 16);
          }

          else
          {
            v69 = v10[2];
          }

          OUTLINED_FUNCTION_17_26(MEMORY[0x277D84F90]);
          v70 = OUTLINED_FUNCTION_16_27();
          v114 = v68;
          if (v69)
          {
            v10 = (v62 + 32);
            v71 = v69;
            v72 = v67;
            while (v72)
            {
              if (!v68)
              {
                goto LABEL_79;
              }

              v73 = *v10;
              v70 = OUTLINED_FUNCTION_19_26(v70);
              if (v75)
              {
                v76 = OUTLINED_FUNCTION_11_31(v74);
                sub_237C62DB0(v76, v53, 1);
                v70 = OUTLINED_FUNCTION_16_27();
              }

              *(v70 + 16) = v53;
              *(v70 + 8 * v16 + 32) = v73;
              --v68;
              --v72;
              ++v10;
              if (!--v71)
              {
                goto LABEL_59;
              }
            }

            goto LABEL_78;
          }

LABEL_59:
          v17 = v105;
          v77 = v116;
          v78 = v115;
          v79 = v114;
          while (v67 != v69)
          {
            if (v69 >= v67)
            {
              goto LABEL_83;
            }

            if (__OFADD__(v69, 1))
            {
              goto LABEL_84;
            }

            if (v79 == v69)
            {
              break;
            }

            if (v69 >= v79)
            {
              goto LABEL_85;
            }

            v10 = *(v78 + 8 * v69 + 32);
            v70 = OUTLINED_FUNCTION_19_26(v70);
            if (v75)
            {
              v81 = OUTLINED_FUNCTION_11_31(v80);
              sub_237C62DB0(v81, v53, 1);
              v70 = OUTLINED_FUNCTION_16_27();
            }

            *(v70 + 16) = v53;
            *(v70 + 8 * v16 + 32) = v10;
            ++v69;
          }

          v82 = sub_237CAE474();
          sub_237CB0CC4(v78, v77, sub_237E6442C, 0, v82);
          v126[0] = v117;
          v126[1] = v118;
          v126[2] = v119;
          v83 = sub_237CA6838(1);
          v84 = sub_237CA60A0(1);
          v85 = v83 + v84;
          if (__OFADD__(v83, v84))
          {
            goto LABEL_88;
          }

          v86 = sub_237CA6838(1);
          v87 = sub_237CA6454(1);
          sub_237D657C8(v126);
          v88 = v86 + v87;
          if (__OFADD__(v86, v87))
          {
            goto LABEL_89;
          }

          v89 = (v83 / v85 * (v86 / v88) + v83 / v85 * (v86 / v88)) / (v83 / v85 + v86 / v88);
          if (v48 < v89)
          {
            v40 = v49;
            v48 = (v83 / v85 * (v86 / v88) + v83 / v85 * (v86 / v88)) / (v83 / v85 + v86 / v88);
          }

          v49 = v49 + 0.1;
          v10 = v104;
          if (v49 > v38)
          {
            goto LABEL_73;
          }
        }

        v16 = (v51 + 4);
        v10 = v55;
        v57 = v53;
        while (v57)
        {
          if (!v54)
          {
            goto LABEL_77;
          }

          v58 = *v16;
          *&v117 = v56;
          v60 = *(v56 + 16);
          v59 = *(v56 + 24);
          if (v60 >= v59 >> 1)
          {
            v61 = OUTLINED_FUNCTION_11_31(v59);
            sub_237C62DB0(v61, v60 + 1, 1);
            v56 = OUTLINED_FUNCTION_16_27();
          }

          *(v56 + 16) = v60 + 1;
          *(v56 + 8 * v60 + 32) = v58;
          --v54;
          --v57;
          v16 += 8;
          v10 = (v10 - 1);
          if (!v10)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_75;
      }

LABEL_73:
      v90 = v112;
      (*v102)(v96, v112, v10);
      *&v117 = v40;
      BYTE4(v117) = 0;
      OUTLINED_FUNCTION_12_7();
      sub_237EF82B0();
      sub_237EF8300();
      (*v93)(v90, v10);
      a3 = v97;
      v16 = v95;
      v19 = v101;
      v25 = v94;
      if ((v97 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_10:
      if (!sub_237EF92B0())
      {
        goto LABEL_75;
      }

      v101 = v19;
      sub_237EF9D10();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v27 = v99;
    while (1)
    {
      v26 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v26 >= v25)
      {
LABEL_75:
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
        sub_237C9FE9C();
        return;
      }

      v19 = *(v92 + 8 * v26);
      ++v27;
      if (v19)
      {
        v99 = v26;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237D6223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a9;
  v14[8] = a1;
  v14[9] = a2;
  v9 = sub_237EF8CF0();
  OUTLINED_FUNCTION_12_7();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D65830, v14, v9, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable);
  v15 = v12;
  sub_237EF8A60();
  OUTLINED_FUNCTION_3_53();
  swift_getWitnessTable();
  return sub_237EF8240();
}

void sub_237D62354(uint64_t *a1@<X0>, int *a2@<X8>)
{
  sub_237D509AC(*a1);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 2143289344;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
}

void sub_237D62394(uint64_t *a1@<X0>, int *a2@<X8>)
{
  sub_237D50E04(*a1);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 2143289344;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
}

uint64_t sub_237D623D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v44 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_7();
  v57 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v16 = v44 - v15;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v44[1] = v5 + 16;
  v58 = (v5 + 32);
  v56 = (v13 + 32);
  v49 = v5;
  v22 = v5 + 8;
  v23 = TupleTypeMetadata2;
  v24 = v14;
  v52 = a1;
  v53 = v22;
  result = sub_237EF8260();
  v26 = 0;
  v50 = v7;
  v51 = v4;
  v46 = v24;
  v47 = v23;
  v45 = v16;
  if (v20)
  {
    while (1)
    {
      v27 = v26;
LABEL_9:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v28 | (v27 << 6);
      v4 = v51;
      v30 = v52;
      v32 = v48;
      v31 = v49;
      (*(v49 + 16))(v48, *(v52 + 48) + *(v49 + 72) * v29, v51);
      v33 = *(*(v30 + 56) + 4 * v29);
      v23 = v47;
      v34 = *(v47 + 48);
      v35 = *(v31 + 32);
      v24 = v46;
      v35(v46, v32, v4);
      v36 = 0;
      *(v24 + v34) = v33;
      v7 = v50;
      v16 = v45;
LABEL_10:
      __swift_storeEnumTagSinglePayload(v24, v36, 1, v23);
      (*v56)(v16, v24, v57);
      if (__swift_getEnumTagSinglePayload(v16, 1, v23) == 1)
      {
      }

      (*v58)(v7, v16, v4);
      if ((sub_237EF8CD0() & 1) == 0)
      {
        break;
      }

      v37 = OUTLINED_FUNCTION_23_21();
      result = v38(v37);
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x27206C6562614CLL, 0xE700000000000000);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237EFE4B0);
    v39 = v59;
    v40 = v60;
    sub_237C84150();
    swift_allocError();
    *v41 = 0xD00000000000002CLL;
    *(v41 + 8) = 0x8000000237EFE480;
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;
    *(v41 + 32) = 5;
    swift_willThrow();

    v42 = OUTLINED_FUNCTION_23_21();
    return v43(v42);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v21)
      {
        v20 = 0;
        v36 = 1;
        goto LABEL_10;
      }

      v20 = *(v17 + 8 * v27);
      ++v26;
      if (v20)
      {
        v26 = v27;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_237D6281C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, _DWORD *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for ClassificationDistribution(0, a2, a3, a5);
  result = ClassificationDistribution.subscript.getter(a1, v7, v8, v9);
  if ((result & 0x100000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  *a4 = v11;
  return result;
}

uint64_t static MultiLabelClassificationMetrics.ThresholdSelectionStrategy.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_17;
      }

      LODWORD(v6) = *a1;
      LODWORD(v7) = *a2;
      sub_237D62A40(*a1, 1);
      v8 = v4;
      v9 = 1;
      goto LABEL_14;
    case 2:
      if (v5 == 2)
      {
        sub_237D62A2C(*a2, 2);
        sub_237D62A2C(v2, 2);
        OUTLINED_FUNCTION_31_0();
        v10 = sub_237EF82E0();
        sub_237D62A40(v2, 2);
        sub_237D62A40(v4, 2);
        result = v10 & 1;
      }

      else
      {
        sub_237EF8260();
LABEL_17:
        sub_237D62A2C(v4, v5);
        sub_237D62A40(v2, v3);
        sub_237D62A40(v4, v5);
LABEL_18:
        result = 0;
      }

      break;
    case 3:
      if (v5 != 3 || v4 != 0)
      {
        goto LABEL_17;
      }

      sub_237D62A40(*a1, 3);
      sub_237D62A40(0, 3);
      return 1;
    default:
      if (*(a2 + 8))
      {
        goto LABEL_17;
      }

      LODWORD(v6) = *a1;
      LODWORD(v7) = *a2;
      sub_237D62A40(*a1, 0);
      v8 = v4;
      v9 = 0;
LABEL_14:
      sub_237D62A40(v8, v9);
      if (v6 != v7)
      {
        goto LABEL_18;
      }

      result = *(&v2 + 1) == *(&v4 + 1);
      break;
  }

  return result;
}

uint64_t sub_237D62A2C(uint64_t result, char a2)
{
  if (a2 == 2)
  {
    return sub_237EF8260();
  }

  return v2;
}

uint64_t sub_237D62A40(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  return result;
}

uint64_t sub_237D62A54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x8000000237EFE460 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6C61636572 && a2 == 0xE600000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6465786966 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

unint64_t sub_237D62BB4(char a1)
{
  result = 0x6F69736963657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C6C61636572;
      break;
    case 3:
      result = 0x6465786966;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_237D62C38(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D62CB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526D756D696E696DLL && a2 == 0xED00006C6C616365)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D62D7C(char a1)
{
  if (a1)
  {
    return 0x526D756D696E696DLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_237D62DB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000237EFE440 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D62E7C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_237D62EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C55228(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D62F04@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237D62F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D62F8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D62FEC(uint64_t a1)
{
  sub_237EFA120();
  sub_237C5EDA8(v3, *v1);
  return sub_237EFA170();
}

uint64_t sub_237D63040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D63094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237D630C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D63118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D6318C(uint64_t a1)
{
  sub_237EFA120();
  sub_237C55258();
  return sub_237EFA170();
}

uint64_t sub_237D631DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62C38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D63238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D6328C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D63308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62CB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D63350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D633A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D633F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_237EFA120();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_237EFA170();
}

uint64_t sub_237D63460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D634C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D63514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hash(into:)()
{
  switch(*(v0 + 8))
  {
    case 1:
      v1 = 2;
      goto LABEL_8;
    case 2:
      MEMORY[0x2383E2210](3);
      v2 = OUTLINED_FUNCTION_31_0();

      result = MEMORY[0x2821FB920](v2);
      break;
    case 3:
      result = MEMORY[0x2383E2210](0);
      break;
    default:
      v1 = 1;
LABEL_8:
      MEMORY[0x2383E2210](v1);
      sub_237EFA150();
      result = sub_237EFA150();
      break;
  }

  return result;
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hashValue.getter()
{
  sub_237EFA120();
  MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237D636AC(uint64_t a1)
{
  sub_237EFA120();
  MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hash(into:)();
  return sub_237EFA170();
}

void *sub_237D636FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v38 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a9;
  v37 = a1;
  sub_237C9339C(sub_237D65868, v30, a4, MEMORY[0x277D83A90], MEMORY[0x277D84A98], a7);
  v21 = v16;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a9;
  v29 = a1;
  sub_237C9339C(sub_237D658D4, v22, a5, MEMORY[0x277D839B0], MEMORY[0x277D84A98], a9);
  v18 = v17;
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a8, a1, a3);
  result = sub_237D61218(v21, v18);
  *(a8 + v19) = result;
  return result;
}

unint64_t sub_237D63878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, _DWORD *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for ClassificationDistribution(0, a2, a3, a5);
  result = ClassificationDistribution.subscript.getter(a1, v7, v8, v9);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v89 = a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = OUTLINED_FUNCTION_10_33();
  v11 = _s26ThresholdSelectionStrategyO15FixedCodingKeysOMa(v7, v8, v9, v10);
  OUTLINED_FUNCTION_7_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v82 = v11;
  v79 = v12;
  sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v87 = v14;
  v88 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v83 = v16;
  v17 = OUTLINED_FUNCTION_10_33();
  v21 = _s26ThresholdSelectionStrategyO16RecallCodingKeysOMa(v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v77 = v21;
  v75 = v22;
  sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v80 = v24;
  v81 = v23;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19();
  v78 = v26;
  v27 = OUTLINED_FUNCTION_10_33();
  v31 = _s26ThresholdSelectionStrategyO19PrecisionCodingKeysOMa(v27, v28, v29, v30);
  OUTLINED_FUNCTION_4_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v72 = v31;
  v71 = v32;
  v76 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v74 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  v73 = v35;
  v36 = OUTLINED_FUNCTION_10_33();
  _s26ThresholdSelectionStrategyO36BalancedPrecisionAndRecallCodingKeysOMa(v36, v37, v38, v39);
  OUTLINED_FUNCTION_9_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v70 = v40;
  v69 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v68[1] = v41;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  v44 = v68 - v43;
  v84 = v6;
  v85 = v5;
  _s26ThresholdSelectionStrategyO10CodingKeysOMa(255, v5, v6, v45);
  OUTLINED_FUNCTION_8_40();
  swift_getWitnessTable();
  sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v90 = v46;
  v91 = v47;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v48);
  v50 = (v68 - v49);
  v51 = *v4;
  v52 = *(v4 + 8);
  __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  v89 = v50;
  sub_237EFA1B0();
  switch(v52)
  {
    case 1:
      LOBYTE(v95) = 2;
      v63 = v78;
      v65 = v89;
      v64 = v90;
      sub_237EF99C0();
      LOBYTE(v95) = 0;
      v66 = v81;
      v67 = v92;
      sub_237EF9A40();
      if (!v67)
      {
        LOBYTE(v95) = 1;
        sub_237EF9A40();
      }

      (*(v80 + 8))(v63, v66);
      result = (*(v91 + 8))(v65, v64);
      break;
    case 2:
      LOBYTE(v95) = 3;
      v53 = v83;
      v55 = v89;
      v54 = v90;
      sub_237EF99C0();
      v95 = v51;
      sub_237EF82B0();
      v93 = v86;
      v94 = MEMORY[0x277D83AA0];
      swift_getWitnessTable();
      v56 = v88;
      sub_237EF9A70();
      v58 = v87;
      goto LABEL_6;
    case 3:
      LOBYTE(v95) = 0;
      sub_237EF99C0();
      OUTLINED_FUNCTION_18_25();
      v60(v44, v69);
      v61 = OUTLINED_FUNCTION_31_0();
      result = v62(v61);
      break;
    default:
      LOBYTE(v95) = 1;
      v53 = v73;
      v55 = v89;
      v54 = v90;
      sub_237EF99C0();
      LOBYTE(v95) = 0;
      v56 = v76;
      v57 = v92;
      sub_237EF9A40();
      if (!v57)
      {
        LOBYTE(v95) = 1;
        sub_237EF9A40();
      }

      v58 = v74;
LABEL_6:
      (*(v58 + 8))(v53, v56);
      result = (*(v91 + 8))(v55, v54);
      break;
  }

  return result;
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a3;
  v107 = a5;
  v9 = _s26ThresholdSelectionStrategyO15FixedCodingKeysOMa(255, a2, a4, a4);
  OUTLINED_FUNCTION_7_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v116 = v10;
  v117 = v9;
  v106 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v105 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v14 = OUTLINED_FUNCTION_1_54(v13);
  v18 = _s26ThresholdSelectionStrategyO16RecallCodingKeysOMa(v14, v15, v16, v17);
  OUTLINED_FUNCTION_5_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v114 = v19;
  v115 = v18;
  v104 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v103 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v23 = OUTLINED_FUNCTION_1_54(v22);
  v27 = _s26ThresholdSelectionStrategyO19PrecisionCodingKeysOMa(v23, v24, v25, v26);
  OUTLINED_FUNCTION_4_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v113 = v27;
  v112 = v28;
  v102 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v101 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  v32 = OUTLINED_FUNCTION_1_54(v31);
  v36 = _s26ThresholdSelectionStrategyO36BalancedPrecisionAndRecallCodingKeysOMa(v32, v33, v34, v35);
  OUTLINED_FUNCTION_9_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v111 = v37;
  v100 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v99 = v38;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  v41 = &v96 - v40;
  _s26ThresholdSelectionStrategyO10CodingKeysOMa(255, a2, a4, v42);
  OUTLINED_FUNCTION_8_40();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v119 = v43;
  v120 = v44;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  v47 = &v96 - v46;
  v48 = a1;
  v49 = a1[3];
  v121 = v48;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v50 = v127;
  sub_237EFA190();
  v127 = v50;
  if (!v50)
  {
    v97 = v41;
    v98 = a2;
    v51 = v119;
    v52 = v47;
    *&v124[0] = sub_237EF9980();
    sub_237EF8A60();
    OUTLINED_FUNCTION_3_53();
    swift_getWitnessTable();
    *&v125 = sub_237EF9250();
    *(&v125 + 1) = v53;
    *&v126 = v54;
    *(&v126 + 1) = v55;
    sub_237EF9240();
    swift_getWitnessTable();
    sub_237EF8E00();
    v56 = LOBYTE(v124[0]);
    v57 = v51;
    if (LOBYTE(v124[0]) == 4 || (v96 = v125, v124[0] = v125, v124[1] = v126, (sub_237EF8EC0() & 1) == 0))
    {
      v61 = sub_237EF93E0();
      v62 = swift_allocError();
      v64 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
      *v64 = type metadata accessor for MultiLabelClassificationMetrics.ThresholdSelectionStrategy(0, v98, a4, v65);
      sub_237EF98C0();
      sub_237EF93D0();
      (*(*(v61 - 8) + 104))(v64, *MEMORY[0x277D84160], v61);
      v127 = v62;
      swift_willThrow();
      (*(v120 + 8))(v52, v57);
LABEL_18:
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = v118;
      switch(v56)
      {
        case 1:
          LOBYTE(v124[0]) = 1;
          v73 = v108;
          OUTLINED_FUNCTION_26_15(v113, v124, v51, v113);
          v127 = 0;
          LOBYTE(v124[0]) = 0;
          v69 = v102;
          sub_237EF9940();
          v74 = v107;
          v127 = 0;
          OUTLINED_FUNCTION_24_16();
          v85 = v127;
          sub_237EF9940();
          v127 = v85;
          if (v85)
          {
            v71 = *(v101 + 8);
            v72 = v73;
            goto LABEL_16;
          }

          v93 = v86;
          (*(v101 + 8))(v73, v69);
          v94 = OUTLINED_FUNCTION_14_30();
          v95(v94);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v79 = 0;
          v78 = v5 | (v93 << 32);
          goto LABEL_22;
        case 2:
          LOBYTE(v124[0]) = 2;
          v66 = v109;
          OUTLINED_FUNCTION_26_15(v115, v124, v51, v115);
          v127 = 0;
          LOBYTE(v124[0]) = 0;
          v67 = v104;
          sub_237EF9940();
          v127 = 0;
          OUTLINED_FUNCTION_24_16();
          v80 = v127;
          sub_237EF9940();
          v127 = v80;
          if (v80)
          {
            (*(v103 + 8))(v66, v67);
            goto LABEL_17;
          }

          v90 = v81;
          (*(v103 + 8))(v66, v67);
          v91 = OUTLINED_FUNCTION_14_30();
          v92(v91);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v78 = v5 | (v90 << 32);
          v79 = 1;
          goto LABEL_21;
        case 3:
          LOBYTE(v124[0]) = 3;
          v68 = v110;
          OUTLINED_FUNCTION_26_15(v117, v124, v51, v117);
          v127 = 0;
          OUTLINED_FUNCTION_12_7();
          sub_237EF82B0();
          v122 = v58;
          v123 = MEMORY[0x277D83AC8];
          swift_getWitnessTable();
          v69 = v106;
          v70 = v127;
          sub_237EF9970();
          v127 = v70;
          if (v70)
          {
            OUTLINED_FUNCTION_18_25();
            v72 = v68;
LABEL_16:
            v71(v72, v69);
LABEL_17:
            v87 = OUTLINED_FUNCTION_14_30();
            v88(v87);
            OUTLINED_FUNCTION_2_53();
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_18_25();
          v82(v68, v69);
          v83 = OUTLINED_FUNCTION_14_30();
          v84(v83);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v78 = *&v124[0];
          v79 = 2;
LABEL_21:
          v74 = v107;
LABEL_22:
          *v74 = v78;
          *(v74 + 8) = v79;
          break;
        default:
          v59 = v36;
          LOBYTE(v124[0]) = 0;
          v60 = v97;
          OUTLINED_FUNCTION_26_15(v59, v124, v51, v59);
          v127 = 0;
          OUTLINED_FUNCTION_18_25();
          v75(v60, v100);
          v76 = OUTLINED_FUNCTION_14_30();
          v77(v76);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v78 = 0;
          v79 = 3;
          goto LABEL_21;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v121);
}

uint64_t sub_237D64888(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E64414(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_237D648F4(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_237D648F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237EF9AA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEB10, &unk_237F0FD90);
        v6 = sub_237EF89B0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237D64A70(v7, v8, a1, v4);
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
    return sub_237D649F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237D649F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237D64A70(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 8;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 4;
          v20 = (v15 < v10) ^ (v17 >= v19);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = *(v25 + 1);
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*v34 >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0B510();
        v8 = v80;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_237D0B510();
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_237D65084((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_237D64F58(&v87, *a1, a3);
LABEL_89:
}

uint64_t sub_237D64F58(uint64_t *a1, float *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237D4F620(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237D65084((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237D65084(char *a1, char *a2, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_237C5EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_237C5EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  v14 = v6 - 4;
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*v14 < *(v10 - 4))
    {
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 4;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[4 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_237D652B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents31MultiLabelClassificationMetricsV26ThresholdSelectionStrategyOyx_G(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_237D6530C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_237D6534C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_237D65390(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *sub_237D653A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237D65474(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237D65540(_BYTE *result, int a2, int a3)
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

uint64_t sub_237D657C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB2000, &qword_237F0FD88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D658D4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_237EF8CD0();
  *a2 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(v14 + 16);
  v18 = *(v15 - 96);
  v19 = *(v14 + 24);

  return sub_237D6223C(v10, v9, v12, v17, v13, v18, v19, v11, a9);
}

void OUTLINED_FUNCTION_17_26(uint64_t a1@<X8>)
{
  *(v2 - 296) = a1;

  sub_237C62DB0(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237EF98B0();
}

uint64_t ClassificationDistribution.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v17 = a3;
  v18 = a5;
  KeyPath = swift_getKeyPath();
  sub_237C9339C(sub_237D66284, v16, v17, a2, MEMORY[0x277D84A98], v18);
  v11 = v10;

  v24 = v11;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF8D00();
  v12 = sub_237EF8C70();

  result = sub_237EF8DA0();
  if (v12 == result)
  {
    MEMORY[0x28223BE20](result);
    v14 = sub_237EF8800();
    OUTLINED_FUNCTION_22_3();
    result = (*(v15 + 8))(a1, a3);
    *a6 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t ClassificationDistribution.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Classification(255, *(a2 + 16), *(a2 + 24), a4);
  OUTLINED_FUNCTION_43_0();
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_43();
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF87D0();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (EnumTagSinglePayload == 1)
  {
    (*(v8 + 8))(v4, v6);
    v11 = 0;
  }

  else
  {
    v11 = *(v4 + *(v5 + 36));
    OUTLINED_FUNCTION_22_3();
    (*(v12 + 8))(v4, v5);
  }

  return v11 | ((EnumTagSinglePayload == 1) << 32);
}

uint64_t sub_237D65E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  type metadata accessor for Classification(255, v1, v2, v4);
  v5 = sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D673AC, KeyPath, v5, v1, MEMORY[0x277D84A98], WitnessTable);

  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  return sub_237EF8D00();
}

uint64_t ClassificationDistribution.mostLikelyLabel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Classification(255, v5, *(a1 + 24), a3);
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_43();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    (*(v9 + 8))(v3, v7);
    v11 = a2;
    v12 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    (*(v13 + 16))(a2, v3, v5);
    OUTLINED_FUNCTION_22_3();
    (*(v14 + 8))(v3, v6);
    v11 = a2;
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v5);
}

uint64_t ClassificationDistribution.labelsSortedByProbability.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  type metadata accessor for Classification(255, v2, v1, v4);
  v5 = sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D664D0, KeyPath, v5, v2, MEMORY[0x277D84A98], WitnessTable);
  v8 = v7;

  return v8;
}

uint64_t sub_237D6622C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for Classification(0, *(a1 + 16), *(a1 + 24), a4);

  return a2(v5, v6);
}

uint64_t ClassificationDistribution.topLabels(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  type metadata accessor for Classification(255, v4, *(a2 + 24), a4);
  sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237EF8EB0();
  KeyPath = swift_getKeyPath();
  v6 = sub_237EF9240();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D673AC, KeyPath, v6, v4, MEMORY[0x277D84A98], WitnessTable);
  v9 = v8;
  swift_unknownObjectRelease();

  return v9;
}

uint64_t ClassificationDistribution.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_45(a1, a2, a3, a4);
  OUTLINED_FUNCTION_36();

  return sub_237EF8AC0();
}

uint64_t ClassificationDistribution.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EF8260();
  swift_getWitnessTable();
  return sub_237EFA0B0();
}

uint64_t sub_237D665A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  OUTLINED_FUNCTION_4_45(a1, a2, a3, a4);
  v4 = OUTLINED_FUNCTION_36();

  return a3(v4);
}

uint64_t ClassificationDistribution.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v24 = *v6;
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v23[2] = v12;
  v23[3] = a4;
  v23[4] = v11;
  v23[5] = a5;
  v23[6] = a1;
  v23[7] = a2;
  type metadata accessor for Classification(255, v12, v11, a4);
  v13 = sub_237EF8A60();
  v15 = type metadata accessor for Classification(0, a4, a5, v14);
  sub_237EF8260();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D66800, v23, v13, v15, v16, WitnessTable);
  v19 = v18;

  if (!v7)
  {
    v24 = v19;
    v21 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    v22 = swift_getWitnessTable();
    return ClassificationDistribution.init<A>(_:)(&v24, a4, v21, a5, v22, a6);
  }

  return result;
}

uint64_t sub_237D6675C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D66800(uint64_t a1, void *a2)
{
  result = (*(v2 + 48))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_237D66844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6675C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D6689C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D668F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D66944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = ClassificationDistribution.startIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_237D6696C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = ClassificationDistribution.endIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

void (*sub_237D66994(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_237D66A08(v6, *a2, a3, v7);
  return sub_237C84CD0;
}

void (*sub_237D66A08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = type metadata accessor for Classification(0, *(a3 + 16), *(a3 + 24), a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  a1[2] = __swift_coroFrameAllocStub(*(v8 + 64));
  ClassificationDistribution.subscript.getter(a2, a3, v9, v10);
  return sub_237C84DD4;
}

Swift::Int sub_237D66B00@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ClassificationDistribution.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237D66B2C(Swift::Int *a1)
{
  result = ClassificationDistribution.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237D66B58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *v2;
  sub_237EF8260();
  v8 = ClassificationDistribution.startIndex.getter(a1, v5, v6, v7);

  a2[1] = v8;
  return result;
}

uint64_t sub_237D66BAC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237D66C00(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_237EF8E60();
}

uint64_t static ClassificationDistribution.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Classification(0, a3, a4, a4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36();

  return sub_237EF8A80();
}

uint64_t ClassificationDistribution.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_45(a1, a2, a3, a4);
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_36();

  return MEMORY[0x2821FC380](v4);
}

uint64_t ClassificationDistribution.hashValue.getter(uint64_t a1)
{
  v6[9] = *v1;
  sub_237EFA120();
  ClassificationDistribution.hash(into:)(v6, a1, v3, v4);
  return sub_237EFA170();
}

uint64_t sub_237D66D9C(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  ClassificationDistribution.hash(into:)(v6, a2, v3, v4);
  return sub_237EFA170();
}

uint64_t ClassificationDistribution<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 16);
  type metadata accessor for ClassificationDistribution.CodingKeys(255, v12, v11, a4);
  OUTLINED_FUNCTION_3_54();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v13 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_43();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EF8260();
  sub_237EFA1B0();
  type metadata accessor for Classification(255, v12, v11, v9);
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9A70();

  return (*(v13 + 8))(v4, v6);
}

uint64_t ClassificationDistribution<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v20 = a3;
  v21 = a4;
  v18 = a6;
  v19 = a5;
  type metadata accessor for ClassificationDistribution.CodingKeys(255, a2, a5, a4);
  OUTLINED_FUNCTION_3_54();
  swift_getWitnessTable();
  v22 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v6)
  {
    v15 = v18;
    type metadata accessor for Classification(255, a2, v19, v14);
    sub_237EF8A60();
    v24 = v20;
    v25 = v21;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v16 = v22;
    sub_237EF9970();
    (*(v10 + 8))(v13, v16);
    *v15 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D67268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237D672BC(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_4_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 16);

  return type metadata accessor for Classification(0, v6, v5, a4);
}

uint64_t Sequence.mapFeatures<A, B, C>(_:)()
{
  v0 = OUTLINED_FUNCTION_8_41();
  type metadata accessor for AnnotatedFeature(v0, v2, v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return OUTLINED_FUNCTION_14_31(v4, v5, v6, v7, v4, v8, MEMORY[0x277D84950], v9, v11);
}

uint64_t sub_237D67488@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>, void *a6)
{
  v29 = a2;
  v27 = a5;
  MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AnnotatedFeature(0, v21, v22, v20);
  v26 = a1;
  AnnotatedFeature.feature.getter(v23, v15);
  v24 = v30;
  v29(v15);
  result = (*(v12 + 8))(v15, a3);
  if (v24)
  {
    *a6 = v24;
  }

  else
  {
    AnnotatedFeature.annotation.getter(v23, v10);
    return AnnotatedFeature.init(feature:annotation:)(v19, v10, v28, a4, v27);
  }

  return result;
}

uint64_t Sequence.mapFeatures<A, B, C>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_15_27(a1, a2, a3, a4, a5, a6, a7);
  v7[11] = OUTLINED_FUNCTION_27_0();
  v11 = type metadata accessor for AnnotatedFeature(0, a5, a6, v10);
  v7[12] = v11;
  OUTLINED_FUNCTION_18(v11);
  v7[13] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[14] = v12;
  v13 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_17(v13);
  v7[16] = v14;
  v7[17] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[19] = OUTLINED_FUNCTION_30_18(v15, v16, v17, v18);
  OUTLINED_FUNCTION_1_1();
  v7[20] = v19;
  v7[21] = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v20);
  v7[22] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[23] = v21;
  v7[24] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_18(AssociatedTypeWitness);
  v7[26] = v23;
  v7[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_237D67908()
{
  v0 = OUTLINED_FUNCTION_21_23();
  v1 = OUTLINED_FUNCTION_16_28(v0);
  v2(v1);
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_18_26();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (!v3)
  {
    v8 = OUTLINED_FUNCTION_2_54();
    v9(v8);
    v10 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.feature.getter(v10, v11);
    OUTLINED_FUNCTION_0_47();
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_7_37(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_55(v13);
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X2, X16 }
  }

  v4 = OUTLINED_FUNCTION_1_55();
  v5(v4);

  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_237D67AC4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v2[29] = v0;

  (*(v2[14] + 8))(v2[15], v2[6]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237D67C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v19 = v14[20];
  v20 = v14[19];
  v43 = v14[18];
  v44 = v14[21];
  OUTLINED_FUNCTION_23_22();
  v21 = v14[7];
  v22 = v14[8];
  (*(v17 + 16))(v15);
  AnnotatedFeature.annotation.getter(v20, v18);
  AnnotatedFeature.init(feature:annotation:)(v15, v18, v21, v22, v16);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v17 + 8))(v43, v21);
  (*(v19 + 8))(v44, v20);
  OUTLINED_FUNCTION_17_27();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_1_55();
    v25(v24);
    v45 = v14[2];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_2_54();
    v27(v26);
    v28 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.feature.getter(v28, v29);
    OUTLINED_FUNCTION_0_47();
    v45 = v30;
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_7_37(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_3_55(v32);
    OUTLINED_FUNCTION_18_3();
  }

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v45, a12, a13, a14);
}

uint64_t sub_237D67E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v16 = v14[26];
  v15 = v14[27];
  v17 = v14[25];
  v27 = v14[13];
  v28 = v14[11];
  (*(v14[20] + 8))(v14[21], v14[19]);
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t Sequence.mapAnnotations<A, B, C>(_:)()
{
  v0 = OUTLINED_FUNCTION_8_41();
  type metadata accessor for AnnotatedFeature(v0, v1, v2, v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return OUTLINED_FUNCTION_14_31(v3, v4, v5, v6, v3, v7, MEMORY[0x277D84950], v8, v10);
}

uint64_t sub_237D67FB4@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v29 = a3;
  v30 = a2;
  v27 = a6;
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AnnotatedFeature(0, v22, v23, v21);
  AnnotatedFeature.feature.getter(v24, v20);
  AnnotatedFeature.annotation.getter(v24, v11);
  v25 = v31;
  v30(v11);
  (*(v9 + 8))(v11, a5);
  if (!v25)
  {
    return AnnotatedFeature.init(feature:annotation:)(v20, v15, a4, v28, v27);
  }

  result = (*(v17 + 8))(v20, a4);
  *a7 = v25;
  return result;
}

uint64_t Sequence.mapAnnotations<A, B, C>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_15_27(a1, a2, a3, a4, a5, a6, a7);
  v7[11] = OUTLINED_FUNCTION_27_0();
  v11 = type metadata accessor for AnnotatedFeature(0, v8, a6, v10);
  v7[12] = v11;
  OUTLINED_FUNCTION_18(v11);
  v7[13] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[14] = v12;
  v13 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_17(v13);
  v7[16] = v14;
  v7[17] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[19] = OUTLINED_FUNCTION_30_18(v15, v16, v17, v18);
  OUTLINED_FUNCTION_1_1();
  v7[20] = v19;
  v7[21] = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v20);
  v7[22] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[23] = v21;
  v7[24] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_18(AssociatedTypeWitness);
  v7[26] = v23;
  v7[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_237D684A8()
{
  v0 = OUTLINED_FUNCTION_21_23();
  v1 = OUTLINED_FUNCTION_16_28(v0);
  v2(v1);
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_18_26();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (!v3)
  {
    v8 = OUTLINED_FUNCTION_2_54();
    v9(v8);
    v10 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.annotation.getter(v10, v11);
    OUTLINED_FUNCTION_0_47();
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_7_37(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_55(v13);
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X2, X16 }
  }

  v4 = OUTLINED_FUNCTION_1_55();
  v5(v4);

  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_237D68664()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v2[29] = v0;

  (*(v2[14] + 8))(v2[15], v2[7]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237D687A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v19 = v14[20];
  v20 = v14[18];
  v44 = v14[21];
  v45 = v14[19];
  OUTLINED_FUNCTION_23_22();
  v21 = v14[8];
  v22 = v14[6];
  AnnotatedFeature.feature.getter(v23, v18);
  (*(v17 + 16))(v15, v20, v21);
  AnnotatedFeature.init(feature:annotation:)(v18, v15, v22, v21, v16);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v17 + 8))(v20, v21);
  (*(v19 + 8))(v44, v45);
  OUTLINED_FUNCTION_17_27();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_1_55();
    v26(v25);
    v46 = v14[2];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_2_54();
    v28(v27);
    v29 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.annotation.getter(v29, v30);
    OUTLINED_FUNCTION_0_47();
    v46 = v31;
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_7_37(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_3_55(v33);
    OUTLINED_FUNCTION_18_3();
  }

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v46, a12, a13, a14);
}

uint64_t LazySequence.mapFeatures<A, B, C>(_:)()
{
  OUTLINED_FUNCTION_10_34();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_11_32(v2);
  type metadata accessor for AnnotatedFeature(v3, v1, v0, v4);

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_20_21();
}

uint64_t sub_237D68A7C@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25[1] = a3;
  v26 = a2;
  v27 = a7;
  MEMORY[0x28223BE20](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AnnotatedFeature(0, v21, v22, v20);
  AnnotatedFeature.feature.getter(v23, v16);
  v26(v16);
  (*(v13 + 8))(v16, a4);
  AnnotatedFeature.annotation.getter(v23, v11);
  return AnnotatedFeature.init(feature:annotation:)(v19, v11, a5, a6, v27);
}

uint64_t LazySequence.mapAnnotations<A, B, C>(_:)()
{
  OUTLINED_FUNCTION_10_34();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_11_32(v2);
  type metadata accessor for AnnotatedFeature(v3, v1, v0, v4);

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_20_21();
}

uint64_t sub_237D68CF0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v23 = a2;
  v24 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnnotatedFeature(0, v19, v20, v18);
  AnnotatedFeature.feature.getter(v21, v17);
  AnnotatedFeature.annotation.getter(v21, v11);
  v23(v11);
  (*(v9 + 8))(v11, a4);
  return AnnotatedFeature.init(feature:annotation:)(v17, v14, a3, a5, v24);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_32(void *a1)
{
  v7 = *(v4 + 24);
  a1[2] = *(v4 + 16);
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v7;
  a1[7] = v6;
  a1[8] = v5;
  return 0;
}

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C8FFEC(v9, &a9, v11, v12, a5, v10, a7, v13 - 40);
}

uint64_t OUTLINED_FUNCTION_15_27(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = result;
  v8[4] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_237EF9860();
}

uint64_t OUTLINED_FUNCTION_21_23()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_30_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 144) = a1;

  return type metadata accessor for AnnotatedFeature(0, v6, v4, a4);
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return sub_237EF86F0();
}

uint64_t TabularTransformer.export(to:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v12 - v11, v2, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v20, &v22);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    (*(v15 + 8))(v14, v15);
    if (!v3)
    {
      sub_237E33BC0(a1);
      sub_237D0F8BC(v9);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_237D0F854(v20);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v18 = v17;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_237EF9CF0();
    v19 = v23;
    *v18 = v22;
    v18[1] = v19;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t TabularTransformer.export(to:metadata:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v31 = a1;
  v8 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = a2[8];
  (*(v16 + 16))(v14 - v13, v5, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v25, &v27);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    (*(v18 + 8))(v17, v18);
    if (!v4)
    {
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF7770();
      sub_237EF7800();
      sub_237EF77C0();
      sub_237EF77E0();
      v19 = sub_237EF7780();
      sub_237C9FB0C(v15, sub_237C9FE58, 0, v20);
      v19(v25, 0);
      sub_237E33BC0(v31);
      sub_237D0F8BC(v11);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_237D0F854(v25);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v23 = v22;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_237EF9CF0();
    v24 = v28;
    *v23 = v27;
    v23[1] = v24;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t Augmenter.init<A>(generator:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, void *a7@<X8>)
{
  *a7 = a2;
  a7[1] = a3;
  type metadata accessor for RandomNumberGeneratorReference(0, a5, a6, a4);
  result = sub_237D04D78(a1);
  a7[2] = result;
  return result;
}

uint64_t Augmenter.applied<A, B>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = *v4;
  v16 = *(v4 + 16);
  (*(v17 + 16))(v13 - v12);

  v15(v18);
  return sub_237D01A64(v14, v10, v16, a3, v7, a4);
}

uint64_t Augmenter.applied<A, B>(to:upsampledBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *(a3 + 16);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *v7;
  v20 = *(v7 + 16);
  (*(v21 + 16))(v17 - v16);

  v19(v22);
  return sub_237D1CAD8(v18, a2, v14, v20, a4, v11, a5, a6, a7, *(a3 + 32));
}

uint64_t sub_237D699D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_237D69A58(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
    return sub_237EF8260();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_237D69B04(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_237EF8260();
  }

LABEL_10:
  __break(1u);
  return result;
}

double HumanBodyActionCounter.CumulativeSumSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X8>)
{
  sub_237D69BEC(v1, v6);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v3 = sub_237D69BEC(v6, a1);
  v7(&v5, v3);
  sub_237D69C5C(v6);
  result = *&v5;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_237D69BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2188, &qword_237F10220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D69C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2188, &qword_237F10220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D69CE0@<X0>(uint64_t a1@<X8>)
{
  HumanBodyActionCounter.CumulativeSumSequence.makeAsyncIterator()(a1);

  return sub_237D6A738(v1);
}

uint64_t HumanBodyActionCounter.CumulativeSumSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_237D69D2C, 0, 0);
}

uint64_t sub_237D69D2C()
{
  OUTLINED_FUNCTION_2_0();
  v3 = (*(*(v0 + 72) + 64) + **(*(v0 + 72) + 64));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_237D69E1C;

  return v3(v0 + 16);
}

uint64_t sub_237D69E1C()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 88) = v0;

  if (v0)
  {
    v5 = sub_237D6A180;
  }

  else
  {
    v5 = sub_237D69F24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237D69F24()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v4 = v0[7];
    v5 = v0[9];
    v6 = v5[11];
    v24 = v0[5];
    v23 = v0[6];
    if (v6 && ((v7 = v5[13], v5[10] == v2) ? (v8 = v6 == v1) : (v8 = 0), v8 || (sub_237EF9D40() & 1) != 0))
    {
      if (v3 < v7)
      {
        result = v7 - v3;
        if (__OFSUB__(v7, v3))
        {
          __break(1u);
        }

        else
        {
          v10 = *(v4 + 16);
          if (v10 >= result)
          {
            result = sub_237D69B04(result, v10, v4);
            if (v12 >> 1 == v11)
            {
LABEL_15:
              v13 = v4;
              v14 = v1;
              v15 = v2;
              swift_unknownObjectRelease();
LABEL_28:
              v17 = v0[9];
              v18 = v0[8];
              v19 = *(v17 + 128) + 0.0;
              *(v17 + 128) = v19;
              v21 = v5[11];
              v22 = v5[10];
              sub_237D6A198(v15, v14, v3, v24, v23, v13);
              sub_237D6A1DC(v22, v21);
              v5[10] = v15;
              v5[11] = v14;
              *(v17 + 96) = v3;
              v5[13] = v24;
              *(v17 + 112) = v23;
              *(v17 + 120) = v13;
              sub_237EF8260();
              sub_237D6A1DC(v15, v14);
              *v18 = v15;
              *(v18 + 8) = v14;
              *(v18 + 16) = v3;
              *(v18 + 24) = v24;
              *(v18 + 32) = v23;
              *(v18 + 40) = v19;
              goto LABEL_29;
            }

            if ((v12 >> 1) > v11)
            {
              do
              {
                OUTLINED_FUNCTION_1_56();
              }

              while (!v8);
              goto LABEL_15;
            }

LABEL_34:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      v14 = v1;
      v15 = v2;
      if (*(v4 + 16))
      {
        v13 = v4;
        do
        {
          OUTLINED_FUNCTION_1_56();
        }

        while (!v8);
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v1;
      v15 = v2;
      if (*(v4 + 16))
      {
        v13 = v4;
        do
        {
          OUTLINED_FUNCTION_1_56();
        }

        while (!v8);
        goto LABEL_28;
      }
    }

    v13 = v4;
    goto LABEL_28;
  }

  v16 = v0[8];
  *(v16 + 28) = 0u;
  *v16 = 0u;
  v16[1] = 0u;
LABEL_29:
  v20 = v0[1];

  return v20();
}

void sub_237D6A198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_237EF8260();

    sub_237EF8260();
  }
}

uint64_t sub_237D6A1DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_237D6A220(uint64_t a1)
{
  result = sub_237D6A248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237D6A248()
{
  result = qword_27DEB2190;
  if (!qword_27DEB2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2190);
  }

  return result;
}

unint64_t sub_237D6A2A0()
{
  result = qword_27DEB2198;
  if (!qword_27DEB2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2198);
  }

  return result;
}

uint64_t sub_237D6A2F4()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_237D6A388;

  return HumanBodyActionCounter.CumulativeSumSequence.Iterator.next()(v2);
}

uint64_t sub_237D6A388()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_237D6A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237D6A53C;

  return (sub_237DB5468)(a1, a2, a3);
}

uint64_t sub_237D6A53C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents15TemporalFeatureVySaySfGGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237D6A684(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 132))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_237D6A6C4(uint64_t result, int a2, int a3)
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
      *(result + 132) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 132) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D6A77C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_237EF9710();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_237D6A7A0(void *a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  OUTLINED_FUNCTION_1();
  v45 = v2;
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v51 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_237EF6040();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == v19 || (v27 = DynamicType, DynamicType == sub_237C75918(0, &qword_280C8CD08, 0x277CBEAA8)))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
    OUTLINED_FUNCTION_21_24();
    swift_dynamicCast();
    a1 = sub_237D6C290();
    (*(v21 + 8))(v25, v19);
    return a1;
  }

  if (v27 == MEMORY[0x277CC9318] || v27 == sub_237C75918(0, &qword_280C8CD10, 0x277CBEA90))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
    swift_dynamicCast();
    v34 = v53[0];
    v35 = v53[1];
    sub_237D6CB80(v53[0]);
    OUTLINED_FUNCTION_26_16();
    sub_237CBA6B8(v34, v35);
    return a1;
  }

  if (v27 == v13 || v27 == sub_237C75918(0, &qword_280C8CD18, 0x277CBEBC0))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
    OUTLINED_FUNCTION_21_24();
    swift_dynamicCast();
    v36 = sub_237EF5E20();
    (*(v51 + 8))(v18, v13);
    sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
    return sub_237D6B380(v36);
  }

  type metadata accessor for Decimal(0);
  if (v27 == v28 || v27 == sub_237C75918(0, &qword_280C8CD20, 0x277CCA980))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
    sub_237C75918(0, &qword_280C8CD20, 0x277CCA980);
    OUTLINED_FUNCTION_19_27();
    swift_dynamicCast();
    return v53[0];
  }

  if (v27 == v8)
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
    OUTLINED_FUNCTION_21_24();
    swift_dynamicCast();
    sub_237D6C3E8(v12);
    OUTLINED_FUNCTION_26_16();
    (*(v48 + 8))(v12, v8);
    return a1;
  }

  v29 = v50;
  if (v27 == v50)
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
    OUTLINED_FUNCTION_21_24();
    v37 = v46;
    swift_dynamicCast();
    sub_237D6C550(v37);
    OUTLINED_FUNCTION_26_16();
    v38 = v47;
LABEL_24:
    (*(v38 + 8))(v37, v29);
    return a1;
  }

  v29 = v49;
  v30 = v52;
  if (v27 == v49)
  {
    sub_237C66728(a1, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
    OUTLINED_FUNCTION_21_24();
    v37 = v44;
    swift_dynamicCast();
    sub_237D6C878(v37);
    OUTLINED_FUNCTION_26_16();
    v38 = v45;
    goto LABEL_24;
  }

  sub_237C66728(a1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0, &qword_237F104F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A8, &qword_237F104F8);
  OUTLINED_FUNCTION_19_27();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21B0, &qword_237F10500);
    OUTLINED_FUNCTION_19_27();
    swift_dynamicCast();
    v31 = v55;
    sub_237D6CC84(v53[0]);
    if (!v31)
    {
      a1 = v32;
    }

    return a1;
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v39 = sub_237D6A77C(*(v30 + 16));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54[3] = _s19IntermediateEncoderCMa();
  v54[4] = sub_237D6DA1C(&qword_280C8D830, &unk_237F1049C);
  v54[0] = v30;

  v40 = v55;
  sub_237EF8310();
  if (v40)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    if (v39 >= sub_237D6A77C(*(v30 + 16)))
    {
LABEL_29:
      swift_willThrow();
      return a1;
    }

    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v41 = OUTLINED_FUNCTION_0_48();
    result = sub_237D6B0B8(v41, sub_237D0D048);
    if (result)
    {
      a1 = result;
      swift_endAccess();

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    if (v39 >= sub_237D6A77C(*(v30 + 16)))
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v42 = OUTLINED_FUNCTION_0_48();
    result = sub_237D6B0B8(v42, sub_237D0D048);
    if (result)
    {
      a1 = result;
      swift_endAccess();
      return a1;
    }
  }

  __break(1u);
  return result;
}

void sub_237D6AFB4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_237D6D9F0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_237D6B01C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_237D6D6F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
}

unint64_t sub_237D6B0B8(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, unint64_t))
{
  if (*v2 >> 62)
  {
    result = sub_237EF9710();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = sub_237D6D5B4(a1);
  if (!result)
  {
    v6 = sub_237D6A77C(*v2);
    v7 = __OFSUB__(v6, 1);
    result = v6 - 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      return sub_237D6D438(result, a1, a2);
    }
  }

  return result;
}

id sub_237D6B140(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v4 = a1;

    return [v3 initWithFloat_];
  }

  else
  {
    if (a1 == INFINITY)
    {
      sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
      v2 = OUTLINED_FUNCTION_17_28();
    }

    else
    {
      sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
      if (a1 == -INFINITY)
      {
        v2 = OUTLINED_FUNCTION_15_28();
      }

      else
      {
        v2 = 5136718;
      }
    }

    return sub_237D6B380(v2);
  }
}

id sub_237D6B214(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    return [v3 initWithDouble_];
  }

  else
  {
    if (a1 == INFINITY)
    {
      sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
      v2 = OUTLINED_FUNCTION_17_28();
    }

    else
    {
      sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
      if (a1 == -INFINITY)
      {
        v2 = OUTLINED_FUNCTION_15_28();
      }

      else
      {
        v2 = 5136718;
      }
    }

    return sub_237D6B380(v2);
  }
}

void *sub_237D6B2E8(void *a1)
{
  result = sub_237D6A7A0(a1);
  if (!v1 && !result)
  {
    return [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  }

  return result;
}

void *sub_237D6B330(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(v3 + 3, __src, 0x58uLL);
  v3[2] = MEMORY[0x277D84F90];
  v3[14] = a2;
  v3[15] = a3;
  return v3;
}

id sub_237D6B380(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_237EF8560();

  v3 = [v1 initWithString_];

  return v3;
}

void sub_237D6B3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*v3 + 200))(a1))
  {
    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v6 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    MEMORY[0x2383E09D0]();
    sub_237D86EEC();
    sub_237EF89F0();
    swift_endAccess();
    v7 = v6;
LABEL_6:
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    sub_237E31298();
    v13 = v12;
    _s14KeyedContainerVMa_0(0, a2, a3, v14);

    sub_237EF8260();

    v15 = v13;
    sub_237EF8260();
    swift_getWitnessTable();
    sub_237EF9A90();

    return;
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v8 = sub_237EF8260();
  v9 = sub_237ED8200(v8);

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v7 = v10;
      v11 = v9;
      goto LABEL_6;
    }
  }

  sub_237EF9740("Fatal error", 11, 2, 0xD00000000000005ALL, 0x8000000237EFE6B0, "CreateMLComponents/BlobJSONEncoder.IntermediateEncoder.swift", 60, 2, 60);
  __break(1u);
}

void sub_237D6B64C(void *a1@<X8>)
{
  v2 = v1;
  if ((*(*v1 + 200))())
  {
    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v4 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    MEMORY[0x2383E09D0]();
    OUTLINED_FUNCTION_10_35();
    sub_237D86EEC();
    OUTLINED_FUNCTION_18_14();
    sub_237EF89F0();
    swift_endAccess();
    v5 = v4;
LABEL_6:
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v10 = *(v2 + 120);
    a1[3] = &_s16UnkeyedContainerVN;
    a1[4] = sub_237D4D374();
    sub_237EF8260();

    *a1 = v2;
    a1[1] = v5;
    a1[2] = v10;
    return;
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v6 = sub_237EF8260();
  v7 = sub_237ED8200(v6);

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v5 = v8;
      v9 = v7;
      goto LABEL_6;
    }
  }

  sub_237EF9740("Fatal error", 11, 2, 0xD00000000000005CLL, 0x8000000237EFE650, "CreateMLComponents/BlobJSONEncoder.IntermediateEncoder.swift", 60, 2, 84);
  __break(1u);
}

uint64_t sub_237D6B800@<X0>(void *a2@<X8>)
{
  a2[3] = _s19IntermediateEncoderCMa();
  a2[4] = sub_237D6DA1C(&qword_280C8D828, &unk_237F103E4);
  *a2 = v2;
}

BOOL sub_237D6B864()
{
  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_237EF9710();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  return v2 == *(*(v0 + 120) + 16);
}

uint64_t sub_237D6B974()
{
  result = (*(*v0 + 200))();
  if ((result & 1) == 0)
  {
    result = sub_237EF9740("Fatal error", 11, 2, 0xD00000000000005DLL, 0x8000000237EFE5F0, "CreateMLComponents/BlobJSONEncoder.IntermediateEncoder.swift", 60, 2, 104);
    __break(1u);
  }

  return result;
}

void sub_237D6BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  sub_237D6B974();
  v20 = OUTLINED_FUNCTION_2_55([objc_allocWithZone(MEMORY[0x277CBEB68]) init]);
  MEMORY[0x2383E09D0](v20);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v21 = v20;
  sub_237D6B974();
  v22 = OUTLINED_FUNCTION_2_55([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_]);
  MEMORY[0x2383E09D0](v22);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v21 = v20;
  sub_237D6B974();
  v22 = OUTLINED_FUNCTION_2_55([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_]);
  MEMORY[0x2383E09D0](v22);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v21 = v20;
  sub_237D6B974();
  v22 = OUTLINED_FUNCTION_2_55([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_]);
  MEMORY[0x2383E09D0](v22);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v21 = v20;
  sub_237D6B974();
  v22 = OUTLINED_FUNCTION_2_55([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_]);
  MEMORY[0x2383E09D0](v22);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v21 = v20;
  sub_237D6B974();
  v22 = OUTLINED_FUNCTION_2_55([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_]);
  MEMORY[0x2383E09D0](v22);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  v21 = v20;
  v23 = v22;
  sub_237D6B974();
  v24 = OUTLINED_FUNCTION_5_44([objc_allocWithZone(MEMORY[0x277CCABB0]) *v21]);
  MEMORY[0x2383E09D0](v24);
  OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_16_29();
  sub_237D86EEC();
  OUTLINED_FUNCTION_16_29();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  sub_237D6B974();
  sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
  sub_237EF8260();
  v20 = OUTLINED_FUNCTION_18_14();
  sub_237D6B380(v20);
  OUTLINED_FUNCTION_7_38();
  v21 = swift_beginAccess();
  MEMORY[0x2383E09D0](v21);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

uint64_t sub_237D6BE14(uint64_t a1)
{
  OUTLINED_FUNCTION_11_33();
  v2 = v1;
  sub_237D6B974();
  v3 = sub_237D6B140(v2);
  v4 = OUTLINED_FUNCTION_2_55(v3);
  MEMORY[0x2383E09D0](v4);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  return swift_endAccess();
}

uint64_t sub_237D6BE8C(uint64_t a1)
{
  OUTLINED_FUNCTION_11_33();
  v2 = v1;
  sub_237D6B974();
  v3 = sub_237D6B214(v2);
  v4 = OUTLINED_FUNCTION_2_55(v3);
  MEMORY[0x2383E09D0](v4);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  return swift_endAccess();
}

uint64_t sub_237D6BF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237D6B974();
  v10[3] = a2;
  v10[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_237D6B2E8(v10);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v3)
  {
    OUTLINED_FUNCTION_7_38();
    v9 = swift_beginAccess();
    MEMORY[0x2383E09D0](v9);
    OUTLINED_FUNCTION_10_35();
    sub_237D86EEC();
    OUTLINED_FUNCTION_18_14();
    sub_237EF89F0();
    return swift_endAccess();
  }

  return result;
}

id sub_237D6C290()
{
  v0 = sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
  if (qword_27DEAD0B8 != -1)
  {
    v0 = swift_once();
  }

  MEMORY[0x28223BE20](v0);
  sub_237D6B01C();
  return sub_237D6B380(v1);
}

void sub_237D6C364(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237EF6020();
  v5 = [a1 stringFromDate_];

  v6 = sub_237EF8590();
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_237D6C3E8(uint64_t a1)
{
  OUTLINED_FUNCTION_11_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v2 = sub_237EF7E20();
  OUTLINED_FUNCTION_24_18(v2);
  if (v1)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_6_36(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0);
    sub_237EF7F50();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED80, &unk_237F10510);
    v3 = OUTLINED_FUNCTION_4_46(&qword_27DEB21D0);
    OUTLINED_FUNCTION_13_22(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16[0], v16[1], v16[2], v17, v18);
    OUTLINED_FUNCTION_22_21();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = sub_237C75918(0, &qword_280C8E1F8, 0x277D82BB8);
    OUTLINED_FUNCTION_14_32(v11, v12, v13, v11);
  }

  return OUTLINED_FUNCTION_25_17();
}

BOOL sub_237D6C508(_BOOL8 result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (result + 32);
  v3 = 1;
  while (1)
  {
    v4 = *v2++;
    v5 = v3 * v4;
    if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
    {
      break;
    }

    v3 = v5;
    if (!--v1)
    {
      return v5 < 5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D6C550(uint64_t a1)
{
  OUTLINED_FUNCTION_11_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  v2 = sub_237EF7E20();
  OUTLINED_FUNCTION_24_18(v2);
  if (v1)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_6_36(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350);
    sub_237EF7F50();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED90, &unk_237F07380);
    v3 = OUTLINED_FUNCTION_4_46(&qword_27DEB21D8);
    OUTLINED_FUNCTION_13_22(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16[0], v16[1], v16[2], v17, v18);
    OUTLINED_FUNCTION_22_21();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = sub_237C75918(0, &qword_280C8E1F8, 0x277D82BB8);
    OUTLINED_FUNCTION_14_32(v11, v12, v13, v11);
  }

  return OUTLINED_FUNCTION_25_17();
}

uint64_t sub_237D6C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_237EF5F40();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (!a1)
  {
    goto LABEL_7;
  }

  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v25 = a6;
  v17 = *(a5 + 40);
  (*(v13 + 104))(v15, *MEMORY[0x277CC92A8], v12);
  sub_237EF8260();
  sub_237EF8260();
  v18 = MEMORY[0x2383DE040](a1, 8 * a2, v15);
  v20 = v19;
  swift_beginAccess();
  sub_237E6528C(v18, v20);
  swift_endAccess();
  v26[3] = &type metadata for ShapedArrayReference;
  v26[4] = sub_237D6D960();
  v21 = swift_allocObject();
  v26[0] = v21;
  *(v21 + 16) = v17;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = 1;
  v22 = v26[9];
  v23 = sub_237D6B2E8(v26);
  sub_237CBA6B8(v18, v20);
  result = __swift_destroy_boxed_opaque_existential_1(v26);
  if (!v22)
  {
    *v25 = v23;
  }

  return result;
}

uint64_t sub_237D6C878(uint64_t a1)
{
  OUTLINED_FUNCTION_11_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  v2 = sub_237EF7E20();
  OUTLINED_FUNCTION_24_18(v2);
  if (v1)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_6_36(&qword_27DEB1968, &qword_27DEAEA50, &unk_237F068C0);
    sub_237EF7F50();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDA8, &qword_237F10520);
    v3 = OUTLINED_FUNCTION_4_46(&qword_27DEB21E0);
    OUTLINED_FUNCTION_13_22(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16[0], v16[1], v16[2], v17, v18);
    OUTLINED_FUNCTION_22_21();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = sub_237C75918(0, &qword_280C8E1F8, 0x277D82BB8);
    OUTLINED_FUNCTION_14_32(v11, v12, v13, v11);
  }

  return OUTLINED_FUNCTION_25_17();
}

uint64_t sub_237D6C998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v13 = sub_237EF5F40();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_17_8();
  result = swift_beginAccess();
  if (!a1)
  {
    goto LABEL_7;
  }

  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v26 = a7;
  v21 = *(a5 + 40);
  (*(v15 + 104))(v19, *MEMORY[0x277CC92A8], v13);
  sub_237EF8260();
  sub_237EF8260();
  v22 = MEMORY[0x2383DE040](a1, 4 * a2, v19);
  v24 = v23;
  OUTLINED_FUNCTION_7_38();
  swift_beginAccess();
  sub_237E6528C(v22, v24);
  swift_endAccess();
  v28[3] = &type metadata for ShapedArrayReference;
  v28[4] = sub_237D6D960();
  OUTLINED_FUNCTION_20_22();
  v25 = swift_allocObject();
  v28[0] = v25;
  *(v25 + 16) = v21;
  *(v25 + 24) = a3;
  *(v25 + 32) = a4;
  *(v25 + 40) = a6;
  sub_237D6B2E8(v28);
  OUTLINED_FUNCTION_22_21();
  sub_237CBA6B8(v22, v24);
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (!v19)
  {
    *v26 = a5;
  }

  return result;
}

uint64_t sub_237D6CB80(uint64_t a1)
{
  OUTLINED_FUNCTION_11_33();
  if (MEMORY[0x2383DE0D0]() <= 8)
  {
    v7 = OUTLINED_FUNCTION_18_14();
    sub_237CBA540(v7, v8);
    v9 = OUTLINED_FUNCTION_18_14();
    sub_237D6D714(v9, v10);
    v12 = v11;
    v15 = &type metadata for InlineData;
    v16 = sub_237D6D898();
    v14[0] = v12;
  }

  else
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v2 = *(v1 + 40);
    v3 = OUTLINED_FUNCTION_18_14();
    v4 = MEMORY[0x2383DE0D0](v3);
    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v5 = OUTLINED_FUNCTION_18_14();
    sub_237E6528C(v5, v6);
    swift_endAccess();
    v15 = &type metadata for DataReference;
    v16 = sub_237D6D8EC();
    v14[0] = v2;
    v14[1] = v4;
  }

  sub_237D6B2E8(v14);
  OUTLINED_FUNCTION_22_21();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return OUTLINED_FUNCTION_25_17();
}

void sub_237D6CC84(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v42 = sub_237D6A77C(*(v1 + 16));
  OUTLINED_FUNCTION_7_38();
  swift_beginAccess();
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  MEMORY[0x2383E09D0]();
  OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_16_29();
  sub_237D86EEC();
  OUTLINED_FUNCTION_16_29();
  v56 = v6;
  sub_237EF89F0();
  swift_endAccess();
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v43 = a1;
  sub_237EF8260();
  v12 = 0;
  v44 = v11;
  v45 = v7;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(v43 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_237C66728(*(v43 + 56) + 40 * v15, &v46);
      *&v49 = v17;
      *(&v49 + 1) = v18;
      sub_237C531B8(&v46, &v50);
      sub_237EF8260();
LABEL_10:
      v53 = v49;
      v54[0] = v50;
      v54[1] = v51;
      v55 = v52;
      v19 = *(&v49 + 1);
      if (!*(&v49 + 1))
      {

        if (v42 < sub_237D6A77C(*(v4 + 16)))
        {
          OUTLINED_FUNCTION_7_38();
          swift_beginAccess();
          v38 = OUTLINED_FUNCTION_0_48();
          if (!sub_237D6B0B8(v38, sub_237D0D048))
          {
            goto LABEL_34;
          }

          swift_endAccess();
        }

        goto LABEL_30;
      }

      v20 = v53;
      sub_237C531B8(v54, &v49);
      OUTLINED_FUNCTION_7_38();
      swift_beginAccess();
      v21 = *(v4 + 120);
      sub_237EF8260();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 120) = v21;
      v23 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237D0B6E8();
        v21 = v35;
        *(v4 + 120) = v35;
      }

      v24 = *(v21 + 16);
      if (v24 >= *(v21 + 24) >> 1)
      {
        sub_237D0B6E8();
        v21 = v36;
      }

      v47 = &type metadata for _JSONKey;
      v48 = sub_237CBA80C();
      OUTLINED_FUNCTION_20_22();
      v25 = swift_allocObject();
      *&v46 = v25;
      *(v25 + 16) = v20;
      *(v25 + 24) = v19;
      *(v25 + 32) = 0;
      *(v25 + 40) = 1;
      *(v21 + 16) = v24 + 1;
      sub_237C531B8(&v46, v21 + 40 * v24 + 32);
      *(v4 + 120) = v21;
      swift_endAccess();
      v26 = sub_237D6B2E8(&v49);
      v3 = v23;
      if (v23)
      {
        break;
      }

      v27 = v26;
      *&v46 = v20;
      *(&v46 + 1) = v19;
      [v56 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_7_38();
      swift_beginAccess();
      v28 = *(v4 + 120);
      if (!*(v28 + 16))
      {
        goto LABEL_32;
      }

      v29 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 120) = v28;
      if ((v29 & 1) == 0)
      {
        sub_237E641D0(v28, v30, v31, v32);
        v28 = v37;
        *(v4 + 120) = v37;
      }

      v11 = v44;
      v7 = v45;
      v33 = *(v28 + 16);
      if (!v33)
      {
        goto LABEL_33;
      }

      v34 = v33 - 1;
      __swift_destroy_boxed_opaque_existential_1((v28 + 40 * v33 - 8));
      *(v28 + 16) = v34;
      *(v4 + 120) = v28;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v49);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    sub_237D6D14C(&v46);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(&v49);
    if (v42 < sub_237D6A77C(*(v4 + 16)))
    {
      OUTLINED_FUNCTION_7_38();
      swift_beginAccess();
      v39 = OUTLINED_FUNCTION_0_48();
      v40 = sub_237D6B0B8(v39, sub_237D0D048);
      if (!v40)
      {
        goto LABEL_35;
      }

      v41 = v40;
      swift_endAccess();
    }

    swift_willThrow();
LABEL_30:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        v10 = 0;
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        goto LABEL_10;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_237D6D14C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_27_19();
  if (v2)
  {
    sub_237D6D4D4(&v4);
    if (v5)
    {
      sub_237C531B8(&v4, a1);
    }

    else
    {
      sub_237C863A0(&v4, &qword_27DEB21E8, &qword_237F10528);
      OUTLINED_FUNCTION_27_19();
      sub_237D6D314(v3 - 1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_237D6D1C8(_OWORD *a2@<X8>)
{
  OUTLINED_FUNCTION_27_19();
  if (v3)
  {
    sub_237D6D548(&v5);
    if (v6)
    {
      sub_237C91804(&v5, a2);
    }

    else
    {
      sub_237C863A0(&v5, &qword_27DEAED60, &unk_237F10530);
      OUTLINED_FUNCTION_27_19();
      sub_237D6D3A8(v4 - 1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_237D6D244(void *a1, void *(*a2)(uint64_t *__return_ptr, void))
{
  result = a2(&v4, *a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_237D6D2A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21C8, &qword_237F10508);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_237D6D314(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641D0(v5, v6, v7, v8);
    v5 = v11;
  }

  v9 = *(v5 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v5 + 40 * a1;
    sub_237C531B8((v10 + 32), a2);
    sub_237D0CC78((v10 + 72), v9 - 1 - a1, (v10 + 32));
    *(v5 + 16) = v9 - 1;
    *v2 = v5;
  }
}

void sub_237D6D3A8(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641E8(v5, v6, v7, v8);
    v5 = v11;
  }

  v9 = *(v5 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v5 + 32 * a1;
    sub_237C91804((v10 + 32), a2);
    sub_237D0CC58((v10 + 64), v9 - 1 - a1, (v10 + 32));
    *(v5 + 16) = v9 - 1;
    *v2 = v5;
  }
}

uint64_t sub_237D6D438(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

void sub_237D6D4D4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641D0(v3, v4, v5, v6);
    v3 = v9;
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    sub_237C531B8((v3 + 40 * v7 - 8), a1);
    *(v3 + 16) = v8;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_237D6D548(_OWORD *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641E8(v3, v4, v5, v6);
    v3 = v9;
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    sub_237C91804((v3 + 32 * v7), a1);
    *(v3 + 16) = v8;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237D6D5B4(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D6D628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = &type metadata for _JSONKey;
  v17 = sub_237CBA80C();
  OUTLINED_FUNCTION_20_22();
  v12 = swift_allocObject();
  *&v15 = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5 & 1;
  v13 = *a6;
  *(v13 + 16) = a1 + 1;
  return sub_237C531B8(&v15, v13 + 40 * a1 + 32);
}

void *sub_237D6D6CC@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = sub_237D6D244(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void sub_237D6D714(uint64_t a1, unint64_t a2)
{
  v4 = sub_237EF6010();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v8 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = BYTE6(a2);
LABEL_6:
      if (!v8)
      {
        goto LABEL_9;
      }

      sub_237D6D2A4(v8, 0);
      v11 = sub_237EF5F70();
      sub_237CBA6B8(a1, a2);
      (*(v5 + 8))(v7, v4);
      if (v11 != v8)
      {
        __break(1u);
LABEL_9:
        sub_237CBA6B8(a1, a2);
      }

      return;
  }
}

unint64_t sub_237D6D898()
{
  result = qword_27DEB21B8;
  if (!qword_27DEB21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB21B8);
  }

  return result;
}

unint64_t sub_237D6D8EC()
{
  result = qword_27DEB21C0;
  if (!qword_27DEB21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB21C0);
  }

  return result;
}

unint64_t sub_237D6D960()
{
  result = qword_280C8D288;
  if (!qword_280C8D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D288);
  }

  return result;
}

uint64_t sub_237D6DA1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s19IntermediateEncoderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_57()
{

  return sub_237D86EEC();
}

uint64_t OUTLINED_FUNCTION_2_55(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_46(unint64_t *a1)
{

  return sub_237C96710(a1, v1, v2, &unk_237F19408);
}

uint64_t OUTLINED_FUNCTION_5_44(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_36(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBFD28];

  return sub_237C96710(a1, a2, a3, v4);
}

id OUTLINED_FUNCTION_13_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;
  a10 = v15;
  a11 = v14;

  return sub_237D6B2E8(&a10);
}

uint64_t OUTLINED_FUNCTION_14_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237EF7DF0();
}

uint64_t OUTLINED_FUNCTION_23_23()
{

  return sub_237C66728(v0, v1 - 120);
}

uint64_t OUTLINED_FUNCTION_24_18(_BOOL8 a1)
{
  sub_237D6C508(a1);
}

uint64_t sub_237D6DD08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_237D6DD48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_237D6DDC4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v15 = MEMORY[0x277D84F90];
  result = sub_237C6311C(0, 0, 0);
  v7 = v15;
  v8 = *(a2 + 16);
  v9 = (a2 + 40);
  while (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v8)
    {
      return v7;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    sub_237EF8260();
    a3(__src, a1, v11, v10);

    v15 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_237C6311C((v12 > 1), v13 + 1, 1);
      v7 = v15;
    }

    *(v7 + 16) = v13 + 1;
    result = memcpy((v7 + 152 * v13 + 32), __src, 0x98uLL);
    v9 += 2;
    --v8;
    ++a1;
  }

  __break(1u);
  return result;
}

void sub_237D6DEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v15 = MEMORY[0x277D84F90];
  sub_237C62DB0(0, 0, 0);
  v6 = v15;
  v7 = *(a2 + 16);
  v8 = a2 + 32;
  while (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v7)
    {
      return;
    }

    v9 = *(v8 + 16);
    v13[0] = *v8;
    v13[1] = v9;
    v14[0] = *(v8 + 32);
    *(v14 + 14) = *(v8 + 46);
    v10 = a3(a1, v13);
    v15 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_237C62DB0(v11 > 1, v12 + 1, 1);
      v6 = v15;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    v8 += 56;
    --v7;
    ++a1;
  }

  __break(1u);
}

uint64_t sub_237D6E010()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F04760;
  v4 = sub_237D6E270();
  MEMORY[0x2383E0710](v4);

  *(v3 + 32) = 0x72656E7261656C22;
  *(v3 + 40) = 0xEA00000000003A22;
  v5 = *(v0 + 192);
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v6, 0);
    v7 = v5 + 32;
    do
    {
      v7 += 8;
      sub_237EF9AB0();
      OUTLINED_FUNCTION_98_0();
      v9 = *(v18 + 16);
      v8 = *(v18 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_237C62D90((v8 > 1), v9 + 1, 1);
      }

      *(v18 + 16) = v9 + 1;
      v10 = v18 + 16 * v9;
      *(v10 + 32) = v1;
      *(v10 + 40) = v2;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  v11 = OUTLINED_FUNCTION_35_9();
  v12 = OUTLINED_FUNCTION_92_1(v11);
  v14 = v13;

  MEMORY[0x2383E0710](v12, v14);

  MEMORY[0x2383E0710](93, 0xE100000000000000);
  *(v3 + 48) = 0x6E6F697372657622;
  *(v3 + 56) = 0xEB000000005B3A22;
  v15 = OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_1(v15);
  OUTLINED_FUNCTION_37_9();

  v16 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v16);

  sub_237EF8260();
  MEMORY[0x2383E0710](125, 0xE100000000000000);

  return 123;
}

uint64_t sub_237D6E270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_237F105E0;
  *(v0 + 32) = 0x7562697274746122;
  *(v0 + 40) = 0xEF7D7B3A22736574;
  OUTLINED_FUNCTION_20_5();
  *(v1 + 48) = 0xD000000000000012;
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_20_5();
  *(v3 + 64) = 0xD000000000000012;
  *(v3 + 72) = v4;
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v19[1] = v5;
  sub_237D6E9D0();
  OUTLINED_FUNCTION_101();

  *(v0 + 80) = 0xD000000000000013;
  *(v0 + 88) = v19[1];
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v19[1] = v6;
  sub_237D6EAD4();
  OUTLINED_FUNCTION_101();

  v7 = v19[1];
  *(v0 + 96) = 0xD000000000000016;
  *(v0 + 104) = v7;
  strcpy(v19, "objective:");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v8 = sub_237D6ECA8();
  MEMORY[0x2383E0710](v8);

  v9 = v19[1];
  *(v0 + 112) = v19[0];
  *(v0 + 120) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5(v10, v11, v12, v13, v14, v15, v16, v17, v0, v19[1]);
  OUTLINED_FUNCTION_56_8();

  return v19[0];
}

uint64_t sub_237D6E454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E7261656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D6E524(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x72656E7261656CLL;
  }
}

void sub_237D6E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21F0, &unk_237F106E0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_74_2();
  v29 = sub_237D6E890();
  OUTLINED_FUNCTION_85_2(&type metadata for XGBoostArtifact.CodingKeys, v30, v29);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_237D6E8E4();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    memcpy(v39, v38, sizeof(v39));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    sub_237D75F00(&qword_280C8CD28, &qword_27DEAD350, &unk_237F07040);
    sub_237EF9970();
    v31 = OUTLINED_FUNCTION_28_15();
    v32(v31);
    v33 = v37;
    memcpy(v34, v39, 0xC0uLL);
    v34[24] = v37;
    sub_237D6E968(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v25);
    memcpy(v35, v39, sizeof(v35));
    v36 = v33;
    sub_237D6E9A0(v35);
    memcpy(v27, v34, 0xC8uLL);
  }

  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6E7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6E454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D6E7CC(uint64_t a1)
{
  v2 = sub_237D6E890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6E808(uint64_t a1)
{
  v2 = sub_237D6E890();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D6E844(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_237D6E554(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0xC8uLL);
  }
}

unint64_t sub_237D6E890()
{
  result = qword_27DEB21F8;
  if (!qword_27DEB21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB21F8);
  }

  return result;
}

unint64_t sub_237D6E8E4()
{
  result = qword_27DEB2200;
  if (!qword_27DEB2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2200);
  }

  return result;
}

uint64_t sub_237D6E9D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_237F04760;
  sub_237D702B0();
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_77_2(v1, v2, v3, v4, v5, v6, v7, v8, 0x3A226C65646F6D22, 0xE800000000000000);
  OUTLINED_FUNCTION_100_1();
  v27 = v9;
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v10, v11, v12, v13, v14, v15, v16, v17, v27, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5(v18, v19, v20, v21, v22, v23, v24, v25, v0, v29);
  OUTLINED_FUNCTION_56_8();

  return v28;
}

uint64_t sub_237D6EAD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237F105F0;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  MEMORY[0x2383E0710](v0[6], v0[7]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, 0x63735F6573616222, 0xEF22203A2265726FLL);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x2383E0710](v1[4], v1[5]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v11, v12, v13, v14, v15, v16, v17, v18, v30, v33);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v34 = v19;
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  *(v2 + 64) = 0xD000000000000010;
  *(v2 + 72) = v34;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  v31 = v20 | 0x7261745F00000000;
  MEMORY[0x2383E0710](v1[2], v1[3]);
  OUTLINED_FUNCTION_36_11();
  *(v2 + 80) = v31;
  *(v2 + 88) = 0xEF22203A22746567;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5(v21, v22, v23, v24, v25, v26, v27, v28, v2, 0xEF22203A22746567);
  OUTLINED_FUNCTION_56_8();

  return v32;
}

uint64_t sub_237D6ECA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_237F03530;
  OUTLINED_FUNCTION_100_1();
  v30 = v2;
  MEMORY[0x2383E0710](*v0, v0[1]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, v30, 0xE800000000000000);
  if (v0[3])
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v32 = v11;
    sub_237D6F400();
    OUTLINED_FUNCTION_101();

    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    if (v13 >= v12 >> 1)
    {
      OUTLINED_FUNCTION_5_2(v12);
      sub_237D0B354();
      v1 = v28;
    }

    *(v1 + 16) = v13 + 1;
    v14 = v1 + 16 * v13;
    *(v14 + 32) = 0xD00000000000001BLL;
    *(v14 + 40) = v32;
  }

  if (v0[5])
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v32 = v15;
    OUTLINED_FUNCTION_5_12();
    v16 = sub_237D6F48C();
    MEMORY[0x2383E0710](v16);

    v17 = *(v1 + 16);
    if (v17 >= *(v1 + 24) >> 1)
    {
      sub_237D0B354();
      v1 = v29;
    }

    *(v1 + 16) = v17 + 1;
    v18 = v1 + 16 * v17;
    *(v18 + 32) = 0xD000000000000011;
    *(v18 + 40) = v32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5(v19, v20, v21, v22, v23, v24, v25, v26, v1, v32);
  OUTLINED_FUNCTION_56_8();

  return v31;
}

uint64_t sub_237D6EEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237EFE9F0 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x76697463656A626FLL && a2 == 0xE900000000000065;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E656964617267 && a2 == 0xEF726574736F6F42)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237D6EFCC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x76697463656A626FLL;
  }

  return 0x746E656964617267;
}

void sub_237D6F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2230, &qword_237F109C0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_74_2();
  v29 = sub_237D75CF4();
  OUTLINED_FUNCTION_85_2(&type metadata for XGBoostArtifact.Learner.CodingKeys, v30, v29);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_237D75D48();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v48 = v43;
    v49 = v44;
    v50 = v45;
    v51 = v46;
    LOBYTE(v39[0]) = 1;
    sub_237D75D9C();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v34 = v40[0];
    v35 = v40[2];
    v36 = v40[1];
    v37 = v40[3];
    v33 = v40[4];
    v38 = v40[5];
    sub_237D75E20();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v31 = OUTLINED_FUNCTION_28_15();
    v32(v31);
    memcpy(v47, v42, sizeof(v47));
    v39[0] = v48;
    v39[1] = v49;
    v39[2] = v50;
    v39[3] = v51;
    *&v39[4] = v34;
    *(&v39[4] + 1) = v36;
    *&v39[5] = v35;
    *(&v39[5] + 1) = v37;
    *&v39[6] = v33;
    *(&v39[6] + 1) = v38;
    memcpy(&v39[7], v42, 0x50uLL);
    sub_237D75E74(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_99_0();
    v40[8] = v34;
    v40[9] = v36;
    v40[10] = v35;
    v40[11] = v37;
    v40[12] = v33;
    v40[13] = v38;
    memcpy(v41, v47, sizeof(v41));
    sub_237D6E938(v40);
    memcpy(v27, v39, 0xC0uLL);
  }

  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6F314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6EEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D6F33C(uint64_t a1)
{
  v2 = sub_237D75CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6F378(uint64_t a1)
{
  v2 = sub_237D75CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D6F3B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_237D6F038(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0xC0uLL);
  }
}

uint64_t sub_237D6F400()
{
  OUTLINED_FUNCTION_9_22();
  sub_237EF9330();

  strcpy(v2, "{num_class:");
  v0 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E0710](v0);
  MEMORY[0x2383E0710](32034, 0xE200000000000000);
  return v2[0];
}

unint64_t sub_237D6F48C()
{
  OUTLINED_FUNCTION_9_22();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v0 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E0710](v0);
  MEMORY[0x2383E0710](32034, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_237D6F50C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000237EFEA10 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5073736F4C676572 && a2 == 0xEC0000006D617261)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237D6F628(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x5073736F4C676572;
}

void sub_237D6F684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22B8, &qword_237F10D80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_70_4();
  sub_237D76490();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_110_0(v27, v28, v29);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    LOBYTE(v35) = 0;
    OUTLINED_FUNCTION_42_7();
    v30 = sub_237EF9910();
    v32 = v31;
    sub_237D764E4();
    OUTLINED_FUNCTION_60_6();
    OUTLINED_FUNCTION_42_7();
    sub_237EF9900();
    sub_237D76538();
    OUTLINED_FUNCTION_60_6();
    OUTLINED_FUNCTION_42_7();
    sub_237EF9900();
    v33 = OUTLINED_FUNCTION_26_17();
    v34(v33);
    __swift_destroy_boxed_opaque_existential_1(v23);
    *v25 = v30;
    v25[1] = v32;
    v25[2] = v35;
    v25[3] = v36;
    v25[4] = v35;
    v25[5] = v36;
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6F874(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736F50656C616373 && a2 == 0xEE00746867696557)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D6F920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6F50C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D6F948(uint64_t a1)
{
  v2 = sub_237D76490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6F984(uint64_t a1)
{
  v2 = sub_237D76490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D6FA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6F874(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D6FA34(uint64_t a1)
{
  v2 = sub_237D76FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6FA70(uint64_t a1)
{
  v2 = sub_237D76FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D6FAF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7373616C436D756ELL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_237D6FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_1();
  a10 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  OUTLINED_FUNCTION_70_4();
  v36 = v26();
  OUTLINED_FUNCTION_110_0(v24, v24, v36);
  if (!v20)
  {
    sub_237EF9910();
    (*(a10 + 8))(v35, v31);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6FCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6FAF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D6FCE4(uint64_t a1)
{
  v2 = sub_237D76F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6FD20(uint64_t a1)
{
  v2 = sub_237D76F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D6FDDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75746165466D756ELL && a2 == 0xEA00000000006572;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65677261546D756ELL && a2 == 0xE900000000000074;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7373616C436D756ELL && a2 == 0xE800000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237D6FF48(char a1)
{
  result = 0x75746165466D756ELL;
  switch(a1)
  {
    case 1:
      result = 0x65677261546D756ELL;
      break;
    case 2:
      result = 0x7373616C436D756ELL;
      break;
    case 3:
      result = 0x726F635365736162;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D6FFDC()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22A8, &qword_237F10D78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v3 = sub_237D76404();
  OUTLINED_FUNCTION_86_0(&type metadata for XGBoostArtifact.LearnerModelParam.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    v5 = sub_237EF9910();
    OUTLINED_FUNCTION_63_4(v5, v6);
    v7 = OUTLINED_FUNCTION_76_3();
    v8(v7);
    v9 = OUTLINED_FUNCTION_53_7();
    sub_237D76458(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v11 = OUTLINED_FUNCTION_59_6();
    sub_237D75DF0(v11);
    OUTLINED_FUNCTION_65_4();
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D701E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6FDDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D7020C(uint64_t a1)
{
  v2 = sub_237D76404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D70248(uint64_t a1)
{
  v2 = sub_237D76404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D702B0()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237F08A50;
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  __dst[1] = v5;
  v6 = sub_237D70A64();
  MEMORY[0x2383E0710](v6);

  v7 = __dst[1];
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = v7;
  sub_237EF9330();

  strcpy(__dst, "tree_info:[");
  HIWORD(__dst[1]) = -4864;
  v8 = *(v0 + 48);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v39 = v4;
  if (v9)
  {
    v40[0] = MEMORY[0x277D84F90];
    sub_237C62D90(0, v9, 0);
    v10 = v40[0];
    v11 = (v8 + 32);
    v1 = MEMORY[0x277D83BF8];
    do
    {
      v12 = *v11++;
      v42 = v12;
      v2 = sub_237EF9AB0();
      v14 = v13;
      v40[0] = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_17_0(v15);
        sub_237C62D90(v18, v16 + 1, 1);
        v10 = v40[0];
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v2;
      *(v17 + 40) = v14;
      --v9;
    }

    while (v9);
    v3 = v0;
    v4 = v39;
  }

  v40[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  v19 = OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_1(v19);
  OUTLINED_FUNCTION_98_0();

  MEMORY[0x2383E0710](v1, v2);

  MEMORY[0x2383E0710](93, 0xE100000000000000);
  v20 = __dst[1];
  *(v4 + 48) = __dst[0];
  *(v4 + 56) = v20;
  v42 = 0x3A22736565727422;
  v43 = 0xE90000000000005BLL;
  v21 = *(v3 + 56);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v41 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v22, 0);
    v23 = v41;
    v24 = (v21 + 32);
    do
    {
      memcpy(__dst, v24, 0x98uLL);
      sub_237D74EE4(__dst, v40);
      v25 = sub_237D70BE8();
      v27 = v26;
      sub_237D74F1C(__dst);
      v41 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_237C62D90((v28 > 1), v29 + 1, 1);
        v23 = v41;
      }

      *(v23 + 16) = v29 + 1;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v24 += 152;
      --v22;
    }

    while (v22);
    v4 = v39;
  }

  v40[0] = v23;
  v31 = OUTLINED_FUNCTION_35_9();
  v32 = OUTLINED_FUNCTION_92_1(v31);
  v34 = v33;

  MEMORY[0x2383E0710](v32, v34);

  MEMORY[0x2383E0710](93, 0xE100000000000000);
  v35 = v43;
  *(v4 + 64) = v42;
  *(v4 + 72) = v35;
  v40[0] = v4;
  v36 = OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_1(v36);
  OUTLINED_FUNCTION_37_9();

  v40[0] = 123;
  v40[1] = 0xE100000000000000;
  v37 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v37);

  sub_237EF8260();
  MEMORY[0x2383E0710](125, 0xE100000000000000);

  return v40[0];
}

uint64_t sub_237D70674(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D70738(char a1)
{
  if (a1)
  {
    return 0x6C65646F6DLL;
  }

  else
  {
    return 1701667182;
  }
}

void sub_237D70764()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22D8, &qword_237F10D88);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74_2();
  sub_237D7658C();
  sub_237EFA190();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v11[0]) = 0;
    v5 = sub_237EF9910();
    v7 = v6;
    v16 = 1;
    sub_237D765E0();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v8 = OUTLINED_FUNCTION_73_2();
    v9(v8);
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    *&v10[0] = v5;
    *(&v10[0] + 1) = v7;
    v10[1] = v17;
    v10[2] = v18;
    v10[3] = v19;
    v10[4] = v20;
    sub_237D76634(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v11[0] = v5;
    v11[1] = v7;
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v15 = v24;
    sub_237D7666C(v11);
    memcpy(v25, v10, 0x50uLL);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D70978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D70674(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D709A0(uint64_t a1)
{
  v2 = sub_237D7658C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D709DC(uint64_t a1)
{
  v2 = sub_237D7658C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D70A18(void *a1@<X8>)
{
  sub_237D70764();
  if (!v1)
  {
    memcpy(a1, v3, 0x50uLL);
  }
}

uint64_t sub_237D70A64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_237F08A50;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v32 = v2;
  MEMORY[0x2383E0710](v0[2], v0[3]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, 0xD000000000000015, v32);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  v30 = v11 | 0x6572745F00000000;
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v12, v13, v14, v15, v16, v17, v18, v19, v30, 0xED0000223A227365);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v33 = v20;
  MEMORY[0x2383E0710](v0[4], v0[5]);
  OUTLINED_FUNCTION_36_11();
  *(v1 + 64) = 0xD000000000000014;
  *(v1 + 72) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5(v21, v22, v23, v24, v25, v26, v27, v28, v1, v33);
  OUTLINED_FUNCTION_56_8();

  return v31;
}

uint64_t sub_237D70BE8()
{
  v1 = 0xD000000000000010;
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v207 = v2;
  v204 = v0;
  v3 = *(v0 + 72);
  v4 = *(v3 + 16);
  if (v4)
  {
    v206 = MEMORY[0x277D84F90];
    v5 = OUTLINED_FUNCTION_55_6();
    sub_237C62D90(v5, v6, v7);
    v8 = v3 + 32;
    do
    {
      v9 = sub_237EF8C30();
      v11 = v10;
      v205 = v10;
      v12 = sub_237D05400();
      v20 = OUTLINED_FUNCTION_45_6(v12, v13, v14, v15, v16, v17, v18, v19, v200, v201);
      if ((v20 & 1) == 0)
      {
        v28 = OUTLINED_FUNCTION_45_6(v20, v21, v22, v23, v24, v25, v26, v27, v200, v201);
        if ((v28 & 1) == 0 && (OUTLINED_FUNCTION_45_6(v28, v29, v30, v31, v32, v33, v34, v35, v200, v201) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
          v11 = v205;
        }
      }

      v37 = *(v206 + 16);
      v36 = *(v206 + 24);
      if (v37 >= v36 >> 1)
      {
        v39 = OUTLINED_FUNCTION_17_0(v36);
        sub_237C62D90(v39, v37 + 1, 1);
      }

      *(v206 + 16) = v37 + 1;
      v38 = v206 + 16 * v37;
      *(v38 + 32) = v9;
      *(v38 + 40) = v11;
      v8 += 4;
      --v4;
    }

    while (v4);
    v1 = 0xD000000000000010;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237D74E80();
  OUTLINED_FUNCTION_35_9();
  v202 = v40;
  sub_237EF83F0();
  OUTLINED_FUNCTION_37_9();

  v41 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v41);

  OUTLINED_FUNCTION_41_6();
  sub_237D0B354();
  v43 = v42;
  v45 = *(v42 + 16);
  v44 = *(v42 + 24);
  v46 = v44 >> 1;
  v47 = v45 + 1;
  if (v44 >> 1 <= v45)
  {
    OUTLINED_FUNCTION_5_2(v44);
    sub_237D0B354();
    v43 = v184;
    v44 = *(v184 + 24);
    v46 = v44 >> 1;
  }

  *(v43 + 16) = v47;
  v48 = v43 + 16 * v45;
  *(v48 + 32) = 0xD000000000000010;
  *(v48 + 40) = v207;
  v49 = v45 + 2;
  if (v46 < (v45 + 2))
  {
    OUTLINED_FUNCTION_17_0(v44);
    OUTLINED_FUNCTION_64_4();
    v43 = v185;
  }

  *(v43 + 16) = v49;
  v50 = v43 + 16 * v47;
  *(v50 + 32) = 0x726F676574616322;
  *(v50 + 40) = 0xEF5D5B3A22736569;
  v51 = *(v43 + 24);
  v52 = v45 + 3;
  if ((v45 + 3) > (v51 >> 1))
  {
    OUTLINED_FUNCTION_17_0(v51);
    OUTLINED_FUNCTION_64_4();
    v43 = v186;
  }

  OUTLINED_FUNCTION_20_5();
  *(v43 + 16) = v52;
  v53 = v43 + 16 * v49;
  *(v53 + 32) = 0xD000000000000015;
  *(v53 + 40) = v54;
  v55 = *(v43 + 24);
  v56 = v45 + 4;
  if ((v45 + 4) > (v55 >> 1))
  {
    OUTLINED_FUNCTION_5_2(v55);
    sub_237D0B354();
    v43 = v187;
  }

  OUTLINED_FUNCTION_20_5();
  *(v43 + 16) = v56;
  v57 = v43 + 16 * v52;
  *(v57 + 32) = 0xD000000000000018;
  *(v57 + 40) = v58;
  v59 = *(v43 + 24);
  if ((v45 + 5) > (v59 >> 1))
  {
    OUTLINED_FUNCTION_17_0(v59);
    OUTLINED_FUNCTION_64_4();
    v43 = v188;
  }

  OUTLINED_FUNCTION_20_5();
  *(v43 + 16) = v45 + 5;
  v60 = v43 + 16 * v56;
  *(v60 + 32) = 0xD000000000000015;
  *(v60 + 40) = v61;
  OUTLINED_FUNCTION_20_5();
  if (*(*(v204 + 24) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    v1 = MEMORY[0x277D83B88];
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v63)
      {
        OUTLINED_FUNCTION_25_18(v62);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v64);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v65 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v65);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v66);
    sub_237D0B354();
    v43 = v189;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  v67 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v67);

  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v68);
    sub_237D0B354();
    v43 = v190;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v69 + 8) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    v1 = MEMORY[0x277D83B88];
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v63)
      {
        OUTLINED_FUNCTION_25_18(v70);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v64);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v71 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v71);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v72);
    sub_237D0B354();
    v43 = v191;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  v208 = v73;
  if (*(*(v204 + 40) + 16))
  {
    v203 = v43;
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_72_2();
    do
    {
      sub_237EF8C30();
      v74 = OUTLINED_FUNCTION_46_7();
      v82 = OUTLINED_FUNCTION_5_45(v74, v75, v76, v77, v78, v79, v80, v81, v200, v202);
      if ((v82 & 1) == 0)
      {
        v90 = OUTLINED_FUNCTION_5_45(v82, v83, v84, v85, v86, v87, v88, v89, v200, v202);
        if ((v90 & 1) == 0 && (OUTLINED_FUNCTION_5_45(v90, v91, v92, v93, v94, v95, v96, v97, v200, v202) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
        }
      }

      OUTLINED_FUNCTION_58_5();
      if (v63)
      {
        v99 = OUTLINED_FUNCTION_17_0(v98);
        OUTLINED_FUNCTION_90_1(v99);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v64);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v100 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v100);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v101);
    sub_237D0B354();
    v43 = v192;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  if (*(*(v102 + 32) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v63)
      {
        OUTLINED_FUNCTION_25_18(v103);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v64);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v104 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v104);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v105);
    sub_237D0B354();
    v43 = v193;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v106 + 16) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v63)
      {
        OUTLINED_FUNCTION_25_18(v107);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v64);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v108 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v108);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v109);
    sub_237D0B354();
    v43 = v194;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v110 + 48) + 16))
  {
    v203 = v43;
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_72_2();
    do
    {
      sub_237EF8C30();
      v111 = OUTLINED_FUNCTION_46_7();
      v119 = OUTLINED_FUNCTION_5_45(v111, v112, v113, v114, v115, v116, v117, v118, v200, v202);
      if ((v119 & 1) == 0)
      {
        v127 = OUTLINED_FUNCTION_5_45(v119, v120, v121, v122, v123, v124, v125, v126, v200, v202);
        if ((v127 & 1) == 0 && (OUTLINED_FUNCTION_5_45(v127, v128, v129, v130, v131, v132, v133, v134, v200, v202) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
        }
      }

      OUTLINED_FUNCTION_58_5();
      if (v63)
      {
        v136 = OUTLINED_FUNCTION_17_0(v135);
        OUTLINED_FUNCTION_90_1(v136);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v64);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v137 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v137);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v138);
    sub_237D0B354();
    v43 = v195;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v139 + 56) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v63)
      {
        OUTLINED_FUNCTION_25_18(v140);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v64);
    v43 = v203;
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v141 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v141);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v142);
    sub_237D0B354();
    v43 = v196;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  if (*(*(v143 + 64) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v63)
      {
        OUTLINED_FUNCTION_25_18(v144);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v64);
    v43 = v203;
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v145 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v145);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v146);
    sub_237D0B354();
    v43 = v197;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  if (*(*(v147 + 80) + 16))
  {
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_72_2();
    do
    {
      sub_237EF8C30();
      v148 = OUTLINED_FUNCTION_46_7();
      v156 = OUTLINED_FUNCTION_5_45(v148, v149, v150, v151, v152, v153, v154, v155, v200, v202);
      if ((v156 & 1) == 0)
      {
        v164 = OUTLINED_FUNCTION_5_45(v156, v157, v158, v159, v160, v161, v162, v163, v200, v202);
        if ((v164 & 1) == 0 && (OUTLINED_FUNCTION_5_45(v164, v165, v166, v167, v168, v169, v170, v171, v200, v202) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
        }
      }

      OUTLINED_FUNCTION_58_5();
      if (v63)
      {
        v173 = OUTLINED_FUNCTION_17_0(v172);
        OUTLINED_FUNCTION_90_1(v173);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v64);
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v174 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v174);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v63)
  {
    OUTLINED_FUNCTION_5_2(v175);
    sub_237D0B354();
    v43 = v198;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  v176 = sub_237D72220();
  MEMORY[0x2383E0710](v176);

  v178 = *(v43 + 16);
  v177 = *(v43 + 24);
  if (v178 >= v177 >> 1)
  {
    OUTLINED_FUNCTION_17_0(v177);
    OUTLINED_FUNCTION_64_4();
    v43 = v199;
  }

  *(v43 + 16) = v178 + 1;
  v179 = v43 + 16 * v178;
  *(v179 + 32) = v1;
  *(v179 + 40) = v208;
  OUTLINED_FUNCTION_35_9();
  v180 = sub_237EF83F0();
  v182 = v181;

  MEMORY[0x2383E0710](v180, v182);

  sub_237EF8260();
  MEMORY[0x2383E0710](125, 0xE100000000000000);

  return 123;
}

uint64_t sub_237D717A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000237EFEA30 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F666E4965657274 && a2 == 0xE800000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365657274 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237D718BC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6F666E4965657274;
  }

  return 0x7365657274;
}

void sub_237D71914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2380, &qword_237F112D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_70_4();
  sub_237D76FF8();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_110_0(v26, v27, v28);
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_237D7704C();
    OUTLINED_FUNCTION_60_6();
    sub_237EF9970();
    v29 = v41;
    v30 = v42;
    v31 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    sub_237D75F00(&qword_280C8CD28, &qword_27DEAD350, &unk_237F07040);
    sub_237EF9970();
    v36 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2398, &qword_237F112D8);
    v46[0] = 2;
    sub_237D770A0();
    sub_237EF9970();
    v32 = OUTLINED_FUNCTION_26_17();
    v33(v32);
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *&v40 = v41;
    *(&v40 + 1) = a10;
    sub_237D77178(&v37, &v41);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v36;
    v45 = a10;
    sub_237D771B0(&v41);
    v34 = v38;
    *v24 = v37;
    v24[1] = v34;
    v35 = v40;
    v24[2] = v39;
    v24[3] = v35;
  }

  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}
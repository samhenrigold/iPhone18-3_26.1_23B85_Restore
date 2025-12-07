uint64_t sub_23E891858(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v5 = type metadata accessor for RenderLayerType(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E838, &qword_23E9035C0);
  MEMORY[0x28223BE20](v8);
  v39 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E840, &qword_23E9035C8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v35 - v13);
  MEMORY[0x28223BE20](v12);
  v17 = (&v35 - v16);
  if (*(a1 + 61) << 40 != 0x20000000000)
  {
    v35 = v15;
    v37 = v3;
    v22 = *(v2 + 20);
    *v17 = v22;
    v23 = 1;
    swift_storeEnumTagMultiPayload();
    v36 = v6;
    v24 = *(v6 + 56);
    v24(v17, 0, 1, v5);
    if (*(a1 + 61) << 40 != 0x20000000000)
    {
      *v14 = *(a1 + 20);
      swift_storeEnumTagMultiPayload();
      v23 = 0;
    }

    v24(v14, v23, 1, v5);
    v25 = *(v8 + 48);
    v26 = v39;
    sub_23E8891B4(v17, v39, &qword_27E35E840, &qword_23E9035C8);
    sub_23E8891B4(v14, v26 + v25, &qword_27E35E840, &qword_23E9035C8);
    v27 = *(v36 + 48);
    if (v27(v26, 1, v5) == 1)
    {
      sub_23E87E458(v14, &qword_27E35E840, &qword_23E9035C8);
      sub_23E87E458(v17, &qword_27E35E840, &qword_23E9035C8);
      if (v27(v26 + v25, 1, v5) == 1)
      {
        sub_23E87E458(v26, &qword_27E35E840, &qword_23E9035C8);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v28 = v35;
      sub_23E8891B4(v26, v35, &qword_27E35E840, &qword_23E9035C8);
      if (v27(v26 + v25, 1, v5) != 1)
      {
        v34 = v38;
        sub_23E893B20(v26 + v25, v38);
        LODWORD(v36) = sub_23E88EB14(v28, v34);
        sub_23E893BE8(v34, type metadata accessor for RenderLayerType);
        sub_23E87E458(v14, &qword_27E35E840, &qword_23E9035C8);
        sub_23E87E458(v17, &qword_27E35E840, &qword_23E9035C8);
        sub_23E893BE8(v28, type metadata accessor for RenderLayerType);
        sub_23E87E458(v26, &qword_27E35E840, &qword_23E9035C8);
        v29 = v40;
        if (v36)
        {
          return MEMORY[0x277D84F90];
        }

LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_23E903380;
        v30 = type metadata accessor for RenderLayerAction(0);
        *(v18 + 56) = v30;
        *(v18 + 64) = sub_23E893A84();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
        *(boxed_opaque_existential_1 + *(v30 + 20)) = v22;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RenderLayerActionType(0);
        swift_storeEnumTagMultiPayload();
        v32 = sub_23E9006D4();
        (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v29, v32);
        return v18;
      }

      sub_23E87E458(v14, &qword_27E35E840, &qword_23E9035C8);
      sub_23E87E458(v17, &qword_27E35E840, &qword_23E9035C8);
      sub_23E893BE8(v28, type metadata accessor for RenderLayerType);
    }

    sub_23E87E458(v26, &qword_27E35E838, &qword_23E9035C0);
    v29 = v40;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23E903380;
  v19 = type metadata accessor for RenderLayerAction(0);
  *(v18 + 56) = v19;
  *(v18 + 64) = sub_23E893A84();
  v20 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  *(v20 + *(v19 + 20)) = *(v2 + 20);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RenderLayerActionType(0);
  swift_storeEnumTagMultiPayload();
  v21 = sub_23E9006D4();
  (*(*(v21 - 8) + 16))(v20, v40, v21);
  return v18;
}

uint64_t sub_23E891E68(uint64_t *a1, uint64_t a2)
{
  v6 = type metadata accessor for RenderLayerType(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E838, &qword_23E9035C0);
  MEMORY[0x28223BE20](v67);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E840, &qword_23E9035C8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v52 - v14);
  MEMORY[0x28223BE20](v13);
  v18 = (&v52 - v17);
  if (a1[2])
  {
    v61 = v10;
    v64 = a2;
    v65 = v3;
    v19 = v2[1];
    v20 = v2[2];
    v21 = v2[5];
    v56 = v16;
    v57 = v19;
    *v18 = v19;
    v18[1] = v20;
    v18[2] = v21;
    swift_storeEnumTagMultiPayload();
    v60 = v7;
    v59 = *(v7 + 56);
    v59(v18, 0, 1, v6);
    v23 = a1[1];
    v22 = a1[2];
    v24 = a1[5];
    v62 = v21;
    v63 = v20;
    if (v22)
    {
      *v15 = v23;
      v15[1] = v22;
      v15[2] = v24;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_23E8891B4(a1, v66, &qword_27E35E850, &qword_23E9035D0);
      v25 = 0;
    }

    else
    {
      v34 = a1[4];
      v54 = a1[3];
      v55 = v34;
      v53 = *a1;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_23E8891B4(a1, v66, &qword_27E35E850, &qword_23E9035D0);
      sub_23E893ADC(v53, v23, 0, v54, v55, v24);
      v25 = 1;
    }

    v59(v15, v25, 1, v6);
    v35 = *(v67 + 48);
    v36 = v61;
    sub_23E8891B4(v18, v61, &qword_27E35E840, &qword_23E9035C8);
    sub_23E8891B4(v15, v36 + v35, &qword_27E35E840, &qword_23E9035C8);
    v37 = *(v60 + 48);
    v38 = v6;
    if (v37(v36, 1, v6) == 1)
    {
      sub_23E87E458(v15, &qword_27E35E840, &qword_23E9035C8);
      sub_23E87E458(v18, &qword_27E35E840, &qword_23E9035C8);
      v39 = v37(v36 + v35, 1, v6);
      v40 = v64;
      if (v39 == 1)
      {
        sub_23E87E458(v36, &qword_27E35E840, &qword_23E9035C8);
LABEL_14:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v41 = v56;
      sub_23E8891B4(v36, v56, &qword_27E35E840, &qword_23E9035C8);
      v42 = v37(v36 + v35, 1, v38);
      v40 = v64;
      if (v42 != 1)
      {
        v49 = v36 + v35;
        v50 = v58;
        sub_23E893B20(v49, v58);
        LODWORD(v67) = sub_23E88EB14(v41, v50);
        sub_23E893BE8(v50, type metadata accessor for RenderLayerType);
        sub_23E87E458(v15, &qword_27E35E840, &qword_23E9035C8);
        sub_23E87E458(v18, &qword_27E35E840, &qword_23E9035C8);
        sub_23E893BE8(v41, type metadata accessor for RenderLayerType);
        sub_23E87E458(v36, &qword_27E35E840, &qword_23E9035C8);
        v44 = v62;
        v43 = v63;
        if (v67)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      sub_23E87E458(v15, &qword_27E35E840, &qword_23E9035C8);
      sub_23E87E458(v18, &qword_27E35E840, &qword_23E9035C8);
      sub_23E893BE8(v41, type metadata accessor for RenderLayerType);
    }

    sub_23E87E458(v36, &qword_27E35E838, &qword_23E9035C0);
    v44 = v62;
    v43 = v63;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_23E903380;
    v45 = type metadata accessor for RenderLayerAction(0);
    *(v26 + 56) = v45;
    *(v26 + 64) = sub_23E893A84();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
    v47 = (boxed_opaque_existential_1 + *(v45 + 20));
    *v47 = v57;
    v47[1] = v43;
    v47[2] = v44;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RenderLayerActionType(0);
    swift_storeEnumTagMultiPayload();
    v48 = sub_23E9006D4();
    (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v40, v48);
    return v26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23E903380;
  v27 = type metadata accessor for RenderLayerAction(0);
  *(v26 + 56) = v27;
  *(v26 + 64) = sub_23E893A84();
  v28 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  v29 = (v28 + *(v27 + 20));
  v30 = v2[1];
  v31 = v2[2];
  v32 = v2[5];
  *v29 = v30;
  v29[1] = v31;
  v29[2] = v32;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RenderLayerActionType(0);
  swift_storeEnumTagMultiPayload();
  v33 = sub_23E9006D4();
  (*(*(v33 - 8) + 16))(v28, a2, v33);

  return v26;
}

uint64_t sub_23E892558(char *a1, uint64_t a2)
{
  v49 = a2;
  v51 = type metadata accessor for RenderLayerType(0);
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E838, &qword_23E9035C0);
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E858, &qword_23E9035D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E840, &qword_23E9035C8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = type metadata accessor for ImageContent(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1;
  if (v18(a1, 1, v17) != 1)
  {
    sub_23E893B84(v50, v16);
    v24 = v51;
    swift_storeEnumTagMultiPayload();
    v44 = v3;
    v25 = v24;
    v26 = *(v3 + 56);
    v26(v16, 0, 1, v25);
    sub_23E8891B4(v19, v8, &qword_27E35E858, &qword_23E9035D8);
    if (v18(v8, 1, v17) == 1)
    {
      sub_23E87E458(v8, &qword_27E35E858, &qword_23E9035D8);
      v27 = 1;
      v28 = v51;
    }

    else
    {
      sub_23E893B84(v8, v14);
      v28 = v51;
      swift_storeEnumTagMultiPayload();
      sub_23E893BE8(v8, type metadata accessor for ImageContent);
      v27 = 0;
    }

    v26(v14, v27, 1, v28);
    v29 = v48;
    v30 = *(v47 + 48);
    sub_23E8891B4(v16, v48, &qword_27E35E840, &qword_23E9035C8);
    sub_23E8891B4(v14, v29 + v30, &qword_27E35E840, &qword_23E9035C8);
    v31 = *(v44 + 48);
    if (v31(v29, 1, v28) == 1)
    {
      sub_23E87E458(v14, &qword_27E35E840, &qword_23E9035C8);
      sub_23E87E458(v16, &qword_27E35E840, &qword_23E9035C8);
      v32 = v31(v29 + v30, 1, v28);
      v33 = v49;
      if (v32 == 1)
      {
        sub_23E87E458(v29, &qword_27E35E840, &qword_23E9035C8);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v34 = v46;
      sub_23E8891B4(v29, v46, &qword_27E35E840, &qword_23E9035C8);
      v35 = v31(v29 + v30, 1, v28);
      v33 = v49;
      if (v35 != 1)
      {
        v41 = v29 + v30;
        v42 = v45;
        sub_23E893B20(v41, v45);
        LODWORD(v51) = sub_23E88EB14(v34, v42);
        sub_23E893BE8(v42, type metadata accessor for RenderLayerType);
        sub_23E87E458(v14, &qword_27E35E840, &qword_23E9035C8);
        sub_23E87E458(v16, &qword_27E35E840, &qword_23E9035C8);
        sub_23E893BE8(v34, type metadata accessor for RenderLayerType);
        v43 = v29;
        v36 = v50;
        sub_23E87E458(v43, &qword_27E35E840, &qword_23E9035C8);
        if (v51)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_12;
      }

      sub_23E87E458(v14, &qword_27E35E840, &qword_23E9035C8);
      sub_23E87E458(v16, &qword_27E35E840, &qword_23E9035C8);
      sub_23E893BE8(v34, type metadata accessor for RenderLayerType);
    }

    sub_23E87E458(v29, &qword_27E35E838, &qword_23E9035C0);
    v36 = v50;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_23E903380;
    v37 = type metadata accessor for RenderLayerAction(0);
    *(v20 + 56) = v37;
    *(v20 + 64) = sub_23E893A84();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    sub_23E893B84(v36, boxed_opaque_existential_1 + *(v37 + 20));
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RenderLayerActionType(0);
    swift_storeEnumTagMultiPayload();
    v39 = sub_23E9006D4();
    (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v33, v39);
    return v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23E903380;
  v21 = type metadata accessor for RenderLayerAction(0);
  *(v20 + 56) = v21;
  *(v20 + 64) = sub_23E893A84();
  v22 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  sub_23E893B84(v50, v22 + *(v21 + 20));
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RenderLayerActionType(0);
  swift_storeEnumTagMultiPayload();
  v23 = sub_23E9006D4();
  (*(*(v23 - 8) + 16))(v22, v49, v23);
  return v20;
}

__int128 *sub_23E892C8C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v126 = *a1;
  *v127 = v5;
  v6 = *(a1 + 32);
  v7 = *v2;
  v8 = v2[1];
  *&v127[16] = *(a1 + 32);
  v128 = v7;
  v9 = v2[2];
  v129 = v8;
  v130 = v9;
  v10 = &v128;
  v11 = sub_23E891E68(&v126, a2);
  if (v3)
  {
    return v10;
  }

  v115 = v6;
  v117 = 0;
  v12 = sub_23E8BCFA0(v11);

  v13 = *v127;
  v14 = v128;
  if (!*v127 || v126 == 5)
  {
    if (v128 == 5)
    {
      goto LABEL_13;
    }
  }

  else if (v128 != 5 && (sub_23E89A2C4(v126, v128) & 1) != 0)
  {
    v133 = v126;
    v131 = *&v127[8];
    v132 = *&v127[24];
    goto LABEL_14;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7E8, &qword_23E903598);
  *(&v125[0] + 1) = v15;
  *&v125[1] = sub_23E880EFC(&qword_27E35E7F0, &qword_27E35E7E8, &qword_23E903598);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v124);
  v17 = sub_23E9006D4();
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a2, v17);
  *(boxed_opaque_existential_1 + *(v15 + 36)) = 20;
  *(boxed_opaque_existential_1 + *(v15 + 40)) = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_23E88A098(0, v12[2] + 1, 1, v12);
  }

  v19 = v12[2];
  v18 = v12[3];
  if (v19 >= v18 >> 1)
  {
    v12 = sub_23E88A098((v18 > 1), v19 + 1, 1, v12);
  }

  v12[2] = v19 + 1;
  v20 = &v12[5 * v19];
  v21 = v124;
  v22 = v125[0];
  v20[8] = *&v125[1];
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  v13 = *v127;
LABEL_13:
  v133 = v126;
  v131 = *&v127[8];
  v132 = *&v127[24];
  if (!v13)
  {
    v23 = 0;
    v25 = 0;
    v27 = -1;
    goto LABEL_16;
  }

LABEL_14:
  v124 = v133;
  *(v125 + 8) = v131;
  *(&v125[1] + 1) = v132;
  *&v125[0] = v13;
  v23 = TextContent.color.getter();
  v25 = v24;
  v27 = v26;
LABEL_16:
  v124 = v128;
  v125[0] = v129;
  v125[1] = v130;
  v28 = TextContent.color.getter();
  if (v27 == -1 || !_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(v23, v25, v27, v28, v29, v30))
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
    *(&v122 + 1) = v31;
    v123 = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
    v32 = __swift_allocate_boxed_opaque_existential_1(&v121);
    v33 = sub_23E9006D4();
    (*(*(v33 - 8) + 16))(v32, a2, v33);
    v124 = v128;
    v125[0] = v129;
    v125[1] = v130;
    v34 = TextContent.color.getter();
    *(v32 + *(v31 + 36)) = 4;
    v35 = v32 + *(v31 + 40);
    *v35 = v34;
    *(v35 + 1) = v36;
    v35[16] = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23E88A098(0, v12[2] + 1, 1, v12);
    }

    v39 = v12[2];
    v38 = v12[3];
    if (v39 >= v38 >> 1)
    {
      v12 = sub_23E88A098((v38 > 1), v39 + 1, 1, v12);
    }

    v12[2] = v39 + 1;
    v40 = &v12[5 * v39];
    v41 = v121;
    v42 = v122;
    v40[8] = v123;
    *(v40 + 2) = v41;
    *(v40 + 3) = v42;
    v13 = *v127;
  }

  v116 = a2;
  if (v13)
  {
    v124 = v126;
    *(v125 + 8) = *&v127[8];
    *(&v125[1] + 1) = *&v127[24];
    *&v125[0] = v13;
    TextContent.font.getter(&v121);
    v44 = *(&v121 + 1);
    v43 = v121;
    v45 = *&v122;
  }

  else
  {
    v43 = 0;
    v45 = 0.0;
    v44 = 1;
  }

  v124 = v128;
  v125[0] = v129;
  v125[1] = v130;
  TextContent.font.getter(&v121);
  v46 = v121;
  v47 = *&v122;
  if (v44 == 1)
  {
    if (*(&v121 + 1) == 1)
    {
      sub_23E893A5C(v43, 1);
      v48 = v116;
      if (!v13)
      {
        goto LABEL_55;
      }

      goto LABEL_50;
    }

    goto LABEL_32;
  }

  if (*(&v121 + 1) == 1)
  {
    sub_23E893A70(v43, v44);

LABEL_32:
    sub_23E893A5C(v43, v44);
    v50 = *(&v46 + 1);
    v49 = v46;
LABEL_42:
    sub_23E893A5C(v49, v50);
    goto LABEL_43;
  }

  if (v44)
  {
    if (!*(&v121 + 1))
    {
      sub_23E893A70(v43, v44);

      goto LABEL_41;
    }

    if (__PAIR128__(v44, v43) == v121)
    {
      sub_23E893A70(v43, v44);

      goto LABEL_53;
    }

    v51 = sub_23E900E04();
    sub_23E893A70(v43, v44);

    if ((v51 & 1) == 0)
    {
LABEL_41:

      v49 = v43;
      v50 = v44;
      goto LABEL_42;
    }
  }

  else
  {
    sub_23E893A70(v43, 0);

    if (*(&v46 + 1))
    {

      goto LABEL_41;
    }
  }

LABEL_53:

  sub_23E893A5C(v43, v44);
  if (v47 != v45)
  {
LABEL_43:
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7F8, &qword_23E9035A0);
    *(&v122 + 1) = v52;
    v123 = sub_23E880EFC(&qword_27E35E800, &qword_27E35E7F8, &qword_23E9035A0);
    v53 = __swift_allocate_boxed_opaque_existential_1(&v121);
    v54 = sub_23E9006D4();
    v55 = *(*(v54 - 8) + 16);
    v48 = v116;
    v55(v53, v116, v54);
    v124 = v128;
    v125[0] = v129;
    v125[1] = v130;
    TextContent.font.getter(&v118);
    *(v53 + *(v52 + 36)) = 23;
    *(v53 + *(v52 + 40)) = v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23E88A098(0, v12[2] + 1, 1, v12);
    }

    v57 = v12[2];
    v56 = v12[3];
    v58 = v12;
    if (v57 >= v56 >> 1)
    {
      v58 = sub_23E88A098((v56 > 1), v57 + 1, 1, v12);
    }

    v59 = v58;
    v58[2] = v57 + 1;
    v60 = &v58[5 * v57];
    v61 = v121;
    v62 = v122;
    v60[8] = v123;
    *(v60 + 2) = v61;
    *(v60 + 3) = v62;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
    *(&v122 + 1) = v63;
    v123 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
    v64 = __swift_allocate_boxed_opaque_existential_1(&v121);
    v55(v64, v48, v54);
    v124 = v128;
    v125[0] = v129;
    v125[1] = v130;
    TextContent.font.getter(&v118);
    v65 = v119;

    *(v64 + *(v63 + 36)) = 24;
    *(v64 + *(v63 + 40)) = v65;
    v66 = v59;
    v68 = v59[2];
    v67 = v59[3];
    if (v68 >= v67 >> 1)
    {
      v66 = sub_23E88A098((v67 > 1), v68 + 1, 1, v59);
    }

    v66[2] = v68 + 1;
    v12 = v66;
    v69 = &v66[5 * v68];
    v70 = v121;
    v71 = v122;
    v69[8] = v123;
    *(v69 + 2) = v70;
    *(v69 + 3) = v71;
    v13 = *v127;
    if (!*v127)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  v48 = v116;
  if (!v13)
  {
LABEL_55:
    v72 = *(&v129 + 1);
    goto LABEL_56;
  }

LABEL_50:
  v72 = *(&v129 + 1);
  if (*&v127[8] == *(&v129 + 1))
  {
    v73 = v115;
    goto LABEL_62;
  }

LABEL_56:
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E808, &qword_23E9035A8);
  *(&v125[0] + 1) = v74;
  *&v125[1] = sub_23E880EFC(&qword_27E35E810, &qword_27E35E808, &qword_23E9035A8);
  v75 = __swift_allocate_boxed_opaque_existential_1(&v124);
  v76 = sub_23E9006D4();
  (*(*(v76 - 8) + 16))(v75, v48, v76);
  *(v75 + *(v74 + 36)) = 10;
  *(v75 + *(v74 + 40)) = v72;
  v77 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v77 = sub_23E88A098(0, v12[2] + 1, 1, v12);
  }

  v79 = v77[2];
  v78 = v77[3];
  if (v79 >= v78 >> 1)
  {
    v77 = sub_23E88A098((v78 > 1), v79 + 1, 1, v77);
  }

  v77[2] = v79 + 1;
  v12 = v77;
  v80 = &v77[5 * v79];
  v81 = v124;
  v82 = v125[0];
  v80[8] = *&v125[1];
  *(v80 + 2) = v81;
  *(v80 + 3) = v82;
  v13 = *v127;
  if (!*v127)
  {
    v83 = v130;
LABEL_67:
    if (v83 == 5)
    {
      goto LABEL_73;
    }

    goto LABEL_68;
  }

  v73 = v127[16];
LABEL_62:
  v83 = v130;
  if (v73 == 5)
  {
    goto LABEL_67;
  }

  if (v130 != 5 && (sub_23E89A440(v73, v130) & 1) != 0)
  {
    v13 = 1;
    goto LABEL_73;
  }

LABEL_68:
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E818, &qword_23E9035B0);
  *(&v125[0] + 1) = v84;
  *&v125[1] = sub_23E880EFC(&qword_27E35E820, &qword_27E35E818, &qword_23E9035B0);
  v85 = __swift_allocate_boxed_opaque_existential_1(&v124);
  v86 = sub_23E9006D4();
  (*(*(v86 - 8) + 16))(v85, v48, v86);
  *(v85 + *(v84 + 36)) = 21;
  *(v85 + *(v84 + 40)) = v83;
  v87 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v87 = sub_23E88A098(0, v12[2] + 1, 1, v12);
  }

  v89 = v87[2];
  v88 = v87[3];
  if (v89 >= v88 >> 1)
  {
    v87 = sub_23E88A098((v88 > 1), v89 + 1, 1, v87);
  }

  v87[2] = v89 + 1;
  v12 = v87;
  v90 = &v87[5 * v89];
  v91 = v124;
  v92 = v125[0];
  v90[8] = *&v125[1];
  *(v90 + 2) = v91;
  *(v90 + 3) = v92;
  v13 = *v127;
LABEL_73:
  v93 = BYTE1(v130);
  if (!v13 || v127[17] == 6)
  {
    if (BYTE1(v130) == 6)
    {
      goto LABEL_84;
    }

LABEL_79:
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E828, &qword_23E9035B8);
    *(&v125[0] + 1) = v94;
    *&v125[1] = sub_23E880EFC(&qword_27E35E830, &qword_27E35E828, &qword_23E9035B8);
    v95 = __swift_allocate_boxed_opaque_existential_1(&v124);
    v96 = sub_23E9006D4();
    (*(*(v96 - 8) + 16))(v95, v48, v96);
    *(v95 + *(v94 + 36)) = 22;
    *(v95 + *(v94 + 40)) = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23E88A098(0, v12[2] + 1, 1, v12);
    }

    v98 = v12[2];
    v97 = v12[3];
    if (v98 >= v97 >> 1)
    {
      v12 = sub_23E88A098((v97 > 1), v98 + 1, 1, v12);
    }

    v12[2] = v98 + 1;
    v99 = &v12[5 * v98];
    v100 = v124;
    v101 = v125[0];
    v99[8] = *&v125[1];
    *(v99 + 2) = v100;
    *(v99 + 3) = v101;
    goto LABEL_84;
  }

  if (BYTE1(v130) == 6 || (sub_23E89A614(v127[17], BYTE1(v130)) & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_84:
  v102 = v12[2];
  if (v102)
  {
    v116 = v12;
    v103 = (v12 + 4);
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_23E8891B4(v103, &v124, &qword_27E35E558, &unk_23E907990);
      v118 = v124;
      v119 = v125[0];
      v120 = *&v125[1];
      if (*(&v125[0] + 1))
      {
        sub_23E881028(&v118, &v121);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = sub_23E889F50(0, *(v10 + 2) + 1, 1, v10);
          v134 = v10;
        }

        v106 = *(v10 + 2);
        v105 = *(v10 + 3);
        if (v106 >= v105 >> 1)
        {
          v10 = sub_23E889F50((v105 > 1), v106 + 1, 1, v10);
          v134 = v10;
        }

        v107 = *(&v122 + 1);
        v108 = v123;
        v109 = __swift_mutable_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        MEMORY[0x28223BE20](v109);
        v111 = &v114 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v112 + 16))(v111);
        sub_23E8F2C70(v106, v111, &v134, v107, v108);
        __swift_destroy_boxed_opaque_existential_1(&v121);
      }

      else
      {
        sub_23E87E458(&v118, &qword_27E35E558, &unk_23E907990);
      }

      v103 += 40;
      --v102;
    }

    while (v102);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t sub_23E893A5C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_23E893A70(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_23E893A84()
{
  result = qword_27E35E848;
  if (!qword_27E35E848)
  {
    type metadata accessor for RenderLayerAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E848);
  }

  return result;
}

void sub_23E893ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }
}

uint64_t sub_23E893B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenderLayerType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E893B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageContent.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E893BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RenderNode<>.text(identifier:content:font:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 4);

  v34 = a2;
  result = sub_23E900914();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v19 = a5;
    result = sub_23E900914();
    if ((result & 0x8000000000000000) == 0)
    {
      v20 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      *(inited + 32) = v14;
      *(inited + 40) = v15;
      *(inited + 48) = v16;
      *(inited + 52) = 4;
      *(inited + 56) = 0;
      *(inited + 64) = v18;
      *(inited + 72) = v19;
      *(inited + 80) = a6;
      *(inited + 88) = a7;
      *(inited + 92) = 5;
      *(inited + 96) = 0;
      *(inited + 104) = v20;
      v22 = sub_23E8950E0(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v23 = sub_23E9006D4();
      (*(*(v23 - 8) + 16))(a8, a1, v23);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v25 = a8 + v24[9];
      *v25 = 0;
      *(v25 + 8) = v34;
      *(v25 + 16) = a3;
      *(v25 + 24) = 1;
      *(v25 + 32) = 0;
      *(v25 + 40) = v22;
      *(a8 + v24[10]) = 0;
      v26 = (a8 + v24[11]);
      *v26 = 0;
      v26[1] = 0;
      *(v26 + 14) = 0;
      v27 = a8 + v24[12];
      *v27 = 0;
      *(v27 + 12) = 0;
      *(v27 + 8) = 0;
      v28 = a8 + v24[13];
      *v28 = 0x3F0000003F000000;
      *(v28 + 8) = 0;
      v29 = a8 + v24[14];
      *v29 = xmmword_23E903320;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = a8 + v24[15];
      *v30 = 1065353216;
      *(v30 + 8) = 0;
      v31 = a8 + v24[16];
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 2;
      *(a8 + v24[17]) = 0;
      v32 = (a8 + v24[18]);
      *v32 = 0;
      v32[1] = 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t RenderNode<>.withAttributedString(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v7 = v3 + *(v6 + 36);
  v8 = *(v7 + 24);
  v9 = *v7;
  v10 = *(v7 + 32);
  v11 = [a1 string];
  v12 = sub_23E900884();
  v14 = v13;

  v15 = sub_23E896728();
  sub_23E895E94(v3, a2);
  v16 = a2 + *(v6 + 36);

  *v16 = v9;
  *(v16 + 8) = v12;
  *(v16 + 16) = v14;
  *(v16 + 24) = v8;
  *(v16 + 32) = v10;
  *(v16 + 40) = v15;
  return result;
}

uint64_t RenderNode<>.withTextContent(_:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80) + 36) + 40);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v11 = v5 + *(v10 + 36);
  v12 = *(v11 + 24);
  v13 = *v11;
  v14 = *(v11 + 32);
  sub_23E895E94(v5, a4);
  v15 = a4 + *(v10 + 36);

  *v15 = v13;
  *(v15 + 8) = a1;
  *(v15 + 16) = a2;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = v9;
  return result;
}

uint64_t RenderNode<>.withFont(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v9 = v2 + *(v8 + 36);
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  v12 = sub_23E900914();
  if (v12 < 0)
  {
    goto LABEL_20;
  }

  v39 = v12;
  v40 = v11;
  v41 = v8;
  v42 = v10;
  v3 = *(v9 + 5);
  v13 = *(v3 + 32);
  v14 = v13 & 0x3F;
  v8 = ((1 << v13) + 63) >> 6;
  v10 = 8 * v8;

  if (v14 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v38 = v5;
    v5 = v6;
    v6 = v2;
    v16 = a2;
    v2 = &v38;
    MEMORY[0x28223BE20](v15);
    a2 = &v38 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(a2, v10);
    v17 = 0;
    v18 = 0;
    v19 = 1 << *(v3 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v3 + 56);
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v23 = v22 | (v18 << 6);
LABEL_13:
      if (*(*(v3 + 48) + 40 * v23 + 20) != 4)
      {
        *&a2[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
        if (__OFADD__(v17++, 1))
        {
          __break(1u);
LABEL_17:
          v27 = sub_23E894E34((&v38 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, v17, v3);
          a2 = v16;
          v2 = v6;
          v6 = v5;
          v5 = v38;
          goto LABEL_18;
        }
      }
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= ((v19 + 63) >> 6))
      {
        goto LABEL_17;
      }

      v25 = *(v3 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v21 = (v25 - 1) & v25;
        v23 = __clz(__rbit64(v25)) | (v18 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v27 = sub_23E894B50(v37, v8, v3, sub_23E8943EC);

  MEMORY[0x23EF18560](v37, -1, -1);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 52) = 4;
  v29 = v39;
  *(inited + 56) = 0;
  *(inited + 64) = v29;

  v30 = v40;

  v31 = sub_23E895F04(inited, v27);
  swift_setDeallocating();
  sub_23E895F90(inited + 32);
  v32 = *(v9 + 3);
  v33 = *v9;
  v34 = *(v9 + 16);
  sub_23E895E94(v2, a2);
  v35 = &a2[*(v41 + 36)];

  *v35 = v33;
  *(v35 + 1) = v42;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 16) = v34;
  *(v35 + 5) = v31;
  return result;
}

uint64_t RenderNode<>.withColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X8>)
{
  v43 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v11 = v4 + *(v10 + 36);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = sub_23E900914();
  if (v14 < 0)
  {
    goto LABEL_20;
  }

  v6 = v14;
  v40 = a2;
  v41 = v12;
  v42 = a4;
  a2 = *(v11 + 40);
  v15 = *(a2 + 32);
  v16 = v15 & 0x3F;
  a4 = ((1 << v15) + 63) >> 6;
  v5 = 8 * a4;

  v39 = a1;
  if (v16 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v17);
    bzero(&v39 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
    v18 = 0;
    v19 = 0;
    v20 = 1 << *(a2 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a2 + 56);
    while (v22)
    {
      v23 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v24 = v23 | (v19 << 6);
LABEL_13:
      if (*(*(a2 + 48) + 40 * v24 + 20) != 5)
      {
        *(&v39 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v24;
        if (__OFADD__(v18++, 1))
        {
          __break(1u);
LABEL_17:
          v28 = sub_23E894E34((&v39 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), a4, v18, a2);
          goto LABEL_18;
        }
      }
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= ((v20 + 63) >> 6))
      {
        goto LABEL_17;
      }

      v26 = *(a2 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v22 = (v26 - 1) & v26;
        v24 = __clz(__rbit64(v26)) | (v19 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();
  v28 = sub_23E894B50(v38, a4, a2, sub_23E894754);

  MEMORY[0x23EF18560](v38, -1, -1);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  v30 = v43;
  v31 = v40;
  *(inited + 32) = v39;
  *(inited + 40) = v31;
  *(inited + 48) = v30;
  *(inited + 52) = 5;
  *(inited + 56) = 0;
  *(inited + 64) = v6;

  v32 = sub_23E895F04(inited, v28);
  swift_setDeallocating();
  sub_23E895F90(inited + 32);
  v33 = *(v11 + 24);
  LOBYTE(inited) = *v11;
  v34 = *(v11 + 32);
  v35 = v42;
  sub_23E895E94(v4, v42);
  v36 = v35 + *(v10 + 36);

  *v36 = inited;
  *(v36 + 8) = v41;
  *(v36 + 16) = v13;
  *(v36 + 24) = v33;
  *(v36 + 32) = v34;
  *(v36 + 40) = v32;
  return result;
}

uint64_t RenderNode<>.withTruncationMode(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v6 = v2 + *(v5 + 36);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  v9 = *(v6 + 40);
  v10 = *(v6 + 24);
  v11 = *v6;
  v12 = *(v6 + 32);
  sub_23E895E94(v2, a2);
  v13 = a2 + *(v5 + 36);

  *v13 = v11;
  *(v13 + 8) = v8;
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 33) = v4;
  *(v13 + 40) = v9;
  return result;
}

uint64_t RenderNode<>.withAlignment(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v6 = v2 + *(v5 + 36);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  v9 = *(v6 + 40);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  sub_23E895E94(v2, a2);
  v12 = a2 + *(v5 + 36);

  *v12 = v4;
  *(v12 + 8) = v8;
  *(v12 + 16) = v7;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  *(v12 + 40) = v9;
  return result;
}

uint64_t RenderNode<>.withTextLayout(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v6 = v2 + *(v5 + 36);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  v9 = *(v6 + 40);
  v10 = *(v6 + 24);
  v11 = *v6;
  v12 = *(v6 + 33);
  sub_23E895E94(v2, a2);
  v13 = a2 + *(v5 + 36);

  *v13 = v11;
  *(v13 + 8) = v8;
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;
  *(v13 + 32) = v4;
  *(v13 + 33) = v12;
  *(v13 + 40) = v9;
  return result;
}

unint64_t *sub_23E8949C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v29 = a4;
  v22 = result;
  v23 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 40 * v15;
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v24 = *v16;
    v25 = v17;
    v26 = v18;
    v27 = *(v16 + 20);
    v28 = *(v16 + 24);
    sub_23E88FDE0(v24, v17, v18, v27);
    v19 = v29(&v24);
    result = sub_23E88FDF8(v24, v25, v26, v27);
    if (v4)
    {
      return result;
    }

    if (v19)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_23E894E34(v22, a2, v23, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_23E894B50(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23E8949C0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23E894BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E868, &unk_23E905D30);
  result = sub_23E900C94();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = (*(a4 + 48) + ((v13 | (v11 << 6)) << 6));
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[3];
    v43 = v16[2];
    v44 = v19;
    v41 = v18;
    v42 = v17;
    v20 = v16[1];
    v37 = *v16;
    v38 = v20;
    v21 = v16[3];
    v39 = v16[2];
    v40 = v21;
    sub_23E900EB4();
    sub_23E895FE4(&v41, v35);
    RenderAsset.hash(into:)(v36);
    result = sub_23E900F14();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + (v25 << 6));
    v31 = v41;
    v32 = v42;
    v33 = v44;
    v30[2] = v43;
    v30[3] = v33;
    *v30 = v31;
    v30[1] = v32;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23E894E34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
  result = sub_23E900C94();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v34 = v8;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 20);
    v22 = *(v16 + 24);
    v21 = *(v16 + 32);
    sub_23E900EB4();
    sub_23E88FDE0(v17, v18, v19, v20);
    TextAttribute.hash(into:)(v37);
    MEMORY[0x23EF17B90](v22);
    MEMORY[0x23EF17B90](v21);
    result = sub_23E900F14();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 40 * v26;
    *v31 = v17;
    *(v31 + 8) = v18;
    *(v31 + 16) = v19;
    *(v31 + 20) = v20;
    *(v31 + 24) = v22;
    *(v31 + 32) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v10 = v36;
    v8 = v34;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23E8950E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
    v3 = sub_23E900C94();
    v4 = 0;
    v99 = a1 + 32;
    v100 = v1;
    v5 = v3 + 56;
    v106 = v3;
    v107 = v3 + 56;
    while (1)
    {
      v7 = v99 + 40 * v4;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 20);
      v12 = *(v7 + 24);
      v13 = *(v7 + 32);
      sub_23E900EB4();
      sub_23E88FDE0(v8, v9, v10, v11);
      TextAttribute.hash(into:)(v110);
      v105 = v12;
      MEMORY[0x23EF17B90](v12);
      v104 = v13;
      MEMORY[0x23EF17B90](v13);
      result = sub_23E900F14();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if (((1 << v16) & v18) != 0)
      {
        break;
      }

      LODWORD(v21) = v10;
      v6 = v100;
LABEL_161:
      *(v5 + 8 * v17) = v18 | v19;
      v92 = *(v3 + 48) + 40 * v16;
      *v92 = v8;
      *(v92 + 8) = v9;
      *(v92 + 16) = v21;
      *(v92 + 20) = v11;
      *(v92 + 24) = v105;
      *(v92 + 32) = v104;
      v93 = *(v3 + 16);
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (v94)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v95;
LABEL_4:
      if (++v4 == v6)
      {
        return v3;
      }
    }

    v101 = v4;
    v108 = ~v15;
    v103 = v10;
    v98 = v9 | v8;
    v20 = *&v10;
    v21 = v10;
    v109 = v10;
    while (1)
    {
      v22 = *(v3 + 48) + 40 * v16;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 20);
      v28 = *(v22 + 24);
      v27 = *(v22 + 32);
      v110[0] = *v22;
      v110[1] = v23;
      v111 = v25;
      v112 = v26;
      v113 = v8;
      v114 = v9;
      v115 = v21;
      v116 = v11;
      if (v26 <= 2)
      {
        if (v26)
        {
          v31 = v27;
          if (v26 == 1)
          {
            sub_23E88FDE0(v8, v9, v21, v11);
            sub_23E88FDF8(v24, v23, v25, 1);
            if (v11 == 1)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_23E88FDE0(v8, v9, v21, v11);
            sub_23E88FDF8(v24, v23, v25, 2);
            if (v11 == 2)
            {
LABEL_65:
              result = sub_23E89609C(v110);
              if (*&v24 == *&v8 && v28 == v105 && v31 == v104)
              {
LABEL_3:
                sub_23E88FDF8(v8, v9, v109, v11);
                v6 = v100;
                v4 = v101;
                v3 = v106;
                v5 = v107;
                goto LABEL_4;
              }

              goto LABEL_9;
            }
          }

          goto LABEL_8;
        }

        if (v11)
        {
          v48 = v8;
          v49 = v9;
          v50 = v11;
          goto LABEL_63;
        }

        if (!v25)
        {
          v29 = v28;
          v30 = v27;
          v75 = v21;
          sub_23E88FDE0(v8, v9, v21, 0);
          sub_23E88FDE0(v8, v9, v75, 0);
          v68 = v24;
          v69 = v23;
          v70 = v25;
          v71 = 0;
LABEL_112:
          sub_23E88FDF8(v68, v69, v70, v71);
          result = sub_23E89609C(v110);
          if (!v103)
          {
            v56 = *&v24 == *&v8 && *(&v24 + 1) == *(&v8 + 1) && *&v23 == *&v9 && *(&v23 + 1) == *(&v9 + 1);
            goto LABEL_86;
          }

          goto LABEL_9;
        }

        if (v25 != 1)
        {
          v78 = v28;
          v30 = v27;
          v79 = v21;
          sub_23E88FDE0(v8, v9, v21, 0);
          sub_23E88FDE0(v8, v9, v79, 0);
          sub_23E88FDF8(v24, v23, v25, 0);
          result = sub_23E89609C(v110);
          if (v103 == 2 && !v98)
          {
            v57 = v78 == v105;
LABEL_89:
            if (v57 && v30 == v104)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          }

          goto LABEL_9;
        }

        if (v103 != 1)
        {
          v85 = v21;
          sub_23E88FDE0(v8, v9, v21, 0);
          v48 = v8;
          v49 = v9;
          v21 = v85;
          v50 = 0;
LABEL_63:
          sub_23E88FDE0(v48, v49, v21, v50);
          sub_23E88FDF8(v24, v23, v25, 0);
LABEL_8:
          result = sub_23E89609C(v110);
          goto LABEL_9;
        }

        v102 = v27;
        if (v24 > 1u)
        {
          v32 = v21;
          if (v24 == 2)
          {
            v63 = 0xEA00000000007468;
            v62 = 0x67694C6172746C55;
          }

          else
          {
            v62 = 0x7261446172746C55;
            v63 = 0xE90000000000006BLL;
          }
        }

        else
        {
          v32 = v21;
          v62 = 0x694C6D756964654DLL;
          v63 = 0xEB00000000746867;
          if (v24)
          {
            v62 = 0x61446D756964654DLL;
            v63 = 0xEA00000000006B72;
          }
        }

        v86 = 0xEA00000000007468;
        v87 = 0x7261446172746C55;
        if (v8 == 2)
        {
          v87 = 0x67694C6172746C55;
        }

        else
        {
          v86 = 0xE90000000000006BLL;
        }

        v88 = 0x694C6D756964654DLL;
        if (v8)
        {
          v88 = 0x61446D756964654DLL;
        }

        v89 = 0xEB00000000746867;
        if (v8)
        {
          v89 = 0xEA00000000006B72;
        }

        if (v8 <= 1u)
        {
          v90 = v88;
        }

        else
        {
          v90 = v87;
        }

        if (v8 <= 1u)
        {
          v91 = v89;
        }

        else
        {
          v91 = v86;
        }

        if (v62 == v90 && v63 == v91)
        {
LABEL_151:
          sub_23E88FDE0(v8, v9, v32, v26);
          sub_23E88FDE0(v8, v9, v32, v26);

          sub_23E88FDF8(v8, v9, v32, v26);
          sub_23E88FDF8(v24, v23, v25, v26);
          sub_23E88FDF8(v24, v23, v25, v26);
          result = sub_23E89609C(v110);
LABEL_152:
          if (v28 == v105)
          {
            goto LABEL_153;
          }

          goto LABEL_9;
        }

        v97 = v28;
        v96 = sub_23E900E04();
        sub_23E88FDE0(v8, v9, v32, 0);
        sub_23E88FDE0(v8, v9, v32, 0);

        sub_23E88FDF8(v8, v9, v32, 0);
        sub_23E88FDF8(v24, v23, v25, 0);
        v44 = v24;
        v45 = v23;
        v46 = v25;
        v47 = 0;
      }

      else
      {
        if (v26 <= 4)
        {
          if (v26 == 3)
          {
            v29 = v28;
            v30 = v27;
            sub_23E88FDE0(v8, v9, v21, v11);
            sub_23E88FDF8(v24, v23, v25, 3);
            if (v11 == 3)
            {
              goto LABEL_85;
            }

            goto LABEL_8;
          }

          if (v11 != 4)
          {
            sub_23E88FDE0(v8, v9, v21, v11);
            sub_23E88FDE0(v24, v23, v25, 4);
            goto LABEL_8;
          }

          if (v23)
          {
            if (!v9)
            {
              v80 = v21;
              sub_23E88FDE0(v8, 0, v21, 4);
              sub_23E88FDE0(v24, v23, v25, 4);
              sub_23E88FDE0(v8, 0, v80, 4);
              sub_23E88FDE0(v24, v23, v25, 4);
              sub_23E88FDE0(v8, 0, v80, 4);
              sub_23E88FDE0(v24, v23, v25, 4);
              sub_23E89609C(v110);

              sub_23E88FDF8(v8, 0, v80, 4);
              v65 = v24;
              v66 = v23;
              goto LABEL_126;
            }

            v102 = v27;
            if (v24 != v8 || v23 != v9)
            {
              v54 = v21;
              v55 = sub_23E900E04();
              sub_23E88FDE0(v8, v9, v54, 4);
              sub_23E88FDE0(v24, v23, v25, 4);
              sub_23E88FDE0(v8, v9, v54, 4);
              sub_23E88FDE0(v24, v23, v25, 4);
              sub_23E88FDE0(v8, v9, v54, 4);
              sub_23E88FDE0(v24, v23, v25, 4);
              sub_23E89609C(v110);

              sub_23E88FDF8(v8, v9, v54, 4);
              result = sub_23E88FDF8(v24, v23, v25, 4);
              if ((v55 & 1) == 0 || *&v25 != v20)
              {
                goto LABEL_9;
              }

              goto LABEL_152;
            }

            v81 = v21;
            sub_23E88FDE0(v8, v9, v21, 4);
            sub_23E88FDE0(v8, v9, v25, 4);
            sub_23E88FDE0(v8, v9, v81, 4);
            sub_23E88FDE0(v8, v9, v25, 4);
            sub_23E88FDE0(v8, v9, v81, 4);
            sub_23E88FDE0(v8, v9, v25, 4);
            sub_23E89609C(v110);

            sub_23E88FDF8(v8, v9, v81, 4);
            v82 = v8;
            v83 = v9;
          }

          else
          {
            v102 = v27;
            v64 = v21;
            sub_23E88FDE0(v8, v9, v21, 4);
            sub_23E88FDE0(v24, 0, v25, 4);
            sub_23E88FDE0(v8, v9, v64, 4);
            sub_23E88FDE0(v24, 0, v25, 4);
            sub_23E88FDE0(v8, v9, v64, 4);
            sub_23E88FDE0(v24, 0, v25, 4);
            sub_23E89609C(v110);
            if (v9)
            {

              sub_23E88FDF8(v8, v9, v64, 4);
              v65 = v24;
              v66 = 0;
LABEL_126:
              result = sub_23E88FDF8(v65, v66, v25, 4);
              goto LABEL_9;
            }

            swift_bridgeObjectRelease_n();
            sub_23E88FDF8(v8, 0, v64, 4);
            v82 = v24;
            v83 = 0;
          }

          result = sub_23E88FDF8(v82, v83, v25, 4);
          if (*&v25 != v20)
          {
            goto LABEL_9;
          }

          goto LABEL_152;
        }

        if (v26 != 5)
        {
          v29 = v28;
          v30 = v27;
          sub_23E88FDE0(v8, v9, v21, v11);
          sub_23E88FDF8(v24, v23, v25, 6);
          if (v11 == 6)
          {
LABEL_85:
            result = sub_23E89609C(v110);
            v56 = *&v24 == *&v8;
LABEL_86:
            v57 = v56 && v29 == v105;
            goto LABEL_89;
          }

          goto LABEL_8;
        }

        if (v11 != 5)
        {
          v59 = v8;
          v60 = v9;
          v61 = v11;
          goto LABEL_96;
        }

        if (!v25)
        {
          v29 = v28;
          v30 = v27;
          v67 = v21;
          sub_23E88FDE0(v8, v9, v21, 5);
          sub_23E88FDE0(v8, v9, v67, 5);
          v68 = v24;
          v69 = v23;
          v70 = v25;
          v71 = 5;
          goto LABEL_112;
        }

        if (v25 != 1)
        {
          v72 = v28;
          v73 = v27;
          v74 = v21;
          sub_23E88FDE0(v8, v9, v21, 5);
          sub_23E88FDE0(v8, v9, v74, 5);
          sub_23E88FDF8(v24, v23, v25, 5);
          result = sub_23E89609C(v110);
          if (v103 == 2 && !v98 && v72 == v105 && v73 == v104)
          {
            goto LABEL_3;
          }

          goto LABEL_9;
        }

        if (v103 != 1)
        {
          v84 = v21;
          sub_23E88FDE0(v8, v9, v21, 5);
          v59 = v8;
          v60 = v9;
          v21 = v84;
          v61 = 5;
LABEL_96:
          sub_23E88FDE0(v59, v60, v21, v61);
          sub_23E88FDF8(v24, v23, v25, 5);
          goto LABEL_8;
        }

        v32 = v21;
        v102 = v27;
        v33 = 0xEA00000000007468;
        if (v24 == 2)
        {
          v34 = 0x67694C6172746C55;
        }

        else
        {
          v34 = 0x7261446172746C55;
        }

        if (v24 == 2)
        {
          v35 = 0xEA00000000007468;
        }

        else
        {
          v35 = 0xE90000000000006BLL;
        }

        if (v24)
        {
          v36 = 0x61446D756964654DLL;
        }

        else
        {
          v36 = 0x694C6D756964654DLL;
        }

        if (v24)
        {
          v37 = 0xEA00000000006B72;
        }

        else
        {
          v37 = 0xEB00000000746867;
        }

        if (v24 <= 1u)
        {
          v38 = v36;
        }

        else
        {
          v38 = v34;
        }

        if (v24 <= 1u)
        {
          v39 = v37;
        }

        else
        {
          v39 = v35;
        }

        if (v8 == 2)
        {
          v40 = 0x67694C6172746C55;
        }

        else
        {
          v40 = 0x7261446172746C55;
        }

        if (v8 != 2)
        {
          v33 = 0xE90000000000006BLL;
        }

        if (v8)
        {
          v41 = 0x61446D756964654DLL;
        }

        else
        {
          v41 = 0x694C6D756964654DLL;
        }

        if (v8)
        {
          v42 = 0xEA00000000006B72;
        }

        else
        {
          v42 = 0xEB00000000746867;
        }

        if (v8 <= 1u)
        {
          v43 = v41;
        }

        else
        {
          v43 = v40;
        }

        if (v8 <= 1u)
        {
          v33 = v42;
        }

        if (v38 == v43 && v39 == v33)
        {
          goto LABEL_151;
        }

        v97 = v28;
        v96 = sub_23E900E04();
        sub_23E88FDE0(v8, v9, v32, 5);
        sub_23E88FDE0(v8, v9, v32, 5);

        sub_23E88FDF8(v8, v9, v32, 5);
        sub_23E88FDF8(v24, v23, v25, 5);
        v44 = v24;
        v45 = v23;
        v46 = v25;
        v47 = 5;
      }

      sub_23E88FDF8(v44, v45, v46, v47);
      result = sub_23E89609C(v110);
      if ((v96 & 1) != 0 && v97 == v105)
      {
LABEL_153:
        if (v102 == v104)
        {
          goto LABEL_3;
        }
      }

LABEL_9:
      v5 = v107;
      v16 = (v16 + 1) & v108;
      v17 = v16 >> 6;
      v19 = 1 << v16;
      v3 = v106;
      v21 = v109;
      if ((*(v107 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        v18 = *(v107 + 8 * v17);
        v6 = v100;
        v4 = v101;
        goto LABEL_161;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23E895E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E895F04(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 16);
      v10[0] = *v3;
      v10[1] = v4;
      v11 = *(v3 + 32);
      sub_23E896040(v10, v6);
      sub_23E8C1788(v6, v10);
      sub_23E88FDF8(v6[0], v6[1], v7, v8);
      v3 += 40;
      --v2;
    }

    while (v2);
    return v9;
  }

  return a2;
}

uint64_t sub_23E89609C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6F8, &qword_23E903458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnimationCurve.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v3 = 4;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v3 = 5;
LABEL_5:
    MEMORY[0x23EF17B90](v3);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v2 > 1)
  {
    if (v2 ^ 2 | v1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = (v2 | v1) != 0;
  }

  return MEMORY[0x23EF17B90](v5);
}

uint64_t AnimationCurve.hashValue.getter()
{
  sub_23E900EB4();
  AnimationCurve.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E89625C()
{
  sub_23E900EB4();
  AnimationCurve.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8962B4(uint64_t a1)
{
  sub_23E900EB4();
  AnimationCurve.hash(into:)();
  return sub_23E900F14();
}

uint64_t _s10AirPlayKit14AnimationCurveO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v6 == 1)
      {
        goto LABEL_12;
      }
    }

    else if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        if (v6 == 2 && v5 == 3 && !v4)
        {
          return 1;
        }
      }

      else if (v6 == 2 && v5 == 2 && !v4)
      {
        return 1;
      }
    }

    else if (v2 | v3)
    {
      if (v6 == 2 && v5 == 1 && !v4)
      {
        return 1;
      }
    }

    else if (v6 == 2 && !(v4 | v5))
    {
      return 1;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

LABEL_12:
  LOBYTE(v4) = *(&v2 + 1) == *(&v5 + 1) && *&v2 == COERCE_FLOAT(*a2);
  v9 = v4 & (COERCE_FLOAT(*(a1 + 8)) == COERCE_FLOAT(a2[1]));
  if (COERCE_FLOAT(HIDWORD(*(a1 + 8))) == *(&v4 + 1))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23E89641C()
{
  result = qword_27E35E878;
  if (!qword_27E35E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E878);
  }

  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationCurve(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationCurve(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23E896510(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23E896528(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_23E89655C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x725764726F577962;
  v4 = 0xD000000000000010;
  v5 = 0x800000023E9086D0;
  v6 = 0xD000000000000010;
  v7 = 0x800000023E9086F0;
  if (v2 != 4)
  {
    v6 = 0xD000000000000012;
    v7 = 0x800000023E908710;
  }

  if (v2 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7257726168437962;
  v9 = 0xEA0000000000676ELL;
  if (v2 == 1)
  {
    v9 = 0xEE00676E69707061;
  }

  else
  {
    v8 = 0x697070696C437962;
  }

  if (*v1)
  {
    v3 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xEE00676E69707061;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_23E896630(uint64_t a1)
{
  result = sub_23E896658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E896658()
{
  result = qword_27E35E880;
  if (!qword_27E35E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E880);
  }

  return result;
}

unint64_t sub_23E8966AC(uint64_t a1)
{
  result = sub_23E8966D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8966D4()
{
  result = qword_27E35E888;
  if (!qword_27E35E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E888);
  }

  return result;
}

uint64_t sub_23E896728()
{
  v1 = [v0 string];
  sub_23E900884();

  v2 = sub_23E900914();

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v36 = MEMORY[0x277D84FA0];
  v4 = *MEMORY[0x277D74068];
  v5 = swift_allocObject();
  *(v5 + 16) = &v36;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_23E897358;
  *(v6 + 24) = v5;
  v34 = sub_23E897378;
  v35 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_23E896EE8;
  v33 = &block_descriptor_1;
  v7 = _Block_copy(&aBlock);

  [v0 enumerateAttribute:v4 inRange:0 options:v2 usingBlock:{0, v7}];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *MEMORY[0x277D740A0];
  v9 = swift_allocObject();
  *(v9 + 16) = &v36;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_23E8973B8;
  *(v10 + 24) = v9;
  v34 = sub_23E89752C;
  v35 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_23E896EE8;
  v33 = &block_descriptor_13;
  v11 = _Block_copy(&aBlock);

  [v0 enumerateAttribute:v8 inRange:0 options:v2 usingBlock:{0, v11}];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = *MEMORY[0x277D740D0];
  v13 = swift_allocObject();
  *(v13 + 16) = &v36;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23E8973D8;
  *(v14 + 24) = v13;
  v34 = sub_23E89752C;
  v35 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_23E896EE8;
  v33 = &block_descriptor_23;
  v15 = _Block_copy(&aBlock);

  [v0 enumerateAttribute:v12 inRange:0 options:v2 usingBlock:{0, v15}];
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *MEMORY[0x277D740A8];
  v17 = swift_allocObject();
  *(v17 + 16) = &v36;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_23E897408;
  *(v18 + 24) = v17;
  v34 = sub_23E89752C;
  v35 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_23E896EE8;
  v33 = &block_descriptor_33;
  v19 = _Block_copy(&aBlock);

  [v0 enumerateAttribute:v16 inRange:0 options:v2 usingBlock:{0, v19}];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *MEMORY[0x277D740C0];
  v21 = swift_allocObject();
  *(v21 + 16) = &v36;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_23E897410;
  *(v22 + 24) = v21;
  v34 = sub_23E89752C;
  v35 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_23E896EE8;
  v33 = &block_descriptor_43;
  v23 = _Block_copy(&aBlock);

  [v0 enumerateAttribute:v20 inRange:0 options:v2 usingBlock:{0, v23}];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = *MEMORY[0x277D740F0];
  v26 = swift_allocObject();
  *(v26 + 16) = &v36;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_23E89756C;
  *(v27 + 24) = v26;
  v34 = sub_23E89752C;
  v35 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_23E896EE8;
  v33 = &block_descriptor_53;
  v28 = _Block_copy(&aBlock);

  [v0 enumerateAttribute:v25 inRange:0 options:v2 usingBlock:{0, v28}];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if ((v28 & 1) == 0)
  {
    v29 = v36;

    return v29;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23E896EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_23E897508(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_23E8974A0(v13);
}

uint64_t sub_23E896F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_23E897430(a1, v15);
  if (!v18)
  {
    return sub_23E8974A0(v15);
  }

  sub_23E89162C(0, &qword_27E35EF30, 0x277CCABB0);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v12[0];
    result = [v12[0] floatValue];
    if (__OFADD__(a2, a3))
    {
      __break(1u);
    }

    else if (a2 + a3 >= a2)
    {
      v15[0] = v11;
      v15[1] = 0;
      v16 = 0;
      v17 = a6;
      v18 = a2;
      v19 = a2 + a3;
      sub_23E8C1788(v12, v15);

      return sub_23E88FDF8(v12[0], v12[1], v13, v14);
    }

    __break(1u);
  }

  return result;
}

void sub_23E897080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23E897430(a1, v16);
  if (v19)
  {
    sub_23E89162C(0, &qword_27E35E898, 0x277D74300);
    if (swift_dynamicCast())
    {
      v5 = v13[0];
      v6 = [v5 fontName];
      v7 = sub_23E900884();
      v9 = v8;

      [v5 pointSize];
      v11 = v10;

      if (__OFADD__(a2, a3))
      {
        __break(1u);
      }

      else if (a2 + a3 >= a2)
      {
        v12 = v11;
        v16[0] = v7;
        v16[1] = v9;
        v17 = v12;
        v18 = 4;
        v19 = a2;
        v20 = a2 + a3;
        sub_23E8C1788(v13, v16);

        sub_23E88FDF8(v13[0], v13[1], v14, v15);
        return;
      }

      __break(1u);
    }
  }

  else
  {
    sub_23E8974A0(v16);
  }
}

void sub_23E8971C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23E897430(a1, &v18);
  if (v21)
  {
    sub_23E89162C(0, &qword_27E35E890, 0x277D75348);
    if (swift_dynamicCast())
    {
      v9 = v15[0];
      v18.i64[0] = 0;
      v14 = 0.0;
      v15[0] = 0;
      v13 = 1.0;
      if ([v9 getRed:&v18 green:v15 blue:&v14 alpha:&v13])
      {
        if (__OFADD__(a2, a3))
        {
          __break(1u);
        }

        else if (a2 + a3 >= a2)
        {
          *&v10.f64[0] = v18.i64[0];
          *&v11.f64[0] = v15[0];
          v10.f64[1] = v14;
          *&v10.f64[0] = vcvt_f32_f64(v10);
          v11.f64[1] = v13;
          v12.i64[0] = LODWORD(v10.f64[0]);
          v12.i64[1] = HIDWORD(v10.f64[0]);
          v18 = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v11), 0x20uLL), v12);
          v19 = 0;
          v20 = a6;
          v21 = a2;
          v22 = a2 + a3;
          sub_23E8C1788(v15, &v18);

          sub_23E88FDF8(v15[0], v15[1], v16, v17);
          return;
        }

        __break(1u);
      }
    }
  }

  else
  {
    sub_23E8974A0(&v18);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E897430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EC90, qword_23E904D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8974A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EC90, qword_23E904D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_23E897508(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

float Font.init(_:)@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 fontName];
  v5 = sub_23E900884();
  v7 = v6;

  [a1 pointSize];
  v9 = v8;

  result = v9;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  return result;
}

void Font.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = [a1 fontName];
    v5 = sub_23E900884();
    v7 = v6;

    [a1 pointSize];
    v9 = v8;

    v10 = v9;
  }

  else
  {
    v5 = 0;
    v10 = 0.0;
    v7 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
}

AirPlayKit::SpringParameters __swiftcall SpringParameters.init(mass:stiffness:damping:initialVelocity:)(Swift::Float mass, Swift::Float stiffness, Swift::Float damping, Swift::Float initialVelocity)
{
  *v4 = mass;
  v4[1] = stiffness;
  v4[2] = damping;
  v4[3] = initialVelocity;
  result.initialVelocity = initialVelocity;
  result.damping = damping;
  result.stiffness = stiffness;
  result.mass = mass;
  return result;
}

AirPlayKit::SpringParameters __swiftcall SpringParameters.init(mass:stiffness:dampingRatio:initialVelocity:)(Swift::Float mass, Swift::Float stiffness, Swift::Float dampingRatio, Swift::Float initialVelocity)
{
  v5 = sqrtf(mass * stiffness);
  v6 = 1.0;
  *v4 = 0x42C800003F800000;
  v7 = (v5 + v5) * dampingRatio;
  *(v4 + 8) = v7;
  *(v4 + 12) = initialVelocity;
  result.initialVelocity = initialVelocity;
  result.damping = dampingRatio;
  result.stiffness = v6;
  result.mass = v7;
  return result;
}

uint64_t SpringParameters.hash(into:)()
{
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900EE4();
}

uint64_t SpringParameters.hashValue.getter()
{
  sub_23E900EB4();
  SpringParameters.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8977B8()
{
  sub_23E900EB4();
  SpringParameters.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E897808(uint64_t a1)
{
  sub_23E900EB4();
  SpringParameters.hash(into:)();
  return sub_23E900F14();
}

unint64_t sub_23E897858()
{
  result = qword_27E35E8A0;
  if (!qword_27E35E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E8A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoAnimationValue(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NoAnimationValue(_WORD *result, int a2, int a3)
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

unint64_t sub_23E89799C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903790;
  *(inited + 32) = 97;
  *(inited + 40) = 0xE100000000000000;
  sub_23E900C64();
  *(inited + 88) = 98;
  *(inited + 96) = 0xE100000000000000;
  sub_23E900C64();
  *(inited + 144) = 99;
  *(inited + 152) = 0xE100000000000000;
  sub_23E900C64();
  *(inited + 200) = 100;
  *(inited + 208) = 0xE100000000000000;
  sub_23E900C64();
  *(inited + 256) = 30836;
  *(inited + 264) = 0xE200000000000000;
  sub_23E900C64();
  *(inited + 312) = 31092;
  *(inited + 320) = 0xE200000000000000;
  sub_23E900C64();
  v1 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_23E897B38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E89799C();
  *a1 = result;
  return result;
}

unint64_t sub_23E897B60(uint64_t a1)
{
  result = sub_23E897B88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E897B88()
{
  result = qword_27E35E8A8;
  if (!qword_27E35E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E8A8);
  }

  return result;
}

_OWORD *Font.init(identifier:pointSize:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = *result;
  *(a2 + 16) = a3;
  return result;
}

uint64_t Font.Identifier.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x23EF17B90](0);
  }

  MEMORY[0x23EF17B90](1);

  return sub_23E900904();
}

uint64_t Font.Identifier.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_23E900EB4();
  if (v1)
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
  }

  else
  {
    MEMORY[0x23EF17B90](0);
  }

  return sub_23E900F14();
}

uint64_t sub_23E897CD8()
{
  v1 = *(v0 + 8);
  sub_23E900EB4();
  if (v1)
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
  }

  else
  {
    MEMORY[0x23EF17B90](0);
  }

  return sub_23E900F14();
}

uint64_t sub_23E897D48(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x23EF17B90](0);
  }

  MEMORY[0x23EF17B90](1);

  return sub_23E900904();
}

uint64_t sub_23E897DC0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_23E900EB4();
  if (v2)
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
  }

  else
  {
    MEMORY[0x23EF17B90](0);
  }

  return sub_23E900F14();
}

uint64_t Font.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Font.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
  }

  else
  {
    MEMORY[0x23EF17B90](0);
  }

  return sub_23E900EE4();
}

uint64_t Font.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_23E900EB4();
  if (v1)
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
  }

  else
  {
    MEMORY[0x23EF17B90](0);
  }

  sub_23E900EE4();
  return sub_23E900F14();
}

uint64_t sub_23E897F60(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_23E900EB4();
  if (v2)
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
  }

  else
  {
    MEMORY[0x23EF17B90](0);
  }

  sub_23E900EE4();
  return sub_23E900F14();
}

BOOL _s10AirPlayKit4FontV2eeoiySbAC_ACtFZ_0(float *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = a1[4];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (!v5)
    {

      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_23E900E04() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v5)
    {
      return 0;
    }
  }

  return v4 == v6;
}

uint64_t _s10AirPlayKit4FontV10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_23E900E04();
}

unint64_t sub_23E89810C()
{
  result = qword_27E35E8B0;
  if (!qword_27E35E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E8B0);
  }

  return result;
}

unint64_t sub_23E898164()
{
  result = qword_27E35E8B8;
  if (!qword_27E35E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E8B8);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E8981CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
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

uint64_t sub_23E898228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23E89828C(uint64_t a1, unsigned int a2)
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

uint64_t sub_23E8982DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23E898330(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_23E898348(void *result, int a2)
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

uint64_t sub_23E898378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = type metadata accessor for RenderLayerActionType(0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RenderLayerAction(0);
  sub_23E898E40(v0 + *(v7 + 20), v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = sub_23E9006D4();
      (*(*(v10 - 8) + 8))(v6, v10);
      v11 = 0x747265736E69;
    }

    else
    {
      v11 = 0x65766F6D6572;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E898EEC(v6, type metadata accessor for RenderLayerActionType);
      v9 = 1633972341;
    }

    else
    {
      sub_23E898EEC(v6, type metadata accessor for RenderLayerActionType);
      v9 = 1634038371;
    }

    v11 = v9 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
  }

  v12 = v11 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
  v13 = sub_23E9006D4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3, v0, v13);
  (*(v14 + 56))(v3, 0, 1, v13);
  v15 = sub_23E8CAF84();
  if (v15)
  {
    v18[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  v16 = sub_23E898664(v12, 0xEB00000000726579, v3, v19);

  sub_23E87E458(v19, &qword_27E35E6C8, &unk_23E9039A0);
  sub_23E87E458(v3, &unk_27E35F820, &qword_23E9064A0);
  return v16;
}

uint64_t sub_23E898664(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903900;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v21 = 0x6E6F6974636E7566;
  v22 = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 88) = 0x6E6F69746361;
  *(inited + 96) = 0xE600000000000000;
  v21 = a1;
  v22 = a2;

  sub_23E900C64();
  *(inited + 144) = 0x55557463656A626FLL;
  *(inited + 152) = 0xEA00000000004449;
  sub_23E8891B4(a3, v9, &unk_27E35F820, &qword_23E9064A0);
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_23E87E458(v9, &unk_27E35F820, &qword_23E9064A0);
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
    *(inited + 192) = 0;
  }

  else
  {
    v13 = sub_23E9006A4();
    v15 = v14;
    (*(v12 + 8))(v9, v11);
    v21 = v13;
    v22 = v15;
    sub_23E900C64();
  }

  *(inited + 200) = 0x746E656D75677261;
  *(inited + 208) = 0xE900000000000073;
  sub_23E8891B4(v20, inited + 216, &qword_27E35E6C8, &unk_23E9039A0);
  v16 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v17 = sub_23E88B1F4(v16);

  return v17;
}

uint64_t sub_23E89894C(__int128 *a1)
{
  v3 = sub_23E9006D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RenderLayerType(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RenderLayerActionType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E898EA4(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v13 = type metadata accessor for RenderLayerAction(0);
  sub_23E898E40(v1 + *(v13 + 20), v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48)];
      (*(v4 + 32))(v6, v12, v3);
      MEMORY[0x23EF17B90](2);
      sub_23E900824();
      MEMORY[0x23EF17B90](v16);
      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      return MEMORY[0x23EF17B90](3);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E893B20(v12, v9);
      v15 = 1;
    }

    else
    {
      sub_23E893B20(v12, v9);
      v15 = 0;
    }

    MEMORY[0x23EF17B90](v15);
    sub_23E88B530(a1);
    return sub_23E898EEC(v9, type metadata accessor for RenderLayerType);
  }
}

uint64_t sub_23E898C00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E9006D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23E898C6C()
{
  sub_23E900EB4();
  sub_23E89894C(v1);
  return sub_23E900F14();
}

uint64_t sub_23E898CB0(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E89894C(v2);
  return sub_23E900F14();
}

uint64_t sub_23E898CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_23E9006B4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_23E8CB708(a1 + v6, a2 + v6);
}

uint64_t type metadata accessor for RenderLayerAction(uint64_t a1)
{
  result = qword_27E35E8D8;
  if (!qword_27E35E8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E898DE8(uint64_t a1)
{
  result = sub_23E898EA4(&qword_27E35E8C8, type metadata accessor for RenderLayerAction, &unk_23E903938);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E898E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenderLayerActionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E898EA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E898EEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E898F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for RenderLayerActionType(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23E899064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RenderLayerActionType(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23E899160(uint64_t a1)
{
  result = sub_23E9006D4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RenderLayerActionType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23E899208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E899250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_23E8992D0()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

uint64_t sub_23E899344(uint64_t a1)
{
  v2 = *v1;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v2);
  return sub_23E900F14();
}

uint64_t sub_23E899388(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, char a5)
{
  *(v5 + 393) = a5;
  *(v5 + 280) = a1;
  *(v5 + 288) = a4;
  v6 = a4[1];
  *(v5 + 296) = *a4;
  *(v5 + 312) = v6;
  v7 = a4[3];
  *(v5 + 328) = a4[2];
  *(v5 + 344) = v7;
  return MEMORY[0x2822009F8](sub_23E8993C0, 0, 0);
}

uint64_t sub_23E8993C0()
{
  v1 = *(v0 + 304);
  if (*(v0 + 393))
  {
    v2 = *(v0 + 280);

    _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
    v3 = type metadata accessor for RenderAssetAction(0);
    v4 = v2 + *(v3 + 20);
    v5 = *(v0 + 280);
    *v4 = *(v0 + 296);
    *(v4 + 40) = 0;
    *(v4 + 72) = 0;
    (*(*(v3 - 8) + 56))(v5, 0, 1);
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v10 = (*(v0 + 344) + **(v0 + 344));
    v8 = swift_task_alloc();
    *(v0 + 360) = v8;
    *v8 = v0;
    v8[1] = sub_23E89956C;
    v9 = *(v0 + 296);

    return v10(v9, v1);
  }
}

uint64_t sub_23E89956C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 368) = v2;

  if (v2)
  {
    v7 = sub_23E8997A8;
  }

  else
  {
    *(v6 + 376) = a2;
    *(v6 + 384) = a1;
    v7 = sub_23E8996A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E8996A0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 280);
  v3 = *(v0 + 336) & 0x101;
  v4 = *(v0 + 376) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v11 = *(v0 + 312);
  v12 = *(v0 + 296);
  sub_23E895FE4(*(v0 + 288), v0 + 208);
  _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
  v5 = type metadata accessor for RenderAssetAction(0);
  v6 = v2 + *(v5 + 20);
  *v6 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  v7 = *(v0 + 384);
  v8 = *(v0 + 280);
  *(v6 + 48) = *(v0 + 344);
  *(v6 + 64) = v7;
  *(v6 + 72) = v4;
  (*(*(v5 - 8) + 56))(v8, 0, 1);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23E8997A8()
{
  v30 = v0;
  if (qword_27E35E170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367120);
  sub_23E895FE4(v2, v0 + 16);
  v4 = v1;
  v5 = sub_23E900744();
  v6 = sub_23E900B04();
  sub_23E899A78(v2);

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 368);
  if (v7)
  {
    v9 = *(v0 + 288);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136446722;
    *(v0 + 392) = 0;
    v12 = sub_23E9008D4();
    v14 = sub_23E887B9C(v12, v13, &v29);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = *v9;
    v16 = v9[1];
    v17 = v9[3];
    *(v0 + 112) = v9[2];
    *(v0 + 128) = v17;
    *(v0 + 80) = v15;
    *(v0 + 96) = v16;
    sub_23E895FE4(v9, v0 + 144);
    v18 = sub_23E9008D4();
    v20 = sub_23E887B9C(v18, v19, &v29);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2082;
    *(v0 + 272) = v8;
    v21 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v22 = sub_23E9008D4();
    v24 = sub_23E887B9C(v22, v23, &v29);

    *(v10 + 24) = v24;
    _os_log_impl(&dword_23E879000, v5, v6, "Failed making a %{public}s action for %{public}s: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v11, -1, -1);
    MEMORY[0x23EF18560](v10, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 280);
  v26 = type metadata accessor for RenderAssetAction(0);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = *(v0 + 8);

  return v27();
}

uint64_t getEnumTagSinglePayload for RenderAsset.MIMEType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RenderAsset.MIMEType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E899C2C()
{
  result = qword_27E35E8E8[0];
  if (!qword_27E35E8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E35E8E8);
  }

  return result;
}

uint64_t sub_23E899C80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696461656CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696C69617274;
    }

    else
    {
      v4 = 0x676E696461656CLL;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696C69617274;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E900E04();
  }

  return v11 & 1;
}

uint64_t sub_23E899DAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xEB00000000706143;
  if (a1 == 5)
  {
    v5 = 0x747865547473616CLL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a1 != 5)
  {
    v4 = 0x800000023E908620;
  }

  v6 = 0xD000000000000011;
  if (a1 == 3)
  {
    v6 = 0x7865547473726966;
    v7 = 0xEC00000070614374;
  }

  else
  {
    v7 = 0x800000023E908600;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
  }

  else
  {
    v6 = v5;
  }

  v8 = 0x6D6F74746F62;
  if (a1 != 1)
  {
    v8 = 0x7265746E6563;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 7368564;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x6D6F74746F62)
        {
          goto LABEL_44;
        }
      }

      else if (v9 != 0x7265746E6563)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 7368564)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xEB00000000706143;
      if (v9 != 0x747865547473616CLL)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0x800000023E908620;
      if (v9 != 0xD000000000000010)
      {
LABEL_44:
        v12 = sub_23E900E04();
        goto LABEL_45;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xEC00000070614374;
    if (v9 != 0x7865547473726966)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v11 = 0x800000023E908600;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_44;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_44;
  }

  v12 = 1;
LABEL_45:

  return v12 & 1;
}

uint64_t sub_23E899FD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746867;
  v3 = 0x694C6D756964654DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x67694C6172746C55;
    }

    else
    {
      v5 = 0x7261446172746C55;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007468;
    }

    else
    {
      v6 = 0xE90000000000006BLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x61446D756964654DLL;
    }

    else
    {
      v5 = 0x694C6D756964654DLL;
    }

    if (v4)
    {
      v6 = 0xEA00000000006B72;
    }

    else
    {
      v6 = 0xEB00000000746867;
    }
  }

  v7 = 0x67694C6172746C55;
  v8 = 0xEA00000000007468;
  if (a2 != 2)
  {
    v7 = 0x7261446172746C55;
    v8 = 0xE90000000000006BLL;
  }

  if (a2)
  {
    v3 = 0x61446D756964654DLL;
    v2 = 0xEA00000000006B72;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E900E04();
  }

  return v11 & 1;
}

uint64_t sub_23E89A140(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6B63616279616C70;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else
  {
    v4 = 0x800000023E9085B0;
    if (a1 != 3)
    {
      v4 = 0x800000023E9085D0;
    }

    if (a1 == 2)
    {
      v5 = 0x6C616974617073;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    v7 = 0xE800000000000000;
    v8 = a2 == 0;
    if (a2)
    {
      v9 = 0x6B63616279616C70;
    }

    else
    {
      v9 = 0x6669636570736E75;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v7 = 0x800000023E9085D0;
    if (a2 == 3)
    {
      v7 = 0x800000023E9085B0;
    }

    v8 = a2 == 2;
    if (a2 == 2)
    {
      v9 = 0x6C616974617073;
    }

    else
    {
      v9 = 0xD000000000000010;
    }
  }

  if (v8)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E900E04();
  }

  return v11 & 1;
}

uint64_t sub_23E89A2C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7468676972;
  }

  else if (a1 == 3)
  {
    v3 = 0x656966697473756ALL;
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6C61727574616ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7265746E6563;
    }

    else
    {
      v9 = 1952867692;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656966697473756ALL;
    v6 = 0xE900000000000064;
    if (a2 != 3)
    {
      v5 = 0x6C61727574616ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7468676972;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_23E900E04();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_23E89A440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x746C7561666564;
    }

    if (v2)
    {
      v4 = 0x800000023E908600;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000023E908620;
  }

  else if (a1 == 3)
  {
    v3 = 0x7865547473726966;
    v4 = 0xEC00000070614374;
  }

  else
  {
    v3 = 0x747865547473616CLL;
    v4 = 0xEB00000000706143;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x746C7561666564;
    }

    if (a2)
    {
      v5 = 0x800000023E908600;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000023E908620;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEC00000070614374;
    if (v3 != 0x7865547473726966)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000706143;
    if (v3 != 0x747865547473616CLL)
    {
LABEL_31:
      v7 = sub_23E900E04();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_23E89A614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00676E69707061;
  v3 = 0x725764726F577962;
  v4 = a1;
  if (a1 > 2u)
  {
    v9 = 0xD000000000000010;
    v10 = 0x800000023E9086F0;
    if (a1 != 4)
    {
      v9 = 0xD000000000000012;
      v10 = 0x800000023E908710;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v9;
    }

    if (v4 == 3)
    {
      v8 = 0x800000023E9086D0;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v5 = 0x7257726168437962;
    if (a1 == 1)
    {
      v6 = 0xEE00676E69707061;
    }

    else
    {
      v5 = 0x697070696C437962;
      v6 = 0xEA0000000000676ELL;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x725764726F577962;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEE00676E69707061;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xD000000000000012;
      }

      if (a2 == 4)
      {
        v2 = 0x800000023E9086F0;
      }

      else
      {
        v2 = 0x800000023E908710;
      }

      if (v7 != v11)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0xD000000000000010;
    v2 = 0x800000023E9086D0;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (v7 != 0x7257726168437962)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v2 = 0xEA0000000000676ELL;
      if (v7 != 0x697070696C437962)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_35;
  }

  if (v7 != v3)
  {
LABEL_38:
    v12 = sub_23E900E04();
    goto LABEL_39;
  }

LABEL_35:
  if (v8 != v2)
  {
    goto LABEL_38;
  }

  v12 = 1;
LABEL_39:

  return v12 & 1;
}

__n128 RenderNode.init(identifier:content:contentSemantic:position:size:centerAnchor:transform:opacity:backgroundColor:cornerRadius:insets:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, uint64_t a15, char a16, __n128 a17, unint64_t a18, unsigned __int8 a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26)
{
  v36 = a6 >> 40;
  v37 = a8 >> 40;
  v38 = *a3;
  v39 = sub_23E9006D4();
  (*(*(v39 - 8) + 32))(a9, a1, v39);
  v41 = type metadata accessor for RenderNode(0, a25, a26, v40);
  (*(*(a25 - 8) + 32))(a9 + v41[9], a2, a25);
  *(a9 + v41[10]) = v38;
  v42 = a9 + v41[11];
  *v42 = a4;
  *(v42 + 8) = a5;
  *(v42 + 20) = BYTE4(a6);
  *(v42 + 16) = a6;
  *(v42 + 21) = v36;
  v43 = a9 + v41[12];
  *v43 = a7;
  *(v43 + 8) = a8;
  *(v43 + 12) = BYTE4(a8);
  *(v43 + 13) = v37;
  v44 = a9 + v41[13];
  *v44 = a15;
  *(v44 + 8) = a16;
  v45 = (a9 + v41[14]);
  result = a17;
  *v45 = a17;
  v45[1].n128_u64[0] = a18;
  v45[1].n128_u8[8] = a19;
  v47 = a9 + v41[15];
  *v47 = a20;
  *(v47 + 8) = a21;
  v48 = a9 + v41[16];
  *v48 = a22;
  *(v48 + 8) = a23;
  *(v48 + 16) = a24;
  *(a9 + v41[17]) = a10;
  v49 = (a9 + v41[18]);
  *v49 = a11;
  v49[1] = a12;
  v49[2] = a13;
  v49[3] = a14;
  return result;
}

uint64_t RenderNode.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E9006D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RenderNode.position.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  v3 = *v2;
  sub_23E8811D8(*v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 20) << 32), *(v2 + 21));
  return v3;
}

uint64_t RenderNode.position.setter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 >> 40;
  v9 = v4 + *(a4 + 44);
  result = sub_23E881154(*v9, *(v9 + 8), *(v9 + 16) | (*(v9 + 20) << 32), *(v9 + 21));
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 20) = BYTE4(a3);
  *(v9 + 16) = a3;
  *(v9 + 21) = v8;
  return result;
}

uint64_t RenderNode.size.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  v3 = *v2;
  sub_23E881208(*v2, *(v2 + 8) | (*(v2 + 12) << 32), *(v2 + 13));
  return v3;
}

uint64_t RenderNode.size.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 >> 40;
  v7 = v3 + *(a3 + 48);
  result = sub_23E881180(*v7, *(v7 + 8) | (*(v7 + 12) << 32), *(v7 + 13));
  *v7 = a1;
  *(v7 + 12) = BYTE4(a2);
  *(v7 + 8) = a2;
  *(v7 + 13) = v6;
  return result;
}

uint64_t RenderNode.centerAnchor.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 52);
  v3 = *v2;
  sub_23E8811F0(*v2, *(v2 + 8));
  return v3;
}

uint64_t RenderNode.centerAnchor.setter(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 52);
  result = sub_23E8811AC(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t RenderNode.transform.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 56);
  v3 = *v2;
  sub_23E8811D8(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return v3;
}

uint64_t RenderNode.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = v5 + *(a5 + 56);
  result = sub_23E881154(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24));
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  return result;
}

uint64_t RenderNode.opacity.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 60);
  v3 = *v2;
  sub_23E8811F0(*v2, *(v2 + 8));
  return v3;
}

uint64_t RenderNode.opacity.setter(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 60);
  result = sub_23E8811AC(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t RenderNode.backgroundColor.setter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + *(a4 + 64);
  *v5 = result;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  return result;
}

uint64_t RenderNode.insets.setter(uint64_t result, float a2, float a3, float a4, float a5)
{
  v6 = (v5 + *(result + 72));
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

uint64_t static RenderNode.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_23E9006B4() & 1) != 0 && (v9 = type metadata accessor for RenderNode(0, a3, a4, v8), (sub_23E900844()) && (sub_23E89A140(*(a1 + v9[10]), *(a2 + v9[10])) & 1) != 0 && (v10 = v9[11], (sub_23E89B274(*(a1 + v10), *(a1 + v10 + 8), *(a1 + v10 + 16) | (*(a1 + v10 + 20) << 32) | (*(a1 + v10 + 21) << 40), *(a2 + v10), *(a2 + v10 + 8), *(a2 + v10 + 16) | (*(a2 + v10 + 20) << 32) | (*(a2 + v10 + 21) << 40))) && (v11 = v9[12], (sub_23E89B474(*(a1 + v11), *(a1 + v11 + 8) | (*(a1 + v11 + 12) << 32) | (*(a1 + v11 + 13) << 40), *(a2 + v11), *(a2 + v11 + 8) | (*(a2 + v11 + 12) << 32) | (*(a2 + v11 + 13) << 40))) && (sub_23E89B564(*(a1 + v9[13]), *(a1 + v9[13] + 8), *(a2 + v9[13]), *(a2 + v9[13] + 8)) & 1) != 0 && (v12 = v9[14], (sub_23E89B5D4(*(a1 + v12), *(a1 + v12 + 8), *(a1 + v12 + 16), *(a1 + v12 + 24), *(a2 + v12), *(a2 + v12 + 8), *(a2 + v12 + 16), *(a2 + v12 + 24))) && (sub_23E89B7E4(*(a1 + v9[15]), *(a1 + v9[15] + 8), *(a2 + v9[15]), *(a2 + v9[15] + 8)) & 1) != 0 && (v13 = v9[16], _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v13), *(a1 + v13 + 8), *(a1 + v13 + 16), *(a2 + v13), *(a2 + v13 + 8), *(a2 + v13 + 16))) && *(a1 + v9[17]) == *(a2 + v9[17]))
  {
    v14 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v9[18]), *(a2 + v9[18]))));
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_23E89B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!BYTE5(a3))
  {
    if (BYTE5(a6))
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (a5 != 1)
        {
          return 0;
        }

        v6 = *(&a1 + 1);
        v7 = a2;
        v8 = a3;
        v9 = a6;
        v10 = a5;
        v11 = *(&a4 + 1);
        if ((sub_23E899C80(a1, a4) & 1) == 0)
        {
          return 0;
        }

        a5 = v10;
        a6 = v9;
        a2 = v7;
        a3 = v8;
        v12 = v6;
        v13 = v11;
LABEL_19:
        if (v12 != v13)
        {
          return 0;
        }

        *(&v16 + 1) = a6;
        *&v16 = a5;
        v15 = v16 >> 32;
        *(&v16 + 1) = a3;
        *&v16 = a2;
        v17 = v16 >> 32;
        if (BYTE4(a3))
        {
          if (BYTE4(a3) == 1)
          {
            if (BYTE4(a6) != 1)
            {
              return 0;
            }

            v18 = *(&v17 + 1);
            v19 = *(&v15 + 1);
            if (v17)
            {
              v20 = 0x6D6F74746F62;
            }

            else
            {
              v20 = 7368564;
            }

            if (v17)
            {
              v21 = 0xE600000000000000;
            }

            else
            {
              v21 = 0xE300000000000000;
            }

            if (v15)
            {
              v22 = 0x6D6F74746F62;
            }

            else
            {
              v22 = 7368564;
            }

            if (v15)
            {
              v23 = 0xE600000000000000;
            }

            else
            {
              v23 = 0xE300000000000000;
            }

            if (v20 == v22 && v21 == v23)
            {
            }

            else
            {
              v24 = sub_23E900E04();

              if ((v24 & 1) == 0)
              {
                return 0;
              }
            }

            return v18 == v19;
          }

          if (BYTE4(a6) != 2)
          {
            return 0;
          }
        }

        else if (BYTE4(a6))
        {
          return 0;
        }

        return *&v17 == *&v15;
      }

      if (a5 != 2)
      {
        return 0;
      }
    }

    else if (a5)
    {
      return 0;
    }

    v12 = *&a1;
    v13 = *&a4;
    goto LABEL_19;
  }

  if (BYTE5(a3) != 1)
  {
    if (BYTE5(a6) == 2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (BYTE5(a6) != 1)
  {
    return 0;
  }

LABEL_12:

  return sub_23E8DDE68(a1, a4);
}

uint64_t sub_23E89B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE5(a2))
  {
    if (BYTE5(a2) == 1)
    {
      if (BYTE5(a4) != 1)
      {
        return 0;
      }

      return sub_23E8DD958(a1, a3);
    }

    if (BYTE5(a4) == 2)
    {
      return sub_23E8DD958(a1, a3);
    }
  }

  else if (!BYTE5(a4))
  {
    if (BYTE4(a1) > 1u)
    {
      if (BYTE4(a1) == 2)
      {
        if (BYTE4(a3) != 2)
        {
          return 0;
        }
      }

      else if (BYTE4(a3) != 3)
      {
        return 0;
      }
    }

    else if (BYTE4(a1))
    {
      if (BYTE4(a3) != 1)
      {
        return 0;
      }
    }

    else if (BYTE4(a3))
    {
      return 0;
    }

    if (*&a1 == *&a3)
    {
      if (BYTE4(a2) > 1u)
      {
        if (BYTE4(a2) == 2)
        {
          if (BYTE4(a4) != 2)
          {
            return 0;
          }
        }

        else if (BYTE4(a4) != 3)
        {
          return 0;
        }
      }

      else if (BYTE4(a2))
      {
        if (BYTE4(a4) != 1)
        {
          return 0;
        }
      }

      else if (BYTE4(a4))
      {
        return 0;
      }

      if (*&a2 == *&a4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_23E89B564(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return sub_23E8DD588(a1, a3);
    }

    if (a4 == 2)
    {
      return sub_23E8DD588(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return *(&a1 + 1) == *(&a3 + 1) && *&a1 == *&a3;
}

uint64_t sub_23E89B5D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        sub_23E8811D8(a5, a6, a7, 1u);
        sub_23E8811D8(a1, a2, a3, 1u);
        v16 = sub_23E8DD17C(a1, a5);
        sub_23E881154(a5, a6, a7, 1u);
        v17 = a1;
        v18 = a2;
        v19 = a3;
        v20 = 1;
LABEL_21:
        sub_23E881154(v17, v18, v19, v20);
        return v16 & 1;
      }
    }

    else if (a8 == 2)
    {
      sub_23E8811D8(a5, a6, a7, 2u);
      sub_23E8811D8(a1, a2, a3, 2u);
      v16 = sub_23E8DD17C(a1, a5);
      sub_23E881154(a5, a6, a7, 2u);
      v17 = a1;
      v18 = a2;
      v19 = a3;
      v20 = 2;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (a8)
  {
LABEL_23:
    sub_23E8811D8(a5, a6, a7, a8);
    sub_23E881154(a1, a2, a3, a4);
    sub_23E881154(a5, a6, a7, a8);
    return 0;
  }

  v22 = *(&a1 + 1) == *(&a5 + 1) && *&a1 == *&a5;
  v23 = v22 && *&a2 == *&a6;
  if (*(&a2 + 1) != *(&a6 + 1))
  {
    v23 = 0;
  }

  if (*&a3 != *&a7)
  {
    v23 = 0;
  }

  if (*(&a3 + 1) == *(&a7 + 1))
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E89B7E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        return sub_23E8DCD90(a1, a3);
      }
    }

    else if (a4 == 2)
    {
      return sub_23E8DCD90(a1, a3);
    }

    return 0;
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t RenderNode.hash(into:)(uint64_t a1, int *a2)
{
  sub_23E9006D4();
  sub_23E88206C();
  sub_23E900824();
  sub_23E900824();
  sub_23E900904();

  v5 = v2 + a2[11];
  sub_23E89C184(a1, *v5, *(v5 + 8), *(v5 + 16) | (*(v5 + 20) << 32) | (*(v5 + 21) << 40));
  sub_23E89BFD8(a1, *(v2 + a2[12]), *(v2 + a2[12] + 8) | (*(v2 + a2[12] + 12) << 32) | (*(v2 + a2[12] + 13) << 40));
  sub_23E89BE34(a1, *(v2 + a2[13]), *(v2 + a2[13] + 8));
  sub_23E89BC90(a1, *(v2 + a2[14]), *(v2 + a2[14] + 8), *(v2 + a2[14] + 16), *(v2 + a2[14] + 24));
  sub_23E89BB04(a1, *(v2 + a2[15]), *(v2 + a2[15] + 8));
  Color.hash(into:)(a1, *(v2 + a2[16]), *(v2 + a2[16] + 8), *(v2 + a2[16] + 16));
  sub_23E900EE4();
  v6 = (v2 + a2[18]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  return Insets.hash(into:)(v7, v8, v9, v10);
}

uint64_t RenderNode.hashValue.getter(int *a1)
{
  sub_23E900EB4();
  RenderNode.hash(into:)(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E89BAB0(uint64_t a1, int *a2)
{
  sub_23E900EB4();
  RenderNode.hash(into:)(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E89BB04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x23EF17B90](1);
      v5 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v5);
      if (v5)
      {
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0) - 8);
        v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v9 = *(v7 + 72);
        do
        {
          result = sub_23E8D3854(a1);
          v8 += v9;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      MEMORY[0x23EF17B90](2);
      v10 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v10);
      if (v10)
      {
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0) - 8);
        v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v13 = *(v11 + 72);
        do
        {
          result = sub_23E8D3854(a1);
          v12 += v13;
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    MEMORY[0x23EF17B90](0);
    return sub_23E900EE4();
  }

  return result;
}

uint64_t sub_23E89BC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      MEMORY[0x23EF17B90](1, a2, a3, a4);
      v7 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v7);
      if (v7)
      {
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0) - 8);
        v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v11 = *(v9 + 72);
        do
        {
          result = sub_23E8D3A6C(a1);
          v10 += v11;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      MEMORY[0x23EF17B90](2, a2, a3, a4);
      v12 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v12);
      if (v12)
      {
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0) - 8);
        v14 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v15 = *(v13 + 72);
        do
        {
          result = sub_23E8D3A6C(a1);
          v14 += v15;
          --v12;
        }

        while (v12);
      }
    }
  }

  else
  {
    MEMORY[0x23EF17B90](0);
    return Transform.hash(into:)();
  }

  return result;
}

uint64_t sub_23E89BE34(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x23EF17B90](1);
      v5 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v5);
      if (v5)
      {
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50) - 8);
        v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v9 = *(v7 + 72);
        do
        {
          result = sub_23E8D3CAC(a1);
          v8 += v9;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      MEMORY[0x23EF17B90](2);
      v10 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v10);
      if (v10)
      {
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50) - 8);
        v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v13 = *(v11 + 72);
        do
        {
          result = sub_23E8D3CAC(a1);
          v12 += v13;
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    MEMORY[0x23EF17B90](0);
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  return result;
}

uint64_t sub_23E89BFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE5(a3))
  {
    if (BYTE5(a3) == 1)
    {
      MEMORY[0x23EF17B90](1, a2, a3);
      v5 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v5);
      if (v5)
      {
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0) - 8);
        v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v9 = *(v7 + 72);
        do
        {
          result = sub_23E8D3EBC(a1);
          v8 += v9;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      MEMORY[0x23EF17B90](2, a2, a3);
      v11 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v11);
      if (v11)
      {
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0) - 8);
        v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v14 = *(v12 + 72);
        do
        {
          result = sub_23E8D3EBC(a1);
          v13 += v14;
          --v11;
        }

        while (v11);
      }
    }
  }

  else
  {
    MEMORY[0x23EF17B90](0);
    Dimension.hash(into:)(a1, a2 & 0xFFFFFFFFFFLL);

    return Dimension.hash(into:)(a1, a3 & 0xFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_23E89C184(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (BYTE5(a4))
  {
    if (BYTE5(a4) == 1)
    {
      MEMORY[0x23EF17B90](1, a2, a3, a4);
      v6 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v6);
      if (v6)
      {
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18) - 8);
        v9 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v10 = *(v8 + 72);
        do
        {
          result = sub_23E8D40FC(a1);
          v9 += v10;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      MEMORY[0x23EF17B90](2, a2, a3, a4);
      v15 = *(a2 + 16);
      result = MEMORY[0x23EF17B90](v15);
      if (v15)
      {
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18) - 8);
        v17 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
        v18 = *(v16 + 72);
        do
        {
          result = sub_23E8D40FC(a1);
          v17 += v18;
          --v15;
        }

        while (v15);
      }
    }
  }

  else
  {
    v11 = HIDWORD(a4);
    *(&v12 + 1) = a4;
    *&v12 = a3;
    v13 = a3;
    MEMORY[0x23EF17B90](0);
    HorizontalPosition.hash(into:)(a1, a2, v13);
    v14 = v12 >> 32;

    return VerticalPosition.hash(into:)(a1, v14, v11);
  }

  return result;
}

void sub_23E89C370(uint64_t a1)
{
  sub_23E9006D4();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23E89CA10(319, &qword_27E35E970, sub_23E89C914, &type metadata for Point);
      if (v3 <= 0x3F)
      {
        sub_23E89CA10(319, &qword_27E35E980, sub_23E89C968, &type metadata for Size);
        if (v4 <= 0x3F)
        {
          sub_23E89CA10(319, &qword_27E35E990, sub_23E89C9BC, &type metadata for Anchor);
          if (v5 <= 0x3F)
          {
            sub_23E89CA10(319, &qword_27E35E9A0, sub_23E897B88, &type metadata for Transform);
            if (v6 <= 0x3F)
            {
              sub_23E89CA70(319, v6, v7, v8);
              if (v9 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23E89C524(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFD)
  {
    v13 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (v13 < a2 && *(a1 + (((((((((v14 & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 37) & 0xFFFFFFFFFFFFFFF8) + 69) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFFCLL) + 16))
  {
    return v13 + *a1 + 1;
  }

  if (v8 == v13)
  {
    v16 = *(v7 + 48);

    return v16(a1);
  }

  else
  {
    v17 = (a1 + v14) & ~v11;
    if (v10 == v13)
    {
      v18 = *(v9 + 48);

      return v18(v17, v10);
    }

    else
    {
      v19 = *(((v17 + v12) & 0xFFFFFFFFFFFFFFF8) + 29);
      if (v19 >= 3)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_23E89C6F8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23E9006D4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0xFD)
  {
    v16 = 253;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((((((((((v12 + v13) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 37) & 0xFFFFFFFFFFFFFFF8) + 69) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFFCLL) + 16;
  if (v16 >= a2)
  {
    if (v16 < a3)
    {
      *(a1 + v17) = 0;
    }

    if (a2)
    {
      if (v9 == v16)
      {
        v18 = *(v8 + 56);

        v18(a1, a2);
      }

      else
      {
        v19 = (a1 + v12 + v13) & ~v13;
        if (v11 == v16)
        {
          v20 = *(v10 + 56);

          v20(v19, a2, v11);
        }

        else
        {
          v21 = (v19 + v14) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFD)
          {
            *(v21 + 8) = 0;
            *(v21 + 16) = 0;
            *(v21 + 22) = 0;
            *(v21 + 8) = a2 - 254;
          }

          else
          {
            *(v21 + 29) = -a2;
          }
        }
      }
    }
  }

  else
  {
    bzero(a1, ((((((((((v12 + v13) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 37) & 0xFFFFFFFFFFFFFFF8) + 69) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFFCLL) + 16);
    *a1 = ~v16 + a2;
    if (v16 < a3)
    {
      *(a1 + v17) = 1;
    }
  }
}

unint64_t sub_23E89C914()
{
  result = qword_27E35E978;
  if (!qword_27E35E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E978);
  }

  return result;
}

unint64_t sub_23E89C968()
{
  result = qword_27E35E988;
  if (!qword_27E35E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E988);
  }

  return result;
}

unint64_t sub_23E89C9BC()
{
  result = qword_27E35E998;
  if (!qword_27E35E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E998);
  }

  return result;
}

void sub_23E89CA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for Animatable(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23E89CA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27E35E9A8)
  {
    v4 = type metadata accessor for Animatable(0, MEMORY[0x277D83A90], &protocol witness table for Float, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27E35E9A8);
    }
  }
}

uint64_t sub_23E89CB38(char a1)
{
  result = 0x6E696769726FLL;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x726F66736E617274;
      break;
    case 3:
      result = 0x6E417265746E6563;
      break;
    case 4:
      result = 0x726F6C6F63;
      break;
    case 5:
      result = 0x756F72676B636162;
      break;
    case 6:
      result = 0x53746E65746E6F63;
      break;
    case 7:
      v3 = 0x72656E726F63;
      goto LABEL_22;
    case 8:
      result = 0x7974696361706FLL;
      break;
    case 9:
      result = 0x737465736E69;
      break;
    case 10:
      result = 0x664F7265626D756ELL;
      break;
    case 11:
      result = 0x694D656B6F727473;
      break;
    case 12:
      result = 0x614D656B6F727473;
      break;
    case 13:
      result = 0x7453656B6F727473;
      break;
    case 14:
      result = 0x6E45656B6F727473;
      break;
    case 15:
      result = 0x6957656B6F727473;
      break;
    case 16:
      result = 0x6F43656B6F727473;
      break;
    case 17:
      result = 0x6142656B6F727473;
      break;
    case 18:
      v3 = 0x656B6F727473;
LABEL_22:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
      break;
    case 19:
      result = 0x6143656B6F727473;
      break;
    case 20:
      result = 0x67696C4174786574;
      break;
    case 21:
      result = 0x6F79614C74786574;
      break;
    case 22:
      result = 0x697461636E757274;
      break;
    case 23:
      result = 1953394534;
      break;
    case 24:
      result = 0x657A6953746E6F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23E89CE7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23E89CB38(*a1);
  v5 = v4;
  if (v3 == sub_23E89CB38(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23E900E04();
  }

  return v8 & 1;
}

uint64_t sub_23E89CF04()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E89CB38(v1);
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E89CF68(uint64_t a1)
{
  sub_23E89CB38(*v1);
  sub_23E900904();
}

uint64_t sub_23E89CFBC(uint64_t a1)
{
  v2 = *v1;
  sub_23E900EB4();
  sub_23E89CB38(v2);
  sub_23E900904();

  return sub_23E900F14();
}

unint64_t sub_23E89D01C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23E89D220(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23E89D04C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E89CB38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for RenderStyleKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderStyleKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E89D1CC()
{
  result = qword_27E35E9B0;
  if (!qword_27E35E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E9B0);
  }

  return result;
}

unint64_t sub_23E89D220(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E900E14();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

uint64_t AssetStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_23E900EB4();
  MEMORY[0x23EF17B90](a1);
  return sub_23E900F14();
}

unint64_t sub_23E89D30C()
{
  result = qword_27E35E9B8;
  if (!qword_27E35E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E9B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerContent.HorizontalAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerContent.HorizontalAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of AirPlayOverlayAssetStoring.register(assets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E889AD8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AirPlayOverlayAssetStoring.unregisterAsset(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E888F34;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AirPlayOverlayAssetStoring.filteredAssets(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E89D830;

  return v9(a1, a2, a3);
}

uint64_t sub_23E89D830(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AirPlayOverlayAssetStoring.allAssets()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E89DDB8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AirPlayOverlayAssetStoring.queryAsset(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E889AD8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AirPlayOverlayAssetStoring.updateRemoteStore()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AD8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AirPlayOverlayAssetStoring.reset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AD8;

  return v7(a1, a2);
}

uint64_t sub_23E89DDBC(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v31 = result;
  if (v6)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
  }

  while (!v6);
  v34 = v2;
  v9 = v10;
  while (1)
  {
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_23E8891B4(*(v1 + 56) + 40 * v12, v48, &qword_27E35E6C8, &unk_23E9039A0);
    *&v47 = v15;
    *(&v47 + 1) = v14;
    v43 = v47;
    v44 = v48[0];
    v45 = v48[1];
    v46 = v49;
    sub_23E8891B4(&v44, &v37, &qword_27E35E6C8, &unk_23E9039A0);
    if (!*(&v38 + 1))
    {

      sub_23E87E458(&v37, &qword_27E35E6C8, &unk_23E9039A0);
      result = sub_23E87E458(&v43, &qword_27E35E6D0, &unk_23E9039C0);
      v2 = v34;
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v35[0] = v37;
    v35[1] = v38;
    v36 = v39;
    sub_23E88FC10(v35, &v37);

    if (swift_dynamicCast())
    {
      sub_23E8A2384(v35);
      v32 = v42;
      v33 = v41;
    }

    else
    {
      v16 = sub_23E900C44();
      v32 = v17;
      v33 = v16;
      sub_23E8A2384(v35);
    }

    v2 = v34;
    v40 = v46;
    v38 = v44;
    v39 = v45;
    v37 = v43;
    v18 = *(v34 + 16);
    if (*(v34 + 24) <= v18)
    {
      sub_23E88D8D0(v18 + 1, 1);
      v2 = v50;
    }

    v19 = v37;
    sub_23E900EB4();
    sub_23E900904();
    result = sub_23E900F14();
    v20 = v2 + 64;
    v21 = -1 << *(v2 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = 16 * v24;
    *(*(v2 + 48) + v29) = v19;
    v30 = (*(v2 + 56) + v29);
    *v30 = v33;
    v30[1] = v32;
    ++*(v2 + 16);
    result = sub_23E87E458(&v38, &qword_27E35E6C8, &unk_23E9039A0);
    v1 = v31;
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_11:
    v34 = v2;
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v20 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_28;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23E89E260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 72))(*(a1 + 16), a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 32) = 0x444965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  (*(v7 + 16))(v9, v3, v6);
  sub_23E8A27E0(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900C64();
  v12 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  sub_23E87E458(inited + 32, &qword_27E35E598, &unk_23E905080);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v10;
  sub_23E8A1DBC(v12, sub_23E8CF910, 0, isUniquelyReferenced_nonNull_native, &v16);

  return v16;
}

uint64_t sub_23E89E470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = (*(a2 + 80))(*(a1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903F50;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEF726F6C6F43646ELL;
  v44 = sub_23E8F6110(*(v3 + *(a1 + 64)), *(v3 + *(a1 + 64) + 8), *(v3 + *(a1 + 64) + 16));
  v45 = v7;
  sub_23E900C64();
  strcpy((inited + 88), "cornerRadius");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  LODWORD(v44) = *(v2 + *(a1 + 68));
  sub_23E900C64();
  *(inited + 144) = 120;
  *(inited + 152) = 0xE100000000000000;
  v8 = v2 + *(a1 + 44);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16) | (*(v8 + 20) << 32) | (*(v8 + 21) << 40);
  v12 = sub_23E89E9E8(*v8, v10, v11);
  if (v13 == -1)
  {
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v44 = sub_23E8F6440(v12, v13);
    v45 = v14;
    sub_23E900C64();
  }

  *(inited + 200) = 121;
  *(inited + 208) = 0xE100000000000000;
  sub_23E89E9E8(v9, v10, v11);
  if (v15 == 0xFF)
  {
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    *(&v17 + 1) = v16;
    *&v17 = v15;
    v44 = sub_23E8F65F8(v17 >> 32, SBYTE4(v16));
    v45 = v18;
    sub_23E900C64();
  }

  *(inited + 256) = 0x6874646977;
  *(inited + 264) = 0xE500000000000000;
  v19 = v3 + *(a1 + 48);
  v20 = *v19;
  v21 = *(v19 + 8) | (*(v19 + 12) << 32) | (*(v19 + 13) << 40);
  v22 = sub_23E89EBE0(*v19, v21);
  if ((~v22 & 0xFF00000000) != 0)
  {
    v44 = sub_23E8F676C(v22 & 0xFFFFFFFFFFLL);
    v45 = v23;
    sub_23E900C64();
  }

  else
  {
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  *(inited + 312) = 0x746867696568;
  *(inited + 320) = 0xE600000000000000;
  if ((~sub_23E89EBE0(v20, v21) & 0xFF00000000) != 0)
  {
    v44 = sub_23E8F676C(v24 & 0xFFFFFFFFFFLL);
    v45 = v25;
    sub_23E900C64();
  }

  else
  {
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  *(inited + 368) = 0x726F66736E617274;
  *(inited + 376) = 0xE90000000000006DLL;
  v26 = sub_23E89EDBC(*(v3 + *(a1 + 56)), *(v3 + *(a1 + 56) + 8), *(v3 + *(a1 + 56) + 16), *(v3 + *(a1 + 56) + 24));
  if (v29)
  {
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v43[0] = sub_23E8F6878();
    v43[1] = v30;
    sub_23E900C64();
  }

  strcpy((inited + 424), "centerAnchorX");
  *(inited + 438) = -4864;
  v31 = v3 + *(a1 + 52);
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = sub_23E89EFA0(*v31, v33);
  if (v35)
  {
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    LODWORD(v43[0]) = v34;
    sub_23E900C64();
  }

  strcpy((inited + 480), "centerAnchorY");
  *(inited + 494) = -4864;
  v36 = sub_23E89EFA0(v32, v33);
  if (v37)
  {
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    LODWORD(v43[0]) = HIDWORD(v36);
    sub_23E900C64();
  }

  *(inited + 536) = 0x7974696361706FLL;
  *(inited + 544) = 0xE700000000000000;
  v38 = sub_23E89F154(*(v3 + *(a1 + 60)), *(v3 + *(a1 + 60) + 8));
  if ((v38 & 0x100000000) != 0)
  {
    *(inited + 584) = 0;
    *(inited + 552) = 0u;
    *(inited + 568) = 0u;
  }

  else
  {
    LODWORD(v43[0]) = v38;
    sub_23E900C64();
  }

  v39 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v40 = sub_23E89DDBC(v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = v40;
  sub_23E8A20DC(v5, sub_23E8A1D74, 0, isUniquelyReferenced_nonNull_native, v43);

  return v43[0];
}

uint64_t sub_23E89E9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = BYTE5(a3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  if (v6)
  {
    v14 = a1;
    sub_23E8811D8(a1, a2, a3, BYTE5(a3));
    sub_23E8A089C(&v14, &unk_27E35F6F0, qword_23E903D18, sub_23E8F2C34, sub_23E8F2AE8);
    v11 = *(v14 + 16);
    if (v11)
    {
      sub_23E8891B4(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v11 - 1), v10, &unk_27E35F6F0, qword_23E903D18);

      a1 = *&v10[*(v7 + 48)];
      sub_23E87E458(v10, &unk_27E35F6F0, qword_23E903D18);
    }

    else
    {

      return 0;
    }
  }

  return a1;
}

uint64_t sub_23E89EBE0(uint64_t a1, uint64_t a2)
{
  v4 = BYTE5(a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  if (!v4)
  {
    return a1 & 0xFFFFFFFFFFLL;
  }

  v15 = a1;
  sub_23E881208(a1, a2, BYTE5(a2));
  sub_23E8A089C(&v15, &unk_27E35F6C0, &qword_23E9069E0, sub_23E8F2C20, sub_23E8F2AD4);
  v9 = *(v15 + 16);
  if (v9)
  {
    sub_23E8891B4(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v9 - 1), v8, &unk_27E35F6C0, &qword_23E9069E0);

    v10 = &v8[*(v5 + 48)];
    v11 = *v10;
    v12 = v10[4];
    sub_23E87E458(v8, &unk_27E35F6C0, &qword_23E9069E0);
    return v11 | (v12 << 32);
  }

  else
  {

    return 0xFF00000000;
  }
}

uint64_t sub_23E89EDBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  if (v8)
  {
    v16 = a1;
    sub_23E8811D8(a1, a2, a3, a4);
    sub_23E8A089C(&v16, &unk_27E35F660, &unk_23E9069D0, sub_23E8F2BF8, sub_23E8F2AAC);
    v13 = *(v16 + 16);
    if (v13)
    {
      sub_23E8891B4(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v13 - 1), v12, &unk_27E35F660, &unk_23E9069D0);

      a1 = *&v12[*(v9 + 48)];
      sub_23E87E458(v12, &unk_27E35F660, &unk_23E9069D0);
    }

    else
    {

      return 0;
    }
  }

  return a1;
}

uint64_t sub_23E89EFA0(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  if (v4)
  {
    v12 = a1;
    sub_23E8811F0(a1, a2);
    sub_23E8A089C(&v12, &unk_27E35F690, &unk_23E906F50, sub_23E8F2C0C, sub_23E8F2AC0);
    v9 = *(v12 + 16);
    if (v9)
    {
      sub_23E8891B4(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v9 - 1), v8, &unk_27E35F690, &unk_23E906F50);

      a1 = *&v8[*(v5 + 48)];
      sub_23E87E458(v8, &unk_27E35F690, &unk_23E906F50);
    }

    else
    {

      return 0;
    }
  }

  return a1;
}

unint64_t sub_23E89F154(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  if (v4)
  {
    v13 = a1;
    sub_23E8811F0(a1, a2);
    sub_23E8A089C(&v13, &unk_27E35F620, &qword_23E9050B0, sub_23E8F2BE4, sub_23E8F2A98);
    v9 = *(v13 + 16);
    if (!v9)
    {

      LODWORD(a1) = 0;
      v10 = 1;
      return a1 | (v10 << 32);
    }

    sub_23E8891B4(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v9 - 1), v8, &unk_27E35F620, &qword_23E9050B0);

    LODWORD(a1) = *&v8[*(v5 + 48)];
    sub_23E87E458(v8, &unk_27E35F620, &qword_23E9050B0);
  }

  v10 = 0;
  return a1 | (v10 << 32);
}

char *sub_23E89F314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E900BD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  (*(*(a1 - 8) + 56))(v12 - v8, 1, 1, a1);
  v10 = sub_23E8801A4(v9, v3, a1, a3);
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_23E89F49C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23E89F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a1;
  v7 = sub_23E900734();
  v57 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v68 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v47 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v47 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F870, &unk_23E907E10);
  MEMORY[0x28223BE20](v63);
  v15 = (&v47 - v14);
  v16 = type metadata accessor for ContainerContent.Child(0);
  v62 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = a3;
  sub_23E8891B4(a3, &v47 - v23, &unk_27E35E630, &qword_23E903300);
  swift_storeEnumTagMultiPayload();

  v25 = v61;
  sub_23E8F8C04(a2, v60, v24);
  result = sub_23E8A2434(v24);
  if (v25)
  {
  }

  v52 = v19;
  v60 = a2;
  v61 = v16;
  v27 = *(v51 + *(v54 + 36));
  v59 = *(v27 + 16);
  if (!v59)
  {
  }

  v28 = 0;
  ++v57;
  v47 = (v53 + 56);
  v29 = v50;
  v53 = v22;
  v58 = v7;
  v55 = v27;
  v56 = a4;
  while (v28 < *(v27 + 16))
  {
    v30 = v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v28;
    v31 = *(v63 + 48);
    *v15 = v28;
    sub_23E882004(v30, v15 + v31);
    sub_23E882004(v15 + v31, v22);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23E8A2434(v22);
      sub_23E900724();
      v32 = v52;
      sub_23E882004(v15 + v31, v52);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v42 = &qword_27E35E438;
          v43 = &unk_23E907E20;
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
          v44 = sub_23E8A25C4();
        }

        else
        {
          v42 = &qword_27E35E430;
          v43 = &unk_23E902C80;
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
          v44 = sub_23E8A2490();
        }

        v66 = v44;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
        sub_23E87E3F0(v32, boxed_opaque_existential_1, v42, v43);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
          v66 = sub_23E8A26F8();
          v34 = __swift_allocate_boxed_opaque_existential_1(v64);
          v35 = v32;
          v36 = &unk_27E35E440;
          v37 = &unk_23E902C90;
        }

        else
        {
          v65 = v54;
          v66 = sub_23E8A2828();
          v34 = __swift_allocate_boxed_opaque_existential_1(v64);
          v35 = v32;
          v36 = &unk_27E35E630;
          v37 = &qword_23E903300;
        }

        sub_23E87E3F0(v35, v34, v36, v37);
        v22 = v53;
      }

      sub_23E8F8DBC(v64, v67);
      v46 = v58;
      sub_23E8A295C(v67);
      __swift_destroy_boxed_opaque_existential_1(v64);
      (*v57)(v68, v46);
    }

    else
    {
      v38 = v48;
      sub_23E87E3F0(v22, v48, &unk_27E35E630, &qword_23E903300);
      sub_23E8891B4(v51, v29, &unk_27E35E630, &qword_23E903300);
      (*v47)(v29, 0, 1, v54);
      v39 = v49;
      sub_23E900724();
      v40 = v56;
      v41 = v39;
      v29 = v50;

      sub_23E89F4FC(v29, v41, v38, v40);
      (*v57)(v41, v58);
      sub_23E87E458(v29, &unk_27E35F3D0, &qword_23E905770);
      sub_23E87E458(v38, &unk_27E35E630, &qword_23E903300);
      v22 = v53;
    }

    ++v28;
    result = sub_23E87E458(v15, &unk_27E35F870, &unk_23E907E10);
    v27 = v55;
    if (v59 == v28)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E89FC80(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v87 = a4;
  v109 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  MEMORY[0x28223BE20](v93);
  v92 = &v84 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  MEMORY[0x28223BE20](v91);
  v86 = &v84 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  MEMORY[0x28223BE20](v90);
  v85 = &v84 - v8;
  v115 = sub_23E9006D4();
  v94 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v116 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_23E900734();
  v107 = *(v111 - 8);
  v10 = MEMORY[0x28223BE20](v111);
  v112 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v84 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v99 = *(v102 - 8);
  v15 = MEMORY[0x28223BE20](v102);
  v84 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v84 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F870, &unk_23E907E10);
  MEMORY[0x28223BE20](v114);
  v19 = &v84 - v18;
  v20 = type metadata accessor for ContainerContent.Child(0);
  v113 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v84 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v84 - v30;
  v97 = a3;
  sub_23E8891B4(a3, &v84 - v30, &unk_27E35E630, &qword_23E903300);
  swift_storeEnumTagMultiPayload();
  v32 = v110;
  v33 = v87;
  sub_23E8B82D4(a2, v109, v31);
  result = sub_23E8A2434(v31);
  if (v32)
  {
    return result;
  }

  v109 = v29;
  v100 = v26;
  v104 = 0;
  v101 = v23;
  v89 = v20;
  v110 = v19;
  v35 = *(v97 + *(v102 + 36));
  v108 = *(v35 + 16);
  if (!v108)
  {
    return result;
  }

  v36 = 0;
  v105 = (v94 + 16);
  v98 = (v94 + 8);
  ++v107;
  v88 = (v99 + 56);
  v99 = a2;
  v37 = v113;
  v38 = v33;
  v39 = v109;
  v40 = v110;
  v41 = v114;
  v42 = v103;
  v106 = v35;
  while (v36 < *(v35 + 16))
  {
    v46 = v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36;
    v47 = *(v41 + 48);
    *v40 = v36;
    sub_23E882004(v46, v40 + v47);
    sub_23E882004(v40 + v47, v39);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23E87E3F0(v39, v42, &unk_27E35E630, &qword_23E903300);
      v52 = v38;
      v53 = v95;
      sub_23E8891B4(v97, v95, &unk_27E35E630, &qword_23E903300);
      (*v88)(v53, 0, 1, v102);
      v54 = v96;
      sub_23E900724();
      v55 = v104;
      sub_23E89FC80(v53, v54, v42, v52);
      v104 = v55;
      if (v55)
      {
        (*v107)(v54, v111);
        sub_23E87E458(v53, &unk_27E35F3D0, &qword_23E905770);
        sub_23E87E458(v42, &unk_27E35E630, &qword_23E903300);
        return sub_23E87E458(v110, &unk_27E35F870, &unk_23E907E10);
      }

      (*v107)(v54, v111);
      sub_23E87E458(v53, &unk_27E35F3D0, &qword_23E905770);
      sub_23E87E458(v42, &unk_27E35E630, &qword_23E903300);
      v38 = v52;
      v40 = v110;
      goto LABEL_6;
    }

    sub_23E8A2434(v39);
    sub_23E900724();
    v48 = v100;
    sub_23E882004(v40 + v47, v100);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v56 = EnumCaseMultiPayload == 2;
      v57 = v92;
      v58 = v48;
      if (v56)
      {
        v59 = v92;
        v60 = &qword_27E35E438;
        v61 = &qword_27E35E438;
        v62 = &unk_23E907E20;
      }

      else
      {
        v57 = v85;
        v59 = v85;
        v60 = &qword_27E35E430;
        v61 = &qword_27E35E430;
        v62 = &unk_23E902C80;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v50 = v84;
        sub_23E87E3F0(v48, v84, &unk_27E35E630, &qword_23E903300);
        v51 = *v105;
        (*v105)(v116, v50, v115);
        sub_23E87E458(v50, &unk_27E35E630, &qword_23E903300);
        goto LABEL_19;
      }

      v58 = v48;
      v57 = v86;
      v59 = v86;
      v60 = &unk_27E35E440;
      v61 = &unk_27E35E440;
      v62 = &unk_23E902C90;
    }

    sub_23E87E3F0(v58, v59, v61, v62);
    v51 = *v105;
    (*v105)(v116, v57, v115);
    sub_23E87E458(v57, v60, v62);
LABEL_19:
    v63 = v101;
    sub_23E882004(v40 + v47, v101);
    v64 = swift_getEnumCaseMultiPayload();
    if (v64 > 1)
    {
      if (v64 == 2)
      {
        v119 = v93;
        v120 = sub_23E8A25C4();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
        v66 = v63;
        v67 = &qword_27E35E438;
        v68 = &unk_23E907E20;
      }

      else
      {
        v119 = v90;
        v120 = sub_23E8A2490();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
        v66 = v63;
        v67 = &qword_27E35E430;
        v68 = &unk_23E902C80;
      }
    }

    else if (v64)
    {
      v119 = v91;
      v120 = sub_23E8A26F8();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
      v66 = v63;
      v67 = &unk_27E35E440;
      v68 = &unk_23E902C90;
    }

    else
    {
      v119 = v102;
      v120 = sub_23E8A2828();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
      v66 = v63;
      v67 = &unk_27E35E630;
      v68 = &qword_23E903300;
    }

    sub_23E87E3F0(v66, boxed_opaque_existential_1, v67, v68);
    sub_23E881028(&v118, &v117);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v38;
    v121 = *v38;
    v71 = v121;
    v73 = sub_23E88C9D8(v116);
    v74 = v71[2];
    v75 = (v72 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      goto LABEL_39;
    }

    v77 = v72;
    if (v71[3] >= v76)
    {
      v45 = v115;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_32;
      }

      sub_23E8D0400();
    }

    else
    {
      sub_23E88DF94(v76, isUniquelyReferenced_nonNull_native);
      v78 = sub_23E88C9D8(v116);
      if ((v77 & 1) != (v79 & 1))
      {
        goto LABEL_41;
      }

      v73 = v78;
    }

    v45 = v115;
LABEL_32:
    v80 = v121;
    if (v77)
    {
      v43 = (v121[7] + 40 * v73);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v44 = v43;
      v45 = v115;
      sub_23E881028(&v117, v44);
    }

    else
    {
      v121[(v73 >> 6) + 8] |= 1 << v73;
      v51(v80[6] + *(v94 + 72) * v73, v116, v45);
      sub_23E881028(&v117, v80[7] + 40 * v73);
      v81 = v80[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_40;
      }

      v80[2] = v83;
    }

    (*v98)(v116, v45);
    v38 = v70;
    *v70 = v80;
    (*v107)(v112, v111);
    v40 = v110;
    v42 = v103;
LABEL_6:
    ++v36;
    result = sub_23E87E458(v40, &unk_27E35F870, &unk_23E907E10);
    v39 = v109;
    v37 = v113;
    v41 = v114;
    v35 = v106;
    if (v108 == v36)
    {
      return result;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_23E900E44();
  __break(1u);
  return result;
}

uint64_t sub_23E8A089C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(unint64_t *, unint64_t *, unint64_t *))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = a4(v11);
  }

  v12 = *(v11 + 16);
  v14[0] = v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14[1] = v12;
  result = sub_23E8A0978(v14, a2, a3, a5);
  *a1 = v11;
  return result;
}

uint64_t sub_23E8A0978(int64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(unint64_t *, unint64_t *, unint64_t *))
{
  v8 = a1[1];
  result = sub_23E900DC4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = sub_23E9009E4();
        *(v12 + 16) = v11;
      }

      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_23E8A0D60(v14, v15, a1, v10, a2, a3, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_23E8A0ADC(0, v8, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_23E8A0ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = MEMORY[0x28223BE20](v12);
  v42 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v33 - v20;
  v35 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v40 = -v23;
    v41 = v22;
    v25 = a1 - a3;
    v34 = v23;
    v26 = v22 + v23 * a3;
LABEL_6:
    v38 = v24;
    v39 = a3;
    v36 = v26;
    v37 = v25;
    v27 = v25;
    while (1)
    {
      sub_23E8891B4(v26, v21, a5, a6);
      sub_23E8891B4(v24, v17, a5, a6);
      if (*&v21[*(v12 + 40)] >= *&v17[*(v12 + 40)])
      {
        sub_23E87E458(v17, a5, a6);
        result = sub_23E87E458(v21, a5, a6);
LABEL_5:
        a3 = v39 + 1;
        v24 = v38 + v34;
        v25 = v37 - 1;
        v26 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v28 = *(v12 + 36);
      v29 = *&v21[v28];
      v30 = *&v17[v28];
      sub_23E87E458(v17, a5, a6);
      result = sub_23E87E458(v21, a5, a6);
      if (v29 >= v30)
      {
        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v31 = v42;
      sub_23E87E3F0(v26, v42, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23E87E3F0(v31, v24, a5, a6);
      v24 += v40;
      v26 += v40;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8A0D60(int64_t *a1, uint64_t a2, int64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v140 = a7;
  v10 = v7;
  v131 = a1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v141 = *(v149 - 8);
  v13 = MEMORY[0x28223BE20](v149);
  v135 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v147 = &v127 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v127 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v127 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v137 = &v127 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x28223BE20](v25);
  v129 = &v127 - v27;
  result = MEMORY[0x28223BE20](v26);
  v128 = &v127 - v30;
  v144 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_102:
    v34 = *v131;
    if (!*v131)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_104:
      v150 = v33;
      v122 = *(v33 + 2);
      if (v122 >= 2)
      {
        while (*v144)
        {
          v123 = v33;
          v33 = (v122 - 1);
          v124 = *&v123[16 * v122];
          v125 = *&v123[16 * v122 + 24];
          sub_23E8A17E8(*v144 + *(v141 + 72) * v124, *v144 + *(v141 + 72) * *&v123[16 * v122 + 16], *v144 + *(v141 + 72) * v125, v34, a5, a6, v140);
          if (v10)
          {
          }

          if (v125 < v124)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_23E8F2A84(v123);
          }

          if (v122 - 2 >= *(v123 + 2))
          {
            goto LABEL_128;
          }

          v126 = &v123[16 * v122];
          *v126 = v124;
          *(v126 + 1) = v125;
          v150 = v123;
          result = sub_23E8F29F8(v33);
          v33 = v150;
          v122 = *(v150 + 2);
          if (v122 <= 1)
          {
          }
        }

        goto LABEL_138;
      }
    }

LABEL_134:
    result = sub_23E8F2A84(v33);
    v33 = result;
    goto LABEL_104;
  }

  v127 = a4;
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v148 = v22;
  v136 = v29;
  while (1)
  {
    v34 = v32;
    v35 = v32 + 1;
    v142 = v33;
    if (v32 + 1 < v31)
    {
      v138 = v31;
      v36 = *v144;
      v37 = *(v141 + 72);
      v145 = v32 + 1;
      v38 = v128;
      sub_23E8891B4(v36 + v37 * v35, v128, a5, a6);
      v132 = v34;
      v143 = v37;
      v39 = v36 + v37 * v34;
      v40 = v129;
      sub_23E8891B4(v39, v129, a5, a6);
      v41 = *(v149 + 40);
      v42 = *(v38 + v41);
      v43 = *(v40 + v41);
      v130 = v10;
      LODWORD(v139) = v42 < v43 && *(v38 + *(v149 + 36)) < *(v40 + *(v149 + 36));
      sub_23E87E458(v40, a5, a6);
      result = sub_23E87E458(v38, a5, a6);
      v44 = v132 + 2;
      v45 = v143 * (v132 + 2);
      v46 = v36 + v45;
      v47 = v145;
      v48 = v143 * v145;
      v49 = v36 + v143 * v145;
      do
      {
        v51 = v44;
        v52 = v47;
        v10 = v48;
        v54 = v45;
        v145 = v44;
        if (v44 >= v138)
        {
          break;
        }

        v146 = v47;
        v55 = v136;
        sub_23E8891B4(v46, v136, a5, a6);
        v56 = v137;
        sub_23E8891B4(v49, v137, a5, a6);
        v57 = v56;
        v50 = *(v55 + *(v149 + 40)) < *(v56 + *(v149 + 40)) && *(v55 + *(v149 + 36)) < *(v56 + *(v149 + 36));
        sub_23E87E458(v57, a5, a6);
        result = sub_23E87E458(v55, a5, a6);
        v51 = v145;
        v52 = v146;
        v44 = v145 + 1;
        v46 += v143;
        v49 += v143;
        v47 = v146 + 1;
        v48 = v10 + v143;
        v45 = v54 + v143;
        v53 = v139 == v50;
        v33 = v142;
      }

      while (v53);
      if (!v139)
      {
        v35 = v51;
LABEL_31:
        v10 = v130;
        v22 = v148;
        v34 = v132;
        goto LABEL_32;
      }

      v34 = v132;
      if (v51 < v132)
      {
        goto LABEL_131;
      }

      if (v132 < v51)
      {
        v58 = v132 * v143;
        do
        {
          if (v34 != v52)
          {
            v146 = v52;
            v60 = *v144;
            if (!*v144)
            {
              goto LABEL_137;
            }

            sub_23E87E3F0(v60 + v58, v135, a5, a6);
            if (v58 < v10 || v60 + v58 >= (v60 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v10)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_23E87E3F0(v135, v60 + v10, a5, a6);
            v33 = v142;
            v52 = v146;
          }

          ++v34;
          v10 -= v143;
          v54 -= v143;
          v58 += v143;
        }

        while (v34 < v52--);
        v35 = v145;
        goto LABEL_31;
      }

      v35 = v51;
      v10 = v130;
      v22 = v148;
    }

LABEL_32:
    v61 = v144[1];
    if (v35 < v61)
    {
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_130;
      }

      if (v35 - v34 < v127)
      {
        break;
      }
    }

LABEL_51:
    if (v35 < v34)
    {
      goto LABEL_129;
    }

    v145 = v35;
    result = swift_isUniquelyReferenced_nonNull_native();
    v76 = v34;
    if ((result & 1) == 0)
    {
      result = sub_23E88A1E0(0, *(v33 + 2) + 1, 1, v33);
      v33 = result;
    }

    v78 = *(v33 + 2);
    v77 = *(v33 + 3);
    v79 = v78 + 1;
    v32 = v145;
    if (v78 >= v77 >> 1)
    {
      result = sub_23E88A1E0((v77 > 1), v78 + 1, 1, v33);
      v32 = v145;
      v33 = result;
    }

    *(v33 + 2) = v79;
    v80 = &v33[16 * v78];
    *(v80 + 4) = v76;
    *(v80 + 5) = v32;
    v146 = *v131;
    if (!v146)
    {
      goto LABEL_139;
    }

    if (v78)
    {
      while (1)
      {
        v34 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v81 = *(v33 + 4);
          v82 = *(v33 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_71:
          if (v84)
          {
            goto LABEL_118;
          }

          v97 = &v33[16 * v79];
          v99 = *v97;
          v98 = *(v97 + 1);
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_121;
          }

          v103 = &v33[16 * v34 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_125;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v34 = v79 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v107 = &v33[16 * v79];
        v109 = *v107;
        v108 = *(v107 + 1);
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_85:
        if (v102)
        {
          goto LABEL_120;
        }

        v110 = &v33[16 * v34];
        v112 = *(v110 + 4);
        v111 = *(v110 + 5);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_123;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_92:
        v118 = v34 - 1;
        if (v34 - 1 >= v79)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_133;
        }

        if (!*v144)
        {
          goto LABEL_136;
        }

        v119 = *&v33[16 * v118 + 32];
        v120 = *&v33[16 * v34 + 40];
        sub_23E8A17E8(*v144 + *(v141 + 72) * v119, *v144 + *(v141 + 72) * *&v33[16 * v34 + 32], *v144 + *(v141 + 72) * v120, v146, a5, a6, v140);
        if (v10)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_23E8F2A84(v33);
        }

        if (v118 >= *(v33 + 2))
        {
          goto LABEL_115;
        }

        v121 = &v33[16 * v118];
        *(v121 + 4) = v119;
        *(v121 + 5) = v120;
        v150 = v33;
        result = sub_23E8F29F8(v34);
        v33 = v150;
        v79 = *(v150 + 2);
        v22 = v148;
        v32 = v145;
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = &v33[16 * v79 + 32];
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_116;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_117;
      }

      v92 = &v33[16 * v79];
      v94 = *v92;
      v93 = *(v92 + 1);
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_119;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_122;
      }

      if (v96 >= v88)
      {
        v114 = &v33[16 * v34 + 32];
        v116 = *v114;
        v115 = *(v114 + 1);
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_126;
        }

        if (v83 < v117)
        {
          v34 = v79 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v31 = v144[1];
    if (v32 >= v31)
    {
      goto LABEL_102;
    }
  }

  v62 = v34 + v127;
  if (__OFADD__(v34, v127))
  {
    goto LABEL_132;
  }

  if (v62 >= v61)
  {
    v62 = v144[1];
  }

  if (v62 < v34)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v35 == v62)
  {
    goto LABEL_51;
  }

  v130 = v10;
  v63 = *v144;
  v64 = *(v141 + 72);
  v65 = *v144 + v64 * (v35 - 1);
  v66 = -v64;
  v132 = v34;
  v133 = v64;
  v67 = v34 - v35;
  v146 = v63;
  v68 = v63 + v35 * v64;
  v134 = v62;
LABEL_43:
  v145 = v35;
  v138 = v68;
  v139 = v67;
  v143 = v65;
  v69 = v149;
  while (1)
  {
    sub_23E8891B4(v68, v22, a5, a6);
    sub_23E8891B4(v65, v19, a5, a6);
    if (*&v22[*(v69 + 40)] >= *&v19[*(v69 + 40)])
    {
      sub_23E87E458(v19, a5, a6);
      sub_23E87E458(v22, a5, a6);
LABEL_42:
      v35 = v145 + 1;
      v65 = v143 + v133;
      v67 = v139 - 1;
      v68 = v138 + v133;
      if (v145 + 1 == v134)
      {
        v35 = v134;
        v10 = v130;
        v33 = v142;
        v34 = v132;
        goto LABEL_51;
      }

      goto LABEL_43;
    }

    v70 = *(v69 + 36);
    v71 = *&v22[v70];
    v72 = *&v19[v70];
    sub_23E87E458(v19, a5, a6);
    result = sub_23E87E458(v22, a5, a6);
    if (v71 >= v72)
    {
      goto LABEL_42;
    }

    if (!v146)
    {
      break;
    }

    v73 = v19;
    v74 = v147;
    sub_23E87E3F0(v68, v147, a5, a6);
    v69 = v149;
    swift_arrayInitWithTakeFrontToBack();
    sub_23E87E3F0(v74, v65, a5, a6);
    v65 += v66;
    v68 += v66;
    v75 = __CFADD__(v67++, 1);
    v19 = v73;
    v22 = v148;
    if (v75)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_23E8A17E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v54 = a7;
  v7 = a6;
  v8 = a5;
  v64 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v60 = &v52 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v52 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v25 = v64 - a2;
  if (v64 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_66;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v63 = result;
  if (v26 >= v25 / v24)
  {
    v29 = v25 / v24 * v24;
    v59 = v20;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v29;
    if (v29 >= 1)
    {
      v37 = -v24;
      v38 = a4 + v29;
      v61 = v8;
      v62 = v7;
      v56 = a4;
      do
      {
        v53 = v36;
        v39 = a2;
        v40 = a2 + v37;
        v57 = v39;
        v58 = v40;
        while (1)
        {
          v42 = v64;
          if (v39 <= a1)
          {
            v67 = v39;
            v65 = v53;
            goto LABEL_63;
          }

          v55 = v36;
          v43 = v37;
          v44 = v38 + v37;
          v45 = v60;
          sub_23E8891B4(v44, v60, v8, v7);
          v46 = v40;
          v47 = v59;
          sub_23E8891B4(v46, v59, v8, v7);
          v48 = v47;
          v49 = *(v45 + *(v63 + 40)) < *(v47 + *(v63 + 40)) && *(v45 + *(v63 + 36)) < *(v47 + *(v63 + 36));
          v64 = v42 + v43;
          v51 = v61;
          v50 = v62;
          sub_23E87E458(v48, v61, v62);
          sub_23E87E458(v45, v51, v50);
          if (v49)
          {
            break;
          }

          v36 = v44;
          if (v42 < v38 || v64 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v58;
          }

          else
          {
            v40 = v58;
            if (v42 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v44;
          v39 = v57;
          v41 = v44 > v56;
          v37 = v43;
          v8 = v61;
          v7 = v62;
          if (!v41)
          {
            a2 = v57;
            goto LABEL_62;
          }
        }

        if (v42 < v57 || v64 >= v57)
        {
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v55;
          v37 = v43;
        }

        else
        {
          a2 = v58;
          v36 = v55;
          v37 = v43;
          if (v42 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v8 = v61;
        v7 = v62;
      }

      while (v38 > v56);
    }

LABEL_62:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v27 = a2;
    v28 = v26 * v24;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v28;
    v65 = a4 + v28;
    if (v28 >= 1 && v27 < v64)
    {
      v31 = v27;
      while (1)
      {
        sub_23E8891B4(v31, v22, v8, v7);
        sub_23E8891B4(a4, v18, v8, v7);
        if (*&v22[*(v63 + 40)] >= *&v18[*(v63 + 40)])
        {
          break;
        }

        v32 = *(v63 + 36);
        v33 = *&v22[v32];
        v34 = *&v18[v32];
        sub_23E87E458(v18, v8, v7);
        sub_23E87E458(v22, v8, v7);
        if (v33 >= v34)
        {
          goto LABEL_28;
        }

        v35 = v31;
        v31 += v24;
        if (a1 < v35 || a1 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v35)
        {
          swift_arrayInitWithTakeBackToFront();
        }

LABEL_34:
        a1 += v24;
        v67 = a1;
        if (a4 >= v60 || v31 >= v64)
        {
          goto LABEL_63;
        }
      }

      sub_23E87E458(v18, v8, v7);
      sub_23E87E458(v22, v8, v7);
LABEL_28:
      if (a1 < a4 || a1 >= a4 + v24)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v66 = a4 + v24;
      a4 += v24;
      goto LABEL_34;
    }
  }

LABEL_63:
  v54(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_23E8A1D74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

unint64_t sub_23E8A1DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v54 = a1;
  v55 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v56 = v8;
  v57 = 0;
  v58 = v11 & v9;
  v59 = a2;
  v60 = a3;

  sub_23E8D0BB8(&v49);
  v12 = v50;
  if (!v50)
  {
    goto LABEL_25;
  }

  v13 = v49;
  v46 = v51;
  v47 = v52;
  v48 = v53;
  v14 = *a5;
  result = sub_23E88CA70(v49, v50);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_23E88D2B4(v20, a4 & 1);
    result = sub_23E88CA70(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_23E900E44();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_23E8CFC74();
    result = v25;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    sub_23E8A23D8(&v46, v23[7] + 40 * v24);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v26 = (v23[6] + 16 * result);
  *v26 = v13;
  v26[1] = v12;
  v27 = v23[7] + 40 * result;
  v28 = v46;
  v29 = v47;
  *(v27 + 32) = v48;
  *v27 = v28;
  *(v27 + 16) = v29;
  v30 = v23[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v23[2] = v31;
LABEL_15:
    sub_23E8D0BB8(&v49);
    v12 = v50;
    if (v50)
    {
      v21 = 1;
      do
      {
        v13 = v49;
        v46 = v51;
        v47 = v52;
        v48 = v53;
        v33 = *a5;
        result = sub_23E88CA70(v49, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_23E88D2B4(v37, 1);
          result = sub_23E88CA70(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v32 = result;

          sub_23E8A23D8(&v46, v39[7] + 40 * v32);
        }

        else
        {
          v39[(result >> 6) + 8] |= 1 << result;
          v40 = (v39[6] + 16 * result);
          *v40 = v13;
          v40[1] = v12;
          v41 = v39[7] + 40 * result;
          v42 = v46;
          v43 = v47;
          *(v41 + 32) = v48;
          *v41 = v42;
          *(v41 + 16) = v43;
          v44 = v39[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v45;
        }

        sub_23E8D0BB8(&v49);
        v12 = v50;
      }

      while (v50);
    }

LABEL_25:
    sub_23E8A237C(v54);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23E8A20DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_23E88CA70(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_23E8CFFEC();
      }
    }

    else
    {
      sub_23E88D8D0(v31, v46 & 1);
      v33 = sub_23E88CA70(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_23E8A237C(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_23E900E44();
  __break(1u);
  return result;
}

uint64_t sub_23E8A2434(uint64_t a1)
{
  v2 = type metadata accessor for ContainerContent.Child(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E8A2490()
{
  result = qword_27E35F880;
  if (!qword_27E35F880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E430, &unk_23E902C80);
    sub_23E8A251C();
    sub_23E8A2570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F880);
  }

  return result;
}

unint64_t sub_23E8A251C()
{
  result = qword_27E35E9C0;
  if (!qword_27E35E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E9C0);
  }

  return result;
}

unint64_t sub_23E8A2570()
{
  result = qword_27E35F890;
  if (!qword_27E35F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F890);
  }

  return result;
}

unint64_t sub_23E8A25C4()
{
  result = qword_27E35F8A0;
  if (!qword_27E35F8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E438, &unk_23E907E20);
    sub_23E8A2650();
    sub_23E8A26A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F8A0);
  }

  return result;
}

unint64_t sub_23E8A2650()
{
  result = qword_27E35E9C8;
  if (!qword_27E35E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E9C8);
  }

  return result;
}

unint64_t sub_23E8A26A4()
{
  result = qword_27E35F8B0;
  if (!qword_27E35F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F8B0);
  }

  return result;
}

unint64_t sub_23E8A26F8()
{
  result = qword_27E35F8C0;
  if (!qword_27E35F8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E35E440, &unk_23E902C90);
    sub_23E8A27E0(&qword_27E35E9D0, type metadata accessor for ImageContent, &unk_23E904CD0);
    sub_23E8A27E0(qword_27E35F8D0, type metadata accessor for ImageContent, &unk_23E907EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F8C0);
  }

  return result;
}

uint64_t sub_23E8A27E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23E8A2828()
{
  result = qword_27E35E9D8;
  if (!qword_27E35E9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E35E630, &qword_23E903300);
    sub_23E8A28B4();
    sub_23E8A2908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E9D8);
  }

  return result;
}

unint64_t sub_23E8A28B4()
{
  result = qword_27E35F3F0[0];
  if (!qword_27E35F3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E35F3F0);
  }

  return result;
}

unint64_t sub_23E8A2908()
{
  result = qword_27E35E9E0;
  if (!qword_27E35E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E9E0);
  }

  return result;
}

uint64_t sub_23E8A29B8()
{
  sub_23E900EB4();
  MEMORY[0x23EF17B90](0);
  return sub_23E900F14();
}

uint64_t sub_23E8A2A24(uint64_t a1)
{
  sub_23E900EB4();
  MEMORY[0x23EF17B90](0);
  return sub_23E900F14();
}

uint64_t sub_23E8A2A74()
{
  v1 = v0;
  v2 = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v5 = sub_23E900764();
  __swift_project_value_buffer(v5, qword_27E367138);
  sub_23E882260(0xD000000000000073, 0x800000023E908950, 0x74696E696564, 0xE600000000000000);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  (*(*(v6 - 8) + 56))(v4, 1, 2, v6);
  v7 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  swift_beginAccess();
  sub_23E8A51FC(v4, v0 + v7);
  swift_endAccess();
  sub_23E8810DC(v0 + 112, v13);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v9 + 24))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1((v1 + 112));
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));
  sub_23E8A54FC(v1 + v7);
  swift_defaultActor_destroy();
  return v1;
}
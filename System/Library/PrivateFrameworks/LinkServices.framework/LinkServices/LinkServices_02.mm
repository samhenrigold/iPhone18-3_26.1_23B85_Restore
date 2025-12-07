id sub_197674DB4(void *a1)
{
  sub_19765B7CC(v1, &selRef_identifier);
  if (!v3)
  {
    return 0;
  }

  v4 = [v1 value];
  if (!v4)
  {
LABEL_27:

    return 0;
  }

  v5 = v4;
  v6 = [v4 valueType];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  sub_197677B98(v5, &selRef_value);
  if (v8 >> 60 == 15)
  {
LABEL_5:

    return 0;
  }

  switch([v7 containerType])
  {
    case 1u:
      if (!a1)
      {
        goto LABEL_10;
      }

      v9 = a1;
      v10 = [v5 displayRepresentation];
      v11 = OUTLINED_FUNCTION_0_8();
      v15 = sub_1976760B8(v11, v12, v13, v14, v9, v10);

      goto LABEL_18;
    case 2u:
    case 8u:
      v43 = [v5 displayRepresentation];
      v44 = OUTLINED_FUNCTION_0_8();
      sub_197676670(v44, v45, v46, v47, v43, v48, v49, v50);
      v15 = v51;

      goto LABEL_23;
    case 3u:
      v26 = [v7 entity];
      if (v26)
      {
        v27 = v26;
        v28 = sub_19765B7CC(v26, &selRef_identifier);
        if (v29)
        {
          v30 = v28;
          v31 = v29;
          v32 = [v5 displayRepresentation];
          v33 = OUTLINED_FUNCTION_0_8();
          sub_197675F24(v33, v34, v35, v36, v30, v31, v32);
          v15 = v37;

          goto LABEL_23;
        }

        OUTLINED_FUNCTION_18_1();
      }

      else
      {

        OUTLINED_FUNCTION_18_1();
      }

      goto LABEL_27;
    case 4u:
      v38 = [v7 legacyIntent];
      v10 = [v5 displayRepresentation];
      v39 = OUTLINED_FUNCTION_0_8();
      v15 = sub_197676344(v39, v40, v41, v42, v38, v10);
      goto LABEL_18;
    case 5u:
      v16 = [v7 linkEnumeration];
      if (!v16 || (v17 = sub_197677BF8(v16), !v18))
      {

        OUTLINED_FUNCTION_18_1();
        return 0;
      }

      v19 = v17;
      v20 = v18;
      v10 = [v5 displayRepresentation];
      v21 = OUTLINED_FUNCTION_0_8();
      sub_1976764DC(v21, v22, v23, v24, v19, v20, v10);
      v15 = v25;

LABEL_18:

LABEL_23:
      OUTLINED_FUNCTION_18_1();

      break;
    case 6u:
      v52 = [v5 displayRepresentation];
      v53 = OUTLINED_FUNCTION_0_8();
      v57 = sub_1976767EC(v53, v54, v55, v56, v52);
      goto LABEL_22;
    case 7u:
      v58 = [v7 primitive];
      v52 = [v5 displayRepresentation];
      v59 = OUTLINED_FUNCTION_0_8();
      v57 = sub_19767569C(v59, v60, v61, v62, v58, v52);
LABEL_22:
      v15 = v57;

      goto LABEL_23;
    default:
LABEL_10:
      OUTLINED_FUNCTION_18_1();
      goto LABEL_5;
  }

  return v15;
}

id sub_1976751BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  sub_19765B7CC(v0, &selRef_key);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  v5 = sub_19765B7CC(v0, &selRef_defaultValue);
  v7 = v6;
  v8 = sub_19765B7CC(v0, &selRef_table);
  v10 = v9;
  sub_19765B7CC(v0, &selRef_bundleURL);
  if (v11)
  {
    sub_19774EAC0();
  }

  else
  {
    v13 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  }

  v14 = objc_allocWithZone(MEMORY[0x1E69AC9E8]);
  v15 = OUTLINED_FUNCTION_22_1();
  return sub_19767785C(v15, v16, v5, v7, v8, v10, v3);
}

id sub_19767530C()
{
  v1 = sub_197677B98(v0, &selRef_data);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  sub_197648238(0, &qword_1EAF3ECB8, 0x1E696E868);
  sub_197677C68(v4, v5);
  v6 = sub_1976753C8(v4, v5);
  v3 = [objc_allocWithZone(MEMORY[0x1E69AC878]) initWithINImage_];

  sub_19764EEB4(v4, v5);
  return v3;
}

id sub_1976753C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_19774EB10();
  v5 = [swift_getObjCClassFromMetadata() imageWithImageData_];

  sub_197652DCC(a1, a2);
  return v5;
}

void sub_197675434()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1976751BC();

    if (v4)
    {
      v5 = [v1 subtitle];
      if (v5)
      {
        v6 = v5;
        v21 = sub_1976751BC();
      }

      else
      {
        v21 = 0;
      }

      v7 = [v1 image];
      if (v7)
      {
        v8 = v7;
        v20 = sub_19767530C();
      }

      else
      {
        v20 = 0;
      }

      v9 = [v1 synonyms];
      sub_197648238(0, &qword_1EAF3EDC0, 0x1E698EAE8);
      v10 = sub_19774F120();

      v11 = MEMORY[0x1E69E7CC0];
      v22 = MEMORY[0x1E69E7CC0];
      v12 = sub_197652138();
      v13 = 0;
      while (1)
      {
        if (v12 == v13)
        {

          v19 = objc_allocWithZone(MEMORY[0x1E69AC7A8]);
          sub_19767799C(v4, v21, v20, v11);
          return;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x19A8E5210](v13, v10);
        }

        else
        {
          if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = sub_1976751BC();

        ++v13;
        if (v17)
        {
          MEMORY[0x19A8E4D30]();
          OUTLINED_FUNCTION_20_0();
          if (v18)
          {
            OUTLINED_FUNCTION_15_1();
          }

          sub_19774F170();
          v11 = v22;
          v13 = v16;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}

id sub_197675640(int a1)
{
  if ((a1 - 1) > 0xE)
  {
    return 0;
  }

  v1 = a1 - 1;
  return [objc_opt_self() *off_1E74B0760[v1]];
}

id sub_19767569C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v65 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66[-1] - v12;
  v14 = sub_19774EAD0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v19 = a3;
      v20 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v19 = *(a3 + 16);
      v20 = *(a3 + 24);
LABEL_6:
      if (v19 != v20)
      {
        goto LABEL_7;
      }

      return 0;
    case 3uLL:
      return v18;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_7:
      v18 = 0;
      switch(a5)
      {
        case 1:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F998, 0x1E696AEC0);
          OUTLINED_FUNCTION_1_8();
          v21 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          if (!v21)
          {
            return 0;
          }

          v22 = v21;
          v23 = sub_19774EFA0();
          v67 = MEMORY[0x1E69E6158];
          v66[0] = v23;
          v66[1] = v24;
          v25 = [objc_opt_self() stringValueType];
          goto LABEL_41;
        case 2:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F990, 0x1E696AD98);
          OUTLINED_FUNCTION_1_8();
          v31 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v27 = v31;
          if (!v31)
          {
            return 0;
          }

          v32 = [v31 BOOLValue];
          v67 = MEMORY[0x1E69E6370];
          LOBYTE(v66[0]) = v32;
          v29 = [objc_opt_self() BOOLValueType];
          goto LABEL_32;
        case 3:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F990, 0x1E696AD98);
          OUTLINED_FUNCTION_1_8();
          v26 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v27 = v26;
          if (!v26)
          {
            return 0;
          }

          v28 = [v26 integerValue];
          v67 = MEMORY[0x1E69E6530];
          v66[0] = v28;
          v29 = [objc_opt_self() intValueType];
          goto LABEL_32;
        case 8:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F990, 0x1E696AD98);
          OUTLINED_FUNCTION_1_8();
          v40 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v27 = v40;
          if (!v40)
          {
            return 0;
          }

          [v40 doubleValue];
          v67 = MEMORY[0x1E69E63B0];
          v66[0] = v41;
          v29 = [objc_opt_self() doubleValueType];
          goto LABEL_32;
        case 9:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F988, 0x1E695DF00);
          OUTLINED_FUNCTION_1_8();
          v42 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
            goto LABEL_35;
          }

          v27 = v42;
          if (!v42)
          {
            return 0;
          }

          v67 = sub_19774EB80();
          __swift_allocate_boxed_opaque_existential_1(v66);
          sub_19774EB50();
          v29 = [objc_opt_self() dateValueType];
          goto LABEL_32;
        case 10:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F980, 0x1E695DF10);
          OUTLINED_FUNCTION_1_8();
          v30 = OUTLINED_FUNCTION_16_1();
          if (a3)
          {
LABEL_35:

            return 0;
          }

          v27 = v30;
          if (!v30)
          {
            return 0;
          }

          v67 = sub_19774E940();
          __swift_allocate_boxed_opaque_existential_1(v66);
          sub_19774E930();
          v29 = [objc_opt_self() dateComponentsValueType];
LABEL_32:
          v43 = v29;
          if (a6)
          {
            sub_197675434();
          }

          v47 = v65;
          v48 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
          v49 = OUTLINED_FUNCTION_9_3(v66);
          objc_allocWithZone(MEMORY[0x1E69AC948]);

          v18 = sub_1976772F8(a1, v47, v49);

          return v18;
        case 11:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          v33 = sub_197648238(0, &qword_1EAF3F978, 0x1E695FC20);
          OUTLINED_FUNCTION_1_8();
          v34 = sub_19774F330();
          v35 = v34;
          if (!v34)
          {
            return 0;
          }

          v67 = v33;
          v66[0] = v34;
          v36 = objc_opt_self();
          v22 = v35;
          v25 = [v36 placemarkValueType];
          goto LABEL_41;
        case 12:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          sub_197648238(0, &qword_1EAF3F970, 0x1E695DFF8);
          OUTLINED_FUNCTION_1_8();
          v37 = sub_19774F330();
          v38 = v37;
          if (!v37)
          {
            return 0;
          }

          sub_19765B7CC(v37, &selRef_absoluteString);
          if (!v39)
          {

            return 0;
          }

          sub_19774EAC0();

          if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
          {

            sub_19764CAE4(v13, &qword_1EAF3FCE0, &unk_19775A220);
            return 0;
          }

          (*(v15 + 32))(v17, v13, v14);
          v67 = v14;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
          (*(v15 + 16))(boxed_opaque_existential_1, v17, v14);
          v59 = [objc_opt_self() URLValueType];
          if (a6)
          {
            sub_197675434();
          }

          v60 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
          v61 = OUTLINED_FUNCTION_9_3(v66);
          objc_allocWithZone(MEMORY[0x1E69AC948]);
          v62 = v65;

          v18 = sub_1976772F8(a1, v62, v61);

          v63 = OUTLINED_FUNCTION_19_1();
          v64(v63);
          break;
        case 13:
          sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
          v44 = sub_197648238(0, &qword_1EAF3F968, 0x1E696AAB0);
          OUTLINED_FUNCTION_1_8();
          v45 = sub_19774F330();
          v50 = v45;
          if (!v45)
          {
            return 0;
          }

          v67 = v44;
          v66[0] = v45;
          v51 = objc_opt_self();
          v22 = v50;
          v25 = [v51 attributedStringValueType];
LABEL_41:
          v52 = v25;
          if (a6)
          {
            sub_197675434();
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          v55 = v65;
          v56 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
          v57 = sub_19767726C(v66, v52, v54);
          objc_allocWithZone(MEMORY[0x1E69AC948]);

          v18 = sub_1976772F8(a1, v55, v57);

          return v18;
        default:
          return v18;
      }

      return v18;
  }
}

void sub_197675F24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3;
      v9 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
LABEL_6:
      if (v8 != v9)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, &qword_1EAF3ECB0, 0x1E69AC7C8);
      OUTLINED_FUNCTION_8_3();
      v10 = sub_19774F330();
      v11 = v10;
      if (v10)
      {
        sub_197648238(0, &qword_1EAF3ED60, 0x1E69AC810);

        v12 = v11;
        v13 = OUTLINED_FUNCTION_19_1();
        sub_197693E20(v13, v14);
        if (a7)
        {
          sub_197675434();
        }

        v15 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        OUTLINED_FUNCTION_6_4(v15, v16);
        v17 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_5_4();
      }

LABEL_8:
      OUTLINED_FUNCTION_25_1();
      return;
  }
}

id sub_1976760B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      v10 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
LABEL_6:
      if (v9 != v10)
      {
        goto LABEL_7;
      }

      return 0;
    case 3uLL:
      return v8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_7:
      sub_197677A50();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A7E0;
      *(inited + 32) = sub_197648238(0, &qword_1EAF3F9A0, 0x1E69AC6B8);
      *(inited + 40) = sub_197648238(0, &qword_1ED696E38, 0x1E695DEC8);
      *(inited + 48) = sub_197648238(0, &qword_1EAF3F9A8, 0x1E69ACA88);
      v12 = sub_19767697C(a5);
      if (v12)
      {
        v13 = v12;
        sub_197663E9C(1, 4, 1, inited);
        inited = v14;
        *(v14 + 16) = 4;
        *(v14 + 56) = v13;
      }

      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197660C14(inited);

      sub_19774F340();

      if (v19)
      {
        sub_19766A150(&v18, v20);
        sub_197677CC0(v20, &v18);
        [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType_];
        if (a6)
        {
          sub_197675434();
        }

        v16 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        OUTLINED_FUNCTION_9_3(&v18);
        v17 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        v8 = OUTLINED_FUNCTION_5_4();
        __swift_destroy_boxed_opaque_existential_0(v20);
      }

      else
      {
        sub_19764CAE4(&v18, &unk_1EAF3F8C0, &qword_19775AA48);
        return 0;
      }

      return v8;
  }
}

id sub_197676344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      v10 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
LABEL_6:
      if (v9 != v10)
      {
        goto LABEL_7;
      }

      return 0;
    case 3uLL:
      return v8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_7:
      if (!sub_197676CF4(a5))
      {
        return 0;
      }

      v11 = sub_197675640(v7);
      if (!v11)
      {
        return 0;
      }

      v12 = v11;
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      v13 = sub_19774F330();
      v15 = v13;
      if (v13)
      {
        v22[3] = swift_getObjectType();
        v22[0] = v15;
        v16 = v15;
        if (a6)
        {
          sub_197675434();
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        v20 = v12;
        sub_19767726C(v22, v20, v18);
        v21 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        v8 = OUTLINED_FUNCTION_5_4();
      }

      else
      {

        return 0;
      }

      return v8;
  }
}

void sub_1976764DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3;
      v9 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
LABEL_6:
      if (v8 != v9)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, &qword_1EAF3F998, 0x1E696AEC0);
      OUTLINED_FUNCTION_8_3();
      v10 = sub_19774F330();
      v11 = v10;
      if (v10)
      {
        sub_197648238(0, &unk_1EAF3FF20, 0x1E69AC898);

        v12 = v11;
        v13 = OUTLINED_FUNCTION_19_1();
        sub_197693E2C(v13, v14);
        if (a7)
        {
          sub_197675434();
        }

        v15 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        OUTLINED_FUNCTION_6_4(v15, v16);
        v17 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_5_4();
      }

LABEL_8:
      OUTLINED_FUNCTION_25_1();
      return;
  }
}

void sub_197676670(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, void *a7, Class *a8)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v12 = a3;
      v13 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v12 = *(a3 + 16);
      v13 = *(a3 + 24);
LABEL_6:
      if (v12 != v13)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, a6, a7);
      OUTLINED_FUNCTION_8_3();
      v14 = sub_19774F330();
      v15 = v14;
      if (v14)
      {
        v16 = objc_allocWithZone(*a8);
        v17 = v15;
        [v16 init];
        if (a5)
        {
          sub_197675434();
        }

        v18 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        OUTLINED_FUNCTION_6_4(v18, v19);
        v20 = objc_allocWithZone(MEMORY[0x1E69AC948]);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_5_4();
      }

LABEL_8:
      OUTLINED_FUNCTION_25_1();
      return;
  }
}

id sub_1976767EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3;
      v8 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);
LABEL_6:
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      return 0;
    case 3uLL:
      return v6;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_7:
      sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
      sub_197648238(0, &qword_1EAF3F9C0, 0x1E696AD28);
      OUTLINED_FUNCTION_8_3();
      v9 = sub_19774F330();
      v11 = v9;
      if (!v9)
      {
        return 0;
      }

      [v9 doubleValue];
      v12 = [v11 unit];
      sub_197676E5C();

      if (a5)
      {
        sub_197675434();
      }

      v13 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
      OUTLINED_FUNCTION_6_4(v13, v14);
      v15 = objc_allocWithZone(MEMORY[0x1E69AC948]);
      OUTLINED_FUNCTION_17_2();
      v6 = OUTLINED_FUNCTION_5_4();

      return v6;
  }
}

uint64_t sub_19767697C(uint64_t a1)
{
  v2 = objc_opt_self();
  if (OUTLINED_FUNCTION_11_1(v2))
  {
    return sub_197676A88(a1);
  }

  v4 = objc_opt_self();
  if (OUTLINED_FUNCTION_11_1(v4))
  {
    v5 = &qword_1EAF3F9C0;
    v6 = 0x1E696AD28;
  }

  else
  {
    v7 = objc_opt_self();
    if (OUTLINED_FUNCTION_11_1(v7))
    {
      v5 = &unk_1EAF3F9B8;
      v6 = 0x1E69AC778;
    }

    else
    {
      v8 = objc_opt_self();
      if (OUTLINED_FUNCTION_11_1(v8))
      {
        v5 = &qword_1EAF3F998;
        v6 = 0x1E696AEC0;
      }

      else
      {
        v9 = objc_opt_self();
        if (OUTLINED_FUNCTION_11_1(v9))
        {
          v5 = &qword_1EAF3ECB0;
          v6 = 0x1E69AC7C8;
        }

        else
        {
          v10 = objc_opt_self();
          result = OUTLINED_FUNCTION_11_1(v10);
          if (!result)
          {
            return result;
          }

          v5 = &qword_1EAF3F9B0;
          v6 = 0x1E69AC7E0;
        }
      }
    }
  }

  return sub_197648238(0, v5, v6);
}

uint64_t sub_197676A88(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = [v1 intValueType];
  sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98);
  v3 = sub_19774F400();

  if (v3 & 1) != 0 || (v4 = OUTLINED_FUNCTION_14_1([v1 doubleValueType]), v2, (v4) || (v5 = OUTLINED_FUNCTION_14_1(objc_msgSend(v1, sel_BOOLValueType)), v2, (v5))
  {
    v6 = &qword_1EAF3F990;
    v7 = 0x1E696AD98;
    return sub_197648238(0, v6, v7);
  }

  v9 = OUTLINED_FUNCTION_14_1([v1 dateValueType]);

  if (v9)
  {
    v6 = &qword_1EAF3F988;
    v7 = 0x1E695DF00;
    return sub_197648238(0, v6, v7);
  }

  v10 = OUTLINED_FUNCTION_14_1([v1 dateComponentsValueType]);

  if (v10)
  {
    v6 = &qword_1EAF3F980;
    v7 = 0x1E695DF10;
    return sub_197648238(0, v6, v7);
  }

  v11 = OUTLINED_FUNCTION_14_1([v1 URLValueType]);

  if (v11)
  {
    v6 = &qword_1EAF3F970;
    v7 = 0x1E695DFF8;
    return sub_197648238(0, v6, v7);
  }

  v12 = OUTLINED_FUNCTION_14_1([v1 placemarkValueType]);

  if (v12)
  {
    v6 = &qword_1EAF3F978;
    v7 = 0x1E695FC20;
    return sub_197648238(0, v6, v7);
  }

  v13 = OUTLINED_FUNCTION_14_1([v1 stringValueType]);

  if (v13)
  {
    v6 = &qword_1EAF3F998;
    v7 = 0x1E696AEC0;
    return sub_197648238(0, v6, v7);
  }

  v14 = [v1 attributedStringValueType];
  v15 = sub_19774F400();

  if (v15)
  {
    v6 = &qword_1EAF3F968;
    v7 = 0x1E696AAB0;
    return sub_197648238(0, v6, v7);
  }

  return 0;
}

uint64_t sub_197676CF4(int a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      v1 = &qword_1EAF3F998;
      v2 = 0x1E696AEC0;
      goto LABEL_17;
    case 2:
      v1 = &unk_1EAF3FA30;
      v2 = 0x1E696E770;
      goto LABEL_17;
    case 4:
      v1 = &unk_1EAF3F9E8;
      v2 = 0x1E696E940;
      goto LABEL_17;
    case 5:
      v1 = &unk_1EAF3FA00;
      v2 = 0x1E696E900;
      goto LABEL_17;
    case 6:
      v1 = &unk_1EAF3F9F8;
      v2 = 0x1E696AFB0;
      goto LABEL_17;
    case 7:
      v1 = &unk_1EAF3F9D0;
      v2 = 0x1E696EAC0;
      goto LABEL_17;
    case 8:
      v1 = &unk_1EAF3F9E0;
      v2 = 0x1E696EA98;
      goto LABEL_17;
    case 9:
      v1 = &unk_1EAF3F9D8;
      v2 = 0x1E696EAA0;
      goto LABEL_17;
    case 10:
      v1 = &unk_1EAF3FA18;
      v2 = 0x1E696E8E8;
      goto LABEL_17;
    case 11:
      v1 = &unk_1EAF3FA10;
      v2 = 0x1E696E8F0;
      goto LABEL_17;
    case 12:
      v1 = &unk_1EAF3FA08;
      v2 = 0x1E69AC8B8;
      goto LABEL_17;
    case 13:
      v1 = &unk_1EAF3FA20;
      v2 = 0x1E696E840;
      goto LABEL_17;
    case 14:
      v1 = &unk_1EAF3F9F0;
      v2 = 0x1E696E938;
      goto LABEL_17;
    case 15:
      v1 = &unk_1EAF3FA28;
      v2 = 0x1E696E7E8;
LABEL_17:
      result = sub_197648238(0, v1, v2);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

id sub_197676E5C()
{
  v0 = objc_opt_self();
  if (OUTLINED_FUNCTION_11_1(v0))
  {
    v1 = objc_opt_self();
    v2 = &selRef_areaValueType;
  }

  else
  {
    v3 = objc_opt_self();
    if (OUTLINED_FUNCTION_11_1(v3))
    {
      v1 = objc_opt_self();
      v2 = &selRef_accelerationValueType;
    }

    else
    {
      v4 = objc_opt_self();
      if (OUTLINED_FUNCTION_11_1(v4))
      {
        v1 = objc_opt_self();
        v2 = &selRef_angleValueType;
      }

      else
      {
        v5 = objc_opt_self();
        if (OUTLINED_FUNCTION_11_1(v5))
        {
          v1 = objc_opt_self();
          v2 = &selRef_concentrationMassValueType;
        }

        else
        {
          v6 = objc_opt_self();
          if (OUTLINED_FUNCTION_11_1(v6))
          {
            v1 = objc_opt_self();
            v2 = &selRef_dispersionValueType;
          }

          else
          {
            v7 = objc_opt_self();
            if (OUTLINED_FUNCTION_11_1(v7))
            {
              v1 = objc_opt_self();
              v2 = &selRef_durationValueType;
            }

            else
            {
              v8 = objc_opt_self();
              if (OUTLINED_FUNCTION_11_1(v8))
              {
                v1 = objc_opt_self();
                v2 = &selRef_electricChargeValueType;
              }

              else
              {
                v9 = objc_opt_self();
                if (OUTLINED_FUNCTION_11_1(v9))
                {
                  v1 = objc_opt_self();
                  v2 = &selRef_electricCurrentValueType;
                }

                else
                {
                  v10 = objc_opt_self();
                  if (OUTLINED_FUNCTION_11_1(v10))
                  {
                    v1 = objc_opt_self();
                    v2 = &selRef_electricPotentialDifferenceValueType;
                  }

                  else
                  {
                    v11 = objc_opt_self();
                    if (OUTLINED_FUNCTION_11_1(v11))
                    {
                      v1 = objc_opt_self();
                      v2 = &selRef_electricResistanceValueType;
                    }

                    else
                    {
                      v12 = objc_opt_self();
                      if (OUTLINED_FUNCTION_11_1(v12))
                      {
                        v1 = objc_opt_self();
                        v2 = &selRef_energyValueType;
                      }

                      else
                      {
                        v13 = objc_opt_self();
                        if (OUTLINED_FUNCTION_11_1(v13))
                        {
                          v1 = objc_opt_self();
                          v2 = &selRef_frequencyValueType;
                        }

                        else
                        {
                          v14 = objc_opt_self();
                          if (OUTLINED_FUNCTION_11_1(v14))
                          {
                            v1 = objc_opt_self();
                            v2 = &selRef_fuelEfficiencyValueType;
                          }

                          else
                          {
                            v15 = objc_opt_self();
                            if (OUTLINED_FUNCTION_11_1(v15))
                            {
                              v1 = objc_opt_self();
                              v2 = &selRef_illuminanceValueType;
                            }

                            else
                            {
                              v16 = objc_opt_self();
                              if (OUTLINED_FUNCTION_11_1(v16))
                              {
                                v1 = objc_opt_self();
                                v2 = &selRef_informationStorageValueType;
                              }

                              else
                              {
                                v17 = objc_opt_self();
                                if (OUTLINED_FUNCTION_11_1(v17))
                                {
                                  v1 = objc_opt_self();
                                  v2 = &selRef_lengthValueType;
                                }

                                else
                                {
                                  v18 = objc_opt_self();
                                  if (OUTLINED_FUNCTION_11_1(v18))
                                  {
                                    v1 = objc_opt_self();
                                    v2 = &selRef_massValueType;
                                  }

                                  else
                                  {
                                    v19 = objc_opt_self();
                                    if (OUTLINED_FUNCTION_11_1(v19))
                                    {
                                      v1 = objc_opt_self();
                                      v2 = &selRef_powerValueType;
                                    }

                                    else
                                    {
                                      v20 = objc_opt_self();
                                      if (OUTLINED_FUNCTION_11_1(v20))
                                      {
                                        v1 = objc_opt_self();
                                        v2 = &selRef_pressureValueType;
                                      }

                                      else
                                      {
                                        v21 = objc_opt_self();
                                        if (OUTLINED_FUNCTION_11_1(v21))
                                        {
                                          v1 = objc_opt_self();
                                          v2 = &selRef_speedValueType;
                                        }

                                        else
                                        {
                                          v22 = objc_opt_self();
                                          if (OUTLINED_FUNCTION_11_1(v22))
                                          {
                                            v1 = objc_opt_self();
                                            v2 = &selRef_temperatureValueType;
                                          }

                                          else
                                          {
                                            v23 = objc_opt_self();
                                            v24 = OUTLINED_FUNCTION_11_1(v23);
                                            v1 = objc_opt_self();
                                            v2 = &selRef_volumeValueType;
                                            if (!v24)
                                            {
                                              v2 = &selRef_unsupportedMeasurementValueType;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = [v1 *v2];

  return v25;
}

id sub_19767726C(void *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v7 = [v3 initWithValue:sub_19774F7D0() valueType:a2 displayRepresentation:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id sub_1976772F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_19774EF20();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_19767735C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  if (a3 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_19774EB10();
    sub_19764EEB4(a2, a3);
  }

  v11 = [v5 initWithValueType:a1 value:v8 displayRepresentation:a4];

  return v11;
}

id sub_1976773FC(void *a1, uint64_t a2)
{
  sub_197648238(0, &qword_1EAF3FA40, 0x1E698EB08);
  v4 = sub_19774F110();

  v5 = [v2 initWithMemberValueType:a1 capabilities:v4];

  return v5;
}

id sub_197677480(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_19774EF20();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithIdentifier_];

  return v4;
}

id sub_1976774E4(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_197648238(0, &qword_1EAF3EDC0, 0x1E698EAE8);
  v8 = sub_19774F110();

  v9 = [v4 initWithTitle:a1 subtitle:a2 synonyms:v8 image:a4];

  return v9;
}

id sub_197677588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = sub_19774EF20();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = sub_19774EF20();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_19774EF20();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_19774EF20();

LABEL_10:
  v16 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v15];

  return v16;
}

id sub_1976776A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_19774EB10();
    sub_19764EEB4(a2, a3);
  }

  v8 = [v3 initWithDisplayStyle:a1 data:v5];

  return v8;
}

id sub_19767772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_19774EF20();

  if (a4)
  {
    v13 = sub_19774EF20();
  }

  else
  {
    v13 = 0;
  }

  sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
  v14 = sub_19774F110();

  sub_197648238(0, &qword_1ED696EE0, 0x1E69AC948);
  v15 = sub_19774F110();

  v16 = [v8 initWithIdentifier:v12 mangledTypeName:v13 openAppWhenRun:a5 & 1 outputFlags:a6 systemProtocols:v14 parameters:v15];

  return v16;
}

id sub_19767785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_19774EF20();

  if (a4)
  {
    v13 = sub_19774EF20();

    if (a6)
    {
LABEL_3:
      v14 = sub_19774EF20();

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = sub_19774EAD0();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v15) != 1)
  {
    v16 = sub_19774EA60();
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  v17 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v16];

  return v17;
}

id sub_19767799C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    sub_197648238(0, &qword_1ED696EC8, 0x1E69AC9E8);
    v9 = sub_19774F110();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:a1 subtitle:a2 image:a3 synonyms:v9];

  return v10;
}

uint64_t sub_197677A50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7C0, &qword_19775A938);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_1EAF3FD00;
    v2 = &qword_19775A768;
  }

  else
  {
    v1 = &unk_1EAF3F9C8;
    v2 = &unk_19775ABF8;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_197677AB8(void *a1)
{
  v2 = [a1 _imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_19774EB20();

  return v3;
}

uint64_t sub_197677B28(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_197648238(0, &qword_1ED696EC8, 0x1E69AC9E8);
  v3 = sub_19774F120();

  return v3;
}

uint64_t sub_197677B98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_19774EB20();

  return v4;
}

uint64_t sub_197677BF8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_19774EF50();

  return v3;
}

uint64_t sub_197677C68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_197677CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197677D78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  v1 = sub_1976496B4(&qword_1ED696FF8, &qword_1EAF3F780, &unk_19775A8E0);
  return sub_197649708(0xD00000000000001ELL, 0x8000000197760F00, v0, v1);
}

uint64_t sub_197677E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  v1 = sub_1976496B4(&qword_1EAF3F418, &qword_1EAF3F758, &qword_19775A800);
  return sub_197649708(0xD000000000000011, 0x8000000197760EE0, v0, v1);
}

uint64_t sub_197677E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (qword_1ED696F00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF43B60, sizeof(__dst));
  if (qword_1ED696F08 != -1)
  {
    swift_once();
  }

  __src[0] = a1;
  v8 = sub_1976B7FC0();
  v10 = v9;
  v12 = v11;
  memcpy(v29, __dst, sizeof(v29));
  sub_1976BB434(v8, v10, v12, &unk_1F0BBACF0, &off_1F0BBAB00, v13, v14, v15, v23, v25, v26, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], __src[0], a2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);

  memcpy(v34, __src, sizeof(v34));
  __src[3] = &unk_1F0BBACF0;
  __src[4] = &off_1F0BBAB00;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v34, 0xB0uLL);
  v16 = sub_1976C0920(__src);
  v18 = v17;
  result = __swift_destroy_boxed_opaque_existential_0(__src);
  if (!v4)
  {
    if (v16)
    {
      sub_19767809C(v16, v18, v31);
      v24 = v31[1];
      v27 = v31[0];
      v20 = v32;

      v22 = v24;
      v21 = v27;
    }

    else
    {
      v20 = 0;
      v21 = 0uLL;
      v22 = 0uLL;
    }

    *a4 = v21;
    *(a4 + 16) = v22;
    *(a4 + 32) = v20;
  }

  return result;
}

void sub_19767809C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1ED696F08 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v7 = v11;
  v6 = v12;
  if (qword_1ED696D50 != -1)
  {
    swift_once();
  }

  sub_19764B088(qword_1EAF43B30, *algn_1EAF43B38, a1, a2, MEMORY[0x1E69E6158], &off_1ED697020, &v11);
  v9 = v11;
  v8 = v12;
  if (qword_1ED696D48 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v10 = v11;
  *a3 = v7;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v8;
  a3[4] = v10;
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

uint64_t sub_197678278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1976782B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id LNConfigurableQueryRequest.init(query:target:options:)(void **a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  switch(v5 >> 61)
  {
    case 1uLL:
      sub_197648238(0, &qword_1EAF3FA50, off_1E74AF590);
      v17 = sub_1976787C4(v3, v4);
      goto LABEL_14;
    case 2uLL:
      if (v5)
      {

        v15 = v3;
        v16 = 0;
      }

      else
      {
        v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v19 = v3;
        v16 = [v18 initWithInteger_];
      }

      v20 = objc_allocWithZone(LNPropertyQueryRequestType);
      v14 = sub_197678EB0(v3, v6, v16);
      goto LABEL_12;
    case 3uLL:
      sub_197648238(0, &qword_1EAF3FA48, off_1E74AF568);
      v11 = &qword_1EAF3FA60;
      v12 = 0x1E6964E80;
      v13 = &selRef_initWithSearchableItems_;
      goto LABEL_7;
    case 4uLL:
      v14 = [objc_allocWithZone(LNIntentValueQueryRequestType) initWithValue_];
LABEL_12:
      v21 = v14;
      sub_1976786A8(v3, v4, v5);
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 5uLL:
      v17 = [objc_opt_self() queryRequest];
      goto LABEL_14;
    default:
      sub_197648238(0, &qword_1EAF3FA58, off_1E74AF468);
      v11 = &qword_1EAF3F9B0;
      v12 = 0x1E69AC7E0;
      v13 = &selRef_initWithEntityIdentifiers_;
LABEL_7:
      v17 = sub_197678854(v3, v11, v12, v13);
LABEL_14:
      v21 = v17;
      if (v10)
      {
LABEL_15:
        if (v10 == 1)
        {
          v23 = objc_allocWithZone(LNQueryRequestParameterTarget);
          v24 = v7;

          v22 = sub_197678F58(v24, v8, v9);
        }

        else
        {
          v22 = [objc_allocWithZone(LNQueryRequestAnyQueryTarget) initWithQueryMetadata_];
        }
      }

      else
      {
LABEL_13:
        v22 = [objc_allocWithZone(LNQueryRequestDefaultQueryTarget) initWithEntityMetadata_];
      }

      v25 = v22;
      sub_197678744(v7, v8, v9, v10);
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = a3;
      v28 = [v26 initWithQueryType:v21 target:v25 options:v27];

      return v28;
  }
}

void sub_1976786A8(void *a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 61)
  {
    case 0uLL:
    case 3uLL:

      goto LABEL_4;
    case 1uLL:

      goto LABEL_4;
    case 2uLL:

LABEL_4:

      break;
    case 4uLL:

      break;
    default:
      return;
  }
}

void sub_197678744(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
LABEL_4:

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }
}

id sub_1976787C4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_19774EF20();

  v4 = [v2 initWithQueryString_];

  return v4;
}

id sub_197678854(uint64_t a1, unint64_t *a2, void *a3, SEL *a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_197648238(0, a2, a3);
  v8 = sub_19774F110();

  v9 = [v7 *a4];

  return v9;
}

void LNConfigurableQueryRequest.query.getter(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = &selRef_preflightManager;
  v6 = [v1 queryType];
  v7 = objc_opt_self();
  if (OUTLINED_FUNCTION_1_9(v7))
  {

    v8 = 0;
    OUTLINED_FUNCTION_0_9();
    v9 = 0xA000000000000000;
LABEL_22:
    *a1 = v8;
    a1[1] = v5;
    a1[2] = v9;
    a1[3] = v2;
    return;
  }

  v10 = objc_opt_self();
  if (OUTLINED_FUNCTION_1_9(v10))
  {

    OUTLINED_FUNCTION_0_9();
    v9 = 0xA000000000000000;
    v8 = 1;
    goto LABEL_22;
  }

  v11 = objc_opt_self();
  if (OUTLINED_FUNCTION_1_9(v11))
  {

    OUTLINED_FUNCTION_0_9();
    v9 = 0xA000000000000000;
    v8 = 2;
    goto LABEL_22;
  }

  v12 = objc_opt_self();
  v13 = OUTLINED_FUNCTION_1_9(v12);
  if (v13)
  {
    v14 = [v13 identifiers];
    sub_197648238(0, &qword_1EAF3F9B0, 0x1E69AC7E0);
    v8 = sub_19774F120();

    v5 = 0;
    v9 = 0;
    v2 = 0;
    goto LABEL_22;
  }

  v15 = objc_opt_self();
  v16 = OUTLINED_FUNCTION_1_9(v15);
  if (v16)
  {
    v17 = [v16 queryString];
    v8 = sub_19774EF50();
    v5 = v18;

    v2 = 0;
    v9 = 0x2000000000000000;
    goto LABEL_22;
  }

  v19 = objc_opt_self();
  v20 = OUTLINED_FUNCTION_1_9(v19);
  if (v20)
  {
    v21 = v20;
    v8 = [v20 propertyQuery];
    v22 = [v21 maximumResultCount];
    v23 = v22;
    if (v22)
    {
      v5 = [v22 integerValue];
    }

    else
    {
      v5 = 0;
    }

    v26 = [v21 sortingOptions];
    if (v26)
    {
      v27 = v26;
      sub_197648238(0, &qword_1EAF3FA68, off_1E74AF510);
      v2 = sub_19774F120();
    }

    else
    {

      v2 = 0;
    }

    v9 = 0x4000000000000000;
    if (!v23)
    {
      v9 = 0x4000000000000001;
    }

    goto LABEL_22;
  }

  v24 = objc_opt_self();
  v25 = OUTLINED_FUNCTION_1_9(v24);
  if (v25)
  {
    v5 = [v25 items];
    sub_197648238(0, &qword_1EAF3FA60, 0x1E6964E80);
    v8 = sub_19774F120();

    OUTLINED_FUNCTION_0_9();
    v9 = 0x6000000000000000;
    goto LABEL_22;
  }

  v28 = objc_opt_self();
  v29 = OUTLINED_FUNCTION_1_9(v28);
  if (v29)
  {
    v8 = [v29 value];

    OUTLINED_FUNCTION_0_9();
    v9 = 0x8000000000000000;
    goto LABEL_22;
  }

  sub_19774F5B0();

  v30 = [v3 queryType];
  v31 = [v30 description];
  v32 = sub_19774EF50();
  v34 = v33;

  MEMORY[0x19A8E4C40](v32, v34);

  OUTLINED_FUNCTION_2_6("Fatal error", v35, v36, 0xD000000000000016, 0x8000000197760F50, "LinkServices/LNConfigurableQueryRequest.swift");
  __break(1u);
}

void LNConfigurableQueryRequest.queryTarget.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = &selRef_preflightManager;
  v6 = [v1 target];
  v7 = objc_opt_self();
  v8 = OUTLINED_FUNCTION_1_9(v7);
  if (v8)
  {
    v9 = [v8 entityMetadata];

    OUTLINED_FUNCTION_0_9();
    v10 = 0;
LABEL_7:
    *a1 = v9;
    *(a1 + 8) = v2;
    *(a1 + 16) = v5;
    *(a1 + 24) = v10;
    return;
  }

  v11 = objc_opt_self();
  v12 = OUTLINED_FUNCTION_1_9(v11);
  if (v12)
  {
    v13 = v12;
    v9 = [v12 actionMetadata];
    v14 = [v13 parameterIdentifier];
    v2 = sub_19774EF50();
    v5 = v15;

    v10 = 1;
    goto LABEL_7;
  }

  v16 = objc_opt_self();
  v17 = OUTLINED_FUNCTION_1_9(v16);
  if (v17)
  {
    v9 = [v17 queryMetadata];

    OUTLINED_FUNCTION_0_9();
    v10 = 2;
    goto LABEL_7;
  }

  sub_19774F5B0();

  v18 = [v3 target];
  v19 = [v18 description];
  v20 = sub_19774EF50();
  v22 = v21;

  MEMORY[0x19A8E4C40](v20, v22);

  OUTLINED_FUNCTION_2_6("Fatal error", v23, v24, 0xD000000000000015, 0x8000000197760F70, "LinkServices/LNConfigurableQueryRequest.swift");
  __break(1u);
}

id sub_197678EB0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    sub_197648238(0, &qword_1EAF3FA68, off_1E74AF510);
    v7 = sub_19774F110();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithPropertyQuery:a1 sortingOptions:v7 maximumResultCount:a3];

  return v8;
}

id sub_197678F58(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19774EF20();

  v6 = [v3 initWithActionMetadata:a1 parameterIdentifier:v5];

  return v6;
}

uint64_t get_enum_tag_for_layout_string_So26LNConfigurableQueryRequestC12LinkServicesE0B0O(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_197678FEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_197679034(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_19767908C(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = xmmword_19775AC70;
    *(result + 24) = 0;
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

uint64_t sub_1976790F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_197679130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_197679190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_19774E9E0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_197679200(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = v5;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v15[4] = sub_197679D0C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1976A7FD0;
  v15[3] = &block_descriptor_21_0;
  v12 = _Block_copy(v15);

  v13 = v5;

  v14 = a3;

  [v13 getConnectionInterfaceWithOptions:0 completionHandler:v12];
  _Block_release(v12);
}

void sub_197679314(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = sub_19774EBF0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v23 = [a5 queue];
    v19 = swift_allocObject();
    *(v19 + 16) = "appintent:fetch entity property value";
    *(v19 + 24) = 37;
    *(v19 + 32) = 2;
    *(v19 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNFetchEntityPropertyOperation());

    v20 = a8;

    v21 = sub_1976795AC(v18, a1, 1, v23, sub_197669C04, v19, a6, a7, v20, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    a3(0, a2);
  }
}

id sub_1976795AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v18 = &v12[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v12[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_propertyIdentifier];
  *v19 = a7;
  *(v19 + 1) = a8;
  *&v12[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_entity] = a9;
  *v18 = a10;
  *(v18 + 1) = a11;
  v20 = a9;

  v21 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_27;
  v22 = _Block_copy(aBlock);

  v27.receiver = v12;
  v27.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  v23 = objc_msgSendSuper2(&v27, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v21, a2, a3, a4, v22);
  _Block_release(v22);

  swift_unknownObjectRelease();

  v24 = sub_19774EBF0();
  (*(*(v24 - 8) + 8))(a1, v24);
  return v23;
}

void sub_197679760()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  objc_msgSendSuper2(&v9, sel_start);
  v1 = [v0 connectionInterface];

  v2 = sub_19774EF20();

  v3 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_entity];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v8[4] = sub_197679CE8;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_197645E24;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);
  v6 = v3;
  v7 = v0;

  [v1 fetchValueForPropertyWithIdentifier:v2 entity:v6 completionHandler:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

void sub_197679918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  v6 = *&v2[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  if (v6)
  {

    v6(a1, a2);
    sub_19764781C(v6);
    v8 = *v5;
    *v5 = 0;
    v5[1] = 0;
    sub_19764781C(v8);
  }

  if (a2)
  {
    v9 = sub_19774E9E0();
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  objc_msgSendSuper2(&v10, sel_finishWithError_, v9);
}

void sub_1976799E0(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  v5 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_F4DA9E9995B703C6955B9953648C268F30LNFetchEntityPropertyOperation_completionHandler];
  if (v5)
  {

    v5(0, a1);
    sub_19764781C(v5);
    v6 = *v4;
    *v4 = 0;
    v4[1] = 0;
    sub_19764781C(v6);
  }

  if (a1)
  {
    v7 = sub_19774E9E0();
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  objc_msgSendSuper2(&v8, sel_finishWithError_, v7);
}

id sub_197679C28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNFetchEntityPropertyOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static LNConfirmationSystemStyle.montaraEnablement(bundleIdentifier:source:isExplicitRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  type metadata accessor for LNConfirmationSystemStyleMontaraEnablement(a1);

  return sub_197679DA4(a1, a2, a3, v4);
}

id sub_197679DA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_19774EF20();

  v8 = [v6 initWithBundleIdentifier:v7 source:a3 isExplicitRequest:a4 & 1];

  return v8;
}

id LNConfirmationSystemStyle.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

uint64_t LNConfirmationSystemStyleMontaraEnablement.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_bundleIdentifier);

  return v1;
}

id sub_19767A068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = (v4 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_bundleIdentifier);
  *v5 = a1;
  v5[1] = a2;
  *(v4 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_source) = a3;
  *(v4 + OBJC_IVAR___LNConfirmationSystemStyleMontaraEnablement_isExplicitRequest) = a4;
  v7.super_class = LNConfirmationSystemStyleMontaraEnablement;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t LNConfirmationSystemStyleMontaraEnablement.isEqual(_:)(uint64_t a1)
{
  v2 = sub_19766A160(a1, v18);
  if (v19)
  {
    type metadata accessor for LNConfirmationSystemStyleMontaraEnablement(v2);
    if (swift_dynamicCast())
    {
      if (v17 == v1)
      {

        return 1;
      }

      v3 = [v1 bundleIdentifier];
      v4 = sub_19774EF50();
      v6 = v5;

      v7 = [v17 bundleIdentifier];
      v8 = sub_19774EF50();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v12 = sub_19774F7E0();

        if ((v12 & 1) == 0)
        {
LABEL_15:

          return 0;
        }
      }

      v14 = [v1 source];
      if (v14 == [v17 source])
      {
        v15 = [v1 isExplicitRequest];
        v16 = [v17 isExplicitRequest];

        return v15 ^ v16 ^ 1;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_19766A0E8(v18);
  }

  return 0;
}

id _sSo25LNConfirmationSystemStyleC12LinkServicesE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id LNConfirmationSystemStyleMontaraEnablement.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19767A460(0);
  if (v4)
  {
    v5 = sub_19767A54C(1u);
    if ((v6 & 1) == 0)
    {
      v8 = v5;
      v9 = sub_19767A604(2u);
      v10 = sub_19774EF20();

      v7 = [v2 initWithBundleIdentifier:v10 source:v8 isExplicitRequest:v9 & 1];

      return v7;
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19767A460(char a1)
{
  sub_197648238(0, &qword_1EAF3F998, 0x1E696AEC0);
  v1 = sub_19774F3E0();

  sub_19774EF40();

  return 0;
}

id sub_19767A54C(unsigned __int8 a1)
{
  v2 = sub_19774EF20();

  v3 = [v1 decodeIntegerForKey_];

  return v3;
}

id sub_19767A604(unsigned __int8 a1)
{
  v2 = sub_19774EF20();

  v3 = [v1 decodeBoolForKey_];

  return v3;
}

Swift::Void __swiftcall LNConfirmationSystemStyleMontaraEnablement.encode(with:)(NSCoder with)
{
  v2 = [v1 bundleIdentifier];
  v3 = sub_19774EF50();
  v5 = v4;

  sub_19767A788(v3, v5, 0);

  sub_19767A86C([v1 source], 1);
  sub_19767A958([v1 isExplicitRequest], 2);
}

void sub_19767A788(uint64_t a1, uint64_t a2, char a3)
{

  v4 = sub_19774F880();
  v5 = sub_19774EF20();

  [v3 encodeObject:v4 forKey:{v5, a1, a2}];
  swift_unknownObjectRelease();
}

void sub_19767A86C(uint64_t a1, char a2)
{
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = sub_19774EF20();

  [v2 encodeInt:a1 forKey:v4];
}

void sub_19767A958(char a1, char a2)
{
  v4 = sub_19774EF20();

  [v2 encodeBool:a1 & 1 forKey:v4];
}

id _sSo25LNConfirmationSystemStyleC12LinkServicesEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id ProgressPropertySynchronizer.init(sourceProgress:destinationProgress:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___LNProgressPropertySynchronizer_sourceProgress] = a1;
  *&v2[OBJC_IVAR___LNProgressPropertySynchronizer_destinationProgress] = a2;
  v5 = sub_197652138();
  v6 = a1;
  v7 = a2;
  if (v5)
  {
    v8 = sub_19767B5F4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR___LNProgressPropertySynchronizer_observationBag] = v8;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ProgressPropertySynchronizer();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id ProgressPropertySynchronizer.__deallocating_deinit()
{
  sub_19767B498();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressPropertySynchronizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19767AD34()
{
  v1 = *&v0[OBJC_IVAR___LNProgressPropertySynchronizer_sourceProgress];
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v0;
  v2 = v1;
  v3 = v0;
  v4 = sub_19774EA30();

  OUTLINED_FUNCTION_1_10(v5);
  sub_19767AFD8();
  swift_endAccess();

  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v3;
  v6 = v2;
  v7 = v3;
  v8 = OUTLINED_FUNCTION_0_10();

  OUTLINED_FUNCTION_1_10(v9);
  sub_19767AFD8();
  swift_endAccess();

  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v7;
  v10 = v6;
  v11 = v7;
  v12 = OUTLINED_FUNCTION_0_10();

  OUTLINED_FUNCTION_1_10(v13);
  sub_19767AFD8();
  swift_endAccess();

  swift_getKeyPath();
  OUTLINED_FUNCTION_2_7();
  *(swift_allocObject() + 16) = v11;
  v14 = v11;
  v15 = OUTLINED_FUNCTION_0_10();

  OUTLINED_FUNCTION_1_10(v16);
  sub_19767AFD8();
  swift_endAccess();
}

id sub_19767AF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 kind];
  *a2 = result;
  return result;
}

void sub_19767AFD8()
{
  sub_1976641E0(&v2, v0);
  v1 = v2;
}

id sub_19767B028@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileOperationKind];
  *a2 = result;
  return result;
}

void sub_19767B064(void **a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v7 = *a1;
  v8 = *(a3 + OBJC_IVAR___LNProgressPropertySynchronizer_destinationProgress);
  v9 = [v8 *a4];
  v10 = [v7 *a4];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_12:

LABEL_13:
    [v8 *a5];
    OUTLINED_FUNCTION_18();

    return;
  }

  if (!v10)
  {
    v11 = v9;
    goto LABEL_12;
  }

  v12 = sub_19774EF50();
  v14 = v13;
  if (v12 != sub_19774EF50() || v14 != v15)
  {
    v17 = sub_19774F7E0();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    OUTLINED_FUNCTION_18();
    return;
  }

  OUTLINED_FUNCTION_18();
}

void sub_19767B1E4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19774EF50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_19767B248(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_19774EF20();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_19767B2B8(void **a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v7 = *a1;
  v8 = *(a3 + OBJC_IVAR___LNProgressPropertySynchronizer_destinationProgress);
  v9 = [v8 *a4];
  if (v9)
  {
    v10 = v9;
    v11 = sub_19774EF50();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_19765B7CC(v7, a4);
  if (!v13)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v15)
  {
LABEL_13:

LABEL_14:
    sub_19765B7CC(v7, a4);
    if (v18)
    {
      v19 = sub_19774EF20();
    }

    else
    {
      v19 = 0;
    }

    [v8 *a5];

    return;
  }

  if (v11 != v14 || v13 != v15)
  {
    v17 = sub_19774F7E0();

    if (v17)
    {
      return;
    }

    goto LABEL_14;
  }
}

uint64_t sub_19767B498()
{
  v1 = OBJC_IVAR___LNProgressPropertySynchronizer_observationBag;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_19774F500();

    if (!v4)
    {
      return result;
    }
  }

  else if (!*(v3 + 16))
  {
    return result;
  }

  *(v0 + v1) = MEMORY[0x1E69E7CD0];
}

id ProgressPropertySynchronizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19767B5F4(uint64_t a1)
{
  if (sub_197652138())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7B8, &qword_19775A930);
    v2 = sub_19774F590();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v17 = sub_197652138();
  if (v17)
  {
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      sub_19765BEF0();
      result = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x19A8E5210](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_19774F3F0();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_19774E960();
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_19774F400();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_19767B934(uint64_t a1)
{
  if (sub_197652138())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F770, &qword_19775A8D0);
    v2 = sub_19774F590();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v17 = sub_197652138();
  if (v17)
  {
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      sub_19765BEF0();
      result = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x19A8E5210](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_19774F3F0();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_19767BADC();
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_19774F400();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_19767BADC()
{
  result = qword_1ED696D90;
  if (!qword_1ED696D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696D90);
  }

  return result;
}

void sub_19767BB20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_19774E9E0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_19767BB84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_19767BBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v4;
  v9[5] = a1;
  v9[6] = a2;
  v13[4] = sub_19767C6A0;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1976A7FD0;
  v13[3] = &block_descriptor_21_1;
  v10 = _Block_copy(v13);

  v11 = v4;

  v12 = a2;

  [v11 getConnectionInterfaceWithOptions:0 completionHandler:v10];
  _Block_release(v10);
}

void sub_19767BD00(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v14 = sub_19774EBF0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v17 = [a5 queue];
    v18 = swift_allocObject();
    *(v18 + 16) = "appintent:update properties";
    *(v18 + 24) = 27;
    *(v18 + 32) = 2;
    *(v18 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNUpdatePropertiesOperation());

    v19 = a7;

    v20 = sub_19767BFF4(v16, a1, 1, v17, sub_197669C04, v18, a6, v19, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v21 = sub_1976A4DDC(7303014, 0xE300000000000000, 1, 0);
    }

    v23 = a2;
    a3(v21);
  }
}

id sub_19767BFF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = &v11[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_completionHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v11[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_properties] = a7;
  *&v11[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_query] = a8;
  *v17 = a9;
  *(v17 + 1) = a10;
  v18 = a8;

  v19 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_27_0;
  v20 = _Block_copy(aBlock);

  v25.receiver = v11;
  v25.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  v21 = objc_msgSendSuper2(&v25, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v19, a2, a3, a4, v20);
  _Block_release(v20);

  swift_unknownObjectRelease();

  v22 = sub_19774EBF0();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v21;
}

void sub_19767C1A0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  objc_msgSendSuper2(&v9, sel_start);
  v1 = [v0 connectionInterface];
  sub_19767C65C();

  v2 = sub_19774F110();

  v3 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_query];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v8[4] = sub_197670A04;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_19767BB84;
  v8[3] = &block_descriptor_7;
  v5 = _Block_copy(v8);
  v6 = v3;
  v7 = v0;

  [v1 updateProperties:v2 withQuery:v6 completionHandler:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

void sub_19767C35C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_completionHandler];
  v5 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_ADE6F8A41B18310A0AFE515D9ECCA79F27LNUpdatePropertiesOperation_completionHandler];
  if (v5)
  {

    v5(a1);
    sub_19764781C(v5);
    v6 = *v4;
    *v4 = 0;
    v4[1] = 0;
    sub_19764781C(v6);
  }

  if (a1)
  {
    v7 = sub_19774E9E0();
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  objc_msgSendSuper2(&v8, sel_finishWithError_, v7);
}

id sub_19767C5A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNUpdatePropertiesOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19767C65C()
{
  result = qword_1ED696EE0;
  if (!qword_1ED696EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696EE0);
  }

  return result;
}

uint64_t static SpotlightKeyPathMapper.decode(_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_31_0() | 0x65636E6500000000;
  v4 = a1 == v2 && v3 == 0xE900000000000073;
  if (v4)
  {
    return swift_getKeyPath();
  }

  v5 = v3;
  if (OUTLINED_FUNCTION_8_4(v2, 0xE900000000000073))
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v9 = v4 && v8 == v5;
  if (v9 || (OUTLINED_FUNCTION_5_5(v7, v8) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v10 = a1 == 0x726F7461657263 && v5 == 0xE700000000000000;
  if (v10 || (OUTLINED_FUNCTION_6_5(0x726F7461657263) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v12 = a1 == 0xD000000000000014 && v11 == v5;
  if (v12 || (OUTLINED_FUNCTION_8_4(0xD000000000000014, v11) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v13 = OUTLINED_FUNCTION_86_0();
  v14 = a1 == v13 && v5 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_4_4(v13) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v15 = a1 == 0x656D614E746E6F66 && v5 == 0xE900000000000073;
  if (v15 || (OUTLINED_FUNCTION_8_4(0x656D614E746E6F66, 0xE900000000000073) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v16 = OUTLINED_FUNCTION_83();
  v17 = a1 == v16 && v5 == 0xEA00000000007265;
  if (v17 || (OUTLINED_FUNCTION_8_4(v16, 0xEA00000000007265) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v18 = a1 == 1684957547 && v5 == 0xE400000000000000;
  if (v18 || (OUTLINED_FUNCTION_8_4(1684957547, 0xE400000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v19 = OUTLINED_FUNCTION_29_0() | 0x6E756F4300000000;
  v20 = a1 == v19 && v5 == 0xE900000000000074;
  if (v20 || (OUTLINED_FUNCTION_8_4(v19, 0xE900000000000074) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v21 = OUTLINED_FUNCTION_29_0() | 0x6769654800000000;
  v22 = a1 == v21 && v5 == 0xEA00000000007468;
  if (v22 || (OUTLINED_FUNCTION_8_4(v21, 0xEA00000000007468) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v23 = OUTLINED_FUNCTION_29_0() | 0x7464695700000000;
  v24 = a1 == v23 && v5 == 0xE900000000000068;
  if (v24 || (OUTLINED_FUNCTION_8_4(v23, 0xE900000000000068) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v25 = OUTLINED_FUNCTION_70();
  v27 = a1 == v25 && v5 == v26;
  if (v27 || (OUTLINED_FUNCTION_8_4(v25, v26) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v28 = a1 == 0x7463656A627573 && v5 == 0xE700000000000000;
  if (v28 || (OUTLINED_FUNCTION_6_5(0x7463656A627573) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v29 = a1 == 0x656D656874 && v5 == 0xE500000000000000;
  if (v29 || (OUTLINED_FUNCTION_8_4(0x656D656874, 0xE500000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v30 = OUTLINED_FUNCTION_65_0(0x6E7265746C61);
  v31 = v4 && v5 == 0xEE0073656D614E65;
  if (v31 || (OUTLINED_FUNCTION_8_4(v30, 0xEE0073656D614E65) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v32 = a1 == 0x54746E65746E6F63 && v5 == 0xEB00000000657079;
  if (v32 || (OUTLINED_FUNCTION_8_4(0x54746E65746E6F63, 0xEB00000000657079) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v33 = a1 == 0x54746E65746E6F63 && v5 == 0xEF65657254657079;
  if (v33 || (OUTLINED_FUNCTION_8_4(0x54746E65746E6F63, 0xEF65657254657079) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v34 = OUTLINED_FUNCTION_15_2() & 0xFFFFFFFFFFFFLL | 0x5574000000000000;
  v36 = a1 == v34 && v5 == v35;
  if (v36 || (OUTLINED_FUNCTION_8_4(v34, 0xEA00000000004C52) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v38 = a1 == 0xD000000000000010 && v37 == v5;
  if (v38 || (OUTLINED_FUNCTION_8_4(0xD000000000000010, v37) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v39 = OUTLINED_FUNCTION_55();
  v40 = a1 == v39 && v5 == 0xEB00000000656D61;
  if (v40 || (OUTLINED_FUNCTION_8_4(v39, 0xEB00000000656D61) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v41 = OUTLINED_FUNCTION_52();
  v42 = a1 == v41 && v5 == 0xE800000000000000;
  if (v42 || (OUTLINED_FUNCTION_4_4(v41) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v44 = a1 == 0xD000000000000018 && v43 == v5;
  if (v44 || (OUTLINED_FUNCTION_8_4(0xD000000000000018, v43) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v45 = a1 == 1752457584 && v5 == 0xE400000000000000;
  if (v45 || (OUTLINED_FUNCTION_8_4(1752457584, 0xE400000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v46 = OUTLINED_FUNCTION_49();
  v48 = v47 + 1538;
  v49 = a1 == v46 && v5 == v48;
  if (v49 || (OUTLINED_FUNCTION_8_4(v46, v48) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v51 = a1 == 0xD000000000000017 && v50 == v5;
  if (v51 || (OUTLINED_FUNCTION_8_4(0xD000000000000017, v50) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_34_1();
  v53 = v4 && v5 == v52;
  if (v53 || (OUTLINED_FUNCTION_8_4(0x69616E626D756874, v52) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_34_1();
  v55 = v4 && v5 == v54;
  if (v55 || (OUTLINED_FUNCTION_8_4(0x69616E626D756874, v54) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v56 = a1 == 0x656C746974 && v5 == 0xE500000000000000;
  if (v56 || (OUTLINED_FUNCTION_8_4(0x656C746974, 0xE500000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v58 = a1 == 0xD000000000000010 && v57 == v5;
  if (v58 || (OUTLINED_FUNCTION_8_4(0xD000000000000010, v57) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v60 = a1 == 0xD00000000000001BLL && v59 == v5;
  if (v60 || (OUTLINED_FUNCTION_8_4(0xD00000000000001BLL, v59) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v61 = OUTLINED_FUNCTION_25_2() | 0x6165724300000000;
  v63 = a1 == v61 && v5 == v62;
  if (v63 || (OUTLINED_FUNCTION_8_4(v61, 0xEB00000000646574) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v64 = OUTLINED_FUNCTION_25_2() | 0x6172754300000000;
  v65 = a1 == v64 && v5 == 0xEB00000000646574;
  if (v65 || (OUTLINED_FUNCTION_8_4(v64, 0xEB00000000646574) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v66 = OUTLINED_FUNCTION_25_2() | 0x656E774F00000000;
  v67 = a1 == v66 && v5 == 0xE900000000000064;
  if (v67 || (OUTLINED_FUNCTION_8_4(v66, 0xE900000000000064) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v68 = a1 == 0x7961446C6C61 && v5 == 0xE600000000000000;
  if (v68 || (OUTLINED_FUNCTION_8_4(0x7961446C6C61, 0xE600000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v69 = OUTLINED_FUNCTION_59() | 0x6974656C00000000;
  v71 = a1 == v69 && v5 == (v70 | 0xA0A);
  if (v71 || (OUTLINED_FUNCTION_8_4(v69, 0xEE00657461446E6FLL) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v72 = a1 == 0x65746144657564 && v5 == 0xE700000000000000;
  if (v72 || (OUTLINED_FUNCTION_6_5(0x65746144657564) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v73 = a1 == 0x65746144646E65 && v5 == 0xE700000000000000;
  if (v73 || (OUTLINED_FUNCTION_6_5(0x65746144646E65) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v74 = OUTLINED_FUNCTION_93_0();
  v76 = a1 == v74 && v5 == v75;
  if (v76 || (OUTLINED_FUNCTION_8_4(v74, v75) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v77 = a1 == 0x7461447472617473 && v5 == 0xE900000000000065;
  if (v77 || (OUTLINED_FUNCTION_8_4(0x7461447472617473, 0xE900000000000065) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_90();
  v79 = a1 == v78 + 2805 && v5 == 0xE800000000000000;
  if (v79 || (OUTLINED_FUNCTION_4_4(v78 + 2805) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v80 = a1 == 2037672291 && v5 == 0xE400000000000000;
  if (v80 || (OUTLINED_FUNCTION_8_4(2037672291, 0xE400000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v81 = OUTLINED_FUNCTION_60();
  v82 = a1 == v81 && v5 == 0xE700000000000000;
  if (v82 || (OUTLINED_FUNCTION_6_5(v81) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v85 = v4 && v84 == v5;
  if (v85 || (OUTLINED_FUNCTION_5_5(v83, v84) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v86 = a1 == 0x706F64737067 && v5 == 0xE600000000000000;
  if (v86 || (OUTLINED_FUNCTION_8_4(0x706F64737067, 0xE600000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v87 = OUTLINED_FUNCTION_21_2() | 0x5365746100000000;
  v89 = a1 == v87 && v5 == v88;
  if (v89 || (OUTLINED_FUNCTION_8_4(v87, v88) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v90 = OUTLINED_FUNCTION_16_2() & 0xFFFFFFFFFFFFLL | 0x4274000000000000;
  v92 = a1 == v90 && v5 == v91;
  if (v92 || (OUTLINED_FUNCTION_8_4(v90, v91) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v93 = OUTLINED_FUNCTION_16_2() & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
  v95 = a1 == v93 && v5 == v94;
  if (v95 || (OUTLINED_FUNCTION_8_4(v93, v94) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v96 = OUTLINED_FUNCTION_16_2() & 0xFFFFFFFFFFFFLL | 0x4C74000000000000;
  v98 = a1 == v96 && v5 == v97;
  if (v98 || (OUTLINED_FUNCTION_8_4(v96, v97) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v100 = a1 == 0xD000000000000010 && v99 == v5;
  if (v100 || (OUTLINED_FUNCTION_8_4(0xD000000000000010, v99) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v101 = OUTLINED_FUNCTION_21_2() | 0x6566666900000000;
  v103 = a1 == v101 && v5 == v102;
  if (v103 || (OUTLINED_FUNCTION_8_4(v101, v102) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v104 = OUTLINED_FUNCTION_89() | 0x6144706100000000;
  v106 = a1 == v104 && v5 == v105;
  if (v106 || (OUTLINED_FUNCTION_8_4(v104, v105) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v107 = OUTLINED_FUNCTION_89() | 0x7573616500000000;
  v109 = a1 == v107 && v5 == v108;
  if (v109 || (OUTLINED_FUNCTION_8_4(v107, v108) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v111 = a1 == 0xD000000000000013 && v110 == v5;
  if (v111 || (OUTLINED_FUNCTION_8_4(0xD000000000000013, v110) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v112 = OUTLINED_FUNCTION_87();
  v113 = a1 == v112 && v5 == 0xE900000000000073;
  if (v113 || (OUTLINED_FUNCTION_8_4(v112, 0xE900000000000073) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v114 = OUTLINED_FUNCTION_88();
  v115 = a1 == v114 && v5 == 0xE800000000000000;
  if (v115 || (OUTLINED_FUNCTION_4_4(v114) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v116 = a1 == 0x656E696C64616568 && v5 == 0xE800000000000000;
  if (v116 || (OUTLINED_FUNCTION_4_4(0x656E696C64616568) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v117 = OUTLINED_FUNCTION_94();
  v119 = a1 == v117 && v5 == v118;
  if (v119 || (OUTLINED_FUNCTION_8_4(v117, v118) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v120 = OUTLINED_FUNCTION_78();
  v122 = a1 == v120 && v5 == v121;
  if (v122 || (OUTLINED_FUNCTION_8_4(v120, v121) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_90();
  if (a1 == v123 && v5 == 0xE800000000000000)
  {
    return swift_getKeyPath();
  }

  v125 = OUTLINED_FUNCTION_33_1();
  if (OUTLINED_FUNCTION_4_4(v125 & 0xFFFFFFFFFFFFLL | 0x6564000000000000))
  {
    return swift_getKeyPath();
  }

  v126 = OUTLINED_FUNCTION_74();
  v127 = a1 == v126 && v5 == 0xE900000000000065;
  if (v127 || (OUTLINED_FUNCTION_8_4(v126, 0xE900000000000065) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v128 = OUTLINED_FUNCTION_71();
  v130 = a1 == v128 && v5 == v129;
  if (v130 || (OUTLINED_FUNCTION_8_4(v128, v129) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v131 = a1 == 0x6465657073 && v5 == 0xE500000000000000;
  if (v131 || (OUTLINED_FUNCTION_8_4(0x6465657073, 0xE500000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v132 = OUTLINED_FUNCTION_92();
  v134 = a1 == v132 && v5 == v133;
  if (v134 || (OUTLINED_FUNCTION_8_4(v132, v133) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v135 = OUTLINED_FUNCTION_43_0() | 0x6D61747300000000;
  v136 = a1 == v135 && v5 == 0xE900000000000070;
  if (v136 || (OUTLINED_FUNCTION_8_4(v135, 0xE900000000000070) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v138 = a1 == 0xD000000000000015 && v137 == v5;
  if (v138 || (OUTLINED_FUNCTION_8_4(0xD000000000000015, v137) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v139 = OUTLINED_FUNCTION_66();
  v140 = a1 == v139 && v5 == 0xEA00000000006564;
  if (v140 || (OUTLINED_FUNCTION_8_4(v139, 0xEA00000000006564) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v141 = OUTLINED_FUNCTION_68();
  v143 = a1 == v141 && v5 == v142;
  if (v143 || (OUTLINED_FUNCTION_8_4(v141, v142) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_32_0();
  v144 = OUTLINED_FUNCTION_67();
  v146 = a1 == v144 && v5 == v145;
  if (v146 || (OUTLINED_FUNCTION_8_4(v144, 0xEC00000065726166) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v147 = a1 == 0x746E656D6D6F63 && v5 == 0xE700000000000000;
  if (v147 || (OUTLINED_FUNCTION_6_5(0x746E656D6D6F63) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v149 = v4 && v148 == v5;
  if (v149 || (OUTLINED_FUNCTION_8_4(0xD000000000000013, v148) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v151 = a1 == 0xD000000000000017 && v150 == v5;
  if (v151 || (OUTLINED_FUNCTION_8_4(0xD000000000000017, v150) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v152 = OUTLINED_FUNCTION_15_2() & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
  v154 = a1 == v152 && v5 == v153;
  if (v154 || (OUTLINED_FUNCTION_8_4(v152, v153) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v155 = OUTLINED_FUNCTION_61_0();
  v156 = a1 == v155 && v5 == 0xE900000000000074;
  if (v156 || (OUTLINED_FUNCTION_8_4(v155, 0xE900000000000074) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v157 = OUTLINED_FUNCTION_57();
  v158 = a1 == v157 && v5 == 0xEE00657461446465;
  if (v158 || (OUTLINED_FUNCTION_8_4(v157, 0xEE00657461446465) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v159 = a1 == 0x73726F74696465 && v5 == 0xE700000000000000;
  if (v159 || (OUTLINED_FUNCTION_6_5(0x73726F74696465) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v160 = a1 == 0x646573557473616CLL && v5 == 0xEC00000065746144;
  if (v160 || (OUTLINED_FUNCTION_8_4(0x646573557473616CLL, 0xEC00000065746144) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v161 = OUTLINED_FUNCTION_77();
  v163 = a1 == v161 && v5 == v162;
  if (v163 || (OUTLINED_FUNCTION_8_4(v161, v162) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v164 = OUTLINED_FUNCTION_51_0();
  v165 = a1 == v164 && v5 == 0xE800000000000000;
  if (v165 || (OUTLINED_FUNCTION_4_4(v164) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v166 = OUTLINED_FUNCTION_65_0(0x446465646461);
  v167 = v4 && v5 == 0xE900000000000065;
  if (v167 || (OUTLINED_FUNCTION_8_4(v166, 0xE900000000000065) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v168 = a1 == 0x736365646F63 && v5 == 0xE600000000000000;
  if (v168 || (OUTLINED_FUNCTION_8_4(0x736365646F63, 0xE600000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v169 = OUTLINED_FUNCTION_20_1() | 0x4B74636100000000;
  v171 = a1 == v169 && v5 == v170;
  if (v171 || (OUTLINED_FUNCTION_8_4(v169, v170) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v172 = OUTLINED_FUNCTION_46_3();
  v174 = v173 + 200704;
  v175 = a1 == v172 && v5 == v174;
  if (v175 || (OUTLINED_FUNCTION_8_4(v172, v174) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v176 = OUTLINED_FUNCTION_36_0();
  v177 = a1 == v176 && v5 == 0xE800000000000000;
  if (v177 || (OUTLINED_FUNCTION_4_4(v176) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v178 = OUTLINED_FUNCTION_44_0();
  v179 = a1 == v178 && v5 == 0xEA00000000007365;
  if (v179 || (OUTLINED_FUNCTION_8_4(v178, 0xEA00000000007365) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v180 = OUTLINED_FUNCTION_42_0();
  v182 = a1 == v180 && v5 == v181;
  if (v182 || (OUTLINED_FUNCTION_8_4(v180, v181) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v183 = OUTLINED_FUNCTION_91_0();
  v184 = a1 == v183 && v5 == 0xEA0000000000656CLL;
  if (v184 || (OUTLINED_FUNCTION_8_4(v183, 0xEA0000000000656CLL) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v185 = OUTLINED_FUNCTION_41_0(0x426C61746F74);
  v186 = v4 && v5 == 0xEC00000065746152;
  if (v186 || (OUTLINED_FUNCTION_8_4(v185, 0xEC00000065746152) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v187 = OUTLINED_FUNCTION_31_0();
  v188 = OUTLINED_FUNCTION_41_0(v187 & 0xFFFF0000FFFFFFFFLL | 0x426F00000000);
  v189 = v4 && v5 == 0xEC00000065746152;
  if (v189 || (OUTLINED_FUNCTION_8_4(v188, 0xEC00000065746152) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v190 = a1 == 0x6E6F6973726576 && v5 == 0xE700000000000000;
  if (v190 || (OUTLINED_FUNCTION_6_5(0x6E6F6973726576) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v191 = OUTLINED_FUNCTION_41_0(0x426F65646976);
  v192 = v4 && v5 == 0xEC00000065746152;
  if (v192 || (OUTLINED_FUNCTION_8_4(v191, 0xEC00000065746152) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_22_2();
  v193 = OUTLINED_FUNCTION_20_1() | 0x7562697200000000;
  v195 = v194 + 2578;
  v196 = a1 == v193 && v5 == v195;
  if (v196 || (OUTLINED_FUNCTION_8_4(v193, v195) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v197 = a1 == 0x65676175676E616CLL && v5 == 0xE900000000000073;
  if (v197 || (OUTLINED_FUNCTION_8_4(0x65676175676E616CLL, 0xE900000000000073) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v198 = OUTLINED_FUNCTION_37_0();
  v199 = a1 == v198 && v5 == 0xEA00000000007372;
  if (v199 || (OUTLINED_FUNCTION_8_4(v198, 0xEA00000000007372) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v200 = a1 == 0x737468676972 && v5 == 0xE600000000000000;
  if (v200 || (OUTLINED_FUNCTION_8_4(0x737468676972, 0xE600000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v201 = a1 == 1701605234 && v5 == 0xE400000000000000;
  if (v201 || (OUTLINED_FUNCTION_8_4(1701605234, 0xE400000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v202 = OUTLINED_FUNCTION_15_2() & 0xFFFFFFFFFFFFLL | 0x5274000000000000;
  v204 = a1 == v202 && v5 == v203;
  if (v204 || (OUTLINED_FUNCTION_8_4(v202, v203) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v205 = a1 == 0x6567617265766F63 && v5 == 0xE800000000000000;
  if (v205 || (OUTLINED_FUNCTION_4_4(0x6567617265766F63) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v206 = OUTLINED_FUNCTION_56();
  v207 = a1 == v206 && v5 == 0xE800000000000000;
  if (v207 || (OUTLINED_FUNCTION_4_4(v206) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v208 = a1 == 0x65726E6567 && v5 == 0xE500000000000000;
  if (v208 || (OUTLINED_FUNCTION_8_4(0x65726E6567, 0xE500000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v209 = OUTLINED_FUNCTION_65_0(0x6D726F666E69);
  v211 = v4 && v5 == v210;
  if (v211 || (OUTLINED_FUNCTION_8_4(v209, 0xEB000000006E6F69) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v212 = a1 == 0x6C61636F6CLL && v5 == 0xE500000000000000;
  if (v212 || (OUTLINED_FUNCTION_8_4(0x6C61636F6CLL, 0xE500000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_27_2();
  v214 = v4 && v5 == v213;
  if (v214 || (OUTLINED_FUNCTION_8_4(0x6C616E696769726FLL, v213) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_27_2();
  v216 = v4 && v5 == v215;
  if (v216 || (OUTLINED_FUNCTION_8_4(0x6C616E696769726FLL, v215) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v217 = a1 == 0x656D726F66726570 && v5 == 0xEA00000000007372;
  if (v217 || (OUTLINED_FUNCTION_8_4(0x656D726F66726570, 0xEA00000000007372) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v218 = a1 == 0x6E756F4379616C70 && v5 == 0xE900000000000074;
  if (v218 || (OUTLINED_FUNCTION_8_4(0x6E756F4379616C70, 0xE900000000000074) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v219 = a1 == 0x72656375646F7270 && v5 == 0xE800000000000000;
  if (v219 || (OUTLINED_FUNCTION_4_4(0x72656375646F7270) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v220 = a1 == 0x676E69746172 && v5 == 0xE600000000000000;
  if (v220 || (OUTLINED_FUNCTION_8_4(0x676E69746172, 0xE600000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v222 = a1 == 0xD000000000000011 && v221 == v5;
  if (v222 || (OUTLINED_FUNCTION_8_4(0xD000000000000011, v221) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v223 = a1 == 7107189 && v5 == 0xE300000000000000;
  if (v223 || (OUTLINED_FUNCTION_8_4(7107189, 0xE300000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v224 = a1 == 0x6D75626C61 && v5 == 0xE500000000000000;
  if (v224 || (OUTLINED_FUNCTION_8_4(0x6D75626C61, 0xE500000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v225 = a1 == 0x747369747261 && v5 == 0xE600000000000000;
  if (v225 || (OUTLINED_FUNCTION_8_4(0x747369747261, 0xE600000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v227 = a1 == 0xD000000000000011 && v226 == v5;
  if (v227 || (OUTLINED_FUNCTION_8_4(0xD000000000000011, v226) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v229 = a1 == 0xD000000000000018 && v228 == v5;
  if (v229 || (OUTLINED_FUNCTION_8_4(0xD000000000000018, v228) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v230 = OUTLINED_FUNCTION_31_0() | 0x6D61536F00000000;
  v232 = a1 == v230 && v5 == v231;
  if (v232 || (OUTLINED_FUNCTION_8_4(v230, v231) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v234 = a1 == 0xD000000000000010 && v233 == v5;
  if (v234 || (OUTLINED_FUNCTION_8_4(0xD000000000000010, v233) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v235 = OUTLINED_FUNCTION_59() | 0x7265736F00000000;
  v236 = a1 == v235 && v5 == 0xE800000000000000;
  if (v236 || (OUTLINED_FUNCTION_4_4(v235) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v237 = OUTLINED_FUNCTION_53();
  v239 = a1 == v237 && v5 == v238;
  if (v239 || (OUTLINED_FUNCTION_8_4(v237, v238) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v240 = OUTLINED_FUNCTION_85();
  v241 = a1 == v240 && v5 == 0xE800000000000000;
  if (v241 || (OUTLINED_FUNCTION_4_4(v240) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_32_0();
  v244 = v243 + 3327;
  v245 = a1 == v242 && v5 == v244;
  if (v245 || (OUTLINED_FUNCTION_8_4(v242, v244) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v246 = OUTLINED_FUNCTION_82();
  v248 = a1 == v246 && v5 == v247;
  if (v248 || (OUTLINED_FUNCTION_8_4(v246, v247) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v249 = a1 == 0x6F706D6574 && v5 == 0xE500000000000000;
  if (v249 || (OUTLINED_FUNCTION_8_4(0x6F706D6574, 0xE500000000000000) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v250 = OUTLINED_FUNCTION_43_0() | 0x6E67695300000000;
  v252 = a1 == v250 && v5 == v251;
  if (v252 || (OUTLINED_FUNCTION_8_4(v250, v251) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v254 = v4 && v253 == v5;
  if (v254 || (OUTLINED_FUNCTION_8_4(0xD000000000000013, v253) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v256 = a1 == 0xD000000000000019 && v255 == v5;
  if (v256 || (OUTLINED_FUNCTION_8_4(0xD000000000000019, v255) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v258 = a1 == 0xD000000000000015 && v257 == v5;
  if (v258 || (OUTLINED_FUNCTION_8_4(0xD000000000000015, v257) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v259 = a1 == 0x64656570536F7369 && v5 == 0xE800000000000000;
  if (v259 || (OUTLINED_FUNCTION_4_4(0x64656570536F7369) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v260 = OUTLINED_FUNCTION_41_0(0x736975716361);
  v262 = v4 && v5 == v261;
  if (v262 || (OUTLINED_FUNCTION_8_4(v260, v261) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v264 = a1 == 0xD000000000000010 && v263 == v5;
  if (v264 || (OUTLINED_FUNCTION_8_4(0xD000000000000010, v263) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v265 = OUTLINED_FUNCTION_73();
  v266 = a1 == v265 && v5 == 0xE800000000000000;
  if (v266 || (OUTLINED_FUNCTION_4_4(v265) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v267 = OUTLINED_FUNCTION_72();
  v269 = a1 == v267 && v5 == v268;
  if (v269 || (OUTLINED_FUNCTION_8_4(v267, v268) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v270 = OUTLINED_FUNCTION_69();
  v272 = a1 == v270 && v5 == v271;
  if (v272 || (OUTLINED_FUNCTION_8_4(v270, v271) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v273 = OUTLINED_FUNCTION_62();
  v274 = a1 == v273 && v5 == 0xEA00000000006563;
  if (v274 || (OUTLINED_FUNCTION_8_4(v273, 0xEA00000000006563) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v275 = a1 == 0x6E4F6873616C66 && v5 == 0xE700000000000000;
  if (v275 || (OUTLINED_FUNCTION_6_5(0x6E4F6873616C66) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v276 = a1 == 0x6E654C6C61636F66 && v5 == 0xEB00000000687467;
  if (v276 || (OUTLINED_FUNCTION_8_4(0x6E654C6C61636F66, 0xEB00000000687467) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v277 = a1 == 0x6E654C6C61636F66 && v5 == 0xEF6D6D3533687467;
  if (v277 || (OUTLINED_FUNCTION_8_4(0x6E654C6C61636F66, 0xEF6D6D3533687467) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v278 = OUTLINED_FUNCTION_76();
  v279 = a1 == v278 && v5 == 0xEA00000000007365;
  if (v279 || (OUTLINED_FUNCTION_8_4(v278, 0xEA00000000007365) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v280 = a1 == 0x65646F4D736E656CLL && v5 == 0xE90000000000006CLL;
  if (v280 || (OUTLINED_FUNCTION_8_4(0x65646F4D736E656CLL, 0xE90000000000006CLL) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v281 = OUTLINED_FUNCTION_65_0(0x746E6569726FLL);
  v282 = v4 && v5 == 0xEB000000006E6F69;
  if (v282 || (OUTLINED_FUNCTION_8_4(v281, 0xEB000000006E6F69) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v283 = OUTLINED_FUNCTION_26_1() | 0x756F436C00000000;
  v284 = a1 == v283 && v5 == 0xEA0000000000746ELL;
  if (v284 || (OUTLINED_FUNCTION_8_4(v283, 0xEA0000000000746ELL) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v285 = OUTLINED_FUNCTION_26_1() | 0x6965486C00000000;
  v286 = a1 == v285 && v5 == 0xEB00000000746867;
  if (v286 || (OUTLINED_FUNCTION_8_4(v285, 0xEB00000000746867) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v287 = OUTLINED_FUNCTION_26_1() | 0x6469576C00000000;
  v288 = a1 == v287 && v5 == 0xEA00000000006874;
  if (v288 || (OUTLINED_FUNCTION_8_4(v287, 0xEA00000000006874) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v289 = OUTLINED_FUNCTION_58();
  v291 = a1 == v289 && v5 == v290;
  if (v291 || (OUTLINED_FUNCTION_8_4(v289, v290) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v292 = OUTLINED_FUNCTION_54() | 0x5673706700000000;
  v294 = a1 == v292 && v5 == v293;
  if (v294 || (OUTLINED_FUNCTION_8_4(v292, v293) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v295 = OUTLINED_FUNCTION_54() | 0x7372655600000000;
  v296 = a1 == v295 && v5 == 0xEB000000006E6F69;
  if (v296 || (OUTLINED_FUNCTION_8_4(v295, 0xEB000000006E6F69) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v297 = a1 == 0x657275736F707865 && v5 == 0xEC00000065646F4DLL;
  if (v297 || (OUTLINED_FUNCTION_8_4(0x657275736F707865, 0xEC00000065646F4DLL) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v298 = a1 == 0x657275736F707865 && v5 == 0xEF6D6172676F7250;
  if (v298 || (OUTLINED_FUNCTION_8_4(0x657275736F707865, 0xEF6D6172676F7250) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v299 = a1 == 0x657275736F707865 && v5 == 0xEC000000656D6954;
  if (v299 || (OUTLINED_FUNCTION_8_4(0x657275736F707865, 0xEC000000656D6954) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v302 = v4 && v301 == v5;
  if (v302 || (OUTLINED_FUNCTION_5_5(v300, v301) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v303 = a1 == 0x7265626D754E66 && v5 == 0xE700000000000000;
  if (v303 || (OUTLINED_FUNCTION_6_5(0x7265626D754E66) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v304 = OUTLINED_FUNCTION_48();
  v306 = a1 == v304 && v5 == v305;
  if (v306 || (OUTLINED_FUNCTION_8_4(v304, v305) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v307 = OUTLINED_FUNCTION_47();
  v308 = a1 == v307 && v5 == 0xEB00000000657275;
  if (v308 || (OUTLINED_FUNCTION_8_4(v307, 0xEB00000000657275) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v309 = OUTLINED_FUNCTION_45_0();
  v310 = a1 == v309 && v5 == 0xEC00000065646F4DLL;
  if (v310 || (OUTLINED_FUNCTION_8_4(v309, 0xEC00000065646F4DLL) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v311 = OUTLINED_FUNCTION_50();
  v312 = a1 == v311 && v5 == 0xEB00000000656D61;
  if (v312 || (OUTLINED_FUNCTION_8_4(v311, 0xEB00000000656D61) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v313 = OUTLINED_FUNCTION_81();
  v314 = a1 == v313 && v5 == 0xE800000000000000;
  if (v314 || (OUTLINED_FUNCTION_4_4(v313) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v316 = v4 && v315 == v5;
  if (v316 || (OUTLINED_FUNCTION_8_4(0xD000000000000013, v315) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v319 = v4 && v318 == v5;
  if (v319 || (OUTLINED_FUNCTION_5_5(v317, v318) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v320 = a1 == 0x746E6F436C6D7468 && v5 == 0xEF61746144746E65;
  if (v320 || (OUTLINED_FUNCTION_8_4(0x746E6F436C6D7468, 0xEF61746144746E65) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v321 = OUTLINED_FUNCTION_75_0();
  v323 = a1 == v321 && v5 == v322;
  if (v323 || (OUTLINED_FUNCTION_8_4(v321, v322) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v325 = a1 == 0xD000000000000011 && v324 == v5;
  if (v325 || (OUTLINED_FUNCTION_8_4(0xD000000000000011, v324) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v327 = a1 == 0xD000000000000014 && v326 == v5;
  if (v327 || (OUTLINED_FUNCTION_8_4(0xD000000000000014, v326) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v328 = OUTLINED_FUNCTION_18_2() & 0xFFFFFFFFFFFFLL | 0x6441000000000000;
  v330 = a1 == v328 && v5 == v329;
  if (v330 || (OUTLINED_FUNCTION_8_4(v328, v329) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v332 = a1 == 0xD000000000000014 && v331 == v5;
  if (v332 || (OUTLINED_FUNCTION_8_4(0xD000000000000014, v331) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v333 = OUTLINED_FUNCTION_18_2() & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
  v335 = a1 == v333 && v5 == v334;
  if (v335 || (OUTLINED_FUNCTION_8_4(v333, v334) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v336 = OUTLINED_FUNCTION_18_2() & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v337 = a1 == v336 && v5 == 0xE700000000000000;
  if (v337 || (OUTLINED_FUNCTION_6_5(v336) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_35_0();
  v338 = OUTLINED_FUNCTION_40_0() | 0x6464416C00000000;
  v340 = a1 == v338 && v5 == v339;
  if (v340 || (OUTLINED_FUNCTION_8_4(v338, v339) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2();
  v343 = v342 + 2;
  v344 = a1 == v341 && v5 == v343;
  if (v344 || (OUTLINED_FUNCTION_8_4(v341, v343) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v346 = a1 == 0xD00000000000001ALL && v345 == v5;
  if (v346 || (OUTLINED_FUNCTION_8_4(0xD00000000000001ALL, v345) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v348 = a1 == 0xD000000000000017 && v347 == v5;
  if (v348 || (OUTLINED_FUNCTION_8_4(0xD000000000000017, v347) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v349 = OUTLINED_FUNCTION_39_0();
  v350 = a1 == v349 && v5 == 0xEA00000000006B6ELL;
  if (v350 || (OUTLINED_FUNCTION_8_4(v349, 0xEA00000000006B6ELL) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v353 = v4 && v352 == v5;
  if (v353 || (OUTLINED_FUNCTION_5_5(v351, v352) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v354 = OUTLINED_FUNCTION_38_0();
  v355 = a1 == v354 && v5 == 0xEC00000073726562;
  if (v355 || (OUTLINED_FUNCTION_8_4(v354, 0xEC00000073726562) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v357 = a1 == 0xD000000000000011 && v356 == v5;
  if (v357 || (OUTLINED_FUNCTION_8_4(0xD000000000000011, v356) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v360 = v4 && v359 == v5;
  if (v360 || (OUTLINED_FUNCTION_5_5(v358, v359) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v362 = a1 == 0xD000000000000017 && v361 == v5;
  if (v362 || (OUTLINED_FUNCTION_8_4(0xD000000000000017, v361) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v363 = OUTLINED_FUNCTION_80();
  v364 = a1 == v363 && v5 == 0xEE0073656D614E74;
  if (v364 || (OUTLINED_FUNCTION_8_4(v363, 0xEE0073656D614E74) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v365 = a1 == 0x746E6F4374786574 && v5 == 0xEB00000000746E65;
  if (v365 || (OUTLINED_FUNCTION_8_4(0x746E6F4374786574, 0xEB00000000746E65) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v367 = a1 == 0xD000000000000014 && v366 == v5;
  if (v367 || (OUTLINED_FUNCTION_8_4(0xD000000000000014, v366) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_64_0();
  v369 = v4 && v368 == v5;
  if (v369 || (OUTLINED_FUNCTION_8_4(0xD000000000000013, v368) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v370 = a1 == 0x656E6961746E6F63 && v5 == 0xEE00726564724F72;
  if (v370 || (OUTLINED_FUNCTION_8_4(0x656E6961746E6F63, 0xEE00726564724F72) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  v371 = a1 == 0x656E6961746E6F63 && v5 == 0xEE00656C74695472;
  if (v371 || (OUTLINED_FUNCTION_8_4(0x656E6961746E6F63, 0xEE00656C74695472) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v373 = a1 == 0xD000000000000011 && v372 == v5;
  if (v373 || (OUTLINED_FUNCTION_8_4(0xD000000000000011, v372) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v375 = a1 == 0xD000000000000015 && v374 == v5;
  if (v375 || (OUTLINED_FUNCTION_8_4(0xD000000000000015, v374) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_12_2();
  v378 = v4 && v377 == v5;
  if (v378 || (OUTLINED_FUNCTION_5_5(v376, v377) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v380 = a1 == 0xD000000000000011 && v379 == v5;
  if (v380 || (OUTLINED_FUNCTION_8_4(0xD000000000000011, v379) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v382 = a1 == 0xD00000000000001BLL && v381 == v5;
  if (v382 || (OUTLINED_FUNCTION_8_4(0xD00000000000001BLL, v381) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v384 = a1 == 0xD00000000000001BLL && v383 == v5;
  if (v384 || (OUTLINED_FUNCTION_8_4(0xD00000000000001BLL, v383) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_14_2();
  v386 = a1 == 0xD000000000000022 && v385 == v5;
  if (v386 || (OUTLINED_FUNCTION_8_4(0xD000000000000022, v385) & 1) != 0)
  {
    return swift_getKeyPath();
  }

  else
  {
    return 0;
  }
}

uint64_t static SpotlightKeyPathMapper.mdItemKey(for:)()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBB8, &qword_19775DA38);
  OUTLINED_FUNCTION_9_4(v1, v2, v3, MEMORY[0x1E69E6938], v4, v5, v6, v7, v1312, v1499);
  OUTLINED_FUNCTION_23_1();
  if (v0)
  {
    return sub_19774EF50();
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v8, v9, v10, MEMORY[0x1E69E6938], v11, v12, v13, v14, v1313, v1500);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v15, v16, v17, MEMORY[0x1E69E6938], v18, v19, v20, v21, v1314, v1501);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v22, v23, v24, MEMORY[0x1E69E6938], v25, v26, v27, v28, v1315, v1502);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v29, v30, v31, MEMORY[0x1E69E6938], v32, v33, v34, v35, v1316, v1503);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v36, v37, v38, MEMORY[0x1E69E6938], v39, v40, v41, v42, v1317, v1504);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v43, v44, v45, MEMORY[0x1E69E6938], v46, v47, v48, v49, v1318, v1505);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v50, v51, v52, MEMORY[0x1E69E6938], v53, v54, v55, v56, v1319, v1506);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v57, v58, v59, MEMORY[0x1E69E6938], v60, v61, v62, v63, v1320, v1507);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v64, v65, v66, MEMORY[0x1E69E6938], v67, v68, v69, v70, v1321, v1508);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v71, v72, v73, MEMORY[0x1E69E6938], v74, v75, v76, v77, v1322, v1509);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v78, v79, v80, MEMORY[0x1E69E6938], v81, v82, v83, v84, v1323, v1510);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v85, v86, v87, MEMORY[0x1E69E6938], v88, v89, v90, v91, v1324, v1511);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v92, v93, v94, MEMORY[0x1E69E6938], v95, v96, v97, v98, v1325, v1512);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v99, v100, v101, MEMORY[0x1E69E6938], v102, v103, v104, v105, v1326, v1513);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v106, v107, v108, MEMORY[0x1E69E6938], v109, v110, v111, v112, v1327, v1514);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v113, v114, v115, MEMORY[0x1E69E6938], v116, v117, v118, v119, v1328, v1515);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v120, v121, v122, MEMORY[0x1E69E6938], v123, v124, v125, v126, v1329, v1516);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v127, v128, v129, MEMORY[0x1E69E6938], v130, v131, v132, v133, v1330, v1517);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v134, v135, v136, MEMORY[0x1E69E6938], v137, v138, v139, v140, v1331, v1518);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v141, v142, v143, MEMORY[0x1E69E6938], v144, v145, v146, v147, v1332, v1519);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v148, v149, v150, MEMORY[0x1E69E6938], v151, v152, v153, v154, v1333, v1520);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v155, v156, v157, MEMORY[0x1E69E6938], v158, v159, v160, v161, v1334, v1521);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v162, v163, v164, MEMORY[0x1E69E6938], v165, v166, v167, v168, v1335, v1522);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v169, v170, v171, MEMORY[0x1E69E6938], v172, v173, v174, v175, v1336, v1523);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v176, v177, v178, MEMORY[0x1E69E6938], v179, v180, v181, v182, v1337, v1524);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v183, v184, v185, MEMORY[0x1E69E6938], v186, v187, v188, v189, v1338, v1525);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v190, v191, v192, MEMORY[0x1E69E6938], v193, v194, v195, v196, v1339, v1526);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v197, v198, v199, MEMORY[0x1E69E6938], v200, v201, v202, v203, v1340, v1527);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v204, v205, v206, MEMORY[0x1E69E6938], v207, v208, v209, v210, v1341, v1528);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v211, v212, v213, MEMORY[0x1E69E6938], v214, v215, v216, v217, v1342, v1529);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v218, v219, v220, MEMORY[0x1E69E6938], v221, v222, v223, v224, v1343, v1530);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v225, v226, v227, MEMORY[0x1E69E6938], v228, v229, v230, v231, v1344, v1531);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v232, v233, v234, MEMORY[0x1E69E6938], v235, v236, v237, v238, v1345, v1532);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v239, v240, v241, MEMORY[0x1E69E6938], v242, v243, v244, v245, v1346, v1533);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v246, v247, v248, MEMORY[0x1E69E6938], v249, v250, v251, v252, v1347, v1534);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v253, v254, v255, MEMORY[0x1E69E6938], v256, v257, v258, v259, v1348, v1535);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v260, v261, v262, MEMORY[0x1E69E6938], v263, v264, v265, v266, v1349, v1536);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v267, v268, v269, MEMORY[0x1E69E6938], v270, v271, v272, v273, v1350, v1537);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v274, v275, v276, MEMORY[0x1E69E6938], v277, v278, v279, v280, v1351, v1538);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v281, v282, v283, MEMORY[0x1E69E6938], v284, v285, v286, v287, v1352, v1539);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v288, v289, v290, MEMORY[0x1E69E6938], v291, v292, v293, v294, v1353, v1540);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v295, v296, v297, MEMORY[0x1E69E6938], v298, v299, v300, v301, v1354, v1541);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v302, v303, v304, MEMORY[0x1E69E6938], v305, v306, v307, v308, v1355, v1542);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v309, v310, v311, MEMORY[0x1E69E6938], v312, v313, v314, v315, v1356, v1543);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v316, v317, v318, MEMORY[0x1E69E6938], v319, v320, v321, v322, v1357, v1544);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v323, v324, v325, MEMORY[0x1E69E6938], v326, v327, v328, v329, v1358, v1545);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v330, v331, v332, MEMORY[0x1E69E6938], v333, v334, v335, v336, v1359, v1546);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v337, v338, v339, MEMORY[0x1E69E6938], v340, v341, v342, v343, v1360, v1547);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v344, v345, v346, MEMORY[0x1E69E6938], v347, v348, v349, v350, v1361, v1548);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v351, v352, v353, MEMORY[0x1E69E6938], v354, v355, v356, v357, v1362, v1549);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v358, v359, v360, MEMORY[0x1E69E6938], v361, v362, v363, v364, v1363, v1550);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v365, v366, v367, MEMORY[0x1E69E6938], v368, v369, v370, v371, v1364, v1551);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v372, v373, v374, MEMORY[0x1E69E6938], v375, v376, v377, v378, v1365, v1552);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v379, v380, v381, MEMORY[0x1E69E6938], v382, v383, v384, v385, v1366, v1553);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v386, v387, v388, MEMORY[0x1E69E6938], v389, v390, v391, v392, v1367, v1554);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v393, v394, v395, MEMORY[0x1E69E6938], v396, v397, v398, v399, v1368, v1555);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v400, v401, v402, MEMORY[0x1E69E6938], v403, v404, v405, v406, v1369, v1556);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v407, v408, v409, MEMORY[0x1E69E6938], v410, v411, v412, v413, v1370, v1557);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v414, v415, v416, MEMORY[0x1E69E6938], v417, v418, v419, v420, v1371, v1558);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v421, v422, v423, MEMORY[0x1E69E6938], v424, v425, v426, v427, v1372, v1559);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v428, v429, v430, MEMORY[0x1E69E6938], v431, v432, v433, v434, v1373, v1560);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v435, v436, v437, MEMORY[0x1E69E6938], v438, v439, v440, v441, v1374, v1561);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v442, v443, v444, MEMORY[0x1E69E6938], v445, v446, v447, v448, v1375, v1562);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v449, v450, v451, MEMORY[0x1E69E6938], v452, v453, v454, v455, v1376, v1563);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v456, v457, v458, MEMORY[0x1E69E6938], v459, v460, v461, v462, v1377, v1564);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v463, v464, v465, MEMORY[0x1E69E6938], v466, v467, v468, v469, v1378, v1565);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v470, v471, v472, MEMORY[0x1E69E6938], v473, v474, v475, v476, v1379, v1566);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v477, v478, v479, MEMORY[0x1E69E6938], v480, v481, v482, v483, v1380, v1567);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v484, v485, v486, MEMORY[0x1E69E6938], v487, v488, v489, v490, v1381, v1568);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v491, v492, v493, MEMORY[0x1E69E6938], v494, v495, v496, v497, v1382, v1569);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v498, v499, v500, MEMORY[0x1E69E6938], v501, v502, v503, v504, v1383, v1570);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v505, v506, v507, MEMORY[0x1E69E6938], v508, v509, v510, v511, v1384, v1571);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v512, v513, v514, MEMORY[0x1E69E6938], v515, v516, v517, v518, v1385, v1572);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v519, v520, v521, MEMORY[0x1E69E6938], v522, v523, v524, v525, v1386, v1573);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v526, v527, v528, MEMORY[0x1E69E6938], v529, v530, v531, v532, v1387, v1574);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v533, v534, v535, MEMORY[0x1E69E6938], v536, v537, v538, v539, v1388, v1575);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v540, v541, v542, MEMORY[0x1E69E6938], v543, v544, v545, v546, v1389, v1576);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v547, v548, v549, MEMORY[0x1E69E6938], v550, v551, v552, v553, v1390, v1577);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v554, v555, v556, MEMORY[0x1E69E6938], v557, v558, v559, v560, v1391, v1578);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v561, v562, v563, MEMORY[0x1E69E6938], v564, v565, v566, v567, v1392, v1579);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v568, v569, v570, MEMORY[0x1E69E6938], v571, v572, v573, v574, v1393, v1580);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v575, v576, v577, MEMORY[0x1E69E6938], v578, v579, v580, v581, v1394, v1581);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v582, v583, v584, MEMORY[0x1E69E6938], v585, v586, v587, v588, v1395, v1582);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v589, v590, v591, MEMORY[0x1E69E6938], v592, v593, v594, v595, v1396, v1583);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v596, v597, v598, MEMORY[0x1E69E6938], v599, v600, v601, v602, v1397, v1584);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v603, v604, v605, MEMORY[0x1E69E6938], v606, v607, v608, v609, v1398, v1585);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v610, v611, v612, MEMORY[0x1E69E6938], v613, v614, v615, v616, v1399, v1586);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v617, v618, v619, MEMORY[0x1E69E6938], v620, v621, v622, v623, v1400, v1587);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v624, v625, v626, MEMORY[0x1E69E6938], v627, v628, v629, v630, v1401, v1588);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v631, v632, v633, MEMORY[0x1E69E6938], v634, v635, v636, v637, v1402, v1589);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v638, v639, v640, MEMORY[0x1E69E6938], v641, v642, v643, v644, v1403, v1590);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v645, v646, v647, MEMORY[0x1E69E6938], v648, v649, v650, v651, v1404, v1591);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v652, v653, v654, MEMORY[0x1E69E6938], v655, v656, v657, v658, v1405, v1592);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v659, v660, v661, MEMORY[0x1E69E6938], v662, v663, v664, v665, v1406, v1593);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v666, v667, v668, MEMORY[0x1E69E6938], v669, v670, v671, v672, v1407, v1594);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v673, v674, v675, MEMORY[0x1E69E6938], v676, v677, v678, v679, v1408, v1595);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v680, v681, v682, MEMORY[0x1E69E6938], v683, v684, v685, v686, v1409, v1596);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v687, v688, v689, MEMORY[0x1E69E6938], v690, v691, v692, v693, v1410, v1597);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v694, v695, v696, MEMORY[0x1E69E6938], v697, v698, v699, v700, v1411, v1598);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v701, v702, v703, MEMORY[0x1E69E6938], v704, v705, v706, v707, v1412, v1599);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v708, v709, v710, MEMORY[0x1E69E6938], v711, v712, v713, v714, v1413, v1600);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v715, v716, v717, MEMORY[0x1E69E6938], v718, v719, v720, v721, v1414, v1601);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v722, v723, v724, MEMORY[0x1E69E6938], v725, v726, v727, v728, v1415, v1602);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v729, v730, v731, MEMORY[0x1E69E6938], v732, v733, v734, v735, v1416, v1603);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v736, v737, v738, MEMORY[0x1E69E6938], v739, v740, v741, v742, v1417, v1604);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v743, v744, v745, MEMORY[0x1E69E6938], v746, v747, v748, v749, v1418, v1605);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v750, v751, v752, MEMORY[0x1E69E6938], v753, v754, v755, v756, v1419, v1606);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v757, v758, v759, MEMORY[0x1E69E6938], v760, v761, v762, v763, v1420, v1607);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v764, v765, v766, MEMORY[0x1E69E6938], v767, v768, v769, v770, v1421, v1608);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v771, v772, v773, MEMORY[0x1E69E6938], v774, v775, v776, v777, v1422, v1609);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v778, v779, v780, MEMORY[0x1E69E6938], v781, v782, v783, v784, v1423, v1610);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v785, v786, v787, MEMORY[0x1E69E6938], v788, v789, v790, v791, v1424, v1611);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v792, v793, v794, MEMORY[0x1E69E6938], v795, v796, v797, v798, v1425, v1612);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v799, v800, v801, MEMORY[0x1E69E6938], v802, v803, v804, v805, v1426, v1613);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v806, v807, v808, MEMORY[0x1E69E6938], v809, v810, v811, v812, v1427, v1614);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v813, v814, v815, MEMORY[0x1E69E6938], v816, v817, v818, v819, v1428, v1615);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v820, v821, v822, MEMORY[0x1E69E6938], v823, v824, v825, v826, v1429, v1616);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v827, v828, v829, MEMORY[0x1E69E6938], v830, v831, v832, v833, v1430, v1617);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v834, v835, v836, MEMORY[0x1E69E6938], v837, v838, v839, v840, v1431, v1618);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v841, v842, v843, MEMORY[0x1E69E6938], v844, v845, v846, v847, v1432, v1619);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v848, v849, v850, MEMORY[0x1E69E6938], v851, v852, v853, v854, v1433, v1620);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v855, v856, v857, MEMORY[0x1E69E6938], v858, v859, v860, v861, v1434, v1621);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v862, v863, v864, MEMORY[0x1E69E6938], v865, v866, v867, v868, v1435, v1622);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v869, v870, v871, MEMORY[0x1E69E6938], v872, v873, v874, v875, v1436, v1623);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v876, v877, v878, MEMORY[0x1E69E6938], v879, v880, v881, v882, v1437, v1624);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v883, v884, v885, MEMORY[0x1E69E6938], v886, v887, v888, v889, v1438, v1625);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v890, v891, v892, MEMORY[0x1E69E6938], v893, v894, v895, v896, v1439, v1626);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v897, v898, v899, MEMORY[0x1E69E6938], v900, v901, v902, v903, v1440, v1627);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v904, v905, v906, MEMORY[0x1E69E6938], v907, v908, v909, v910, v1441, v1628);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v911, v912, v913, MEMORY[0x1E69E6938], v914, v915, v916, v917, v1442, v1629);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v918, v919, v920, MEMORY[0x1E69E6938], v921, v922, v923, v924, v1443, v1630);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v925, v926, v927, MEMORY[0x1E69E6938], v928, v929, v930, v931, v1444, v1631);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v932, v933, v934, MEMORY[0x1E69E6938], v935, v936, v937, v938, v1445, v1632);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v939, v940, v941, MEMORY[0x1E69E6938], v942, v943, v944, v945, v1446, v1633);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v946, v947, v948, MEMORY[0x1E69E6938], v949, v950, v951, v952, v1447, v1634);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v953, v954, v955, MEMORY[0x1E69E6938], v956, v957, v958, v959, v1448, v1635);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v960, v961, v962, MEMORY[0x1E69E6938], v963, v964, v965, v966, v1449, v1636);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v967, v968, v969, MEMORY[0x1E69E6938], v970, v971, v972, v973, v1450, v1637);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v974, v975, v976, MEMORY[0x1E69E6938], v977, v978, v979, v980, v1451, v1638);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v981, v982, v983, MEMORY[0x1E69E6938], v984, v985, v986, v987, v1452, v1639);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v988, v989, v990, MEMORY[0x1E69E6938], v991, v992, v993, v994, v1453, v1640);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v995, v996, v997, MEMORY[0x1E69E6938], v998, v999, v1000, v1001, v1454, v1641);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1002, v1003, v1004, MEMORY[0x1E69E6938], v1005, v1006, v1007, v1008, v1455, v1642);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1009, v1010, v1011, MEMORY[0x1E69E6938], v1012, v1013, v1014, v1015, v1456, v1643);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1016, v1017, v1018, MEMORY[0x1E69E6938], v1019, v1020, v1021, v1022, v1457, v1644);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1023, v1024, v1025, MEMORY[0x1E69E6938], v1026, v1027, v1028, v1029, v1458, v1645);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1030, v1031, v1032, MEMORY[0x1E69E6938], v1033, v1034, v1035, v1036, v1459, v1646);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1037, v1038, v1039, MEMORY[0x1E69E6938], v1040, v1041, v1042, v1043, v1460, v1647);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1044, v1045, v1046, MEMORY[0x1E69E6938], v1047, v1048, v1049, v1050, v1461, v1648);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1051, v1052, v1053, MEMORY[0x1E69E6938], v1054, v1055, v1056, v1057, v1462, v1649);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1058, v1059, v1060, MEMORY[0x1E69E6938], v1061, v1062, v1063, v1064, v1463, v1650);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1065, v1066, v1067, MEMORY[0x1E69E6938], v1068, v1069, v1070, v1071, v1464, v1651);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1072, v1073, v1074, MEMORY[0x1E69E6938], v1075, v1076, v1077, v1078, v1465, v1652);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1079, v1080, v1081, MEMORY[0x1E69E6938], v1082, v1083, v1084, v1085, v1466, v1653);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1086, v1087, v1088, MEMORY[0x1E69E6938], v1089, v1090, v1091, v1092, v1467, v1654);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1093, v1094, v1095, MEMORY[0x1E69E6938], v1096, v1097, v1098, v1099, v1468, v1655);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1100, v1101, v1102, MEMORY[0x1E69E6938], v1103, v1104, v1105, v1106, v1469, v1656);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1107, v1108, v1109, MEMORY[0x1E69E6938], v1110, v1111, v1112, v1113, v1470, v1657);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1114, v1115, v1116, MEMORY[0x1E69E6938], v1117, v1118, v1119, v1120, v1471, v1658);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1121, v1122, v1123, MEMORY[0x1E69E6938], v1124, v1125, v1126, v1127, v1472, v1659);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1128, v1129, v1130, MEMORY[0x1E69E6938], v1131, v1132, v1133, v1134, v1473, v1660);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1135, v1136, v1137, MEMORY[0x1E69E6938], v1138, v1139, v1140, v1141, v1474, v1661);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1142, v1143, v1144, MEMORY[0x1E69E6938], v1145, v1146, v1147, v1148, v1475, v1662);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1149, v1150, v1151, MEMORY[0x1E69E6938], v1152, v1153, v1154, v1155, v1476, v1663);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1156, v1157, v1158, MEMORY[0x1E69E6938], v1159, v1160, v1161, v1162, v1477, v1664);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1163, v1164, v1165, MEMORY[0x1E69E6938], v1166, v1167, v1168, v1169, v1478, v1665);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1170, v1171, v1172, MEMORY[0x1E69E6938], v1173, v1174, v1175, v1176, v1479, v1666);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1177, v1178, v1179, MEMORY[0x1E69E6938], v1180, v1181, v1182, v1183, v1480, v1667);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1184, v1185, v1186, MEMORY[0x1E69E6938], v1187, v1188, v1189, v1190, v1481, v1668);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1191, v1192, v1193, MEMORY[0x1E69E6938], v1194, v1195, v1196, v1197, v1482, v1669);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1198, v1199, v1200, MEMORY[0x1E69E6938], v1201, v1202, v1203, v1204, v1483, v1670);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1205, v1206, v1207, MEMORY[0x1E69E6938], v1208, v1209, v1210, v1211, v1484, v1671);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1212, v1213, v1214, MEMORY[0x1E69E6938], v1215, v1216, v1217, v1218, v1485, v1672);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1219, v1220, v1221, MEMORY[0x1E69E6938], v1222, v1223, v1224, v1225, v1486, v1673);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1226, v1227, v1228, MEMORY[0x1E69E6938], v1229, v1230, v1231, v1232, v1487, v1674);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1233, v1234, v1235, MEMORY[0x1E69E6938], v1236, v1237, v1238, v1239, v1488, v1675);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1240, v1241, v1242, MEMORY[0x1E69E6938], v1243, v1244, v1245, v1246, v1489, v1676);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1247, v1248, v1249, MEMORY[0x1E69E6938], v1250, v1251, v1252, v1253, v1490, v1677);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1254, v1255, v1256, MEMORY[0x1E69E6938], v1257, v1258, v1259, v1260, v1491, v1678);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1261, v1262, v1263, MEMORY[0x1E69E6938], v1264, v1265, v1266, v1267, v1492, v1679);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1268, v1269, v1270, MEMORY[0x1E69E6938], v1271, v1272, v1273, v1274, v1493, v1680);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1275, v1276, v1277, MEMORY[0x1E69E6938], v1278, v1279, v1280, v1281, v1494, v1681);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1282, v1283, v1284, MEMORY[0x1E69E6938], v1285, v1286, v1287, v1288, v1495, v1682);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1289, v1290, v1291, MEMORY[0x1E69E6938], v1292, v1293, v1294, v1295, v1496, v1683);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_4(v1296, v1297, v1298, MEMORY[0x1E69E6938], v1299, v1300, v1301, v1302, v1497, v1684);
  OUTLINED_FUNCTION_23_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  v1310 = OUTLINED_FUNCTION_9_4(v1303, v1304, v1305, MEMORY[0x1E69E6938], v1306, v1307, v1308, v1309, v1498, v1685);

  if (v1310)
  {
    return sub_19774EF50();
  }

  else
  {
    return 0;
  }
}

void static SpotlightKeyPathMapper.encode(_:)()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBB8, &qword_19775DA38);
  OUTLINED_FUNCTION_7_4(v2, v3);
  OUTLINED_FUNCTION_24_1();
  if (v1)
  {
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v4, v5);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v6, v7);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v8, v9);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v10, v11);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v12, v13);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v14, v15);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v16, v17);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v18, v19);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v20, v21);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v22, v23);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v24, v25);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v26, v27);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v28, v29);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v30, v31);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v32, v33);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v34, v35);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v36, v37);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v38, v39);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v40, v41);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v42, v43);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v44, v45);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v46, v47);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v48, v49);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v50, v51);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v52, v53);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v54, v55);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v56, v57);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v58, v59);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v60, v61);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v62, v63);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v64, v65);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v66, v67);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v68, v69);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v70, v71);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v72, v73);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v74, v75);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v76, v77);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v78, v79);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v80, v81);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v82, v83);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v84, v85);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v86, v87);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v88, v89);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v90, v91);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v92, v93);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v94, v95);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v96, v97);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v98, v99);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v100, v101);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v102, v103);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v104, v105);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v106, v107);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v108, v109);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v110, v111);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v112, v113);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v114, v115);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v116, v117);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v118, v119);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v120, v121);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v122, v123);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v124, v125);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v126, v127);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v128, v129);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v130, v131);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v132, v133);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v134, v135);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v136, v137);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v138, v139);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v140, v141);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v142, v143);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v144, v145);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v146, v147);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v148, v149);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v150, v151);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v152, v153);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v154, v155);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v156, v157);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v158, v159);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v160, v161);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v162, v163);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v164, v165);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v166, v167);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v168, v169);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v170, v171);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v172, v173);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v174, v175);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v176, v177);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v178, v179);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v180, v181);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v182, v183);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v184, v185);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v186, v187);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v188, v189);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v190, v191);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v192, v193);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v194, v195);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v196, v197);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v198, v199);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v200, v201);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v202, v203);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v204, v205);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v206, v207);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v208, v209);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v210, v211);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v212, v213);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v214, v215);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v216, v217);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v218, v219);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v220, v221);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v222, v223);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v224, v225);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v226, v227);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v228, v229);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v230, v231);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v232, v233);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v234, v235);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v236, v237);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v238, v239);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v240, v241);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v242, v243);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v244, v245);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v246, v247);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v248, v249);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v250, v251);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v252, v253);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v254, v255);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v256, v257);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v258, v259);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v260, v261);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v262, v263);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v264, v265);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v266, v267);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v268, v269);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v270, v271);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v272, v273);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_4(v274, v275);
    OUTLINED_FUNCTION_24_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_7_4(v276, v277);
    OUTLINED_FUNCTION_23_1();
    if ((v0 & 1) == 0)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v278, v279);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v280, v281);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v282, v283);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v284, v285);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v286, v287);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v288, v289);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v290, v291);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v292, v293);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v294, v295);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v296, v297);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v298, v299);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v300, v301);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v302, v303);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v304, v305);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v306, v307);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v308, v309);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v310, v311);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v312, v313);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v314, v315);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v316, v317);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v318, v319);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v320, v321);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v322, v323);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v324, v325);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v326, v327);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v328, v329);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v330, v331);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v332, v333);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v334, v335);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v336, v337);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v338, v339);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v340, v341);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v342, v343);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v344, v345);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v346, v347);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v348, v349);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v350, v351);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v352, v353);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v354, v355);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v356, v357);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v358, v359);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v360, v361);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v362, v363);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v364, v365);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v366, v367);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v368, v369);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v370, v371);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v372, v373);
      OUTLINED_FUNCTION_23_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_4(v374, v375);
    }
  }
}

id sub_1976839A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileSize];
  *a2 = result;
  return result;
}

id sub_1976839E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageCount];
  *a2 = result;
  return result;
}

id sub_197683A20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageHeight];
  *a2 = result;
  return result;
}

id sub_197683A5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageWidth];
  *a2 = result;
  return result;
}

void sub_197683A98(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3FCE0, &unk_19775A220);
  v7 = *a2;
  v8 = sub_19774EAD0();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EA60();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setContentURL_];
}

void sub_197683BB4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3FCE0, &unk_19775A220);
  v7 = *a2;
  v8 = sub_19774EAD0();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EA60();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDarkThumbnailURL_];
}

void sub_197683CD0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setMetadataModificationDate_];
}

id sub_197683DEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rankingHint];
  *a2 = result;
  return result;
}

void sub_197683E28(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3FCE0, &unk_19775A220);
  v7 = *a2;
  v8 = sub_19774EAD0();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EA60();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setThumbnailURL_];
}

id sub_197683F44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserCreated];
  *a2 = result;
  return result;
}

id sub_197683F80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserCurated];
  *a2 = result;
  return result;
}

id sub_197683FBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserOwned];
  *a2 = result;
  return result;
}

id sub_197683FF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allDay];
  *a2 = result;
  return result;
}

void sub_197684034(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setCompletionDate_];
}

void sub_197684150(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDueDate_];
}

void sub_19768426C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setEndDate_];
}

void sub_197684388(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setStartDate_];
}

id sub_1976844A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 altitude];
  *a2 = result;
  return result;
}

id sub_1976844E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDOP];
  *a2 = result;
  return result;
}

void sub_19768451C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setGPSDateStamp_];
}

id sub_197684638@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestBearing];
  *a2 = result;
  return result;
}

id sub_197684674@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestDistance];
  *a2 = result;
  return result;
}

id sub_1976846B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestLatitude];
  *a2 = result;
  return result;
}

id sub_1976846EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestLongitude];
  *a2 = result;
  return result;
}

id sub_197684728@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDifferental];
  *a2 = result;
  return result;
}

id sub_197684764@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSTrack];
  *a2 = result;
  return result;
}

id sub_1976847A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 imageDirection];
  *a2 = result;
  return result;
}

id sub_1976847DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 latitude];
  *a2 = result;
  return result;
}

id sub_197684818@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longitude];
  *a2 = result;
  return result;
}

id sub_197684854@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 speed];
  *a2 = result;
  return result;
}

void sub_197684890(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setTimestamp_];
}

void sub_1976849AC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setContentCreationDate_];
}

void sub_197684AC8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setContentModificationDate_];
}

void sub_197684BE4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDownloadedDate_];
}

void sub_197684D00(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setLastUsedDate_];
}

void sub_197684E1C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setAddedDate_];
}

id sub_197684F38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryType];
  *a2 = result;
  return result;
}

id sub_197684F74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_197684FB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isStreamable];
  *a2 = result;
  return result;
}

id sub_197684FEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalBitRate];
  *a2 = result;
  return result;
}

id sub_197685028@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioBitRate];
  *a2 = result;
  return result;
}

id sub_197685064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBitRate];
  *a2 = result;
  return result;
}

id sub_1976850A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentRating];
  *a2 = result;
  return result;
}

id sub_1976850DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isLocal];
  *a2 = result;
  return result;
}

id sub_197685118@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playCount];
  *a2 = result;
  return result;
}

id sub_197685154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rating];
  *a2 = result;
  return result;
}

void sub_197685190(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3FCE0, &unk_19775A220);
  v7 = *a2;
  v8 = sub_19774EAD0();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EA60();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setURL_];
}

id sub_1976852AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioChannelCount];
  *a2 = result;
  return result;
}

id sub_1976852E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioSampleRate];
  *a2 = result;
  return result;
}

id sub_197685324@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioTrackNumber];
  *a2 = result;
  return result;
}

void sub_197685360(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v7 = *a2;
  v8 = sub_19774EB80();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774EB30();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setRecordingDate_];
}

id sub_19768547C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tempo];
  *a2 = result;
  return result;
}

id sub_1976854B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isGeneralMIDISequence];
  *a2 = result;
  return result;
}

id sub_1976854F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ISOSpeed];
  *a2 = result;
  return result;
}

id sub_197685530@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aperture];
  *a2 = result;
  return result;
}

id sub_19768556C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bitsPerSample];
  *a2 = result;
  return result;
}

id sub_1976855A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isFlashOn];
  *a2 = result;
  return result;
}

id sub_1976855E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 focalLength];
  *a2 = result;
  return result;
}

id sub_197685620@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isFocalLength35mm];
  *a2 = result;
  return result;
}

id sub_19768565C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orientation];
  *a2 = result;
  return result;
}

id sub_197685698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelCount];
  *a2 = result;
  return result;
}

id sub_1976856D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelHeight];
  *a2 = result;
  return result;
}

id sub_197685710@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelWidth];
  *a2 = result;
  return result;
}

id sub_19768574C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 whiteBalance];
  *a2 = result;
  return result;
}

id sub_197685788@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposureMode];
  *a2 = result;
  return result;
}

id sub_1976857C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposureTime];
  *a2 = result;
  return result;
}

id sub_197685800@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fNumber];
  *a2 = result;
  return result;
}

id sub_19768583C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hasAlphaChannel];
  *a2 = result;
  return result;
}

id sub_197685878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxAperture];
  *a2 = result;
  return result;
}

id sub_1976858B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isRedEyeOn];
  *a2 = result;
  return result;
}

id sub_1976858F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolutionHeightDPI];
  *a2 = result;
  return result;
}

id sub_19768592C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolutionWidthDPI];
  *a2 = result;
  return result;
}

void sub_197685968(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_19774EB20();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *v4 = v7;
  v4[1] = v9;
}

void sub_1976859C0()
{
  OUTLINED_FUNCTION_79();
  if (v1 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v0 = sub_19774EB10();
    v7 = v0;
  }

  OUTLINED_FUNCTION_28(v0, v1, v7, v2, v3, v4, v5, v6, v8, v9);
}

void sub_197685A20(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 emailHeaders];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBC8, &qword_19775DA68);
    v5 = sub_19774EE30();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_197685AAC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBC8, &qword_19775DA68);
    v3 = sub_19774EE20();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEmailHeaders_];
}

id sub_197685B40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isLikelyJunk];
  *a2 = result;
  return result;
}

void sub_197685B7C(void **a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    a5(0);
    v9 = sub_19774F120();
  }

  else
  {
    v9 = 0;
  }

  *v5 = v9;
}

void sub_197685BE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    (a5)(0, a2, a3, a4);
    a1 = sub_19774F110();
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_28(a1, a2, v8, a4, a5, a6, a7, a8, v9, v10);
}

id sub_197685C5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 containerOrder];
  *a2 = result;
  return result;
}

void sub_197685C98(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_19774EF50();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *v4 = v7;
  v4[1] = v9;
}

void sub_197685CF0()
{
  OUTLINED_FUNCTION_79();
  if (v1)
  {
    v0 = sub_19774EF20();
    v7 = v0;
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_28(v0, v1, v7, v2, v3, v4, v5, v6, v8, v9);
}

void sub_197685D48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actionIdentifiers];
  v4 = sub_19774F120();

  *a2 = v4;
}

void sub_197685DA4(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_19774F110();
  [v2 setActionIdentifiers_];
}

uint64_t sub_197685E08@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_197685E9C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBD0, &qword_19775DA70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_197647660(a1, &v10 - v5, &qword_1EAF3FBD0, &qword_19775DA70);
  v7 = *a2;
  v8 = sub_19774ED30();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_19774ED20();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setSharedItemContentType_];
}

id sub_197685FB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportsNavigation];
  *a2 = result;
  return result;
}

id sub_197685FF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportsPhoneCall];
  *a2 = result;
  return result;
}

void sub_197686030(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_30_0(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_19774F120();
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;
}

void sub_197686088(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (v8)
  {
    v8 = sub_19774F110();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_28(v8, a2, v9, a4, a5, a6, a7, a8, v10, v11);
}

uint64_t getEnumTagSinglePayload for SpotlightKeyPathMapper(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SpotlightKeyPathMapper(_BYTE *result, int a2, int a3)
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

unint64_t sub_197686A98()
{
  result = qword_1EAF3FBC0;
  if (!qword_1EAF3FBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF3FBC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, uint64_t a2)
{

  return sub_19774F7E0();
}

id OUTLINED_FUNCTION_28(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

id OUTLINED_FUNCTION_30_0(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = *a1;
  v6 = *a4;

  return [v5 v6];
}

uint64_t static UTType.intentPerson.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBD0, &qword_19775DA70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() personValueType];
  v4 = [v3 contentType];

  if (v4)
  {
    v5 = [v4 contentType];

    sub_19774EF50();
    v6 = sub_19774ED30();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
    return sub_19774ED10();
  }

  else
  {
    result = sub_19774F710();
    __break(1u);
  }

  return result;
}

id LNConfigurableQueryRequest.init(query:target:options:)(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  switch(a3 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_0_12();
      sub_197648238(0, &qword_1EAF3FA50, off_1E74AF590);

      v17 = sub_1976787C4(a1, a2);
      break;
    case 2uLL:
      OUTLINED_FUNCTION_0_12();
      if (a3)
      {

        v18 = a1;
        v19 = 0;
      }

      else
      {
        v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v22 = a1;
        v19 = [v21 initWithInteger_];
      }

      v23 = objc_allocWithZone(LNPropertyQueryRequestType);
      v17 = sub_197678EB0(a1, a4, v19);
      break;
    case 3uLL:
      OUTLINED_FUNCTION_0_12();
      sub_197648238(0, &qword_1EAF3FA48, off_1E74AF568);

      v17 = sub_197678838(v20);
      break;
    case 4uLL:
      OUTLINED_FUNCTION_0_12();
      v17 = [objc_opt_self() queryRequest];
      break;
    default:
      OUTLINED_FUNCTION_0_12();
      sub_197648238(0, &qword_1EAF3FA58, off_1E74AF468);

      v17 = sub_1976787A8(v16);
      break;
  }

  v24 = v17;
  if (a8)
  {
    v25 = objc_allocWithZone(LNQueryRequestParameterTarget);
    v26 = a5;

    v27 = sub_197678F58(v26, v9, v10);
  }

  else
  {
    v27 = [objc_allocWithZone(LNQueryRequestDefaultQueryTarget) initWithEntityMetadata_];
  }

  v28 = v27;
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = a9;
  v31 = [v29 initWithQueryType:v24 target:v28 options:v30];

  sub_197687768(a5, v9, v10, a8 & 1);
  sub_1976877B4(a1, a2, a3);

  return v31;
}

uint64_t LNConfigurableQueryRequest.requestType.getter()
{
  v1 = [v0 queryType];
  v2 = objc_opt_self();
  if (OUTLINED_FUNCTION_11_1(v2))
  {

    v3 = 0;
    OUTLINED_FUNCTION_1_12();
    return v3;
  }

  v4 = objc_opt_self();
  if (OUTLINED_FUNCTION_11_1(v4))
  {

    OUTLINED_FUNCTION_1_12();
    return 1;
  }

  v5 = objc_opt_self();
  if (OUTLINED_FUNCTION_11_1(v5))
  {

    OUTLINED_FUNCTION_1_12();
    return 2;
  }

  v6 = objc_opt_self();
  v7 = OUTLINED_FUNCTION_11_1(v6);
  if (v7)
  {
    v8 = [v7 identifiers];
    sub_197648238(0, &qword_1EAF3F9B0, 0x1E69AC7E0);
    v3 = sub_19774F120();

    return v3;
  }

  v9 = objc_opt_self();
  v10 = OUTLINED_FUNCTION_11_1(v9);
  if (v10)
  {
    v11 = [v10 queryString];
    v3 = sub_19774EF50();

    return v3;
  }

  v12 = objc_opt_self();
  v13 = OUTLINED_FUNCTION_11_1(v12);
  if (v13)
  {
    v14 = v13;
    v3 = [v13 propertyQuery];
    v15 = [v14 maximumResultCount];
    v16 = v15;
    if (v15)
    {
      [v15 integerValue];
    }

    v20 = [v14 sortingOptions];
    if (v20)
    {
      v21 = v20;
      sub_197648238(0, &qword_1EAF3FA68, off_1E74AF510);
      sub_19774F120();
    }

    return v3;
  }

  v17 = objc_opt_self();
  v18 = OUTLINED_FUNCTION_11_1(v17);
  if (v18)
  {
    v19 = [v18 items];
    sub_197648238(0, &qword_1EAF3FA60, 0x1E6964E80);
    v3 = sub_19774F120();

    return v3;
  }

  sub_19774F5B0();

  v23 = [v0 queryType];
  v24 = [v23 description];
  v25 = sub_19774EF50();
  v27 = v26;

  MEMORY[0x19A8E4C40](v25, v27);

  result = OUTLINED_FUNCTION_3_6("Fatal error", v28, v29, 0xD000000000000016, 0x8000000197760F50, "LinkServices/LNConfigurableQueryRequest_Deprecated.swift");
  __break(1u);
  return result;
}

id LNConfigurableQueryRequest.target.getter()
{
  v1 = v0;
  v2 = [v0 target];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 entityMetadata];

    return v4;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v4 = [v5 actionMetadata];
    v7 = [v6 parameterIdentifier];
    sub_19774EF50();

    return v4;
  }

  sub_19774F5B0();

  v9 = [v1 target];
  v10 = [v9 description];
  v11 = sub_19774EF50();
  v13 = v12;

  MEMORY[0x19A8E4C40](v11, v13);

  result = OUTLINED_FUNCTION_3_6("Fatal error", v14, v15, 0xD000000000000015, 0x8000000197760F70, "LinkServices/LNConfigurableQueryRequest_Deprecated.swift");
  __break(1u);
  return result;
}

void sub_197687768(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

void *sub_1976877B4(void *result, id a2, unint64_t a3)
{
  switch(a3 >> 61)
  {
    case 0uLL:
    case 3uLL:

      goto LABEL_4;
    case 1uLL:

      goto LABEL_4;
    case 2uLL:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_So26LNConfigurableQueryRequestC12LinkServicesE0B4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_19768785C(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_19775DA90;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1976878AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_1976878EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_197687950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_1976496B4(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x8000000197761460, v0, v1);
}

uint64_t sub_1976879D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F960, &unk_19775FC00);
  v1 = sub_1976496B4(&qword_1EAF3F0A8, &qword_1EAF3F960, &unk_19775FC00);
  return sub_197649708(0x446465646F636E65, 0xEB00000000617461, v0, v1);
}

uint64_t sub_197687A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = sub_197649284(a3, a4);
  v11 = v10;
  if (qword_1ED696E60 != -1)
  {
    OUTLINED_FUNCTION_1_13(&qword_1ED696E60);
  }

  OUTLINED_FUNCTION_2_9(v45);
  OUTLINED_FUNCTION_2_9(__src);
  sub_19764DFC8(v45, v41);
  if (qword_1ED696D68 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAF3EE60;
  v13 = *algn_1EAF3EE68;
  v14 = qword_1EAF3EE70;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F960, &unk_19775FC00);
  v44 = &off_1F0BBB748;
  v38 = v12;
  v42[0] = v12;
  v42[1] = v13;
  v42[2] = v14;

  sub_19764B838(v42, MEMORY[0x1E69E7CC0], &unk_1F0BBACF0, &off_1F0BBAAE8);
  memcpy(__dst, __src, sizeof(__dst));
  sub_19764BBBC(__dst);
  __swift_destroy_boxed_opaque_existential_0(v42);
  memcpy(v47, v41, 0xB0uLL);
  if (qword_1ED696E58 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1ED696E58);
  }

  __src[0] = a1;
  __src[1] = a2;
  v15 = sub_1976B7FC0();
  v17 = v16;
  v19 = v18;
  if (qword_1ED696D60 != -1)
  {
    swift_once();
  }

  __src[0] = v9;
  __src[1] = v11;
  v20 = sub_1976B7FC0();
  v22 = v21;
  v24 = v23;

  v25 = sub_1976B9D9C(v15, v17, v19, v20, v22, v24);
  v27 = v26;
  v29 = v28;

  v43 = &unk_1F0BBACF0;
  v44 = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v42[0] = swift_allocObject();
  memcpy(__src, v47, sizeof(__src));
  sub_1976BB434(v25, v27, v29, &unk_1F0BBACF0, &off_1F0BBAB00, v30, v31, v32, v38, a5, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13]);

  sub_19764BBBC(v47);
  v33 = v48;
  v34 = sub_1976C0920(v42);
  __swift_destroy_boxed_opaque_existential_0(v42);
  if (!v33 && v34)
  {
    sub_19765272C();

    v35 = v41[0];
    v36 = v41[1];
    v34 = sub_197687E64(v41[0], v41[1]);
    sub_197652DCC(v35, v36);
  }

  return v34;
}

uint64_t sub_197687E64(uint64_t a1, uint64_t a2)
{
  sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBF0, &qword_19775DBF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19775A850;
  *(v3 + 32) = sub_197648238(0, &qword_1ED696E38, 0x1E695DEC8);
  *(v3 + 40) = sub_197648238(0, &qword_1ED696EF8, off_1E74AF338);
  sub_19774F340();

  if (!v2)
  {
    if (v5[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FDF0, &qword_19775DF20);
      if (swift_dynamicCast())
      {
        return v5[5];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_19766A0E8(v5);
      return 0;
    }
  }

  return result;
}

void sub_197687FB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_19774EB80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_197689BAC(a1, &qword_1EAF3F8F0, &qword_19775DA60);
    sub_197689660(v8);

    sub_197689BAC(v8, &qword_1EAF3F8F0, &qword_19775DA60);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_19768983C(v12, a2, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }
}

id sub_19768816C()
{
  result = [objc_allocWithZone(type metadata accessor for ExtensionUndoAssertionCache()) init];
  qword_1EAF3FC00 = result;
  return result;
}

id static ExtensionUndoAssertionCache.shared.getter()
{
  if (qword_1EAF3F490 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAF3FC00;

  return v1;
}

id sub_197688220()
{
  sub_197648238(0, &qword_1EAF3FC18, 0x1E69C7548);
  sub_19774EB80();
  sub_1976895F8();
  v1 = sub_19774EE40();
  v2 = &v0[OBJC_IVAR___LNExtensionUndoAssertionCache_assertions];
  *v2 = 0;
  *(v2 + 1) = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ExtensionUndoAssertionCache();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1976882E0(uint64_t a1)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR___LNExtensionUndoAssertionCache_assertions;
  os_unfair_lock_lock(v3);
  sub_197688354((v3 + 8), a1, &v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

void sub_197688354(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v47 = a3;
  v53 = a2;
  v57 = sub_19774EB80();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC40, &qword_19775DC88);
  v8 = MEMORY[0x1EEE9AC00](v55);
  v51 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v43 = (&v42 - v15);
  v46 = a1;
  v16 = *a1;
  v17 = *a1 + 64;
  v18 = 1 << *(*a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(*a1 + 64);
  v21 = (v18 + 63) >> 6;
  v49 = v4 + 16;
  v52 = v4;
  v54 = v4 + 8;
  v56 = v16;

  v22 = 0;
  v48 = v17;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_8:
      v24 = __clz(__rbit64(v20)) | (v23 << 6);
      v25 = v55;
      v26 = *(*(v56 + 48) + 8 * v24);
      v27 = v52;
      v28 = v50;
      (*(v52 + 16))(&v50[*(v55 + 48)], *(v56 + 56) + *(v52 + 72) * v24, v57);
      *v28 = v26;
      sub_197689ACC(v28, v12);
      v29 = v51;
      sub_197689B3C(v12, v51);
      v30 = v12;
      v31 = *v29;
      v32 = *(v25 + 48);
      v33 = v26;
      v34 = [v31 target];

      LOBYTE(v31) = [v34 matchesProcess_];
      v35 = *(v27 + 8);
      v35(v29 + v32, v57);
      if (v31)
      {
        break;
      }

      v20 &= v20 - 1;
      sub_197689BAC(v30, &qword_1EAF3FC40, &qword_19775DC88);
      v22 = v23;
      v12 = v30;
      v17 = v48;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v37 = v43;
    sub_197689ACC(v30, v43);
    v38 = *v37;
    v39 = v57;
    v35(v37 + *(v55 + 48), v57);
    v40 = v45;
    sub_19774EB60();
    v41 = v44;
    sub_19774EB70();
    v35(v40, v39);
    v36 = 1;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v39);
    sub_197687FB4(v41, v38);
LABEL_12:
    *v47 = v36;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        v36 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1976887C4(void *a1)
{
  v2 = sub_19774EB80();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_19774EB60();
  sub_19774EB70();
  v11 = *(v4 + 8);
  v11(v8, v2);
  sub_197688984(a1, v10);
  return (v11)(v10, v2);
}

void sub_197688984(void *a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &aBlock[-1] - v6;
  v8 = sub_19774EB80();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a2, v8);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(&v16[v15], v14, v8);
  aBlock[4] = sub_1976897BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976891F8;
  aBlock[3] = &block_descriptor_8;
  v17 = _Block_copy(aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v17);
  aBlock[0] = 0;
  if ([a1 acquireWithError_])
  {
    v18 = (v2 + OBJC_IVAR___LNExtensionUndoAssertionCache_assertions);
    v19 = aBlock[0];
    os_unfair_lock_lock(v18);
    v20 = a1;
    sub_19774EB60();
    sub_19774EB70();
    (*(v10 + 8))(v14, v8);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    sub_197687FB4(v7, v20);
    os_unfair_lock_unlock(v18);
  }

  else
  {
    v21 = aBlock[0];
    sub_19774E9F0();

    swift_willThrow();
  }
}

void sub_197688C70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19774EB80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF3F490 != -1)
  {
    swift_once();
  }

  sub_197689284(a1);
  sub_19774EB60();
  v9 = sub_19774EB40();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = [a1 explanation];
    v11 = sub_19774EF50();
    v13 = v12;

    v14 = [a1 target];
    v15 = sub_197689A5C(a1);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v18 = sub_197648278(v11, v13, v14, v16);
    sub_197688984(v18, a3);
    if (qword_1EAF3F420 != -1)
    {
      swift_once();
    }

    v26 = sub_19774ED60();
    __swift_project_value_buffer(v26, qword_1EAF43E00);
    v27 = a1;
    v28 = sub_19774ED40();
    v29 = sub_19774F290();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = [v27 target];
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_19763D000, v28, v29, "Assertion for extension %@ containing undo managers has been re-acquired", v30, 0xCu);
      sub_197689BAC(v31, &qword_1EAF3FC38, &qword_19775DC80);
      MEMORY[0x19A8E67F0](v31, -1, -1);
      MEMORY[0x19A8E67F0](v30, -1, -1);
    }
  }

  else
  {
    if (qword_1EAF3F420 != -1)
    {
      swift_once();
    }

    v19 = sub_19774ED60();
    __swift_project_value_buffer(v19, qword_1EAF43E00);
    v20 = a1;
    v21 = sub_19774ED40();
    v22 = sub_19774F290();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = [v20 target];
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_19763D000, v21, v22, "Assertion for extension %@ containing undo managers has expired and invalidated", v23, 0xCu);
      sub_197689BAC(v24, &qword_1EAF3FC38, &qword_19775DC80);
      MEMORY[0x19A8E67F0](v24, -1, -1);
      MEMORY[0x19A8E67F0](v23, -1, -1);
    }
  }
}

void sub_1976891F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_197689284(void *a1)
{
  v3 = (v1 + OBJC_IVAR___LNExtensionUndoAssertionCache_assertions);
  os_unfair_lock_lock(v3);
  sub_1976892EC(&v3[2], a1);

  os_unfair_lock_unlock(v3);
}

void sub_1976892EC(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  sub_197689660(v9 - v4);
  sub_197689BAC(v5, &qword_1EAF3F8F0, &qword_19775DA60);
  v9[0] = 0;
  if ([a2 invalidateSyncWithError_])
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    v8 = sub_19774E9F0();

    swift_willThrow();
  }
}

id ExtensionUndoAssertionCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionUndoAssertionCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1976895F8()
{
  result = qword_1EAF3FC20;
  if (!qword_1EAF3FC20)
  {
    sub_197648238(255, &qword_1EAF3FC18, 0x1E69C7548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3FC20);
  }

  return result;
}

uint64_t sub_197689660@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19768F3E4();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC30, &qword_19775DC78);
    sub_19774F6F0();

    v6 = *(v12 + 56);
    v7 = sub_19774EB80();
    (*(*(v7 - 8) + 32))(a1, v6 + *(*(v7 - 8) + 72) * v5, v7);
    sub_197648238(0, &qword_1EAF3FC18, 0x1E69C7548);
    sub_1976895F8();
    sub_19774F700();
    *v1 = v12;
    v8 = a1;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = sub_19774EB80();
    v8 = a1;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

void sub_1976897BC(void *a1, uint64_t a2)
{
  v5 = *(sub_19774EB80() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_197688C70(a1, a2, v6);
}

id sub_19768983C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_19768F3E4();
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC30, &qword_19775DC78);
  if ((sub_19774F6F0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_19768F3E4();
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_197648238(0, &qword_1EAF3FC18, 0x1E69C7548);
    result = sub_19774F8A0();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = v13[7];
    v15 = sub_19774EB80();
    v16 = *(v15 - 8);
    v17 = *(v16 + 40);
    v18 = v15;
    v19 = v14 + *(v16 + 72) * v9;

    return v17(v19, a1, v18);
  }

  else
  {
    sub_1976899B0(v9, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_1976899B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_19774EB80();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_197689A5C(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_197648238(0, &qword_1ED696D38, 0x1E69C7550);
  v3 = sub_19774F120();

  return v3;
}

uint64_t sub_197689ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC40, &qword_19775DC88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_197689B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC40, &qword_19775DC88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197689BAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_14();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_197689C00()
{
  qword_1EAF43A18 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_197689C3C(os_activity_t description, int a2, char a3, void *dso)
{
  v5 = description;
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (qword_1EAF3EDB8 == -1)
      {
LABEL_4:
        v6 = qword_1EAF43A18;

        return _os_activity_create(dso, v5, v6, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      OUTLINED_FUNCTION_0_15(&qword_1EAF3EDB8);
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (description >> 32)
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v8 = (description & 0x3F) << 8;
    v9 = (description >> 6) + v8 + 33217;
    v10 = (v8 | (description >> 6) & 0x3F) << 8;
    v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v12 = (description >> 12) + v10 + 8487393;
    if (description >> 16)
    {
      v7 = v11;
    }

    else
    {
      v7 = v12;
    }

    if (description < 0x800)
    {
      v7 = v9;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v7 = description + 1;
LABEL_12:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (qword_1EAF3EDB8 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_1EAF3EDB8);
  }

  return _os_activity_create(dso, descriptiona, qword_1EAF43A18, OS_ACTIVITY_FLAG_DEFAULT);
}

BOOL sub_197689DFC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_197689EAC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x19A8E5210](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

id sub_197689FA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_opt_self();
  v5 = sub_19774EF20();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v10[4] = sub_19768FB00;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_19766A054;
  v10[3] = &block_descriptor_21_2;
  v7 = _Block_copy(v10);

  v8 = [v4 validateEntitlement:v5 forCurrentTaskWithValidator:v7];
  _Block_release(v7);

  return v8;
}

uint64_t sub_19768A0AC(uint64_t a1, int a2)
{
  sub_19768FBC8(a1, v5, &unk_1EAF3F8C0, &qword_19775AA48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F8C0, &qword_19775AA48);
  return swift_dynamicCast() & (v4 ^ a2 ^ 1);
}

uint64_t sub_19768A138(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_19768A1AC(uint64_t a1, uint64_t a2)
{
  sub_197673508(a2, *(*(a1 + 64) + 40));

  return swift_continuation_throwingResume();
}

id sub_19768A2B4()
{
  OUTLINED_FUNCTION_43_1();
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v2 = sub_19774EA60();
  v3 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = v2;
  v3[24] = 0;
  v7.receiver = v0;
  v7.super_class = LNURLLaunchRequest;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  sub_19774EAD0();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v1);
  return v4;
}

id sub_19768A3F8()
{
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v1 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *v1 = v2;
  *(v1 + 1) = v3;
  *(v1 + 2) = 0;
  v1[24] = 1;
  v5.receiver = v0;
  v5.super_class = LNURLLaunchRequest;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_19768A4B4()
{
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v1 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *v1 = v2;
  *(v1 + 1) = v3;
  *(v1 + 2) = v4;
  v1[24] = 2;
  v6.receiver = v0;
  v6.super_class = LNURLLaunchRequest;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_19768A57C()
{
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v1 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = v2;
  v1[24] = 3;
  v4.receiver = v0;
  v4.super_class = LNURLLaunchRequest;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_19768A61C()
{
  *(v1 + 144) = v0;
  OUTLINED_FUNCTION_41_1();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_19768A648()
{
  OUTLINED_FUNCTION_18_0();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_19768A75C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCB8, &qword_19775DD10);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19768A8E4;
  v0[13] = &block_descriptor_29;
  v0[14] = v2;
  [v1 performValidatingURLScheme:0 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19768A75C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19768A880()
{
  OUTLINED_FUNCTION_18_0();
  swift_willThrow();
  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_19768A8E4(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_19768A138(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_19768A9C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_19768FC94;

  return sub_19768A61C();
}

uint64_t sub_19768AA6C()
{
  OUTLINED_FUNCTION_9_2();
  *(v1 + 744) = v0;
  *(v1 + 1024) = v2;
  *(v1 + 752) = swift_getObjectType();
  v3 = sub_19774ED60();
  *(v1 + 760) = v3;
  *(v1 + 768) = *(v3 - 8);
  *(v1 + 776) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  v4 = sub_19774EAD0();
  *(v1 + 816) = v4;
  *(v1 + 824) = *(v4 - 8);
  *(v1 + 832) = swift_task_alloc();
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();
  *(v1 + 856) = swift_task_alloc();
  *(v1 + 864) = swift_task_alloc();
  *(v1 + 872) = swift_task_alloc();
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19768B7B4()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 936) = *(v3 + 176);
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19768C058()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 960) = *(v3 + 112);
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19768C90C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1000) = *(v3 + 48);
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19768CA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54_0();
  v32 = *MEMORY[0x1E69E9840];
  v31 = v14[124];
  v15 = v14[123];
  v16 = v14[122];
  v17 = v14[121];
  v18 = v14[97];
  v19 = v14[96];
  v20 = v14[95];

  (*(v19 + 8))(v18, v20);
  v21 = OUTLINED_FUNCTION_27();
  v17(v21);

  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_53_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_19768CB8C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18_3();
  *v5 = v4;
  *(v6 + 1016) = v0;

  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19768CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54_0();
  v14 = OUTLINED_FUNCTION_29_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_27();
  v17(v16);
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_53_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19768CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_55_0();
  v34 = *MEMORY[0x1E69E9840];
  v17 = v16[114];
  v18 = v16[113];
  v19 = v16[111];
  v20 = v16[110];
  swift_willThrow();

  OUTLINED_FUNCTION_0_16();
  v32 = v22;
  v33 = v21;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_52_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, v34, a14, a15, a16);
}

uint64_t sub_19768CEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_55_0();
  v35 = *MEMORY[0x1E69E9840];
  v17 = v16[119];
  v18 = v16[118];
  v19 = v16[116];
  v20 = v16[115];
  v21 = v16[112];
  swift_willThrow();

  OUTLINED_FUNCTION_0_16();
  v33 = v23;
  v34 = v22;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_52_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, a12, v35, a14, a15, a16);
}

uint64_t sub_19768CFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_55_0();
  v38 = *MEMORY[0x1E69E9840];
  v34 = v16[123];
  v36 = v16[124];
  v17 = v16[122];
  v18 = v16[121];
  v19 = v16[97];
  v20 = v16[96];
  v21 = v16[95];
  swift_willThrow();

  (*(v20 + 8))(v19, v21);
  v22 = OUTLINED_FUNCTION_27();
  v18(v22);

  OUTLINED_FUNCTION_0_16();
  v35 = v24;
  v37 = v23;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_52_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, v37, a12, v38, a14, a15, a16);
}

uint64_t sub_19768D148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54_0();
  v14 = OUTLINED_FUNCTION_29_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_27();
  v17(v16);
  OUTLINED_FUNCTION_0_16();
  v29 = v19;
  v30 = v18;

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_53_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, a11, a12, a13, a14);
}

uint64_t sub_19768D250(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_19768A138(v12, a3);
  }

  if (a2)
  {
    sub_19774EA90();
    v14 = sub_19774EAD0();
    v15 = 0;
  }

  else
  {
    v14 = sub_19774EAD0();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v15, 1, v14);
  sub_197673508(v9, v11);
  return sub_19768A1AC(v12, v11);
}

uint64_t sub_19768D37C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCB0, &qword_19775DCF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_19774E8F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19774E8D0();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_197665DE0(v2, &qword_1EAF3FCB0, &qword_19775DCF0);
LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_19774E8E0();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_11;
  }

  v8 = sub_19774EFC0();
  v10 = v9;

  v11 = v8 == 1886680168 && v10 == 0xE400000000000000;
  if (v11 || (sub_19774F7E0() & 1) != 0)
  {
    (*(v4 + 8))(v6, v3);

    v12 = 1;
  }

  else
  {
    if (v8 == 0x7370747468 && v10 == 0xE500000000000000)
    {

      v12 = 1;
    }

    else
    {
      v12 = sub_19774F7E0();
    }

    (*(v4 + 8))(v6, v3);
  }

  return v12 & 1;
}

uint64_t sub_19768D5E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_19768A138(v5, a3);
  }

  if (a2)
  {
    v7 = sub_19774EE30();
  }

  else
  {
    v7 = 0;
  }

  return sub_19768A204(v5, v7);
}

uint64_t sub_19768D678(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_19774EAD0();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = sub_19774ED60();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19768D7C0, 0, 0);
}

uint64_t sub_19768D7C0()
{
  if ((sub_197689FA4(0xD000000000000026, 0x8000000197761700, 1) & 1) == 0)
  {
    OUTLINED_FUNCTION_51_1();
    sub_19774ED50();
    v18 = sub_19774ED40();
    v19 = sub_19774F2B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_19763D000, v18, v19, "This process can't open sensitive URLs, falling back to the default app launch request", v20, 2u);
      MEMORY[0x19A8E67F0](v20, -1, -1);
    }

    v21 = v0[36];

    v22 = OUTLINED_FUNCTION_33_2();
    v23(v22);
    v24 = objc_allocWithZone(MEMORY[0x1E69AA860]);
    v25 = sub_19768EA88(v21);
    v0[40] = v25;
    v28 = v25;
    v0[2] = v0;
    v0[7] = v0 + 42;
    v0[3] = sub_19768DC3C;
    v29 = swift_continuation_init();
    v0[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCA0, &qword_19775DCE0);
    v0[23] = MEMORY[0x1E69E9820];
    v0[24] = 1107296256;
    v0[25] = sub_19768E7C0;
    v0[26] = &block_descriptor_14;
    v0[27] = v29;
    [v28 performWithCompletionHandler_];
    v10 = v0 + 2;

    return MEMORY[0x1EEE6DEC8](v10);
  }

  v1 = v0[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCA8, &qword_19775DCE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  *(inited + 32) = sub_19774EF50();
  *(inited + 40) = v3;
  *(inited + 48) = 1;
  *(inited + 56) = sub_19774EF50();
  *(inited + 64) = v4;
  *(inited + 72) = 1;
  v5 = [v1 doNotDismissSiriKey];
  v6 = sub_19774EF50();
  v8 = v7;

  *(inited + 80) = v6;
  *(inited + 88) = v8;
  *(inited + 96) = [v1 dismissSiri] ^ 1;
  v9 = sub_19774EE40();
  v10 = [objc_opt_self() defaultWorkspace];
  if (!v10)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v10);
  }

  v11 = v10;
  v12 = sub_19774EA60();
  v13 = sub_19768E838(v9);

  v0[31] = 0;
  v14 = sub_19768F8E0(v12, v13, (v0 + 31), v11);

  v15 = v0[31];
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v26 = v15;
    sub_19774E9F0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_12_3();

  return v17();
}

uint64_t sub_19768DC3C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19768DD68()
{
  OUTLINED_FUNCTION_18_0();

  v1 = OUTLINED_FUNCTION_27();
  v2(v1);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_19768DE24(uint64_t a1)
{
  v2 = *(v1 + 320);
  swift_willThrow();

  v3 = OUTLINED_FUNCTION_27();
  v4(v3);

  OUTLINED_FUNCTION_12_3();

  return v5();
}

uint64_t sub_19768DF74(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_19768E030;

  return sub_19768AA6C();
}

uint64_t sub_19768E030()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *v1;
  OUTLINED_FUNCTION_18_3();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_18_3();
  *v8 = v7;

  if (v0)
  {
    if (v5)
    {
      v9 = *(v2 + 24);
      v10 = sub_19774E9E0();

      (v9)[2](v9, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v11 = *(v2 + 24);
    v11[2](v11, 0);
    _Block_release(v11);
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

BOOL sub_19768E1BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCB0, &qword_19775DCF0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-v5];
  sub_19774E8D0();
  sub_19768FBC8(v6, v4, &qword_1EAF3FCB0, &qword_19775DCF0);
  v7 = sub_19774E8F0();
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    sub_197665DE0(v6, &qword_1EAF3FCB0, &qword_19775DCF0);
    v8 = v4;
LABEL_6:
    sub_197665DE0(v8, &qword_1EAF3FCB0, &qword_19775DCF0);
    return 0;
  }

  sub_19774E8E0();
  v10 = v9;
  (*(*(v7 - 8) + 8))(v4, v7);
  if (!v10)
  {
    v8 = v6;
    goto LABEL_6;
  }

  v11 = sub_19774EFC0();
  v13 = v12;

  v18[0] = v11;
  v18[1] = v13;
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v18;
  v15 = sub_197689DFC(sub_19766EC58, &v17[-32], &unk_1F0BB83F8);
  sub_197665DE0(v6, &qword_1EAF3FCB0, &qword_19775DCF0);

  return v15;
}

uint64_t sub_19768E504()
{
  v1 = *(v0 + OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey);

  return v1;
}

id LNURLLaunchRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_19768E628()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19768E6D8;

  return sub_19768DF74(v2, v4, v3);
}

uint64_t sub_19768E6D8()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_18_3();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_19768E7C0(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_19768A138(*v5, a3);
  }

  v7 = *v5;

  return sub_19768A224(v7, a2);
}

unint64_t sub_19768E838(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC88, &qword_19775DCD0);
    v2 = sub_19774F760();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_19766A150(&v22, v24);
    sub_19766A150(v24, v25);
    sub_19766A150(v25, &v23);
    result = sub_1976525E4(v13, v12, sub_197652668);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = sub_19766A150(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_19766A150(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

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
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_19768EA88(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_19774EA60();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_19774EAD0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_19774E9F0();

    swift_willThrow();
    v11 = sub_19774EAD0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_19768EBD4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC88, &qword_19775DCD0);
  v2 = sub_19774F760();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_19768FBC8(v6, &v15, &qword_1EAF3FC90, &qword_19775DCD8);
    v7 = v15;
    v8 = v16;
    result = sub_1976525E4(v15, v16, sub_197652668);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_19766A150(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_19768ED3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_41_1();
  v9 = sub_19768EDFC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_197677CC0(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_19768EDFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_19768EEFC(a5, a6);
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
    result = sub_19774F640();
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
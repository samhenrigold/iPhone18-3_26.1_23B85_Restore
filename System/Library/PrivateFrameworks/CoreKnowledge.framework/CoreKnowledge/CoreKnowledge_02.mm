void __swiftcall CKEvent.previous()(CKEvent_optional *__return_ptr retstr)
{
  type metadata accessor for CKKnowledgeStoreEntity();
  v3 = qword_1EC2AD7E8;
  v4 = v1;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_10_9(&qword_1EC2AD7E8);
  }

  v5 = sub_1C86B5180(v4, qword_1EC2AEFD8);
  v6 = OUTLINED_FUNCTION_11_10();
  v8 = v7(v6);
  if (v3)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v9 = sub_1C86F8DBC();
    __swift_project_value_buffer(v9, qword_1ED5BC790);
    v10 = v3;
    v11 = sub_1C86F8DAC();
    v12 = sub_1C86F912C();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_17_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_6_10();
      v13 = swift_slowAlloc();
      v38 = v13;
      OUTLINED_FUNCTION_28_3(4.8149e-34, v13, v14, v15, v16, v17, v18, v19, v20, v34, v35, v36, v37);
      sub_1C86F94EC();
      v21 = sub_1C8685FDC();

      *(v2 + 4) = v21;
      OUTLINED_FUNCTION_25_3(&dword_1C8683000, v11, v12, "%s");
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      v28 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v28);
    }

    else
    {
    }
  }

  else
  {
    v29 = v8;

    v30 = *(v29 + 16);
    if (v30)
    {
      v38 = MEMORY[0x1E69E7CC0];
      sub_1C86F93BC();
      v31 = 32;
      do
      {
        *(v29 + v31);
        sub_1C86F939C();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93CC();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93DC();
        sub_1C86F93AC();
        v31 += 24;
        --v30;
      }

      while (v30);
    }

    v38 = sub_1C86B7F08(v32);
    sub_1C86B6A98(&v38);

    v33 = sub_1C86B6164(v38);

    if (v33)
    {
      sub_1C869F398(0, &qword_1EC2ADC00, off_1E831DB38);
      CKEvent.init(entity:)();
    }
  }
}

char *sub_1C86B6164(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C86B6A74((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x1CCA7B5C0](v3, a1);
  }

  result = sub_1C86F92EC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void __swiftcall CKEvent.next()(CKEvent_optional *__return_ptr retstr)
{
  type metadata accessor for CKKnowledgeStoreEntity();
  v3 = qword_1EC2AD7E8;
  v4 = v1;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_10_9(&qword_1EC2AD7E8);
  }

  v5 = sub_1C86B5180(v4, qword_1EC2AEFD8);
  v6 = OUTLINED_FUNCTION_11_10();
  v8 = v7(v6);
  if (!v3)
  {
    v29 = v8;

    v30 = *(v29 + 16);
    if (v30)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1C86F93BC();
      v31 = 48;
      do
      {
        *(v29 + v31);
        sub_1C86F939C();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93CC();
        OUTLINED_FUNCTION_22_3();
        sub_1C86F93DC();
        sub_1C86F93AC();
        v31 += 24;
        --v30;
      }

      while (v30);
    }

    v39 = sub_1C86B7F08(v32);
    sub_1C86B6A98(&v39);

    v33 = v39;
    if (!sub_1C86B50B8())
    {

      return;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA7B5C0](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);

        __break(1u);
        return;
      }

      v34 = *(v33 + 32);
    }

    sub_1C869F398(0, &qword_1EC2ADC00, off_1E831DB38);
    CKEvent.init(entity:)();
    return;
  }

  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v9 = sub_1C86F8DBC();
  __swift_project_value_buffer(v9, qword_1ED5BC790);
  v10 = v3;
  v11 = sub_1C86F8DAC();
  v12 = sub_1C86F912C();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_17_4();
    swift_slowAlloc();
    OUTLINED_FUNCTION_6_10();
    v13 = swift_slowAlloc();
    v39 = v13;
    OUTLINED_FUNCTION_28_3(4.8149e-34, v13, v14, v15, v16, v17, v18, v19, v20, v35, v36, v37, v38);
    sub_1C86F94EC();
    v21 = sub_1C8685FDC();

    *(v2 + 4) = v21;
    OUTLINED_FUNCTION_25_3(&dword_1C8683000, v11, v12, "%s");
    _os_log_impl(v22, v23, v24, v25, v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    v28 = OUTLINED_FUNCTION_4_12();
    MEMORY[0x1CCA7C540](v28);
  }

  else
  {
  }
}

void sub_1C86B6524()
{
  OUTLINED_FUNCTION_17();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v14 = *v3;
  v15 = *v1;
  v16 = OUTLINED_FUNCTION_13_7(0x7461447472617473);
  v17 = [v14 valueForKey_];

  if (v17)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
    sub_1C8689930(v23, v24);
    v18 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_29_3(v13, v24, MEMORY[0x1E69E7CA0] + 8);
    v19 = OUTLINED_FUNCTION_13_7(0x7461447472617473);
    v20 = [v15 valueForKey_];

    if (v20)
    {
      sub_1C86F929C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_29_3(v10, v21, v18 + 8);
      sub_1C86F8CEC();
      v22 = *(v6 + 8);
      v22(v10, v4);
      v22(v13, v4);
      OUTLINED_FUNCTION_16();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id CKEphemeralEventSequence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKEphemeralEventSequence.init()()
{
  v10 = sub_1C86F919C();
  OUTLINED_FUNCTION_99();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  v5 = v4 - v3;
  v6 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v7 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_3_2();
  v9 = OBJC_IVAR___CKEphemeralEventSequence_queue;
  sub_1C869F398(0, &qword_1ED5BC6C8, 0x1E69E9610);
  sub_1C86F8E1C();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0, &unk_1C86FE080);
  sub_1C869F33C(&qword_1ED5BC6D8, &qword_1EC2ADAE0, &unk_1C86FE080, MEMORY[0x1E69E6328]);
  sub_1C86F92AC();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v10);
  *&v11[v9] = sub_1C86F91CC();
  v12.receiver = v11;
  v12.super_class = type metadata accessor for CKEphemeralEventSequence();
  return objc_msgSendSuper2(&v12, sel_init);
}

id CKEphemeralEventSequence.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKEphemeralEventSequence();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C86B69F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBB8, &qword_1C86FD568);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

unint64_t sub_1C86B6A74(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C86B6A98(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C86B8160(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C86B6B14(v6);
  return sub_1C86F93AC();
}

void sub_1C86B6B14(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (sub_1C86F945C() < v2)
  {
    v3 = sub_1C86B4B58(v2 / 2);
    sub_1C86B6E88();
    if (v1)
    {
      if (v2 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v2 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C86B6BF4();
  }
}

void sub_1C86B6BF4()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_27_3();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_7(v11, v12, v13, v14, v15, v16, v17, v18, v35);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_3();
  v43 = v20;
  if (v4 != v6)
  {
    OUTLINED_FUNCTION_9_10();
    v39 = (v21 + 8);
    v41 = *v2;
    v22 = *v2 + 8 * v4 - 8;
    v23 = v8 - v4;
    while (2)
    {
      v37 = v22;
      v38 = v4;
      v24 = *(v41 + 8 * v4);
      v36 = v23;
      v25 = v23;
      do
      {
        v26 = *v22;
        v27 = v24;
        v44 = v26;
        v28 = OUTLINED_FUNCTION_13_7(v0);
        v29 = [v27 valueForKey_];

        if (!v29)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_31_2();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_2_9();
        swift_dynamicCast();
        v30 = OUTLINED_FUNCTION_13_7(v0);
        v31 = [v44 valueForKey_];

        if (!v31)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_31_2();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_2_9();
        v32 = v25;
        swift_dynamicCast();
        v42 = sub_1C86F8CEC();
        v33 = *v39;
        (*v39)(v40, v9);
        v33(v43, v9);

        if (v42 != -1)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_13;
        }

        v34 = *v22;
        v24 = *(v22 + 8);
        *v22 = v24;
        *(v22 + 8) = v34;
        v22 -= 8;
        ++v25;
      }

      while (v32 != -1);
      v4 = v38 + 1;
      v22 = v37 + 8;
      v23 = v36 - 1;
      if (v38 + 1 != v6)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_16();
}

void sub_1C86B6E88()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v4 = v3;
  v130 = v5;
  v6 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_27_3();
  v8 = MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_7(v8, v9, v10, v11, v12, v13, v14, v15, v126);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_3();
  v147 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_3();
  v136 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_3();
  v22 = v4[1];
  v139 = v4;
  if (v22 >= 1)
  {
    v133 = v21;
    v127 = v2;
    v23 = 0;
    OUTLINED_FUNCTION_3_13();
    v145 = (v24 + 8);
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = v23++;
      v131 = v26;
      if (v23 >= v22)
      {
        goto LABEL_25;
      }

      v2 = *v139;
      v27 = *(*v139 + 8 * v26);
      v28 = v26;
      v29 = *(*v139 + 8 * v23);
      v30 = v27;
      sub_1C86B6524();
      v137 = v31;
      if (v0)
      {

        goto LABEL_111;
      }

      v128 = v25;

      v25 = (v2 + 8 * v28 + 16);
      OUTLINED_FUNCTION_3_13();
      v134 = v22;
      while (1)
      {
        v33 = v32;
        if (v23 + 1 >= v22)
        {
          break;
        }

        v34 = *(v25 - 1);
        v35 = *v25;
        v36 = v34;
        v37 = OUTLINED_FUNCTION_13_7(v2);
        v38 = [v35 valueForKey_];

        if (!v38)
        {
          goto LABEL_141;
        }

        v39 = v2;
        v140 = v23;
        OUTLINED_FUNCTION_33_1();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_14_8();
        v40 = MEMORY[0x1E69E7CA0];
        v2 = v133;
        OUTLINED_FUNCTION_32_2(v133, v41, MEMORY[0x1E69E7CA0] + 8);
        v42 = OUTLINED_FUNCTION_13_7(v39);
        v43 = [v36 valueForKey_];

        if (!v43)
        {
          goto LABEL_142;
        }

        OUTLINED_FUNCTION_33_1();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_14_8();
        OUTLINED_FUNCTION_32_2(v136, v44, v40 + 8);
        v30 = sub_1C86F8CEC();
        v45 = *v145;
        (*v145)(v136, v6);
        v45(v133, v6);

        v25 += 8;
        v23 = v140 + 1;
        OUTLINED_FUNCTION_3_13();
        v22 = v134;
        if ((v46 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v23 = v22;
LABEL_12:
      if ((v137 & 1) == 0)
      {
        break;
      }

      v26 = v131;
      if (v23 < v131)
      {
        goto LABEL_136;
      }

      v25 = v128;
      if (v131 >= v23)
      {
        goto LABEL_25;
      }

      if (v22 >= v33)
      {
        v47 = v33;
      }

      else
      {
        v47 = v22;
      }

      v48 = 8 * v47 - 8;
      v49 = v23;
      v30 = v139;
      v50 = 8 * v28;
      do
      {
        if (v26 != --v49)
        {
          v51 = *v139;
          if (!*v139)
          {
            goto LABEL_145;
          }

          v52 = *(v51 + v50);
          *(v51 + v50) = *(v51 + v48);
          *(v51 + v48) = v52;
        }

        ++v26;
        v48 -= 8;
        v50 += 8;
      }

      while (v26 < v49);
      v26 = v131;
LABEL_26:
      v53 = v30[1];
      if (v23 < v53)
      {
        if (__OFSUB__(v23, v26))
        {
          goto LABEL_133;
        }

        if (v23 - v26 >= v127)
        {
LABEL_45:
          v26 = v131;
        }

        else
        {
          v54 = v131 + v127;
          if (__OFADD__(v131, v127))
          {
            goto LABEL_134;
          }

          if (v54 >= v53)
          {
            v54 = v30[1];
          }

          if (v54 < v131)
          {
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            v25 = sub_1C86B7D58(v25);
LABEL_102:
            v119 = v25 + 16;
            v120 = *(v25 + 2);
            while (v120 >= 2)
            {
              if (!*v30)
              {
                goto LABEL_144;
              }

              v121 = v30;
              v30 = v25;
              v122 = &v25[16 * v120];
              v123 = *v122;
              v124 = &v119[2 * v120];
              v25 = v124[1];
              sub_1C86B7818();
              if (v0)
              {
                break;
              }

              if (v25 < v123)
              {
                goto LABEL_128;
              }

              if (v120 - 2 >= *v119)
              {
                goto LABEL_129;
              }

              *v122 = v123;
              *(v122 + 1) = v25;
              v125 = *v119 - v120;
              if (*v119 < v120)
              {
                goto LABEL_130;
              }

              v120 = *v119 - 1;
              memmove(v124, v124 + 2, 16 * v125);
              *v119 = v120;
              v25 = v30;
              v30 = v121;
            }

LABEL_110:

LABEL_111:
            OUTLINED_FUNCTION_16();
            return;
          }

          v26 = v131;
          if (v23 != v54)
          {
            v129 = v25;
            v144 = *v30;
            v55 = *v30 + 8 * v23 - 8;
            v56 = v131 - v23;
            v57 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
            v132 = v54;
LABEL_35:
            v141 = v23;
            v58 = *(v144 + 8 * v23);
            v135 = v56;
            v59 = v56;
            v138 = v55;
            v60 = v55;
            while (1)
            {
              v61 = *v60;
              v62 = v58;
              v63 = v61;
              v64 = OUTLINED_FUNCTION_13_7(v2);
              v65 = [v62 v57[495]];

              if (!v65)
              {
                goto LABEL_139;
              }

              v146 = v59;
              OUTLINED_FUNCTION_33_1();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_14_8();
              v66 = MEMORY[0x1E69E7CA0];
              OUTLINED_FUNCTION_32_2(v147, v67, MEMORY[0x1E69E7CA0] + 8);
              v68 = OUTLINED_FUNCTION_13_7(v2);
              v69 = OUTLINED_FUNCTION_18_2(v68, v57[495]);

              if (!v69)
              {
                break;
              }

              OUTLINED_FUNCTION_33_1();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_14_8();
              OUTLINED_FUNCTION_32_2(v143, v70, v66 + 8);
              v2 = sub_1C86F8CEC();
              v71 = *v145;
              (*v145)(v143, v6);
              v71(v147, v6);

              if (v2 != -1)
              {
                OUTLINED_FUNCTION_3_13();
                v57 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
LABEL_43:
                v23 = v141 + 1;
                v55 = v138 + 8;
                v56 = v135 - 1;
                if (v141 + 1 == v132)
                {
                  v23 = v132;
                  v30 = v139;
                  v25 = v129;
                  goto LABEL_45;
                }

                goto LABEL_35;
              }

              if (!v144)
              {
                goto LABEL_140;
              }

              v72 = *v60;
              v58 = *(v60 + 8);
              *v60 = v58;
              *(v60 + 8) = v72;
              v60 -= 8;
              v59 = v146 + 1;
              v2 = 0x7461447472617473;
              v57 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
              if (v146 == -1)
              {
                goto LABEL_43;
              }
            }

            __break(1u);
LABEL_139:
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
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }
        }
      }

      if (v23 < v26)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C86C4F54();
        v25 = v117;
      }

      v73 = *(v25 + 2);
      v74 = v73 + 1;
      v75 = v131;
      if (v73 >= *(v25 + 3) >> 1)
      {
        sub_1C86C4F54();
        v75 = v131;
        v25 = v118;
      }

      *(v25 + 2) = v74;
      v76 = v25 + 32;
      v77 = &v25[16 * v73 + 32];
      *v77 = v75;
      *(v77 + 1) = v23;
      if (!*v130)
      {
        goto LABEL_146;
      }

      if (v73)
      {
        v142 = v23;
        while (1)
        {
          v78 = v74 - 1;
          v79 = &v76[16 * v74 - 16];
          v80 = &v25[16 * v74];
          if (v74 >= 4)
          {
            break;
          }

          if (v74 == 3)
          {
            v81 = *(v25 + 4);
            v82 = *(v25 + 5);
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
LABEL_67:
            if (v84)
            {
              goto LABEL_119;
            }

            v96 = *v80;
            v95 = *(v80 + 1);
            v97 = __OFSUB__(v95, v96);
            v98 = v95 - v96;
            v99 = v97;
            if (v97)
            {
              goto LABEL_122;
            }

            v100 = *(v79 + 1);
            v101 = v100 - *v79;
            if (__OFSUB__(v100, *v79))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v98, v101))
            {
              goto LABEL_127;
            }

            if (v98 + v101 >= v83)
            {
              if (v83 < v101)
              {
                v78 = v74 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          if (v74 < 2)
          {
            goto LABEL_121;
          }

          v103 = *v80;
          v102 = *(v80 + 1);
          v91 = __OFSUB__(v102, v103);
          v98 = v102 - v103;
          v99 = v91;
LABEL_82:
          if (v99)
          {
            goto LABEL_124;
          }

          v105 = *v79;
          v104 = *(v79 + 1);
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_126;
          }

          if (v106 < v98)
          {
            goto LABEL_96;
          }

LABEL_89:
          if (v78 - 1 >= v74)
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
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          if (!*v30)
          {
            goto LABEL_143;
          }

          v110 = v25;
          v111 = &v76[16 * v78 - 16];
          v25 = *v111;
          v112 = v78;
          v113 = v76;
          v114 = &v76[16 * v78];
          v115 = *(v114 + 1);
          sub_1C86B7818();
          if (v0)
          {
            goto LABEL_110;
          }

          if (v115 < v25)
          {
            goto LABEL_114;
          }

          v30 = *(v110 + 2);
          if (v112 > v30)
          {
            goto LABEL_115;
          }

          *v111 = v25;
          *(v111 + 1) = v115;
          if (v112 >= v30)
          {
            goto LABEL_116;
          }

          v74 = v30 - 1;
          memmove(v114, v114 + 16, 16 * (v30 - v112 - 1));
          v25 = v110;
          *(v110 + 2) = v30 - 1;
          v116 = v30 > 2;
          v30 = v139;
          v23 = v142;
          v2 = 0x7461447472617473;
          v76 = v113;
          if (!v116)
          {
            goto LABEL_96;
          }
        }

        v85 = &v76[16 * v74];
        v86 = *(v85 - 8);
        v87 = *(v85 - 7);
        v91 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        if (v91)
        {
          goto LABEL_117;
        }

        v90 = *(v85 - 6);
        v89 = *(v85 - 5);
        v91 = __OFSUB__(v89, v90);
        v83 = v89 - v90;
        v84 = v91;
        if (v91)
        {
          goto LABEL_118;
        }

        v92 = *(v80 + 1);
        v93 = v92 - *v80;
        if (__OFSUB__(v92, *v80))
        {
          goto LABEL_120;
        }

        v91 = __OFADD__(v83, v93);
        v94 = v83 + v93;
        if (v91)
        {
          goto LABEL_123;
        }

        if (v94 >= v88)
        {
          v108 = *v79;
          v107 = *(v79 + 1);
          v91 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v91)
          {
            goto LABEL_131;
          }

          if (v83 < v109)
          {
            v78 = v74 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_96:
      v22 = v30[1];
      if (v23 >= v22)
      {
        goto LABEL_100;
      }
    }

    v25 = v128;
    v26 = v131;
LABEL_25:
    v30 = v139;
    goto LABEL_26;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_100:
  if (*v130)
  {
    v30 = v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_102;
  }

LABEL_147:
  __break(1u);
}

void sub_1C86B7818()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v69 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v64 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_3();
  v67 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v6 - v8) / 8;
  v68 = (v19 + 8);
  v20 = v4 - v6;
  if (v18 >= v20)
  {
    OUTLINED_FUNCTION_26_3();
    sub_1C869F3D8(v6, v4 - v6, v2);
    v21 = &v2[v20];
    v42 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
    v70 = v2;
    v73 = v8;
LABEL_16:
    v43 = v6 - 1;
    v44 = v4 - 1;
    v75 = v6;
    for (i = v6 - 1; v21 > v2 && v6 > v8; v43 = i)
    {
      v72 = v21;
      v47 = v21 - 1;
      v46 = *(v21 - 1);
      v48 = *v43;
      v49 = v46;
      v50 = v48;
      v51 = OUTLINED_FUNCTION_13_7(v0);
      v52 = v42[495];
      v67 = v49;
      v53 = [v49 v52];

      if (!v53)
      {
        goto LABEL_39;
      }

      v71 = v44;
      sub_1C86F929C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v54 = v69;
      swift_dynamicCast();
      v55 = OUTLINED_FUNCTION_13_7(v0);
      v56 = [v50 v42[495]];

      if (!v56)
      {
        goto LABEL_41;
      }

      sub_1C86F929C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v57 = v66;
      swift_dynamicCast();
      v58 = sub_1C86F8CEC();
      v0 = v14;
      v59 = *v68;
      (*v68)(v57, v54);
      v59(v14, v54);

      if (v58 == -1)
      {
        v2 = v70;
        v4 = v71;
        v61 = i;
        v6 = i;
        v21 = v72;
        v8 = v73;
        v0 = 0x7461447472617473;
        v42 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
        if (v71 + 1 != v75)
        {
          *v71 = *i;
          v6 = v61;
        }

        goto LABEL_16;
      }

      v60 = v71;
      v6 = v75;
      if (v72 != v71 + 1)
      {
        *v71 = *v47;
      }

      v44 = v60 - 1;
      v21 = v47;
      v2 = v70;
      v8 = v73;
      OUTLINED_FUNCTION_26_3();
      v42 = &selRef_dropLinkWithLabel_betweenSubject_andObject_inStoreWithIdentifier_completionHandler_;
    }

LABEL_31:
    v62 = v21 - v2;
    if (v6 != v2 || v6 >= &v2[v62])
    {
      memmove(v6, v2, 8 * v62);
    }

    OUTLINED_FUNCTION_16();
  }

  else
  {
    v66 = &v64 - v17;
    OUTLINED_FUNCTION_9_10();
    sub_1C869F3D8(v8, (v6 - v8) / 8, v2);
    v21 = &v2[v18];
    v71 = v4;
    v72 = v21;
    v22 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      if (v2 >= v21 || v6 >= v4)
      {
        v6 = v8;
        goto LABEL_31;
      }

      v73 = v8;
      v74 = v6;
      v24 = *v2;
      v25 = *v6;
      v26 = v24;
      v27 = OUTLINED_FUNCTION_13_7(v14);
      v28 = [v25 valueForKey_];

      if (!v28)
      {
        break;
      }

      v70 = v2;
      OUTLINED_FUNCTION_31_2();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v29 = v66;
      v30 = v69;
      OUTLINED_FUNCTION_29_3(v66, v31, v22 + 8);
      v32 = OUTLINED_FUNCTION_13_7(v14);
      v33 = [v26 valueForKey_];

      if (!v33)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_31_2();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_9();
      v34 = v67;
      OUTLINED_FUNCTION_29_3(v67, v35, v22 + 8);
      v14 = v29;
      v36 = sub_1C86F8CEC();
      v37 = v30;
      v38 = *v68;
      (*v68)(v34, v37);
      v38(v29, v37);

      v6 = v74;
      if (v36 == -1)
      {
        v39 = v74;
        v40 = v73;
        v41 = v73 == v74;
        v6 = v74 + 1;
        v2 = v70;
      }

      else
      {
        v39 = v70;
        v2 = v70 + 1;
        v40 = v73;
        v41 = v73 == v70;
      }

      v21 = v72;
      if (!v41)
      {
        *v40 = *v39;
      }

      v8 = (v40 + 1);
      v4 = v71;
      OUTLINED_FUNCTION_9_10();
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

char *sub_1C86B7D6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADC10, &qword_1C86FD6F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

id sub_1C86B7E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1C86F8E8C();

  v10 = [a5 initWithIdentifier:a1 startDate:a2 endDate:a3 metadata:v9];

  return v10;
}

void *sub_1C86B7F08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1C86F92EC();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1C86B69F4(v4, 0);
      sub_1C86B7F9C((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1C86B7F9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C86F92EC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C86B50B8();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CKKnowledgeStoreEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C869F33C(&unk_1EC2ADC20, &qword_1EC2ADC18, &qword_1C86FD700, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADC18, &qword_1C86FD700);
          v9 = sub_1C86B4C08(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 OUTLINED_FUNCTION_7_12()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{

  return sub_1C86F8EEC();
}

id OUTLINED_FUNCTION_18_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{
  v4 = *(v2 - 96);
  *v1 = *(v2 - 112);
  *(v1 + 16) = v4;
  *(v1 + 32) = 2;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_24_2()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_3(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *v13 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return sub_1C86F929C();
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_1C86F929C();
}

void CKTripleCondition.__allocating_init(subject:predicate:object:)(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(v6);
  v13 = OUTLINED_FUNCTION_45_1();
  CKTripleCondition.init(subject:predicate:object:)(v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1C86B8410(uint64_t a1)
{
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](a1);
  return sub_1C86F956C();
}

uint64_t sub_1C86B8480(uint64_t a1, uint64_t a2)
{
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](a2);
  return sub_1C86F956C();
}

id CKGenericCondition.__allocating_init(_:value:negated:)()
{
  OUTLINED_FUNCTION_42_1();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_17_5();
  return CKGenericCondition.init(_:value:negated:)();
}

uint64_t sub_1C86B8510(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return 1701736302;
    }

    v20 = 0x7469736F706D6F63;
    v6 = [a1 & 0x3FFFFFFFFFFFFFFFLL description];
    v7 = sub_1C86F8EFC();
    v9 = v8;

    MEMORY[0x1CCA7B200](v7, v9);

    MEMORY[0x1CCA7B200](44, 0xE100000000000000);
    if (a2)
    {
      v10 = [a2 description];
      v11 = sub_1C86F8EFC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    MEMORY[0x1CCA7B200](v11, v13);

    MEMORY[0x1CCA7B200](44, 0xE100000000000000);
    if (a3)
    {
      v16 = [a3 description];
      v17 = sub_1C86F8EFC();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    MEMORY[0x1CCA7B200](v17, v19);
  }

  else
  {
    v20 = 0x28656C706D6973;
    v14 = CKMatchType.description.getter(*(a1 + 16));
    MEMORY[0x1CCA7B200](v14, 0xE100000000000000);

    MEMORY[0x1CCA7B200](61, 0xE100000000000000);
    MEMORY[0x1CCA7B200](*(a1 + 24), *(a1 + 32));
  }

  MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  return v20;
}

uint64_t CKMatchType.description.getter(unint64_t a1)
{
  if (a1 < 4)
  {
    return qword_1C86FD930[a1];
  }

  result = sub_1C86F949C();
  __break(1u);
  return result;
}

unint64_t CKMatchType.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C86B878C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CKMatchType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C86B87EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADC80, &unk_1C86FD920);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - v4;
  sub_1C868FEF0(a1, v44);
  if (v44[3])
  {
    if (swift_dynamicCast())
    {
      v7 = v42;
      v6 = v43;
      switch(v1[2])
      {
        case 0:
          v8 = OUTLINED_FUNCTION_27_4();
          v39 = OUTLINED_FUNCTION_33_2(v8);
          v14 = OUTLINED_FUNCTION_9_11(v39, v9, v10, v11, v12, v13, MEMORY[0x1E69E6158]);
          v16 = v15;
          sub_1C86A5148(v5, &unk_1EC2ADC80, &unk_1C86FD920);

          if (v16)
          {
            break;
          }

          v17 = v14 < 0x4000;
          return v17 & 1;
        case 1:
          v31 = OUTLINED_FUNCTION_27_4();
          v41 = OUTLINED_FUNCTION_33_2(v31);
          OUTLINED_FUNCTION_9_11(v41, v32, v33, v34, v35, v36, MEMORY[0x1E69E6158]);
          v38 = v37;
          sub_1C86A5148(v5, &unk_1EC2ADC80, &unk_1C86FD920);

          v17 = v38 ^ 1;
          return v17 & 1;
        case 2:
          v19 = OUTLINED_FUNCTION_27_4();
          v40 = OUTLINED_FUNCTION_33_2(v19);
          OUTLINED_FUNCTION_9_11(v40, v20, v21, v22, v23, v24, MEMORY[0x1E69E6158]);
          v26 = v25;
          v28 = v27;
          sub_1C86A5148(v5, &unk_1EC2ADC80, &unk_1C86FD920);

          if (v28)
          {
            break;
          }

          v29 = v7 & 0xFFFFFFFFFFFFLL;
          if ((v6 & 0x2000000000000000) != 0)
          {
            v29 = HIBYTE(v6) & 0xF;
          }

          v17 = v26 >> 14 == 4 * v29;
          return v17 & 1;
        case 3:
          if (v42 == v1[3] && v43 == v1[4])
          {

            v17 = 1;
          }

          else
          {
            v17 = sub_1C86F948C();
          }

          return v17 & 1;
        default:
          v44[0] = v1[2];
          result = sub_1C86F949C();
          __break(1u);
          return result;
      }
    }
  }

  else
  {
    sub_1C86A5148(v44, &qword_1EC2AD810, &qword_1C86FCC90);
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C86B8A64()
{
  if (!v0[6])
  {
    v0[5] = sub_1C86B8AD0(v0);
    v0[6] = v1;
  }

  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1C86B8AD0(void *a1)
{
  switch(a1[2])
  {
    case 0:
      v1 = 34;
      v2 = 0xE100000000000000;
      goto LABEL_7;
    case 1:
      v1 = 9506;
      v2 = 0xE200000000000000;
LABEL_7:
      v8 = v1;
      v9 = v2;
      MEMORY[0x1CCA7B200](a1[3], a1[4]);
      v5 = 8741;
      v6 = 0xE200000000000000;
      goto LABEL_8;
    case 2:
      v3 = 9506;
      v4 = 0xE200000000000000;
      goto LABEL_5;
    case 3:
      v3 = 34;
      v4 = 0xE100000000000000;
LABEL_5:
      v8 = v3;
      v9 = v4;
      MEMORY[0x1CCA7B200](a1[3], a1[4]);
      v5 = 34;
      v6 = 0xE100000000000000;
LABEL_8:
      MEMORY[0x1CCA7B200](v5, v6);
      MEMORY[0x1CCA7B200](v8, v9);

      result = 0x20454B494C206BLL;
      break;
    default:
      result = sub_1C86F949C();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C86B8BE8()
{

  return v0;
}

uint64_t sub_1C86B8C10()
{
  sub_1C86B8BE8();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

id sub_1C86B8C88()
{
  sub_1C869F398(0, &qword_1EC2ADC38, 0x1E696AE18);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  return sub_1C86B8D60(sub_1C86BBF88, v1);
}

id sub_1C86B8D60(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1C86B8E10;
  v5[3] = &block_descriptor_6;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() predicateWithBlock_];
  _Block_release(v2);

  return v3;
}

uint64_t sub_1C86B8E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  sub_1C8689930(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = sub_1C86F8E9C();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1C86A5148(v10, &qword_1EC2AD810, &qword_1C86FCC90);
  return v6 & 1;
}

uint64_t sub_1C86B8F0C()
{
  if (*(v0 + OBJC_IVAR___CKGenericCondition_negated))
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + OBJC_IVAR___CKGenericCondition_negated))
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x1CCA7B200](v1, v2);

  v3 = sub_1C86B8510(*(v0 + OBJC_IVAR___CKGenericCondition_type), *(v0 + OBJC_IVAR___CKGenericCondition_type + 8), *(v0 + OBJC_IVAR___CKGenericCondition_type + 16));
  MEMORY[0x1CCA7B200](v3);

  return 0;
}

id CKGenericCondition.init(value:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR___CKGenericCondition_type];
  *v3 = 0x8000000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v1[OBJC_IVAR___CKGenericCondition_negated] = a1 ^ 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CKGenericCondition();
  return objc_msgSendSuper2(&v5, sel_init);
}

id CKGenericCondition.init(_:value:negated:)()
{
  OUTLINED_FUNCTION_42_1();
  v5 = &v1[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  type metadata accessor for Matcher();
  *v5 = 0;
  v5[1] = 0;
  v6 = swift_allocObject();
  v6[5] = 0;
  v6[6] = 0;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v7 = &v1[OBJC_IVAR___CKGenericCondition_type];
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v6;
  v1[OBJC_IVAR___CKGenericCondition_negated] = v0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CKGenericCondition();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1C86B9164(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v6 = a3;
  v7 = a2;
  v9 = &v4[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  *v9 = 0;
  v9[1] = 0;
  if (a2 | a3)
  {
    v14 = &v4[OBJC_IVAR___CKGenericCondition_type];
    *v14 = a1 | 0x4000000000000000;
    v14[1] = a2;
    v14[2] = a3;
    v6 = a3;
    v15 = a1;
    v7 = v7;
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR___CKGenericCondition_type);
    v11 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 8);
    v12 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 16);
    v13 = &v4[OBJC_IVAR___CKGenericCondition_type];
    *v13 = v10;
    v13[1] = v11;
    v13[2] = v12;
    sub_1C86BC048(v10, v11, v12);
  }

  v4[OBJC_IVAR___CKGenericCondition_negated] = a4 & 1;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CKGenericCondition();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

id sub_1C86B9250(void *a1)
{
  if ((*(v1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return a1;
  }

  else if ((*(a1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return v1;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    v3 = a1;
    return sub_1C86B9164(v1, a1, 0, 0);
  }
}

id sub_1C86B9360(void *a1)
{
  if ((*(v1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return a1;
  }

  else if ((*(a1 + OBJC_IVAR___CKGenericCondition_type) & 0x8000000000000000) != 0)
  {

    return v1;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    v3 = a1;
    return sub_1C86B9164(v1, 0, a1, 0);
  }
}

uint64_t sub_1C86B9470()
{
  v1 = (v0 + OBJC_IVAR___CKGenericCondition____lazy_storage___sql);
  if (*(v0 + OBJC_IVAR___CKGenericCondition____lazy_storage___sql + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1C86B94EC(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1C86B94EC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CKGenericCondition_type);
  v3 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 8);
  v4 = *(a1 + OBJC_IVAR___CKGenericCondition_type + 16);
  if (!(v2 >> 62))
  {

    v9 = sub_1C86B8A64();
    v11 = v10;
    sub_1C86BBFD8(v2, v3, v4);
    v18 = v9;
    v19 = v11;
    goto LABEL_13;
  }

  if (v2 >> 62 != 1)
  {
    v18 = 0x31203D3D2031;
    v19 = 0xE600000000000000;
    goto LABEL_13;
  }

  v18 = 40;
  v19 = 0xE100000000000000;
  v5 = v4;
  v6 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
  v7 = v3;
  v8 = sub_1C86B9470();
  MEMORY[0x1CCA7B200](v8);

  MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  if (v3)
  {
    if (v4)
    {

      goto LABEL_13;
    }

    v16 = 0x2820444E4120;
    v17 = 0xE600000000000000;
    v12 = v7;
    goto LABEL_11;
  }

  if (v4)
  {
    v16 = 0x2820524F20;
    v17 = 0xE500000000000000;
    v12 = v5;
LABEL_11:
    v13 = v12;
    v14 = sub_1C86B9470();
    MEMORY[0x1CCA7B200](v14);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
    MEMORY[0x1CCA7B200](v16, v17);

    goto LABEL_13;
  }

LABEL_13:
  result = v18;
  if (*(a1 + OBJC_IVAR___CKGenericCondition_negated))
  {
    MEMORY[0x1CCA7B200](v18, v19);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
    return 676613966;
  }

  return result;
}

uint64_t sub_1C86B96F4(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR___CKGenericCondition_type;
  v5 = *(v1 + OBJC_IVAR___CKGenericCondition_type);
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      v8 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xC8);
      v10 = v7;
      v11 = v8;
      v12 = v6;
      v13 = v9(a1);
      v14 = v13;
      if (v6)
      {
        if (v7)
        {
LABEL_14:

          goto LABEL_15;
        }

        if ((v13 & 1) == 0)
        {
          v14 = 0;
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        if (!v7)
        {
LABEL_16:

          v16 = v14 ^ *(v2 + OBJC_IVAR___CKGenericCondition_negated);
          return v16 & 1;
        }

        if (v13)
        {
          v14 = 1;
          v12 = v10;
          goto LABEL_15;
        }

        v12 = v10;
      }

      v17 = *((*MEMORY[0x1E69E7D40] & *v12) + 0xC8);
      v10 = v12;
      v14 = v17(a1);

      v12 = v10;
      goto LABEL_14;
    }

    v16 = *(v2 + OBJC_IVAR___CKGenericCondition_negated) ^ 1;
  }

  else
  {

    v15 = sub_1C86B87EC(a1);
    sub_1C86BBFD8(v5, v6, v7);
    v16 = v15 ^ *(v2 + OBJC_IVAR___CKGenericCondition_negated);
  }

  return v16 & 1;
}

id sub_1C86B9930(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = &v4[OBJC_IVAR___CKGenericCondition____lazy_storage___sql];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v4[OBJC_IVAR___CKGenericCondition_type];
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v4[OBJC_IVAR___CKGenericCondition_negated] = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for CKGenericCondition();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C86B9994@<X0>(void *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR___CKGenericCondition_type);
  v5 = *(v2 + OBJC_IVAR___CKGenericCondition_type + 8);
  v6 = *(v2 + OBJC_IVAR___CKGenericCondition_type + 16);
  v7 = *(v2 + OBJC_IVAR___CKGenericCondition_negated);
  v8 = type metadata accessor for CKGenericCondition();
  v9 = objc_allocWithZone(v8);
  sub_1C86BC048(v4, v5, v6);
  result = sub_1C86B9930(v4, v5, v6, v7);
  a2[3] = v8;
  *a2 = result;
  return result;
}

uint64_t static CKGenericCondition.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_48_0(a1);
  byte_1EC2ADC30 = v1;
  return result;
}

uint64_t sub_1C86B9B30@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC2ADC30;
  return result;
}

uint64_t sub_1C86B9B7C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC2ADC30 = v1;
  return result;
}

void sub_1C86B9BC4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CKGenericCondition_negated);
  v4 = OUTLINED_FUNCTION_38_0();
  [a1 encodeBool:v3 forKey:v4];

  v6 = *(v1 + OBJC_IVAR___CKGenericCondition_type);
  v5 = *(v1 + OBJC_IVAR___CKGenericCondition_type + 8);
  v7 = *(v1 + OBJC_IVAR___CKGenericCondition_type + 16);
  v8 = v6 >> 62;
  if (v6 >> 62 && v8 == 1)
  {
    OUTLINED_FUNCTION_43_1();
  }

  v9 = sub_1C86F8EEC();

  v10 = sub_1C86F8EEC();
  v11 = OUTLINED_FUNCTION_35_1();
  [v11 v12];

  if (v8)
  {
    if (v8 == 1)
    {
      v13 = OUTLINED_FUNCTION_31_3();
      sub_1C86BC048(v13, v14, v15);
      v16 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
      v17 = sub_1C86F8EEC();
      v18 = OUTLINED_FUNCTION_35_1();
      [v18 v19];

      v20 = v5;
      v21 = sub_1C86F8EEC();
      v22 = OUTLINED_FUNCTION_35_1();
      [v22 v23];

      v24 = v7;
      v39 = sub_1C86F8EEC();
      v25 = OUTLINED_FUNCTION_35_1();
      [v25 v26];
    }
  }

  else
  {
    v27 = *(v6 + 16);
    v28 = OUTLINED_FUNCTION_31_3();
    sub_1C86BC048(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_28_4();
    [a1 encodeInteger:v27 forKey:v31];

    v32 = sub_1C86F8EEC();
    v33 = sub_1C86F8EEC();
    v34 = OUTLINED_FUNCTION_35_1();
    [v34 v35];

    v36 = OUTLINED_FUNCTION_31_3();

    sub_1C86BBFD8(v36, v37, v38);
  }
}

id CKGenericCondition.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_44_1();
  return CKGenericCondition.init(coder:)(v2);
}

id CKGenericCondition.init(coder:)(void *a1)
{
  v2 = OUTLINED_FUNCTION_38_0();
  v3 = [a1 decodeBoolForKey_];

  sub_1C869F398(0, &qword_1ED5BC4A0, 0x1E696AEC0);
  result = sub_1C86F920C();
  if (!result)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = result;
  v6 = sub_1C86F8EFC();
  v8 = v7;

  v9 = v6 == 1701736302 && v8 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_36_2(1701736302, 0xE400000000000000) & 1) != 0)
  {

    v10 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    OUTLINED_FUNCTION_26_4();
    v14 = sub_1C86B9930(v11, v12, v13, v3);

LABEL_8:
    swift_getObjectType();
    OUTLINED_FUNCTION_39_0();
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v6 == 0x656C706D6973 && v8 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_36_2(0x656C706D6973, 0xE600000000000000) & 1) != 0)
  {
    v16 = OUTLINED_FUNCTION_28_4();
    v17 = [a1 decodeIntegerForKey_];

    v18 = sub_1C86F920C();
    result = CKMatchType.init(rawValue:)(v17);
    if (v19)
    {

LABEL_17:
      swift_getObjectType();
      OUTLINED_FUNCTION_39_0();
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v18)
    {
      v20 = result;

      v21 = sub_1C86F8EFC();
      v23 = v22;
      type metadata accessor for Matcher();
      v24 = swift_allocObject();
      v24[5] = 0;
      v24[6] = 0;
      v24[2] = v20;
      v24[3] = v21;
      v24[4] = v23;
      v25 = objc_allocWithZone(type metadata accessor for CKGenericCondition());

      OUTLINED_FUNCTION_26_4();
      v14 = sub_1C86B9930(v26, v27, v28, v3);

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v29 = OUTLINED_FUNCTION_43_1();
  v31 = v6 == v29 && v8 == v30;
  if (!v31 && (OUTLINED_FUNCTION_36_2(v29, 0xE900000000000065) & 1) == 0)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v39 = sub_1C86F8DBC();
    __swift_project_value_buffer(v39, qword_1ED5BC790);

    v40 = sub_1C86F8DAC();
    v41 = sub_1C86F912C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v42 = 136315138;
      v43 = sub_1C8685FDC();

      *(v42 + 4) = v43;
      _os_log_impl(&dword_1C8683000, v40, v41, "error decoding condition with enum type=%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1CCA7C540](v44, -1, -1);
      MEMORY[0x1CCA7C540](v42, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v32 = type metadata accessor for CKGenericCondition();
  v33 = sub_1C86F920C();
  v34 = sub_1C86F920C();
  result = sub_1C86F920C();
  if (v33)
  {
    v35 = result;
    v36 = v33;

    objc_allocWithZone(v32);
    v37 = v35;
    v38 = v34;
    v14 = sub_1C86B9930(v33 | 0x4000000000000000, v34, v35, v3);

    goto LABEL_8;
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_1C86BA46C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_40_1();
  v5 = sub_1C86F8EEC();

  return v5;
}

uint64_t sub_1C86BA4D8()
{
  v1 = [*(v0 + OBJC_IVAR___CKTripleCondition_rawCondition) description];
  v2 = sub_1C86F8EFC();

  return v2;
}

id CKTripleCondition.init(value:)(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v3 = CKGenericCondition.init(value:)(a1);
  v4 = type metadata accessor for CKTripleCondition();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___CKTripleCondition_rawCondition] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, sel_init);
  OUTLINED_FUNCTION_44_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_39_0();
  swift_deallocPartialClassInstance();
  return v3;
}

void CKTripleCondition.init(subject:predicate:object:)(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  v11 = MEMORY[0x1E69E7D40];
  if (!a2)
  {
    if (a4)
    {
      if (a6)
      {
        v20 = type metadata accessor for CKGenericCondition();
        v21 = objc_allocWithZone(v20);
        OUTLINED_FUNCTION_18_3();
        OUTLINED_FUNCTION_24_3();
        CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_5_11();
        v22 = OUTLINED_FUNCTION_81();
        v23 = MEMORY[0x1CCA7B260](v22);
        v24 = MEMORY[0x1CCA7B260](v8, a6);
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (!v25)
        {
          OUTLINED_FUNCTION_0_12();
          sub_1C86F900C();
          OUTLINED_FUNCTION_0_7();
          if (v28)
          {
            if (__OFADD__(v26, v27))
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            MEMORY[0x1CCA7B1D0](v26 + v27);
            OUTLINED_FUNCTION_6_11();
            v29 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v29);
            OUTLINED_FUNCTION_6_11();
            v30 = OUTLINED_FUNCTION_1_2();
            MEMORY[0x1CCA7B200](v30);
            OUTLINED_FUNCTION_6_11();
            v316 = a4;
            v31 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_15_5();
            OUTLINED_FUNCTION_10_10();
            v32 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v313 = (*(v33 + 160))();

            v34 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_29_4();
            OUTLINED_FUNCTION_5_11();
            v35 = OUTLINED_FUNCTION_81();
            v36 = MEMORY[0x1CCA7B260](v35);
            v37 = OUTLINED_FUNCTION_1_2();
            v38 = MEMORY[0x1CCA7B260](v37);
            v25 = __OFADD__(v36, v38);
            v39 = v36 + v38;
            if (v25)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v25 = __OFADD__(v39, 2 * v40);
            v42 = v39 + 2 * v40;
            if (v25)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            MEMORY[0x1CCA7B1D0](v42);
            OUTLINED_FUNCTION_6_11();
            v43 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v43);
            OUTLINED_FUNCTION_6_11();
            v44 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v44, a6);
            v45 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_3_14();
            OUTLINED_FUNCTION_10_10();
            v46 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v309 = (*(v47 + 160))();

            v48 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_29_4();
            OUTLINED_FUNCTION_5_11();
            v49 = OUTLINED_FUNCTION_1_2();
            v50 = MEMORY[0x1CCA7B260](v49);
            v51 = OUTLINED_FUNCTION_81();
            v52 = MEMORY[0x1CCA7B260](v51);
            v25 = __OFADD__(v50, v52);
            v53 = v50 + v52;
            if (v25)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_0_7();
            if (!v28)
            {
              goto LABEL_109;
            }

            if (__OFADD__(v53, v54))
            {
LABEL_112:
              __break(1u);
              goto LABEL_113;
            }

            MEMORY[0x1CCA7B1D0](v53 + v54);
            OUTLINED_FUNCTION_6_11();
            v55 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v55, a6);
            OUTLINED_FUNCTION_6_11();
            v56 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v56);
            OUTLINED_FUNCTION_6_11();
            v57 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_15_5();
            OUTLINED_FUNCTION_10_10();
            v58 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v306 = (*(v59 + 160))();

            v60 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_16_4();
            CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_5_11();
            v61 = OUTLINED_FUNCTION_1_2();
            v62 = MEMORY[0x1CCA7B260](v61);
            v63 = OUTLINED_FUNCTION_81();
            v64 = MEMORY[0x1CCA7B260](v63);
            v25 = __OFADD__(v62, v64);
            v65 = v62 + v64;
            if (v25)
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }

            v25 = __OFADD__(v65, 2 * v66);
            v67 = v65 + 2 * v66;
            if (v25)
            {
LABEL_119:
              __break(1u);
              goto LABEL_120;
            }

            MEMORY[0x1CCA7B1D0](v67);
            OUTLINED_FUNCTION_6_11();
            v68 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v68, a6);
            OUTLINED_FUNCTION_6_11();
            v69 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v69);
            v70 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_3_14();
            OUTLINED_FUNCTION_10_10();
            v71 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_1_12();
            v73 = (*(v72 + 160))();

            OUTLINED_FUNCTION_12_8();
            v75 = (*(v74 + 168))(v309);
            OUTLINED_FUNCTION_12_8();
            v77 = (*(v76 + 168))(v306);

            OUTLINED_FUNCTION_1_12();
            v79 = (*(v78 + 168))(v73);

            OUTLINED_FUNCTION_11_11();
            OUTLINED_FUNCTION_8_11();
            v80 = sub_1C86F900C();
            v81 = OUTLINED_FUNCTION_81();
            v82 = MEMORY[0x1CCA7B260](v81);
            v25 = __OFADD__(v80, v82);
            v83 = v80 + v82;
            if (v25)
            {
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

            v303 = v73;
            OUTLINED_FUNCTION_0_12();
            sub_1C86F900C();
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            v300 = v79;
            v25 = __OFADD__(v83, 2 * v84);
            v85 = v83 + 2 * v84;
            if (v25)
            {
LABEL_125:
              __break(1u);
              goto LABEL_126;
            }

            MEMORY[0x1CCA7B1D0](v85);
            v86 = OUTLINED_FUNCTION_21_4();
            MEMORY[0x1CCA7B200](v86);
            OUTLINED_FUNCTION_6_11();
            v87 = OUTLINED_FUNCTION_81();
            MEMORY[0x1CCA7B200](v87);
            OUTLINED_FUNCTION_6_11();
            v88 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_25_4();
            OUTLINED_FUNCTION_10_10();
            v89 = CKGenericCondition.init(_:value:negated:)();
            v90 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v90, a6);
            v91 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_19_5();
            OUTLINED_FUNCTION_10_10();
            v92 = CKGenericCondition.init(_:value:negated:)();
            v93 = (*((*MEMORY[0x1E69E7D40] & *v89) + 0xA0))();

            OUTLINED_FUNCTION_11_11();
            v94 = sub_1C86F900C();
            v95 = OUTLINED_FUNCTION_1_2();
            v96 = MEMORY[0x1CCA7B260](v95);
            v25 = __OFADD__(v94, v96);
            v97 = v94 + v96;
            if (v25)
            {
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v98 = OUTLINED_FUNCTION_7_13();
            MEMORY[0x1CCA7B260](v98);
            OUTLINED_FUNCTION_13_8();
            if (v41)
            {
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

            v25 = __OFADD__(v97, 2 * v99);
            v100 = v97 + 2 * v99;
            if (v25)
            {
LABEL_131:
              __break(1u);
              goto LABEL_132;
            }

            MEMORY[0x1CCA7B1D0](v100);
            OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_6_11();
            v101 = OUTLINED_FUNCTION_22_4();
            MEMORY[0x1CCA7B200](v101, a6);
            OUTLINED_FUNCTION_6_11();
            v102 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_25_4();
            OUTLINED_FUNCTION_2_10();
            v103 = CKGenericCondition.init(_:value:negated:)();
            MEMORY[0x1CCA7B200](a3, v316);
            v104 = objc_allocWithZone(v20);
            OUTLINED_FUNCTION_19_5();
            OUTLINED_FUNCTION_2_10();
            v105 = CKGenericCondition.init(_:value:negated:)();
            OUTLINED_FUNCTION_12_8();
            v107 = (*(v106 + 160))();

            OUTLINED_FUNCTION_1_12();
            v109 = (*(v108 + 168))(v107);
            OUTLINED_FUNCTION_12_8();
            v14 = (*(v110 + 168))();

            goto LABEL_86;
          }

          goto LABEL_91;
        }

        __break(1u);
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_8_11();
      v256 = sub_1C86F900C();
      v257 = OUTLINED_FUNCTION_81();
      v258 = MEMORY[0x1CCA7B260](v257);
      v25 = __OFADD__(v256, v258);
      v259 = v256 + v258;
      if (v25)
      {
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v25 = __OFADD__(v259, 2 * v260);
      v261 = v259 + 2 * v260;
      if (v25)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v262 = v11;
      MEMORY[0x1CCA7B1D0](v261);
      v263 = OUTLINED_FUNCTION_21_4();
      MEMORY[0x1CCA7B200](v263);
      OUTLINED_FUNCTION_6_11();
      v264 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v264);
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_24_3();
      v265 = sub_1C86F900C();
      v266 = OUTLINED_FUNCTION_81();
      v267 = MEMORY[0x1CCA7B260](v266);
      v25 = __OFADD__(v265, v267);
      v268 = v265 + v267;
      if (v25)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v25 = __OFADD__(v268, 2 * v269);
      v270 = v268 + 2 * v269;
      if (v25)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      MEMORY[0x1CCA7B1D0](v270);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_6_11();
      v271 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v271);
      OUTLINED_FUNCTION_6_11();
      v272 = type metadata accessor for CKGenericCondition();
      v273 = objc_allocWithZone(v272);
      OUTLINED_FUNCTION_18_3();
      v274 = CKGenericCondition.init(_:value:negated:)();
      v275 = objc_allocWithZone(v272);
      OUTLINED_FUNCTION_18_3();
      v276 = CKGenericCondition.init(_:value:negated:)();
      v14 = (*((*v262 & *v274) + 0xA8))();
    }

    else
    {
      if (!a6)
      {
        v299 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
        v14 = CKGenericCondition.init(value:)(1);
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_11_11();
      v238 = sub_1C86F900C();
      v239 = a6;
      v240 = MEMORY[0x1CCA7B260](v8, a6);
      v25 = __OFADD__(v238, v240);
      v241 = v238 + v240;
      if (v25)
      {
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v25 = __OFADD__(v241, 2 * v242);
      v243 = v241 + 2 * v242;
      if (v25)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      MEMORY[0x1CCA7B1D0](v243);
      OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](v8, a6);
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_11_11();
      v244 = sub_1C86F900C();
      v245 = MEMORY[0x1CCA7B260](v8, v239);
      v25 = __OFADD__(v244, v245);
      v246 = v244 + v245;
      if (v25)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v247 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B260](v247);
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v25 = __OFADD__(v246, 2 * v248);
      v249 = v246 + 2 * v248;
      if (v25)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      MEMORY[0x1CCA7B1D0](v249);
      OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](v8, v239);
      OUTLINED_FUNCTION_6_11();
      v250 = type metadata accessor for CKGenericCondition();
      v251 = objc_allocWithZone(v250);
      OUTLINED_FUNCTION_18_3();
      v252 = CKGenericCondition.init(_:value:negated:)();
      v253 = objc_allocWithZone(v250);
      OUTLINED_FUNCTION_18_3();
      v254 = CKGenericCondition.init(_:value:negated:)();
      OUTLINED_FUNCTION_1_12();
      v14 = (*(v255 + 168))();
    }

LABEL_85:

    goto LABEL_86;
  }

  if (a4)
  {
    if (a6)
    {
      v315 = type metadata accessor for CKGenericCondition();
      v13 = objc_allocWithZone(v315);
      v14 = CKGenericCondition.init(value:)(0);
      v15 = 0;
      do
      {
        v16 = v14;
        v17 = &byte_1F484E678[v15++];
        sub_1C86AC7C0(a1, a2, a3, a4, v8, a6, v17[32]);
        v18 = objc_allocWithZone(v315);
        OUTLINED_FUNCTION_10_10();
        v19 = CKGenericCondition.init(_:value:negated:)();
        v14 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0xA8))();

        v8 = a5;
      }

      while (v15 != 6);

      goto LABEL_86;
    }

    OUTLINED_FUNCTION_11_11();
    v190 = OUTLINED_FUNCTION_81();
    v191 = MEMORY[0x1CCA7B260](v190);
    v192 = MEMORY[0x1CCA7B260](a1, a2);
    v25 = __OFADD__(v191, v192);
    v193 = v191 + v192;
    if (!v25)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_0_7();
      if (!v28)
      {
        goto LABEL_93;
      }

      if (__OFADD__(v193, v194))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      MEMORY[0x1CCA7B1D0](v193 + v194);
      OUTLINED_FUNCTION_6_11();
      v195 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v195);
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](a1, a2);
      OUTLINED_FUNCTION_6_11();
      v311 = a3;
      sub_1C86AC7C0(a1, a2, a3, a4, 0, 0xE000000000000000, 0);
      v196 = type metadata accessor for CKGenericCondition();
      v197 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_2_10();
      v198 = CKGenericCondition.init(_:value:negated:)();
      v199 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_8_11();
      v200 = CKGenericCondition.init(_:value:negated:)();
      v201 = objc_allocWithZone(v196);
      v202 = OUTLINED_FUNCTION_29_4();
      v203 = MEMORY[0x1E69E7D40];
      v204 = (*((*MEMORY[0x1E69E7D40] & *v200) + 0xA8))();

      v205 = objc_allocWithZone(v196);
      v206 = CKGenericCondition.init(_:value:negated:)();
      v308 = v204;
      v207 = (*((*v203 & *v204) + 0xA0))();
      v208 = (*((*v203 & *v198) + 0xA8))();

      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_16_4();
      v209 = sub_1C86F900C();
      v210 = MEMORY[0x1CCA7B260](a1, a2);
      v25 = __OFADD__(v209, v210);
      v211 = v209 + v210;
      if (v25)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v305 = v206;
      v25 = __OFADD__(v211, 2 * v212);
      v213 = v211 + 2 * v212;
      if (v25)
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      MEMORY[0x1CCA7B1D0](v213);
      OUTLINED_FUNCTION_37_2();
      OUTLINED_FUNCTION_6_11();
      MEMORY[0x1CCA7B200](a1, a2);
      OUTLINED_FUNCTION_6_11();
      v214 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_10_10();
      v215 = CKGenericCondition.init(_:value:negated:)();
      v216 = OUTLINED_FUNCTION_22_4();
      MEMORY[0x1CCA7B200](v216, a4);
      v217 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_10_10();
      v218 = CKGenericCondition.init(_:value:negated:)();
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_24_3();
      v219 = sub_1C86F900C();
      v220 = MEMORY[0x1CCA7B260](v311, a4);
      v25 = __OFADD__(v219, v220);
      v221 = v219 + v220;
      if (v25)
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (v41)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v302 = v208;
      v25 = __OFADD__(v221, 2 * v222);
      v223 = v221 + 2 * v222;
      if (v25)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v224 = v215;
      MEMORY[0x1CCA7B1D0](v223);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_6_11();
      v225 = OUTLINED_FUNCTION_22_4();
      MEMORY[0x1CCA7B200](v225, a4);
      OUTLINED_FUNCTION_6_11();
      v226 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_2_10();
      v227 = CKGenericCondition.init(_:value:negated:)();
      MEMORY[0x1CCA7B200](a1, a2);
      v228 = objc_allocWithZone(v196);
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_2_10();
      v314 = CKGenericCondition.init(_:value:negated:)();
      OUTLINED_FUNCTION_41_0();
      v230 = v218;
      v231 = (*(v229 + 160))(v218);
      OUTLINED_FUNCTION_41_0();
      v233 = (*(v232 + 160))(v314);
      OUTLINED_FUNCTION_41_0();
      v235 = (*(v234 + 168))();

      OUTLINED_FUNCTION_41_0();
      v14 = (*(v236 + 168))(v235);

LABEL_86:
      v297 = type metadata accessor for CKTripleCondition();
      v298 = objc_allocWithZone(v297);
      *&v298[OBJC_IVAR___CKTripleCondition_rawCondition] = v14;
      v318.receiver = v298;
      v318.super_class = v297;
      objc_msgSendSuper2(&v318, sel_init);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }

    goto LABEL_90;
  }

  if (a6)
  {
    v111 = type metadata accessor for CKGenericCondition();
    v112 = objc_allocWithZone(v111);
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_8_11();
    CKGenericCondition.init(_:value:negated:)();
    OUTLINED_FUNCTION_5_11();
    v113 = MEMORY[0x1CCA7B260](a1, a2);
    v114 = MEMORY[0x1CCA7B260](v8, a6);
    v25 = __OFADD__(v113, v114);
    v115 = v113 + v114;
    if (!v25)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (!v41)
      {
        v25 = __OFADD__(v115, 2 * v116);
        v117 = v115 + 2 * v116;
        if (v25)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        MEMORY[0x1CCA7B1D0](v117);
        OUTLINED_FUNCTION_6_11();
        v118 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v118, a2);
        OUTLINED_FUNCTION_6_11();
        v119 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v119);
        v120 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_3_14();
        OUTLINED_FUNCTION_10_10();
        v121 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v310 = (*(v122 + 160))();

        v123 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_18_3();
        OUTLINED_FUNCTION_16_4();
        CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_5_11();
        v124 = MEMORY[0x1CCA7B260](a1, a2);
        v125 = OUTLINED_FUNCTION_17_5();
        v126 = MEMORY[0x1CCA7B260](v125);
        v25 = __OFADD__(v124, v126);
        v127 = v124 + v126;
        if (v25)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_0_7();
        if (!v28)
        {
          goto LABEL_101;
        }

        if (__OFADD__(v127, v128))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        MEMORY[0x1CCA7B1D0](v127 + v128);
        OUTLINED_FUNCTION_6_11();
        v129 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v129, a2);
        OUTLINED_FUNCTION_6_11();
        v130 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v130);
        OUTLINED_FUNCTION_6_11();
        v131 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_10_10();
        v132 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v307 = (*(v133 + 160))();

        v134 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_18_3();
        OUTLINED_FUNCTION_24_3();
        CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_5_11();
        v135 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B260](v135);
        v136 = OUTLINED_FUNCTION_45_1();
        v137 = MEMORY[0x1CCA7B260](v136, a2);
        v138 = &v6[v137];
        if (__OFADD__(v6, v137))
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_13_8();
        if (v41)
        {
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v25 = __OFADD__(v138, 2 * v139);
        v140 = &v138[2 * v139];
        if (v25)
        {
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        MEMORY[0x1CCA7B1D0](v140);
        OUTLINED_FUNCTION_6_11();
        v141 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v141);
        OUTLINED_FUNCTION_6_11();
        v142 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v142, a2);
        v143 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_3_14();
        OUTLINED_FUNCTION_10_10();
        v144 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v304 = (*(v145 + 160))();

        v146 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_29_4();
        OUTLINED_FUNCTION_5_11();
        v147 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B260](v147);
        v148 = OUTLINED_FUNCTION_45_1();
        v149 = MEMORY[0x1CCA7B260](v148, a2);
        v25 = __OFADD__(v146, v149);
        v150 = &v146[v149];
        if (v25)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_0_7();
        if (!v28)
        {
          goto LABEL_118;
        }

        if (__OFADD__(v150, v151))
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        MEMORY[0x1CCA7B1D0](&v150[v151]);
        OUTLINED_FUNCTION_6_11();
        v152 = OUTLINED_FUNCTION_17_5();
        MEMORY[0x1CCA7B200](v152);
        OUTLINED_FUNCTION_6_11();
        v153 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v153, a2);
        OUTLINED_FUNCTION_6_11();
        v154 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_10_10();
        v155 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_1_12();
        v157 = (*(v156 + 160))();

        OUTLINED_FUNCTION_12_8();
        v159 = (*(v158 + 168))();
        OUTLINED_FUNCTION_12_8();
        v161 = (*(v160 + 168))(v304);

        OUTLINED_FUNCTION_1_12();
        v163 = (*(v162 + 168))(v157);

        OUTLINED_FUNCTION_11_11();
        OUTLINED_FUNCTION_20_3();
        sub_1C86F900C();
        v164 = OUTLINED_FUNCTION_45_1();
        v165 = MEMORY[0x1CCA7B260](v164, a2);
        v166 = &v161[v165];
        if (__OFADD__(v161, v165))
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_13_8();
        if (v41)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v301 = v157;
        v25 = __OFADD__(v166, 2 * v167);
        v168 = &v166[2 * v167];
        if (v25)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        MEMORY[0x1CCA7B1D0](v168);
        MEMORY[0x1CCA7B200](7303283, 0xE300000000000000);
        OUTLINED_FUNCTION_6_11();
        v169 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v169, a2);
        OUTLINED_FUNCTION_6_11();
        v170 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_25_4();
        OUTLINED_FUNCTION_10_10();
        v171 = CKGenericCondition.init(_:value:negated:)();
        MEMORY[0x1CCA7B200](a5, a6);
        v172 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_19_5();
        OUTLINED_FUNCTION_10_10();
        v173 = CKGenericCondition.init(_:value:negated:)();
        v174 = (*((*MEMORY[0x1E69E7D40] & *v171) + 0xA0))();

        OUTLINED_FUNCTION_11_11();
        OUTLINED_FUNCTION_20_3();
        v175 = sub_1C86F900C();
        v176 = MEMORY[0x1CCA7B260](a5, a6);
        v25 = __OFADD__(v175, v176);
        v177 = v175 + v176;
        if (v25)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_0_12();
        sub_1C86F900C();
        OUTLINED_FUNCTION_13_8();
        if (v41)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v25 = __OFADD__(v177, 2 * v178);
        v179 = v177 + 2 * v178;
        if (v25)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        MEMORY[0x1CCA7B1D0](v179);
        OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_6_11();
        MEMORY[0x1CCA7B200](a5, a6);
        OUTLINED_FUNCTION_6_11();
        v180 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_25_4();
        OUTLINED_FUNCTION_2_10();
        v181 = CKGenericCondition.init(_:value:negated:)();
        v182 = OUTLINED_FUNCTION_30_4();
        MEMORY[0x1CCA7B200](v182, a2);
        v183 = objc_allocWithZone(v111);
        OUTLINED_FUNCTION_19_5();
        OUTLINED_FUNCTION_2_10();
        v184 = CKGenericCondition.init(_:value:negated:)();
        OUTLINED_FUNCTION_12_8();
        v186 = (*(v185 + 160))();

        OUTLINED_FUNCTION_1_12();
        v188 = (*(v187 + 168))(v186);
        OUTLINED_FUNCTION_12_8();
        v14 = (*(v189 + 168))();

        goto LABEL_86;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  OUTLINED_FUNCTION_11_11();
  v278 = v277 - 765;
  v279 = sub_1C86F900C();
  v280 = MEMORY[0x1CCA7B260](a1, a2);
  v25 = __OFADD__(v279, v280);
  v281 = v279 + v280;
  if (v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_0_12();
  sub_1C86F900C();
  OUTLINED_FUNCTION_13_8();
  if (v41)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v25 = __OFADD__(v281, 2 * v282);
  v283 = v281 + 2 * v282;
  if (v25)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v284 = v11;
  MEMORY[0x1CCA7B1D0](v283);
  MEMORY[0x1CCA7B200](v278, 0xE300000000000000);
  OUTLINED_FUNCTION_6_11();
  v285 = OUTLINED_FUNCTION_22_4();
  MEMORY[0x1CCA7B200](v285, a2);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_16_4();
  v286 = sub_1C86F900C();
  v287 = MEMORY[0x1CCA7B260](a1, a2);
  v25 = __OFADD__(v286, v287);
  v288 = v286 + v287;
  if (v25)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  OUTLINED_FUNCTION_0_12();
  sub_1C86F900C();
  OUTLINED_FUNCTION_13_8();
  if (v41)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v25 = __OFADD__(v288, 2 * v289);
  v290 = v288 + 2 * v289;
  if (!v25)
  {
    MEMORY[0x1CCA7B1D0](v290);
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_6_11();
    v291 = OUTLINED_FUNCTION_22_4();
    MEMORY[0x1CCA7B200](v291, a2);
    OUTLINED_FUNCTION_6_11();
    v292 = type metadata accessor for CKGenericCondition();
    v293 = objc_allocWithZone(v292);
    OUTLINED_FUNCTION_18_3();
    v294 = CKGenericCondition.init(_:value:negated:)();
    v295 = objc_allocWithZone(v292);
    OUTLINED_FUNCTION_18_3();
    v296 = CKGenericCondition.init(_:value:negated:)();
    v14 = (*((*v284 & *v294) + 0xA8))();

    goto LABEL_85;
  }

LABEL_150:
  __break(1u);
}

void sub_1C86BBFD8(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t sub_1C86BC048(unint64_t result, void *a2, void *a3)
{
  if (result >> 62 == 1)
  {
    v4 = (result & 0x3FFFFFFFFFFFFFFFLL);
    v5 = a3;
    v6 = v4;

    return a2;
  }

  else if (!(result >> 62))
  {
  }

  return result;
}

id sub_1C86BC15C()
{
  OUTLINED_FUNCTION_34_1();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0xA0);
  v5 = v4;
  v6 = v0;
  v7 = v3();

  v8 = type metadata accessor for CKTripleCondition();
  v9 = objc_allocWithZone(v8);
  *&v9[*(v1 + 3168)] = v7;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1C86BC268()
{
  OUTLINED_FUNCTION_34_1();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0xA8);
  v5 = v4;
  v6 = v0;
  v7 = v3();

  v8 = type metadata accessor for CKTripleCondition();
  v9 = objc_allocWithZone(v8);
  *&v9[*(v1 + 3168)] = v7;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1C86BC374(uint64_t ObjectType)
{
  v2 = ObjectType;
  v3 = *(v1 + OBJC_IVAR___CKTripleCondition_rawCondition);
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
    v4 = v2;
  }

  else
  {
    v4 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v4;
  v9[3] = ObjectType;
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC8);
  v6 = v3;
  OUTLINED_FUNCTION_44_1();
  swift_unknownObjectRetain();
  v7 = v5(v9);

  sub_1C86A5148(v9, &qword_1EC2AD810, &qword_1C86FCC90);
  return v7 & 1;
}

id sub_1C86BC494@<X0>(void *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR___CKTripleCondition_rawCondition);
  v5 = type metadata accessor for CKTripleCondition();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___CKTripleCondition_rawCondition] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = v4;
  result = objc_msgSendSuper2(&v9, sel_init);
  a2[3] = v5;
  *a2 = result;
  return result;
}

uint64_t sub_1C86BC520(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_1C86F947C();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t static CKTripleCondition.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_48_0(a1);
  byte_1EC2ADC31 = v1;
  return result;
}

uint64_t sub_1C86BC674@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC2ADC31;
  return result;
}

uint64_t sub_1C86BC6C0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC2ADC31 = v1;
  return result;
}

void sub_1C86BC708(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CKTripleCondition_rawCondition);
  v4 = sub_1C86F8EEC();
  [a1 encodeObject:v3 forKey:v4];
}

uint64_t CKTripleCondition.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_44_1();
  return CKTripleCondition.init(coder:)(v2);
}

uint64_t CKTripleCondition.init(coder:)(void *a1)
{
  type metadata accessor for CKGenericCondition();
  v2 = sub_1C86F920C();
  if (v2)
  {
    v3 = type metadata accessor for CKTripleCondition();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___CKTripleCondition_rawCondition] = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    v2 = objc_msgSendSuper2(&v6, sel_init);
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_39_0();
  swift_deallocPartialClassInstance();
  return v2;
}

id CKTripleCondition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C86BC978(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id not(_:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v3 = a1;
  OUTLINED_FUNCTION_26_4();
  return sub_1C86B9164(v4, v5, v6, v7);
}

id not(_:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKTripleCondition_rawCondition);
  v2 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v3 = v1;
  OUTLINED_FUNCTION_26_4();
  v8 = sub_1C86B9164(v4, v5, v6, v7);
  v9 = type metadata accessor for CKTripleCondition();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___CKTripleCondition_rawCondition] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

void static CKTripleCondition.havingPredicate(_:matchType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 != 3)
    {
      sub_1C868B6E4();
      swift_allocError();
      *v27 = 1;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 3;
      swift_willThrow();
      return;
    }

    OUTLINED_FUNCTION_32_3(131079);
    OUTLINED_FUNCTION_8_11();
    v3 = sub_1C86F900C();
    v4 = OUTLINED_FUNCTION_17_5();
    v5 = MEMORY[0x1CCA7B260](v4);
    v6 = __OFADD__(v3, v5);
    v7 = v3 + v5;
    if (!v6)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C86F900C();
      OUTLINED_FUNCTION_13_8();
      if (!v9)
      {
        v6 = __OFADD__(v7, 2 * v8);
        v10 = v7 + 2 * v8;
        if (!v6)
        {
          MEMORY[0x1CCA7B1D0](v10);
          v11 = OUTLINED_FUNCTION_21_4();
          MEMORY[0x1CCA7B200](v11);
          v12 = OUTLINED_FUNCTION_7_13();
          MEMORY[0x1CCA7B200](v12);
          v13 = OUTLINED_FUNCTION_17_5();
          MEMORY[0x1CCA7B200](v13);
          v14 = OUTLINED_FUNCTION_7_13();
LABEL_10:
          MEMORY[0x1CCA7B200](v14);
          v23 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
          OUTLINED_FUNCTION_25_4();
          OUTLINED_FUNCTION_2_10();
          v24 = CKGenericCondition.init(_:value:negated:)();
          v25 = type metadata accessor for CKTripleCondition();
          v26 = objc_allocWithZone(v25);
          *&v26[OBJC_IVAR___CKTripleCondition_rawCondition] = v24;
          v28.receiver = v26;
          v28.super_class = v25;
          objc_msgSendSuper2(&v28, sel_init);
          return;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_32_3(131079);
    OUTLINED_FUNCTION_8_11();
    v15 = sub_1C86F900C();
    v16 = OUTLINED_FUNCTION_17_5();
    v17 = MEMORY[0x1CCA7B260](v16);
    v6 = __OFADD__(v15, v17);
    v18 = v15 + v17;
    if (!v6)
    {
      OUTLINED_FUNCTION_0_12();
      v19 = sub_1C86F900C();
      v6 = __OFADD__(v18, v19);
      v20 = v18 + v19;
      if (!v6)
      {
        MEMORY[0x1CCA7B1D0](v20);
        v21 = OUTLINED_FUNCTION_21_4();
        MEMORY[0x1CCA7B200](v21);
        v22 = OUTLINED_FUNCTION_7_13();
        MEMORY[0x1CCA7B200](v22);
        v14 = OUTLINED_FUNCTION_17_5();
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void static CKTripleCondition.havingSubject(_:andAbject:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v2 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
  OUTLINED_FUNCTION_32_3(131079);
  OUTLINED_FUNCTION_16_4();
  v3 = sub_1C86F900C();
  v4 = MEMORY[0x1CCA7B260](v1, v2);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = OUTLINED_FUNCTION_40_1();
  v8 = MEMORY[0x1CCA7B260](v7);
  v5 = __OFADD__(v6, v8);
  v9 = v6 + v8;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_12();
  sub_1C86F900C();
  OUTLINED_FUNCTION_13_8();
  if (v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = __OFADD__(v9, 2 * v10);
  v12 = v9 + 2 * v10;
  if (!v5)
  {
    MEMORY[0x1CCA7B1D0](v12);
    OUTLINED_FUNCTION_37_2();
    v13 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v13);
    MEMORY[0x1CCA7B200](v1, v2);
    v14 = OUTLINED_FUNCTION_7_13();
    MEMORY[0x1CCA7B200](v14);
    v15 = OUTLINED_FUNCTION_40_1();
    MEMORY[0x1CCA7B200](v15);
    v16 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_10_10();
    v17 = CKGenericCondition.init(_:value:negated:)();
    v18 = type metadata accessor for CKTripleCondition();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___CKTripleCondition_rawCondition] = v17;
    v20.receiver = v19;
    v20.super_class = v18;
    objc_msgSendSuper2(&v20, sel_init);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C86BCEB8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v2 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
  v3 = objc_allocWithZone(type metadata accessor for CKTripleCondition());

  CKTripleCondition.init(subject:predicate:object:)(v1, v2, 0, 0, 0, 0);
}

unint64_t sub_1C86BCF4C()
{
  result = qword_1EC2ADC78;
  if (!qword_1EC2ADC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADC78);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_13CoreKnowledge13ConditionTypeO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C86BD29C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1C86BD2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C86BD358(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1C86F928C();
}

uint64_t OUTLINED_FUNCTION_27_4()
{
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *(v3 - 80) = v2;
  *(v3 - 72) = v0;
  *(v3 - 96) = v5;
  *(v3 - 88) = v6;

  return sub_1C86F8D6C();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_1C86F8EEC();
}

id OUTLINED_FUNCTION_29_4()
{

  return CKGenericCondition.init(_:value:negated:)();
}

unint64_t OUTLINED_FUNCTION_33_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C868A058();
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2)
{

  return sub_1C86F948C();
}

void OUTLINED_FUNCTION_37_2()
{

  JUMPOUT(0x1CCA7B200);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_1C86F8EEC();
}

void OUTLINED_FUNCTION_46_1()
{

  JUMPOUT(0x1CCA7B200);
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_50_0()
{

  JUMPOUT(0x1CCA7B200);
}

uint64_t sub_1C86BD734(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (a2)
    {
      v3 = a3;

      MEMORY[0x1CCA7B200](35, 0xE100000000000000);
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8, &qword_1C86FD248);
      v4 = sub_1C86F8F5C();
      v6 = v5;

      MEMORY[0x1CCA7B200](v4, v6);

      return a1;
    }

    else
    {
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8, &qword_1C86FD248);
      return sub_1C86F8F5C();
    }
  }

  else
  {
    sub_1C868B6E4();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 3;
    return swift_willThrow();
  }
}

uint64_t CKHistoricEvent.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKHistoricEvent_identifier);

  return v1;
}

id sub_1C86BD940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_18_3();
  v4 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  a3();
  v11 = sub_1C86F8CCC();
  (*(v6 + 8))(v10, v4);

  return v11;
}

uint64_t sub_1C86BDA28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  sub_1C86F8D0C();
  OUTLINED_FUNCTION_43_0();
  return (*(v5 + 16))(a2, v2 + v4);
}

id sub_1C86BDBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v15 = &v8[OBJC_IVAR___CKHistoricEvent_identifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = OBJC_IVAR___CKHistoricEvent__firstSeen;
  v17 = sub_1C86F8D0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(&v8[v16], a3, v17);
  v19(&v8[OBJC_IVAR___CKHistoricEvent__lastSeen], a4, v17);
  *&v8[OBJC_IVAR___CKHistoricEvent__frequency] = a5;
  *&v8[OBJC_IVAR___CKHistoricEvent__lastDuration] = a7;
  *&v8[OBJC_IVAR___CKHistoricEvent__totalDuration] = a8;
  *&v8[OBJC_IVAR___CKHistoricEvent__metadata] = a6;
  v23.receiver = v8;
  v23.super_class = type metadata accessor for CKHistoricEvent(0);
  v20 = objc_msgSendSuper2(&v23, sel_init);
  v21 = *(v18 + 8);
  v21(a4, v17);
  v21(a3, v17);
  return v20;
}

void sub_1C86BDD28(void *a1)
{
  v2 = v1;
  v4 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = sub_1C86F8EEC();
  v12 = sub_1C86F8EEC();
  [a1 encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR___CKHistoricEvent__firstSeen;
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v10, v2 + v13, v4);
  v15 = sub_1C86F8CCC();
  v16 = *(v6 + 8);
  v16(v10, v4);
  OUTLINED_FUNCTION_17_6();
  v17 = sub_1C86F8EEC();
  [a1 encodeObject:v15 forKey:v17];

  v18 = OBJC_IVAR___CKHistoricEvent__lastSeen;
  swift_beginAccess();
  v14(v10, v2 + v18, v4);
  v19 = sub_1C86F8CCC();
  v16(v10, v4);
  OUTLINED_FUNCTION_15_6();
  v20 = sub_1C86F8EEC();
  [a1 encodeObject:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR___CKHistoricEvent__frequency);
  OUTLINED_FUNCTION_4_13();
  v22 = sub_1C86F8EEC();
  [a1 encodeInteger:v21 forKey:v22];

  v23 = OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_19_6();

  v24 = OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_19_6();

  v25 = sub_1C86F8E8C();

  v26 = sub_1C86F8EEC();
  [a1 encodeObject:v25 forKey:v26];
}

id CKHistoricEvent.init(coder:)(void *a1)
{
  v2 = v1;
  v69 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v68 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_14();
  v7 = v6;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_5();
  v10 = v9;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_5();
  v70 = v12;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v62 - v14;
  v15 = sub_1C869F398(0, &qword_1ED5BC4A0, 0x1E696AEC0);
  v16 = sub_1C86F920C();
  sub_1C869F398(0, &unk_1ED5BC4D0, 0x1E695DF00);
  v17 = sub_1C86F920C();
  v72 = sub_1C86F920C();
  OUTLINED_FUNCTION_4_13();
  v18 = sub_1C86F8EEC();
  v67 = [a1 decodeIntegerForKey_];

  v19 = OUTLINED_FUNCTION_11_12();
  [a1 decodeDoubleForKey_];
  v21 = v20;

  v22 = OUTLINED_FUNCTION_9_12();
  [a1 decodeDoubleForKey_];
  v24 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA70, &qword_1C86FD190);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C86FCC70;
  *(v25 + 32) = v15;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C86FD040;
  *(v26 + 32) = sub_1C869F398(0, &unk_1ED5BC4E0, 0x1E695DEF0);
  *(v26 + 40) = v15;
  v27 = sub_1C86F922C();

  v73 = v16;
  if (!v16)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v36 = sub_1C86F8DBC();
    __swift_project_value_buffer(v36, qword_1ED5BC790);
    v37 = sub_1C86F8DAC();
    v38 = sub_1C86F912C();
    if (OUTLINED_FUNCTION_14_9(v38))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_11(&dword_1C8683000, v39, v40, "unexpected value for identifier when decoding CKHistoricEvent object");
      OUTLINED_FUNCTION_11_1();
    }

    goto LABEL_19;
  }

  v28 = sub_1C86F8EFC();
  v30 = v29;
  if (!v17)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v41 = sub_1C86F8DBC();
    __swift_project_value_buffer(v41, qword_1ED5BC790);
    v42 = sub_1C86F8DAC();
    v43 = sub_1C86F912C();
    if (OUTLINED_FUNCTION_14_9(v43))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_11(&dword_1C8683000, v44, v45, "unexpected value for firstSeen when decoding CKHistoricEvent object");
      OUTLINED_FUNCTION_11_1();
    }

LABEL_19:
    goto LABEL_20;
  }

  v31 = v28;
  sub_1C86F8CDC();
  if (v72)
  {
    sub_1C86F8CDC();
    v66 = v17;
    v65 = v2;
    v64 = v30;
    v63 = v31;
    if (v27)
    {
      sub_1C86BEA04(v27);
      v33 = v32;

      if (v33)
      {

        sub_1C8688AB8(v33, &v76, 0xD000000000000011, 0x80000001C87000E0);

        if (v77)
        {
          if (swift_dynamicCast())
          {
            v35 = *(&v75[0] + 1);
            v34 = *&v75[0];
            type metadata accessor for INInteractionDecoder();
            v52 = sub_1C868B9FC(v34, v35);

            v77 = sub_1C869F398(0, &qword_1EC2ADCA0, 0x1E696E8B8);
            *&v76 = v52;
            sub_1C8689930(&v76, v75);
            swift_isUniquelyReferenced_nonNull_native();
            v74 = v33;
            sub_1C868968C(v75, 0xD000000000000011, 0x80000001C87000E0);
            v53 = v74;
LABEL_30:
            v54 = v68;
            v55 = *(v68 + 16);
            v56 = v71;
            v57 = v69;
            v55(v10, v71, v69);
            v58 = v70;
            v55(v7, v70, v57);
            v59 = objc_allocWithZone(type metadata accessor for CKHistoricEvent(0));
            v46 = sub_1C86BDBB8(v63, v64, v10, v7, v67, v53, v21, v24);

            v60 = *(v54 + 8);
            v60(v58, v57);
            v60(v56, v57);
            swift_getObjectType();
            OUTLINED_FUNCTION_5_12();
            swift_deallocPartialClassInstance();
            return v46;
          }
        }

        else
        {
          sub_1C869DEA8(&v76, &qword_1EC2AD810, &qword_1C86FCC90);
        }

        v53 = v33;
        goto LABEL_30;
      }
    }

    v53 = MEMORY[0x1E69E7CC8];
    goto LABEL_30;
  }

  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v47 = sub_1C86F8DBC();
  __swift_project_value_buffer(v47, qword_1ED5BC790);
  v48 = sub_1C86F8DAC();
  v49 = sub_1C86F912C();
  if (OUTLINED_FUNCTION_14_9(v49))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_10_11(&dword_1C8683000, v50, v51, "unexpected value for lastSeen when decoding CKHistoricEvent object");
    OUTLINED_FUNCTION_11_1();
  }

  else
  {
  }

  (*(v68 + 8))(v71, v69);
LABEL_20:
  swift_getObjectType();
  OUTLINED_FUNCTION_5_12();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1C86BEA04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD20, &qword_1C86FD250);
    v2 = sub_1C86F943C();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1C86A8F14(*(a1 + 48) + 40 * v9, __src);
    sub_1C8686320(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C86A8F14(__dst, v19);
    if (!swift_dynamicCast())
    {
      sub_1C869DEA8(__dst, &qword_1EC2ADD28, &qword_1C86FD990);

      return;
    }

    v5 &= v5 - 1;
    sub_1C8686320(&__dst[40], v20);
    sub_1C869DEA8(__dst, &qword_1EC2ADD28, &qword_1C86FD990);
    v21 = v18;
    sub_1C8689930(v20, v22);
    v10 = v21;
    sub_1C8689930(v22, v23);
    sub_1C8689930(v23, &v21);
    v11 = sub_1C869C918(v10, *(&v10 + 1));
    v12 = v11;
    if (v13)
    {
      *(v2[6] + 16 * v11) = v10;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v14);
      sub_1C8689930(&v21, v14);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
      *(v2[6] + 16 * v11) = v10;
      sub_1C8689930(&v21, (v2[7] + 32 * v11));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v2[2] = v17;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

id CKHistoricEvent.init(_:)()
{
  OUTLINED_FUNCTION_18_3();
  v1 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_2();
  v7 = v6 - v5;
  v8 = *&v0[OBJC_IVAR___CKHistoricEvent_identifier + 8];
  v9 = &v0[OBJC_IVAR___CKHistoricEvent_identifier];
  *v9 = *&v0[OBJC_IVAR___CKHistoricEvent_identifier];
  *(v9 + 1) = v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);

  v11(v12);
  v13 = *(v3 + 32);
  v14 = v13(&v0[OBJC_IVAR___CKHistoricEvent__firstSeen], v7, v1);
  (*((*v10 & *v0) + 0x120))(v14);
  v15 = v13(&v0[OBJC_IVAR___CKHistoricEvent__lastSeen], v7, v1);
  *&v0[OBJC_IVAR___CKHistoricEvent__frequency] = (*((*v10 & *v0) + 0x128))(v15);
  *&v0[OBJC_IVAR___CKHistoricEvent__lastDuration] = (*((*v10 & *v0) + 0x130))();
  *&v0[OBJC_IVAR___CKHistoricEvent__totalDuration] = (*((*v10 & *v0) + 0x138))();
  *&v0[OBJC_IVAR___CKHistoricEvent__metadata] = (*((*v10 & *v0) + 0x140))();
  v18.receiver = v0;
  v18.super_class = type metadata accessor for CKHistoricEvent(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

id CKHistoricEvent.init(from:withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v93 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0, &unk_1C86FD6B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_7_14();
  v85 = v6;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v79 - v8);
  v86 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v88 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_14();
  v81 = v12;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_5();
  v84 = v14;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_5();
  v82 = v16;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x1EEE9AC00](v17);
  v87 = v79 - v18;
  v19 = sub_1C86F8F4C();
  OUTLINED_FUNCTION_99();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_2();
  v25 = v24 - v23;
  sub_1C86F8F3C();
  v26 = sub_1C86F8F0C();
  v28 = v27;
  (*(v21 + 8))(v25, v19);
  if (v28 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v29 = objc_opt_self();
  v30 = sub_1C86F8C9C();
  *&v91 = 0;
  v31 = [v29 JSONObjectWithData:v30 options:0 error:&v91];

  v32 = v91;
  v33 = v26;
  if (!v31)
  {
    v57 = v32;

    v58 = sub_1C86F8BAC();

    swift_willThrow();
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v59 = sub_1C86F8DBC();
    __swift_project_value_buffer(v59, qword_1ED5BC790);

    v60 = sub_1C86F8DAC();
    v61 = sub_1C86F912C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v33;
      v64 = swift_slowAlloc();
      *&v91 = v64;
      *v62 = 136315138;
      v65 = sub_1C8685FDC();

      *(v62 + 4) = v65;
      _os_log_impl(&dword_1C8683000, v60, v61, "Couldn't initialize CKHistoricEvent from string %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
      sub_1C868BEC0(v63, v28);
    }

    else
    {
      sub_1C868BEC0(v33, v28);
    }

    goto LABEL_28;
  }

  v34 = v26;

  sub_1C86F929C();
  swift_unknownObjectRelease();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
  v38 = a4;
  if ((OUTLINED_FUNCTION_3_15(v35, v36, v37, v35) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_11();
    goto LABEL_27;
  }

  v39 = v89;
  v40 = OUTLINED_FUNCTION_17_6();
  sub_1C8688AB8(v39, &v91, v40, 0xE90000000000006ELL);
  if (!v92)
  {
    OUTLINED_FUNCTION_2_11();
LABEL_22:

    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_3_15(v41, v42, v43, MEMORY[0x1E69E6158]) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_11();
LABEL_26:

    goto LABEL_27;
  }

  v45 = v89;
  v44 = v90;
  v46 = OUTLINED_FUNCTION_15_6();
  sub_1C8688AB8(v39, &v91, v46, 0xE800000000000000);
  if (!v92)
  {
    OUTLINED_FUNCTION_2_11();

    goto LABEL_22;
  }

  if ((OUTLINED_FUNCTION_3_15(v47, v48, v49, MEMORY[0x1E69E6158]) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_11();

    goto LABEL_26;
  }

  v79[1] = v89;
  v80 = v45;
  v50 = v90;
  v51 = OUTLINED_FUNCTION_4_13();
  sub_1C8688AB8(v39, &v91, v51, 0xE900000000000079);

  if (v92)
  {
    if (OUTLINED_FUNCTION_3_15(v52, v53, v54, MEMORY[0x1E69E6530]))
    {
      v79[0] = v50;
      v55 = v89;
      sub_1C86D8F08(0xD00000000000001CLL, 0x80000001C8700720, v44, v9);

      v56 = v86;
      if (__swift_getEnumTagSinglePayload(v9, 1, v86) == 1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      else
      {
        v80 = v55;
        v71 = v88[4];
        v71(v87, v9, v56);
        v9 = v85;
        sub_1C86D8F08(0xD00000000000001CLL, 0x80000001C8700720, v79[0], v85);

        if (__swift_getEnumTagSinglePayload(v9, 1, v56) != 1)
        {
          v72 = v82;
          v71(v82, v9, v56);
          v73 = (v88 + 2);
          v74 = v88[2];
          v74(v84, v87, v56);
          v75 = v81;
          v74(v81, v72, v56);
          sub_1C86F8EBC();
          v76 = OUTLINED_FUNCTION_18_3();
          v77 = objc_allocWithZone(type metadata accessor for CKHistoricEvent(v76));
          v69 = sub_1C86BDBB8(v83, v38, v84, v75, v80, v73, 0.0, 0.0);
          sub_1C868BEC0(v34, v28);
          v78 = v88[1];
          v78(v72, v56);
          v78(v87, v56);
          swift_getObjectType();
          OUTLINED_FUNCTION_5_12();
          swift_deallocPartialClassInstance();
          return v69;
        }

        (v88[1])(v87, v56);
        OUTLINED_FUNCTION_2_11();
      }

      v66 = &qword_1EC2ADAC0;
      v67 = &unk_1C86FD6B0;
      v68 = v9;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_2_11();

LABEL_27:

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_11();

LABEL_23:

  v66 = &qword_1EC2AD810;
  v67 = &qword_1C86FCC90;
  v68 = &v91;
LABEL_24:
  sub_1C869DEA8(v68, v66, v67);
LABEL_28:
  swift_getObjectType();
  OUTLINED_FUNCTION_5_12();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C86BF914@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 352))(v1);
  v4 = OUTLINED_FUNCTION_18_3();
  result = type metadata accessor for CKHistoricEvent(v4);
  a1[3] = result;
  *a1 = ObjectType;
  return result;
}

id CKHistoricEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKHistoricEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKHistoricEvent(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CKHistoricEvent(uint64_t a1)
{
  result = qword_1ED5BC510;
  if (!qword_1ED5BC510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C86BFB94(uint64_t a1)
{
  result = sub_1C86F8D0C();
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

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_1C86F8EEC();
}

BOOL OUTLINED_FUNCTION_14_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_19_6()
{

  return [v0 (v2 + 2606)];
}

uint64_t CKClosure.identifier.getter()
{
  v0 = sub_1C86F8D3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C86F8D2C();
  v4 = sub_1C86F8D1C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id CKClosure.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_1_13();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_1C86F929C();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    sub_1C86885EC(&v44);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_4_14(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v36, v38.receiver, v38.super_class, v39) & 1) == 0)
  {
LABEL_9:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v22 = sub_1C86F8DBC();
    __swift_project_value_buffer(v22, qword_1ED5BC790);
    v23 = sub_1C86F8DAC();
    v24 = sub_1C86F912C();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_24;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "unable to decode location in CKClosure initializer";
    goto LABEL_23;
  }

  v13 = OUTLINED_FUNCTION_5_13();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_1C86F929C();
    v15 = swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {

    sub_1C86885EC(&v44);
LABEL_19:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v27 = sub_1C86F8DBC();
    __swift_project_value_buffer(v27, qword_1ED5BC790);
    v23 = sub_1C86F8DAC();
    v24 = sub_1C86F912C();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_24;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "unable to decode entityIdentifier in CKClosure initializer";
LABEL_23:
    _os_log_impl(&dword_1C8683000, v23, v24, v26, v25, 2u);
    OUTLINED_FUNCTION_11_1();
LABEL_24:

    type metadata accessor for CKClosure();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((OUTLINED_FUNCTION_4_14(v15, v16, v17, MEMORY[0x1E69E6158], v18, v19, v20, v21, v37, v38.receiver, v38.super_class, v39) & 1) == 0)
  {

    goto LABEL_19;
  }

  sub_1C86D0AE4(v40, v41, &v44);

  v29 = v44;
  v30 = v45;
  type metadata accessor for CKKnowledgeStore();
  v44 = v29;
  LOBYTE(v45) = v30;
  v31 = sub_1C86851AC(&v44);
  sub_1C8685308(v29, *(&v29 + 1), v30);
  *&v2[OBJC_IVAR___CKClosure_store] = v31;
  v32 = v31;
  v33 = sub_1C86F8EEC();

  v34 = [v32 entityWithIdentifier_];

  *&v2[OBJC_IVAR___CKClosure_entity] = v34;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for CKClosure();
  v35 = objc_msgSendSuper2(&v38, sel_init);

  return v35;
}

void sub_1C86C0598(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CKClosure_store) + OBJC_IVAR___CKKnowledgeStore_location;
  v4 = *(v3 + 16);
  if (*(v3 + 16))
  {
    if (v4 == 1)
    {
      v5 = OUTLINED_FUNCTION_91();
      sub_1C86857FC(v5, v6, 1u);
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_91();
    sub_1C86857FC(v7, v8, 0);
    v9 = OUTLINED_FUNCTION_91();
    MEMORY[0x1CCA7B200](v9);
  }

  v10 = sub_1C86F8EEC();

  v11 = OUTLINED_FUNCTION_91();
  sub_1C8685308(v11, v12, v4);
  v13 = OUTLINED_FUNCTION_1_13();
  [a1 encodeObject:v10 forKey:v13];

  v14 = sub_1C86F8EEC();

  v15 = OUTLINED_FUNCTION_5_13();
  [a1 encodeObject:v14 forKey:v15];
}

id CKClosure.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKClosure.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKClosure();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CKKnowledgeStore.execute(behavior:when:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v12 = OBJC_IVAR___CKLogic_body;
  swift_beginAccess();
  v13 = *(*(a3 + v12) + 16);
  v14 = OBJC_IVAR___CKLogic_negatedBody;
  v15 = swift_beginAccess();
  v16 = *(*(a3 + v14) + 16);
  v17 = __OFADD__(v13, v16);
  v18 = v13 + v16;
  if (v17)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    goto LABEL_4;
  }

  if (!v18)
  {
    sub_1C86C15D8();
    v35 = swift_allocError();
    *v36 = 0;
    a4();

    return;
  }

  v42 = a5;
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x90))(v15);
  v19 = sub_1C86F8EEC();

  v40 = [v7 entityWithIdentifier_];

  ObjectType = swift_getObjectType();
  v37 = *(a2 + 8);
  v37(ObjectType, a2);
  v20 = sub_1C86F8EEC();

  v41 = v7;
  v39 = [v7 entityWithIdentifier_];

  if (qword_1ED5BC708 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = sub_1C86F8DBC();
  __swift_project_value_buffer(v21, qword_1ED5BC790);
  swift_unknownObjectRetain();
  v22 = a3;
  v23 = sub_1C86F8DAC();
  v24 = sub_1C86F910C();
  v38 = v22;

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    swift_slowAlloc();
    *v25 = 136315394;
    v37(ObjectType, a2);
    v26 = sub_1C8685FDC();

    *(v25 + 4) = v26;
    *(v25 + 12) = 2080;
    v27 = *(a3 + v12);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0, &qword_1C86FD140);
    MEMORY[0x1CCA7B2F0](v27, v28);

    v29 = sub_1C8685FDC();

    *(v25 + 14) = v29;
    _os_log_impl(&dword_1C8683000, v23, v24, "will execute behavior with identifier %s every time %s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  MEMORY[0x1CCA7B200](0x2D657275736F6C63, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD40, &unk_1C86FD998);
  sub_1C86F93EC();
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = v42;
  v30[4] = v38;
  v30[5] = v40;
  v30[6] = a1;
  v30[7] = a2;
  v30[8] = v41;
  v31 = *((*MEMORY[0x1E69E7D40] & *v40) + 0x98);
  swift_unknownObjectRetain();
  v32 = v38;

  v33 = v40;
  v34 = v41;
  v31(v39, 0, 0xE000000000000000, sub_1C86C15C4, v30);
}

void sub_1C86C0DAC(id a1, void (*a2)(id), void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v32[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = a1;
    a2(a1);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    sub_1C86C1078(a4, a5, a2, a3);
    objc_autoreleasePoolPop(v17);
    v18 = objc_autoreleasePoolPush();
    sub_1C86C12B4(a4, a5, a2, a3);
    objc_autoreleasePoolPop(v18);
    v19 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v32[0] = 0;
    v21 = [v19 archivedDataWithRootObject:a6 requiringSecureCoding:1 error:v32];
    v22 = v32[0];
    if (v21)
    {
      v23 = sub_1C86F8CAC();
      v25 = v24;

      v26 = sub_1C86F8C9C();
      (*(a7 + 8))(ObjectType, a7);
      v27 = sub_1C86F8EEC();

      v32[4] = a2;
      v32[5] = a3;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 1107296256;
      v32[2] = sub_1C868E054;
      v32[3] = &block_descriptor_7;
      v28 = _Block_copy(v32);

      [a8 setValue:v26 forKey:v27 completionHandler:v28];
      _Block_release(v28);

      sub_1C868BED4(v23, v25);
    }

    else
    {
      v29 = v22;
      v30 = sub_1C86F8BAC();

      swift_willThrow();
      v31 = v30;
      a2(v30);
    }
  }
}

uint64_t sub_1C86C1078(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch(0);
  swift_allocObject();
  v13 = sub_1C86D038C(v12);
  v14 = OBJC_IVAR___CKLogic_body;
  swift_beginAccess();
  v15 = *(*(a1 + v14) + 16);
  if (v15)
  {
    v29 = v4;
    v30 = a4;
    v31 = a3;

    v16 = (v28 + 48);
    v32 = a2;
    do
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 3;

      v20 = v19;
      v21 = sub_1C86D0334();
      dispatch_group_enter(v21);

      if (v18)
      {
        v22 = v17;
      }

      else
      {
        v22 = 42;
      }

      if (v18)
      {
        v23 = v18;
      }

      else
      {
        v23 = 0xE100000000000000;
      }

      v24 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x98);

      v24(v32, v22, v23, sub_1C86C171C, v13);

      --v15;
    }

    while (v15);

    a3 = v31;
    v5 = v29;
  }

  sub_1C86D05FC();
  if (v5)
  {
    v25 = v5;
    a3(v5);
  }
}

uint64_t sub_1C86C12B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch(0);
  swift_allocObject();
  v13 = sub_1C86D038C(v12);
  v14 = OBJC_IVAR___CKLogic_negatedBody;
  swift_beginAccess();
  v15 = *(*(a1 + v14) + 16);
  if (v15)
  {
    v31 = v4;
    v32 = a4;
    v33 = a3;

    v16 = (v30 + 48);
    v36 = a2;
    do
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 3;

      v20 = v19;
      v21 = sub_1C86D0334();
      dispatch_group_enter(v21);

      v34 = 757145889;
      v35 = 0xE400000000000000;
      if (v18)
      {
        v22 = v17;
      }

      else
      {
        v22 = 42;
      }

      if (v18)
      {
        v23 = v18;
      }

      else
      {
        v23 = 0xE100000000000000;
      }

      MEMORY[0x1CCA7B200](v22, v23);

      v25 = v34;
      v24 = v35;
      v26 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x98);

      v26(v36, v25, v24, sub_1C86C1700, v13);

      --v15;
    }

    while (v15);

    a3 = v33;
    v5 = v31;
  }

  sub_1C86D05FC();
  if (v5)
  {
    v27 = v5;
    a3(v5);
  }
}

void sub_1C86C1520(NSObject *a1, __n128 a2)
{
  if (a1)
  {
    v3 = a1;
    sub_1C86D05C4(a1);
    v4 = a1;
  }

  else
  {
    v5 = sub_1C86D0334();
    dispatch_group_leave(v5);
    v4 = v5;
  }
}

unint64_t sub_1C86C15D8()
{
  result = qword_1EC2ADD48;
  if (!qword_1EC2ADD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADD48);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_1C86F8EEC();
}

void sub_1C86C17B8()
{
  v1 = OBJC_IVAR___CKLogic_body;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v12 = v0;
  v14 = *(v2 + 16);

  v3 = 0;
  v4 = (v2 + 48);
  while (v14 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    ++v3;
    v5 = *v4;

    MEMORY[0x1CCA7B200](45, 0xE100000000000000);
    v6 = [v5 description];
    sub_1C86F8EFC();

    OUTLINED_FUNCTION_6_12();

    MEMORY[0x1CCA7B200](46, 0xE100000000000000);

    OUTLINED_FUNCTION_6_12();

    v4 += 3;
  }

  v7 = OBJC_IVAR___CKLogic_negatedBody;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v13 = *(*(v12 + v7) + 16);
  v8 = 0;

  v9 = (v15 + 48);
  while (v13 != v8)
  {
    if (v8 >= *(v15 + 16))
    {
      goto LABEL_11;
    }

    ++v8;
    v10 = *v9;

    MEMORY[0x1CCA7B200](45, 0xE100000000000000);
    v11 = [v10 description];
    sub_1C86F8EFC();

    OUTLINED_FUNCTION_6_12();

    MEMORY[0x1CCA7B200](46, 0xE100000000000000);

    OUTLINED_FUNCTION_6_12();

    v9 += 3;
  }

  MEMORY[0x1CCA7B200](0, 0xE000000000000000);

  MEMORY[0x1CCA7B280](0, 0xE000000000000000);
  OUTLINED_FUNCTION_44_1();
}

uint64_t sub_1C86C1AD0()
{
  [v0 hash];
  v1 = sub_1C86F946C();
  MEMORY[0x1CCA7B200](v1);

  return 0x2D656C7572;
}

id sub_1C86C1B4C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___CKLogic_body] = a1;
  *&v2[OBJC_IVAR___CKLogic_negatedBody] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CKLogic();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C86C1B98(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20, &qword_1C86FD138);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C86FCC70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  v7 = objc_allocWithZone(type metadata accessor for CKLogic());

  v8 = a3;
  return sub_1C86C1B4C(v6, MEMORY[0x1E69E7CC0]);
}

id sub_1C86C1CA8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20, &qword_1C86FD138);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C86FCC70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  v7 = objc_allocWithZone(type metadata accessor for CKLogic());

  v8 = a3;
  return sub_1C86C1B4C(MEMORY[0x1E69E7CC0], v6);
}

id sub_1C86C1D54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v7 = sub_1C86F8EFC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  v11 = a5(v7, v9, v10);

  return v11;
}

void sub_1C86C1E08(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a4;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v36 = v5;
  v9 = *&v5[v8];
  v10 = *(v9 + 16);
  v34 = a3;
  v11 = &a3[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];

  v12 = 0;
  v13 = v9 + 48;
  v37 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v14 = (v13 + 24 * v12);
  while (v10 != v12)
  {
    if (v12 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    v16 = *(v14 - 2);
    v15 = *(v14 - 1);
    v17 = *v14;
    if (a2)
    {
      if (!v15)
      {
        goto LABEL_19;
      }

      v18 = v16 == a1 && v15 == a2;
      if (!v18 && (sub_1C86F948C() & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v15)
    {
      goto LABEL_19;
    }

    v19 = *v11 == *&v17[OBJC_IVAR___CKKnowledgeStoreEntity_identifier] && *(v11 + 1) == *&v17[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
    if (v19 || (sub_1C86F948C() & 1) != 0)
    {

      v35 = v17;
      v20 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C869CFC8(0, *(v37 + 16) + 1, 1);
        v20 = v37;
      }

      v13 = v9 + 48;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1C869CFC8((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v20 = v37;
        v13 = v9 + 48;
      }

      ++v12;
      *(v20 + 16) = v23;
      v37 = v20;
      v24 = (v20 + 24 * v22);
      v24[4] = v16;
      v24[5] = v15;
      v24[6] = v35;
      goto LABEL_2;
    }

LABEL_19:
    v14 += 3;
    ++v12;
  }

  v25 = *(v37 + 16);

  if (v25)
  {
    sub_1C86C15D8();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }

  else
  {
    v27 = *a5;
    swift_beginAccess();

    v28 = v34;
    sub_1C869C6F8();
    v29 = *(*&v36[v27] + 16);
    sub_1C869C784(v29);
    v30 = *&v36[v27];
    *(v30 + 16) = v29 + 1;
    v31 = (v30 + 24 * v29);
    v31[4] = a1;
    v31[5] = a2;
    v31[6] = v28;
    *&v36[v27] = v30;
    swift_endAccess();
    v32 = v36;
  }
}

id sub_1C86C20EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v9 = sub_1C86F8EFC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a4;
  v13 = a1;
  a6(v9, v11, v12);

  return v13;
}

id sub_1C86C21E0(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CKLogic_body;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v4 = *(v2 + v3);
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();

  sub_1C86B1460(v5);
  v6 = v4;
  v7 = OBJC_IVAR___CKLogic_negatedBody;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v8 = *(v2 + v7);
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();

  sub_1C86B1460(v9);
  v10 = objc_allocWithZone(type metadata accessor for CKLogic());
  return sub_1C86C1B4C(v6, v8);
}

id CKLogic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKLogic.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKLogic();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKKnowledgeStore.inferLink(to:withPredicate:when:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  aBlock[7] = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v4;
  v24 = a1;

  v9 = a4;
  sub_1C86D0150();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;

  v14 = v12;
  OUTLINED_FUNCTION_44_1();
  v15 = sub_1C86F8EEC();
  aBlock[4] = sub_1C8690344;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C868E054;
  aBlock[3] = &block_descriptor_8;
  v16 = _Block_copy(aBlock);

  [v8 inferLinkTo:v24 withPredicate:v15 when:v9 completionHandler:v16];
  _Block_release(v16);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 3;
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v11)
    {

      v22 = OUTLINED_FUNCTION_8();
      return v23(v22);
    }

    v18 = *v11;
  }

  swift_willThrow();

  v19 = OUTLINED_FUNCTION_8();
  return v20(v19);
}

void sub_1C86C27EC(void *a1, void *a2, void (**a3)(void, void), void *a4, void *a5, void (**a6)(void, void))
{
  v14 = sub_1C86F8DEC();
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v100 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_1C86F8E6C();
  v99 = *(v101 - 8);
  v16 = MEMORY[0x1EEE9AC00](v101);
  v98 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v92 - v18;
  v19 = OBJC_IVAR___CKLogic_body;
  swift_beginAccess();
  v105 = v19;
  v20 = *(*(a4 + v19) + 16);
  v21 = OBJC_IVAR___CKLogic_negatedBody;
  v22 = swift_beginAccess();
  v23 = *(*(a4 + v21) + 16);
  v24 = __OFADD__(v20, v23);
  v25 = v20 + v23;
  if (v24)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_4:
    v27 = sub_1C86F8DBC();
    __swift_project_value_buffer(v27, qword_1ED5BC790);

    v28 = a3;
    v29 = a1;
    v30 = a4;
    v31 = sub_1C86F8DAC();
    v32 = sub_1C86F910C();

    v33 = os_log_type_enabled(v31, v32);
    v94 = v28;
    v95 = v21;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v93 = v35;
      v96 = swift_slowAlloc();
      v106 = v96;
      *v34 = 136315650;
      *(v34 + 4) = sub_1C8685FDC();
      *(v34 + 12) = 2112;
      *(v34 + 14) = v29;
      *v35 = v29;
      *(v34 + 22) = 2080;
      v36 = v7;
      v37 = *(v105 + a4);
      v38 = v29;

      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0, &qword_1C86FD140);
      MEMORY[0x1CCA7B2F0](v37, v39);
      v7 = v36;

      v40 = sub_1C8685FDC();

      *(v34 + 24) = v40;
      v6 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_1C8683000, v31, v32, "will infer link %s to %@ every time %s", v34, 0x20u);
      v41 = v93;
      sub_1C86C3D20(v93);
      MEMORY[0x1CCA7C540](v41, -1, -1);
      v42 = v96;
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v42, -1, -1);
      MEMORY[0x1CCA7C540](v34, -1, -1);
    }

    v43 = v104;
    v44 = objc_autoreleasePoolPush();
    sub_1C86D0150();
    v96 = type metadata accessor for CKTimedDispatch(0);
    swift_allocObject();
    v45 = sub_1C86D038C(v43);
    v46 = *((*v6 & *v7) + 0x98);

    v46(v29, v97, v94, sub_1C86C3FF4, v45);

    sub_1C86D05FC();

    objc_autoreleasePoolPop(v44);
    v47 = v105;
    v48 = MEMORY[0x1E69E7F48];
    if (*(*(v105 + a4) + 16))
    {
      v97 = 0;
      v49 = v98;
      sub_1C86F8E5C();
      v50 = v100;
      *v100 = *(*(v47 + a4) + 16);
      v51 = *v48;
      v53 = v102;
      v52 = v103;
      (*(v102 + 104))(v50, v51, v103);
      MEMORY[0x1CCA7B0C0](v49, v50);
      (*(v53 + 8))(v50, v52);
      (*(v99 + 8))(v49, v101);
      swift_allocObject();
      v54 = sub_1C86D038C(v43);
      v55 = *(*(v47 + a4) + 16);
      if (v55)
      {
        v93 = a4;
        v94 = a6;

        v56 = (v92 + 48);
        v105 = v7;
        do
        {
          v57 = *(v56 - 2);
          v58 = *(v56 - 1);
          v59 = *v56;
          v56 += 3;

          v60 = v59;
          v61 = objc_autoreleasePoolPush();
          v62 = sub_1C86D0334();
          dispatch_group_enter(v62);

          if (v58)
          {
            v63 = v57;
          }

          else
          {
            v63 = 42;
          }

          if (v58)
          {
            v64 = v58;
          }

          else
          {
            v64 = 0xE100000000000000;
          }

          v65 = *((*MEMORY[0x1E69E7D40] & *v60) + 0x98);

          v65(v105, v63, v64, sub_1C86B50C0, v54);

          objc_autoreleasePoolPop(v61);

          --v55;
        }

        while (v55);

        a6 = v94;
        v43 = v104;
        v7 = v105;
        a4 = v93;
      }

      v66 = v97;
      sub_1C86D05FC();
      v67 = v95;
      if (v66)
      {
        goto LABEL_34;
      }

      v48 = MEMORY[0x1E69E7F48];
    }

    else
    {
      v67 = v95;
    }

    if (*(*(a4 + v67) + 16))
    {
      v97 = 0;
      v94 = a6;
      v71 = v98;
      sub_1C86F8E5C();
      v72 = v100;
      *v100 = *(*(a4 + v67) + 16);
      v73 = *v48;
      v75 = v102;
      v74 = v103;
      (*(v102 + 104))(v72, v73, v103);
      MEMORY[0x1CCA7B0C0](v71, v72);
      (*(v75 + 8))(v72, v74);
      (*(v99 + 8))(v71, v101);
      swift_allocObject();
      v76 = sub_1C86D038C(v43);
      v77 = *(*(a4 + v67) + 16);
      if (v77)
      {

        v105 = v7;
        v78 = (v104 + 48);
        do
        {
          v80 = *(v78 - 2);
          v79 = *(v78 - 1);
          v81 = *v78;
          v78 += 3;

          v82 = v81;
          v83 = objc_autoreleasePoolPush();
          v84 = sub_1C86D0334();
          dispatch_group_enter(v84);

          v106 = 757145889;
          v107 = 0xE400000000000000;
          if (v79)
          {
            v85 = v80;
          }

          else
          {
            v85 = 42;
          }

          if (v79)
          {
            v86 = v79;
          }

          else
          {
            v86 = 0xE100000000000000;
          }

          MEMORY[0x1CCA7B200](v85, v86);

          v87 = v106;
          v88 = v107;
          v89 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x98);

          v89(v105, v87, v88, sub_1C86B50C0, v76);

          objc_autoreleasePoolPop(v83);

          --v77;
        }

        while (v77);

        v7 = v105;
      }

      v66 = v97;
      sub_1C86D05FC();
      a6 = v94;
      if (v66)
      {
LABEL_34:
        v90 = v66;
        v91 = sub_1C86F8B9C();
        (a6)[2](a6, v91);

        goto LABEL_37;
      }
    }

    a6[2](a6, 0);

    goto LABEL_37;
  }

  if (v25)
  {
    v97 = a2;
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v22);
    v26 = sub_1C86F8EEC();

    v7 = [a5 entityWithIdentifier_];

    if (qword_1ED5BC708 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  sub_1C86C15D8();
  v68 = swift_allocError();
  *v69 = 0;
  v70 = sub_1C86F8B9C();
  (a6)[2](a6, v70);

LABEL_37:
  _Block_release(a6);
}

void CKKnowledgeStore.inferLink(to:withPredicate:when:completionHandler:)(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v104 = a5;
  v13 = sub_1C86F8DEC();
  OUTLINED_FUNCTION_99();
  v102 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  v99 = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v98 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v90 - v21;
  v22 = OBJC_IVAR___CKLogic_body;
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v23 = *(*(v22 + a4) + 16);
  v24 = OBJC_IVAR___CKLogic_negatedBody;
  OUTLINED_FUNCTION_8_3();
  v25 = swift_beginAccess();
  v26 = *(*(a4 + v24) + 16);
  v27 = __OFADD__(v23, v26);
  v28 = v23 + v26;
  if (v27)
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_4;
  }

  if (!v28)
  {
    sub_1C86C15D8();
    v50 = swift_allocError();
    *v51 = 0;
    v104();

    return;
  }

  v96 = a2;
  v97 = v22;
  v93 = v24;
  v22 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v25);
  sub_1C86F8EEC();
  OUTLINED_FUNCTION_44_1();

  a2 = [v7 entityWithIdentifier_];

  if (qword_1ED5BC708 != -1)
  {
    goto LABEL_39;
  }

LABEL_4:
  v29 = sub_1C86F8DBC();
  __swift_project_value_buffer(v29, qword_1ED5BC790);

  v30 = a1;
  v31 = a4;
  v32 = sub_1C86F8DAC();
  v33 = a3;
  v34 = sub_1C86F910C();

  v35 = os_log_type_enabled(v32, v34);
  v95 = a6;
  v105 = a2;
  v92 = v33;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v106 = v94;
    *v36 = 136315650;
    *(v36 + 4) = sub_1C8685FDC();
    *(v36 + 12) = 2112;
    *(v36 + 14) = v30;
    *v37 = v30;
    *(v36 + 22) = 2080;
    v38 = v13;
    v39 = *(v97 + a4);
    v40 = v30;

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0, &qword_1C86FD140);
    MEMORY[0x1CCA7B2F0](v39, v41);
    v13 = v38;

    v42 = sub_1C8685FDC();

    *(v36 + 24) = v42;
    v22 = MEMORY[0x1E69E7D40];
    _os_log_impl(&dword_1C8683000, v32, v34, "will infer link %s to %@ every time %s", v36, 0x20u);
    sub_1C86C3D20(v37);
    v43 = v37;
    a2 = v105;
    MEMORY[0x1CCA7C540](v43, -1, -1);
    v44 = v94;
    swift_arrayDestroy();
    MEMORY[0x1CCA7C540](v44, -1, -1);
    MEMORY[0x1CCA7C540](v36, -1, -1);
  }

  v45 = objc_autoreleasePoolPush();
  sub_1C86D0150();
  v94 = type metadata accessor for CKTimedDispatch(0);
  swift_allocObject();
  v46 = OUTLINED_FUNCTION_44_1();
  v47 = sub_1C86D038C(v46);
  v48 = *((*v22 & *a2) + 0x98);

  v48(v30, v96, v92, sub_1C86C3D18, v47);

  v49 = v47;
  sub_1C86D05FC();
  v52 = v104;

  objc_autoreleasePoolPop(v45);
  v53 = v97;
  v54 = MEMORY[0x1E69E7F48];
  if (*(*(v97 + a4) + 16))
  {
    v96 = 0;
    v55 = v98;
    sub_1C86F8E5C();
    v56 = OUTLINED_FUNCTION_1_14();
    v57(v56);
    OUTLINED_FUNCTION_5_14();
    (*(v54 + 8))(v49, v13);
    (*(v99 + 8))(v55, v101);
    swift_allocObject();
    v58 = sub_1C86D038C(0);
    v59 = *(*(v53 + a4) + 16);
    if (v59)
    {
      v92 = v13;
      v97 = a4;

      v60 = (v91 + 48);
      do
      {
        v62 = *(v60 - 2);
        v61 = *(v60 - 1);
        v63 = *v60;
        v60 += 3;

        v64 = v63;
        v65 = objc_autoreleasePoolPush();
        v66 = sub_1C86D0334();
        dispatch_group_enter(v66);

        if (v61)
        {
          v67 = v62;
        }

        else
        {
          v67 = 42;
        }

        if (v61)
        {
          v68 = v61;
        }

        else
        {
          v68 = 0xE100000000000000;
        }

        v69 = *((*MEMORY[0x1E69E7D40] & *v64) + 0x98);

        v69(v105, v67, v68, sub_1C86B504C, v58);

        objc_autoreleasePoolPop(v65);

        --v59;
      }

      while (v59);

      v52 = v104;
      a2 = v105;
      a4 = v97;
      v13 = v92;
    }

    v49 = v58;
    v70 = v96;
    sub_1C86D05FC();
    v71 = v93;
    v54 = MEMORY[0x1E69E7F48];
    if (v70)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v71 = v93;
  }

  if (*(*(a4 + v71) + 16))
  {
    v96 = 0;
    v72 = v98;
    sub_1C86F8E5C();
    v73 = OUTLINED_FUNCTION_1_14();
    v74(v73);
    OUTLINED_FUNCTION_5_14();
    (*(v54 + 8))(v49, v13);
    (*(v99 + 8))(v72, v101);
    swift_allocObject();
    v75 = sub_1C86D038C(0);
    v76 = *(*(a4 + v71) + 16);
    if (v76)
    {

      v77 = (v103 + 48);
      do
      {
        v78 = *(v77 - 2);
        v79 = *(v77 - 1);
        v80 = *v77;
        v77 += 3;

        v81 = v80;
        v82 = objc_autoreleasePoolPush();
        v83 = sub_1C86D0334();
        dispatch_group_enter(v83);

        v106 = 757145889;
        v107 = 0xE400000000000000;
        if (v79)
        {
          v84 = v78;
        }

        else
        {
          v84 = 42;
        }

        if (v79)
        {
          v85 = v79;
        }

        else
        {
          v85 = 0xE100000000000000;
        }

        MEMORY[0x1CCA7B200](v84, v85);

        v86 = v106;
        v87 = v107;
        v88 = *((*MEMORY[0x1E69E7D40] & *v81) + 0x98);

        v88(v105, v86, v87, sub_1C86B50C0, v75);

        objc_autoreleasePoolPop(v82);

        --v76;
      }

      while (v76);

      v52 = v104;
      a2 = v105;
    }

    v70 = v96;
    sub_1C86D05FC();
    if (v70)
    {
LABEL_35:
      v89 = v70;
      (v52)(v70);

      return;
    }
  }

  (v52)(0);
}

uint64_t sub_1C86C3C10(void *a1)
{
  if (a1)
  {
    return sub_1C86D05C4(a1);
  }

  else
  {
    return sub_1C86F91FC();
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86C3D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0, qword_1C86FD218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for CKLogicError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C86C3FA0()
{
  result = qword_1EC2ADD60;
  if (!qword_1EC2ADD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADD60);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_14()
{
  v3 = *(v2 - 208);
  *v3 = *(*(v0 + v1) + 16);
  return v3;
}

void OUTLINED_FUNCTION_5_14()
{

  JUMPOUT(0x1CCA7B0C0);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPersistentStoreHandler.verify(path:)(CoreKnowledge::CKPath path)
{
  v3 = *path.path._rawValue;
  v4 = *(*path.path._rawValue + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = v1;
  if (v4 == 1)
  {
    v6 = v3[4];
    v7 = v3[5];
    objc_allocWithZone(type metadata accessor for CKTripleCondition());

    CKTripleCondition.init(subject:predicate:object:)(v6, v7, 0, 0, 0, 0);
    v9 = v8;
    v10 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xF8))();
    if (v2)
    {
    }

    else
    {
      v15 = sub_1C86B4BD8(v10);

      return v15 > 0;
    }

    return v11;
  }

  if (!*(v1 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    return 0;
  }

  v43 = v2;
  v12 = *(path.path._rawValue + 9);
  if (*(path.path._rawValue + 8))
  {
    v13 = v3[5];
    v45 = v3[4];

    v14 = 3;
  }

  else
  {
    v45 = 0;
    v13 = 0;
    v14 = 2;
  }

  v16 = v4;
  if ((v12 & 1) == 0)
  {
    v16 = v4 + 1;
  }

  v44 = v3 + 4;

  v50 = 0;
  v49 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v47 = v4;
  v48 = v3;
  v46 = v13;
  v51 = v14;
  while (1)
  {
    v19 = v16;
    if (v14 < v16)
    {
      v20 = v16 - 2;
      v16 -= 2;
      if (v19 - 2 < 0)
      {
        goto LABEL_49;
      }

      goto LABEL_18;
    }

    if ((v16 != v14) | v49 & 1)
    {
      break;
    }

    v20 = v16 - 2;
    v49 = 1;
    v16 = v14;
    if (v19 - 2 < 0)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

LABEL_18:
    v21 = v3[2];
    if (v20 >= v21)
    {
      goto LABEL_50;
    }

    v22 = &v3[2 * v19];
    v24 = *v22;
    v23 = v22[1];
    if (v4 >= v19)
    {
      v27 = v19 - 1;
      if (v27 >= v21)
      {
        goto LABEL_51;
      }

      v28 = &v44[2 * v27];
      v25 = *v28;
      v26 = v28[1];
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    MEMORY[0x1CCA7B200](0xD00000000000002BLL, 0x80000001C8700AD0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4B00();
      v18 = v37;
    }

    v29 = *(v18 + 16);
    if (v29 >= *(v18 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_12();
      v18 = v38;
    }

    *(v18 + 16) = v29 + 1;
    v30 = (v18 + 40 * v29);
    v30[4] = v24;
    v30[5] = v23;
    v30[7] = MEMORY[0x1E69E6158];
    v30[8] = &off_1F4850E78;
    if (v26)
    {
      MEMORY[0x1CCA7B200](0x6A626F20646E6120, 0xEF3F203D20746365);
      v31 = *(v18 + 16);
      v4 = v47;
      v3 = v48;
      if (v31 >= *(v18 + 24) >> 1)
      {
        OUTLINED_FUNCTION_10_12();
        v18 = v39;
      }

      *(v18 + 16) = v31 + 1;
      v32 = (v18 + 40 * v31);
      v32[4] = v25;
      v32[5] = v26;
      v32[7] = MEMORY[0x1E69E6158];
      v32[8] = &off_1F4850E78;
    }

    else
    {
      v4 = v47;
      v3 = v48;
    }

    v14 = v51;
    if (v20 < v51)
    {
      if (v46)
      {

        MEMORY[0x1CCA7B200](0xD000000000000010, 0x80000001C8700B20);
        v33 = *(v18 + 16);
        if (v33 >= *(v18 + 24) >> 1)
        {
          OUTLINED_FUNCTION_10_12();
          v18 = v40;
        }

        *(v18 + 16) = v33 + 1;
        v34 = (v18 + 40 * v33);
        v34[4] = v45;
        v34[5] = v46;
        v34[7] = MEMORY[0x1E69E6158];
        v34[8] = &off_1F4850E78;
        v14 = v51;
      }

      v35 = sub_1C86F904C();
      MEMORY[0x1CCA7B200](v35);
    }

    else
    {
      result = MEMORY[0x1CCA7B200](0xD000000000000011, 0x80000001C8700B00);
      if (__OFADD__(v50++, 1))
      {
        goto LABEL_52;
      }
    }
  }

  sub_1C86A9000(0, 0xE000000000000000, MEMORY[0x1E69E7CC0]);
  if (v43)
  {

    return v11;
  }

  sub_1C86D452C(v18);

  sub_1C86D49F8(0);

  sub_1C86C4548();
  v42 = v41;

  if (v42)
  {

    return 1;
  }

  return 0;
}

uint64_t static CKPath.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  a3[4] = 257;

  sub_1C869C6E0();
  v6 = *(*a3 + 16);
  result = sub_1C869C76C(v6);
  v8 = *a3;
  *(v8 + 16) = v6 + 1;
  v9 = v8 + 16 * v6;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  return result;
}

uint64_t static CKPath.to(_:withPredicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = CKPath.to(_:withPredicate:)(*&a1, *&a2);
  if (v7)
  {

    *a3 = v7;
    *(a3 + 8) = v8 & 1;
    *(a3 + 9) = v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CoreKnowledge::CKPath_optional __swiftcall CKPath.to(_:withPredicate:)(Swift::String _, Swift::String withPredicate)
{
  v6 = v2;
  if (*(v3 + 9) == 1)
  {
    object = withPredicate._object;
    countAndFlagsBits = withPredicate._countAndFlagsBits;
    v9 = _._object;
    OUTLINED_FUNCTION_14_10();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4A44();
      v5 = v15;
    }

    v10 = *(v5 + 16);
    v11 = v10 + 1;
    if (v10 >= *(v5 + 24) >> 1)
    {
      sub_1C86C4A44();
      v5 = v16;
    }

    *(v5 + 16) = v11;
    v12 = v5 + 16 * v10;
    *(v12 + 32) = countAndFlagsBits;
    *(v12 + 40) = object;
    v13 = *(v5 + 24);

    if ((v10 + 2) > (v13 >> 1))
    {
      OUTLINED_FUNCTION_16_6();
      v5 = _._countAndFlagsBits;
    }

    *(v5 + 16) = v10 + 2;
    v14 = v5 + 16 * v11;
    *(v14 + 32) = v4;
    *(v14 + 40) = v9;
    *v6 = v5;
    *(v6 + 8) = v17 | 0x100;
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  result.is_nil = withPredicate._countAndFlagsBits;
  result.value = _;
  return result;
}

CoreKnowledge::CKPath_optional __swiftcall CKPath.withPredicate(_:)(CoreKnowledge::CKPath_optional result)
{
  v5 = v1;
  if (*(v2 + 9) == 1)
  {
    v6 = *&result.value.fromSubject;
    OUTLINED_FUNCTION_14_10();

    result.value.path._rawValue = swift_isUniquelyReferenced_nonNull_native();
    if ((result.value.path._rawValue & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4A44();
      rawValue = result.value.path._rawValue;
    }

    v8 = rawValue[2];
    if (v8 >= rawValue[3] >> 1)
    {
      OUTLINED_FUNCTION_16_6();
      rawValue = result.value.path._rawValue;
    }

    rawValue[2] = v8 + 1;
    v9 = &rawValue[2 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v6;
    *v5 = rawValue;
    *(v5 + 8) = v10;
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 0;
  }

  result.is_nil = v7;
  return result;
}

uint64_t CKKnowledgeStore.verify(path:completionHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(v3 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v10 = *(v3 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR___CKKnowledgeStore_backingStore), v9);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  return (*(v10 + 32))(&v12, a2, a3, v9, v10);
}

void sub_1C86C4A44()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD998, &unk_1C86FD0B0);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C7E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_9_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4B00()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
      v7 = OUTLINED_FUNCTION_15_7(v6);
      OUTLINED_FUNCTION_5_15(v7);
      OUTLINED_FUNCTION_12_9(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_1_15();
        sub_1C869C824(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8, &unk_1C86FD090);
    OUTLINED_FUNCTION_6_13(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C86C4BD8(uint64_t *a1, int a2)
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

uint64_t sub_1C86C4C18(uint64_t result, int a2, int a3)
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

void sub_1C86C4C68()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADB70, &qword_1C86FD110);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C804(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_9_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4D28()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD80, &unk_1C86FDB10);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C8687B4C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_9_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4DDC()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      sub_1C86B132C();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869F3D8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_9_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4E94()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD78, &qword_1C86FDB08);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C8687B4C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
    OUTLINED_FUNCTION_6_13(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C4F54()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADC10, &qword_1C86FD6F8);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C7E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_9_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C5008()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20, &qword_1C86FD138);
      v7 = OUTLINED_FUNCTION_15_7(v6);
      OUTLINED_FUNCTION_5_15(v7);
      OUTLINED_FUNCTION_12_9(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_1_15();
        sub_1C869C84C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0, &qword_1C86FD140);
    OUTLINED_FUNCTION_6_13(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C50CC()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD68, &qword_1C86FDAF8);
      v6 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_5_15(v6);
      OUTLINED_FUNCTION_4_15(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_15();
        sub_1C869C804(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD70, &qword_1C86FDB00);
    OUTLINED_FUNCTION_6_13(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C86C518C()
{
  OUTLINED_FUNCTION_8_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_12();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA10, &qword_1C86FD128);
      v7 = OUTLINED_FUNCTION_15_7(v6);
      OUTLINED_FUNCTION_5_15(v7);
      OUTLINED_FUNCTION_12_9(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_1_15();
        sub_1C869C84C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA18, &qword_1C86FD130);
    OUTLINED_FUNCTION_6_13(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_14_10()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_16_6()
{

  sub_1C86C4A44();
}

id sub_1C86C5358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDeviceKnowledgeStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C86C53E0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  v5 = __src;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v7 = HIDWORD(a2) - a2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(a3);
LABEL_6:
      if (v7)
      {
        if (v7 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9A0, &unk_1C86FCF48);
          v4 = swift_allocObject();
          v10 = _swift_stdlib_malloc_size(v4);
          v4[2] = v7;
          v4[3] = 2 * v10 - 64;
        }

        __src = memcpy(v4 + 4, v5, v7);
      }

LABEL_10:
      *a4 = v4;
      break;
  }

  return __src;
}

void sub_1C86C54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for CKHistoricEvent(0);
  v5 = sub_1C86F8E8C();
  (*(a3 + 16))(a3, v4, v5);
}

uint64_t CKPermanentEventStore.historicEvents()()
{
  v24 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v1);
  v17 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  OUTLINED_FUNCTION_6_1();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = dispatch_semaphore_create(0);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C86934D4;
  *(v7 + 24) = v6;
  v22 = sub_1C86933E0;
  v23 = v7;
  OUTLINED_FUNCTION_5_2();
  v19 = 1107296256;
  v20 = sub_1C86ADE9C;
  v21 = &block_descriptor_9;
  v8 = _Block_copy(aBlock);

  v9 = v5;

  [v17 historicEventsWithCompletionHandler_];
  _Block_release(v8);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 3;
  }

  else
  {
    swift_beginAccess();
    if (!*v3)
    {

      swift_beginAccess();
      v7 = *(v4 + 16);

      v15 = OUTLINED_FUNCTION_12();
      v16(v15);
      return v7;
    }

    v11 = *v3;
  }

  swift_willThrow();

  v12 = OUTLINED_FUNCTION_12();
  v13(v12);
  return v7;
}

void CKPermanentEventStore.historicEvents(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1C86C7830;
  v8[5] = v6;
  OUTLINED_FUNCTION_0_14();
  v8[1] = 1107296256;
  v8[2] = sub_1C86A3860;
  v8[3] = &block_descriptor_15_0;
  v7 = _Block_copy(v8);

  [v5 dictionaryRepresentationWithCompletionHandler_];
  _Block_release(v7);
}

uint64_t sub_1C86C5A5C(uint64_t a1, uint64_t a2, void (*a3)(void, void *))
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v41 = MEMORY[0x1E69E7CC8];
LABEL_4:
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C8686320(*(a2 + 56) + 32 * v12, v46);
    *&v47 = v15;
    *(&v47 + 1) = v14;
    sub_1C8689930(v46, &v48);

LABEL_11:
    v50 = v47;
    v51[0] = v48;
    v51[1] = v49;
    v16 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {

      a3(0, v41);
    }

    v17 = v50;
    sub_1C8689930(v51, &v47);
    sub_1C8686320(&v47, v46);
    v18 = type metadata accessor for CKHistoricEvent(0);
    if (swift_dynamicCast())
    {
      v39 = v44;
      swift_isUniquelyReferenced_nonNull_native();
      *&v46[0] = v41;
      v19 = sub_1C869C918(v17, v16);
      if (__OFADD__(v41[2], (v20 & 1) == 0))
      {
        goto LABEL_39;
      }

      v21 = v19;
      v42 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD88, &qword_1C86FDCA0);
      if (sub_1C86F93FC())
      {
        v22 = sub_1C869C918(v17, v16);
        if ((v42 & 1) != (v23 & 1))
        {
          goto LABEL_43;
        }

        v21 = v22;
        if (v42)
        {
          goto LABEL_34;
        }
      }

      else if (v42)
      {
        goto LABEL_34;
      }

      v29 = *&v46[0];
      *(*&v46[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v30 = (v29[6] + 16 * v21);
      *v30 = v17;
      v30[1] = v16;
      *(v29[7] + 8 * v21) = v39;

      __swift_destroy_boxed_opaque_existential_0(&v47);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    sub_1C8686320(&v47, v46);
    if (swift_dynamicCast())
    {
      objc_allocWithZone(v18);

      v24 = CKHistoricEvent.init(from:withIdentifier:)(v44, v45, v17, v16);
      if (!v24)
      {
        __swift_destroy_boxed_opaque_existential_0(&v47);

        goto LABEL_4;
      }

      v39 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      *&v46[0] = v41;
      v25 = sub_1C869C918(v17, v16);
      if (__OFADD__(v41[2], (v26 & 1) == 0))
      {
        goto LABEL_40;
      }

      v21 = v25;
      v43 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD88, &qword_1C86FDCA0);
      if (sub_1C86F93FC())
      {
        v27 = sub_1C869C918(v17, v16);
        if ((v43 & 1) != (v28 & 1))
        {
          goto LABEL_43;
        }

        v21 = v27;
        if (v43)
        {
LABEL_34:

          v41 = *&v46[0];
          v34 = *(*&v46[0] + 56);
          v35 = *(v34 + 8 * v21);
          *(v34 + 8 * v21) = v39;

          __swift_destroy_boxed_opaque_existential_0(&v47);
          goto LABEL_4;
        }
      }

      else if (v43)
      {
        goto LABEL_34;
      }

      v29 = *&v46[0];
      *(*&v46[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v36 = (v29[6] + 16 * v21);
      *v36 = v17;
      v36[1] = v16;
      *(v29[7] + 8 * v21) = v39;

      __swift_destroy_boxed_opaque_existential_0(&v47);
      v37 = v29[2];
      v32 = __OFADD__(v37, 1);
      v33 = v37 + 1;
      if (v32)
      {
        goto LABEL_42;
      }

LABEL_36:
      v41 = v29;
      v29[2] = v33;
      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_0(&v47);
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      goto LABEL_11;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

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
  result = sub_1C86F94BC();
  __break(1u);
  return result;
}

void sub_1C86C5FC0(uint64_t a1, char *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = sub_1C86F8D0C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    a3(a1);
  }

  else
  {
    v30 = a7;
    if (a2)
    {
      (*(v16 + 16))(v18, a5, v15);
      v19 = OBJC_IVAR___CKHistoricEvent__firstSeen;
      swift_beginAccess();
      v20 = *(v16 + 40);
      v21 = a2;
      v20(&a2[v19], v18, v15);
      swift_endAccess();
      v22 = *(a6 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
      v23 = v21;
      v24 = sub_1C86F8EEC();
      v36 = a3;
      v37 = a4;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v34 = sub_1C868E054;
      v35 = &block_descriptor_89;
      v25 = _Block_copy(&aBlock);

      [v22 setValue:v23 forKey:v24 completionHandler:v25];
      _Block_release(v25);
    }

    else
    {
      sub_1C868B6E4();
      v26 = swift_allocError();
      v28 = v27;
      aBlock = 0;
      v33 = 0xE000000000000000;
      sub_1C86F936C();
      MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
      MEMORY[0x1CCA7B200](v30, v31);
      MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
      v29 = v33;
      *v28 = aBlock;
      *(v28 + 8) = v29;
      *(v28 + 32) = 1;
      a3(v26);
    }
  }
}

void sub_1C86C631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v31 = a7;
  v28 = a6;
  v29 = a4;
  v12 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1C86F8EEC();
  (*(v14 + 16))(v18, a1, v12);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  *(v21 + 24) = a5;
  (*(v14 + 32))(v21 + v19, v18, v12);
  v22 = v30;
  *(v21 + v20) = v30;
  v23 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a2;
  v23[1] = a3;
  v38 = v31;
  v39 = v21;
  OUTLINED_FUNCTION_5_2();
  v35 = 1107296256;
  OUTLINED_FUNCTION_1_16();
  v36 = v24;
  v37 = v33;
  v25 = _Block_copy(aBlock);

  v26 = v22;

  v27 = v32;
  [v26 historicEventWithIdentifier:v32 completionHandler:{v25, v28}];
  _Block_release(v25);
}

void sub_1C86C64FC(uint64_t a1, char *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1C86F8D0C();
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v39 - v19;
  if (a1)
  {
    a3(a1);
  }

  else
  {
    v44 = a6;
    v45 = a4;
    v46 = a7;
    if (a2)
    {
      v42 = a8;
      v43 = a3;
      v21 = a5;
      v22 = v17;
      v41 = *(v17 + 16);
      v41(&v39 - v19, a5, v16);
      v23 = OBJC_IVAR___CKHistoricEvent__lastSeen;
      swift_beginAccess();
      v24 = *(v22 + 40);
      v25 = a2;
      v26 = &a2[v23];
      v27 = v21;
      v40 = v24;
      v24(v26, v20, v16);
      v28 = swift_endAccess();
      (*((*MEMORY[0x1E69E7D40] & *v25) + 0x118))(v28);
      v29 = sub_1C86F8CEC();
      (*(v22 + 8))(v20, v16);
      if (v29 == 1)
      {
        v41(v20, v27, v16);
        v30 = OBJC_IVAR___CKHistoricEvent__firstSeen;
        swift_beginAccess();
        v40(&v25[v30], v20, v16);
        swift_endAccess();
        *&v25[OBJC_IVAR___CKHistoricEvent__frequency] = 1;
        *&v25[OBJC_IVAR___CKHistoricEvent__lastDuration] = 0;
        *&v25[OBJC_IVAR___CKHistoricEvent__totalDuration] = 0;
      }

      v31 = *(v44 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
      v32 = v25;
      v33 = sub_1C86F8EEC();
      v51 = v43;
      v52 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v48 = 1107296256;
      v49 = sub_1C868E054;
      v50 = &block_descriptor_86;
      v34 = _Block_copy(&aBlock);

      [v31 setValue:v32 forKey:v33 completionHandler:v34];
      _Block_release(v34);
    }

    else
    {
      sub_1C868B6E4();
      v35 = swift_allocError();
      v37 = v36;
      aBlock = 0;
      v48 = 0xE000000000000000;
      sub_1C86F936C();
      MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
      MEMORY[0x1CCA7B200](v46, a8);
      MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
      v38 = v48;
      *v37 = aBlock;
      *(v37 + 8) = v38;
      *(v37 + 32) = 1;
      a3(v35);
    }
  }
}

uint64_t sub_1C86C6974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a5);
  sub_1C86F8CDC();
  v19 = sub_1C86F8EFC();
  v21 = v20;
  OUTLINED_FUNCTION_6_1();
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = a1;
  a8(v17, v19, v21, a7, v22);

  return (*(v14 + 8))(v17, v12);
}

void CKPermanentEventStore.setFrequency(_:forEventWithIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1C86F8EEC();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v12[5] = v5;
  v12[6] = a2;
  v12[7] = a3;
  v16[4] = sub_1C86C7A24;
  v16[5] = v12;
  OUTLINED_FUNCTION_0_14();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_1_16();
  v16[2] = v13;
  v16[3] = &block_descriptor_33;
  v14 = _Block_copy(v16);

  v15 = v5;

  [v15 historicEventWithIdentifier:v11 completionHandler:v14];
  _Block_release(v14);
}

void sub_1C86C6BD4(uint64_t a1, char *a2, void (*a3)(uint64_t, char *, void (*)(void), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    a3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a2)
  {
    *&a2[OBJC_IVAR___CKHistoricEvent__frequency] = a5;
    v12 = *(a6 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
    v13 = a2;
    v14 = sub_1C86F8EEC();
    v19[4] = a3;
    v19[5] = a4;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1C868E054;
    v19[3] = &block_descriptor_83;
    v15 = _Block_copy(v19);

    [v12 setValue:v13 forKey:v14 completionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    sub_1C868B6E4();
    v16 = swift_allocError();
    v18 = v17;
    sub_1C86F936C();
    MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
    MEMORY[0x1CCA7B200](a7, a8);
    MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
    *v18 = 0;
    *(v18 + 8) = 0xE000000000000000;
    *(v18 + 32) = 1;
    (a3)(v16);
  }
}

void sub_1C86C6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = sub_1C86F8EEC();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a8;
  *(v17 + 40) = v8;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  v21[4] = a6;
  v21[5] = v17;
  OUTLINED_FUNCTION_0_14();
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_1_16();
  v21[2] = v18;
  v21[3] = a7;
  v19 = _Block_copy(v21);

  v20 = v8;

  [v20 historicEventWithIdentifier:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_1C86C7040(uint64_t a1, char *a2, void (*a3)(void), uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (a1)
  {
    (a3)(a1, a2, a3, a4, a5, a7, a8, a9, a6);
  }

  else if (a2)
  {
    *&a2[*a9] = a6;
    v12 = *(a5 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
    v13 = a2;
    OUTLINED_FUNCTION_17_5();
    v14 = sub_1C86F8EEC();
    v21[4] = a3;
    v21[5] = a4;
    OUTLINED_FUNCTION_0_14();
    OUTLINED_FUNCTION_1();
    v21[2] = v15;
    v21[3] = a10;
    v16 = _Block_copy(v21);

    [v12 setValue:v13 forKey:v14 completionHandler:v16];
    _Block_release(v16);
  }

  else
  {
    sub_1C868B6E4();
    v17 = swift_allocError();
    v19 = v18;
    sub_1C86F936C();
    MEMORY[0x1CCA7B200](0x2068637573206F4ELL, 0xEE0020746E657665);
    v20 = OUTLINED_FUNCTION_17_5();
    MEMORY[0x1CCA7B200](v20);
    MEMORY[0x1CCA7B200](0xD00000000000002CLL, 0x80000001C8700BE0);
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 32) = 1;
    (a3)(v17);
  }
}

uint64_t sub_1C86C7258(void *a1, int a2, uint64_t a3, void *aBlock, double a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_1C86F8EFC();
  v15 = v14;
  OUTLINED_FUNCTION_6_1();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a1;
  a8(v13, v15, a7, v16, a5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.deleteEvent(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  v23[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_1C86F8DBC();
  __swift_project_value_buffer(v3, qword_1ED5BC790);

  v4 = sub_1C86F8DAC();
  v5 = sub_1C86F910C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136380675;
    OUTLINED_FUNCTION_17_5();
    *(v6 + 4) = sub_1C8685FDC();
    OUTLINED_FUNCTION_7_16();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v14, v15);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v16, v17);
  }

  v18 = *(v2 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  OUTLINED_FUNCTION_17_5();
  v19 = sub_1C86F8EEC();
  v23[0] = 0;
  v20 = [v18 removeValueForKey:v19 error:v23];

  if (v20)
  {
    v21 = v23[0];
  }

  else
  {
    v22 = v23[0];
    sub_1C86F8BAC();

    swift_willThrow();
  }
}

void CKPermanentEventStore.deleteEvent(withIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_1C86F8DBC();
  __swift_project_value_buffer(v8, qword_1ED5BC790);

  v9 = sub_1C86F8DAC();
  v10 = sub_1C86F910C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136380675;
    *(v11 + 4) = sub_1C8685FDC();
    OUTLINED_FUNCTION_7_16();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v19);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540](v20);
  }

  v21 = *(v5 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  v22 = sub_1C86F8EEC();
  v25[4] = a3;
  v25[5] = a4;
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1();
  v25[2] = v23;
  v25[3] = &block_descriptor_48;
  v24 = _Block_copy(v25);

  [v21 removeValueForKey:v22 completionHandler:v24];
  _Block_release(v24);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1C86C7950(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1C86F8D0C() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = (v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return a3(a1, a2, v10, v11, v3 + v7, v9, v13, v14);
}

uint64_t objectdestroy_29Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C86C7BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  v7 = sub_1C86F908C();
  v5 = OUTLINED_FUNCTION_55_0();
  v6(v5);
}

uint64_t sub_1C86C7C5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  sub_1C868FEF0(a2, v11);
  v5 = v12;
  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_54_0();
    (*(v7 + 16))(v2);
    sub_1C86F947C();
    (*(v7 + 8))(v2, v5);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v8 = OUTLINED_FUNCTION_55_0();
  v9(v8);

  return swift_unknownObjectRelease();
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier;
  v4 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v5 = *(v3 + 8);
  v6 = (a2 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v7 = v6[1];
  if (v4 == *v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_23_3(v4, v5, *v6, v7);
  }
}

uint64_t CKKnowledgeStoreEntity.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);

  return v1;
}

id sub_1C86C7E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___CKKnowledgeStoreEntity_store] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CKKnowledgeStoreEntity();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C86C7E6C(uint64_t a1)
{
  sub_1C868FEF0(a1, v6);
  if (!v7)
  {
    sub_1C86A5148(v6, &qword_1EC2AD810, &qword_1C86FCC90);
    goto LABEL_11;
  }

  type metadata accessor for CKKnowledgeStoreEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (![*(v1 + OBJC_IVAR___CKKnowledgeStoreEntity_store) isEqual_])
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier) == *&v5[OBJC_IVAR___CKKnowledgeStoreEntity_identifier] && *(v1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8) == *&v5[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_1C86F948C();
  }

  return v3 & 1;
}

uint64_t sub_1C86C8040()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_store)) + 0x88))();
  v2 = MEMORY[0x1CCA7B280](v1);

  return MEMORY[0x1CCA7B280](*(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier), *(v0 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8)) ^ v2;
}

void sub_1C86C8120(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_54_0();
  v5 = v3;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  OUTLINED_FUNCTION_76();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  v9 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v8;
  v10[4] = v9;
  v11 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x68);

  v12 = v9;
  v11(a1, a2, sub_1C86934C8, v10);
  v13 = v12;

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    v14 = *v7;
    if (!*v7)
    {

      OUTLINED_FUNCTION_8_3();
      swift_beginAccess();
      sub_1C868FEF0(v8 + 16, a3);

      v25 = OUTLINED_FUNCTION_25_5();
      v26(v25);
      return;
    }

    v16 = v14;
  }

  swift_willThrow();

  v17 = OUTLINED_FUNCTION_25_5();
  v18(v17);
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v19 = sub_1C86F8DBC();
  __swift_project_value_buffer(v19, qword_1ED5BC790);

  v20 = v14;
  v21 = sub_1C86F8DAC();
  v22 = sub_1C86F912C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_1C8685FDC();
    *(v23 + 12) = 2080;
    swift_getErrorValue();
    sub_1C86F94EC();
    v24 = sub_1C8685FDC();

    *(v23 + 14) = v24;
    _os_log_impl(&dword_1C8683000, v21, v22, "key=%s. %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  else
  {
  }

  *a3 = 0u;
  a3[1] = 0u;
}

void sub_1C86C868C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57_0();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_39_1();
  a9 = 0;
  a10 = 0xE000000000000000;
  v29 = OUTLINED_FUNCTION_14_11();
  v30 = MEMORY[0x1CCA7B260](v29);
  v31 = OUTLINED_FUNCTION_13();
  v32 = MEMORY[0x1CCA7B260](v31);
  v33 = __OFADD__(v30, v32);
  v34 = v30 + v32;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_1_8();
    v33 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (!v33)
    {
      MEMORY[0x1CCA7B1D0](v36);
      v37 = OUTLINED_FUNCTION_14_11();
      MEMORY[0x1CCA7B200](v37);
      v38 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v38);
      v39 = OUTLINED_FUNCTION_13();
      MEMORY[0x1CCA7B200](v39);
      v40 = *(v26 + OBJC_IVAR___CKKnowledgeStoreEntity_store);
      v41 = sub_1C86F8EEC();

      OUTLINED_FUNCTION_18_4();
      a10 = 1107296256;
      a11 = sub_1C86AD354;
      a12 = &block_descriptor_10;
      v42 = _Block_copy(&a9);

      [v40 valueForKey:v41 completionHandler:v42];
      _Block_release(v42);

      OUTLINED_FUNCTION_32_4();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C86C87FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    OUTLINED_FUNCTION_41_1();
    v9 = v33;
    v30 = v3;
    OUTLINED_FUNCTION_24_4();
    v11 = (a1 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      if ((v4 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_14_11();
        v14 = sub_1C86F8FFC();
      }

      else
      {
        v14 = sub_1C86F900C();
      }

      v15 = v14;
      if ((v13 & 0x1000000000000000) != 0)
      {
        result = sub_1C86F8FFC();
      }

      else
      {
        v16 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v16 = v12;
        }

        OUTLINED_FUNCTION_38_1(v16);
        result = sub_1C86F900C();
      }

      v18 = __OFADD__(v15, result);
      v19 = v15 + result;
      if (v18)
      {
        break;
      }

      result = OUTLINED_FUNCTION_1_8();
      v20 = v19 + result;
      if (__OFADD__(v19, result))
      {
        goto LABEL_21;
      }

      MEMORY[0x1CCA7B1D0](v20);
      v21 = OUTLINED_FUNCTION_14_11();
      MEMORY[0x1CCA7B200](v21);
      v22 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v22);
      MEMORY[0x1CCA7B200](v12, v13);

      v24 = *(v33 + 16);
      v23 = *(v33 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_8_1(v23);
        sub_1C869CE68(v26, v24 + 1, 1);
      }

      *(v33 + 16) = v24 + 1;
      v25 = v33 + 16 * v24;
      *(v25 + 32) = 0;
      *(v25 + 40) = 0xE000000000000000;
      v11 += 2;
      if (!--v8)
      {
        v7 = a2;
        v6 = a3;
        v5 = v30;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    v27 = (*(v5 + OBJC_IVAR___CKKnowledgeStoreEntity_store) + OBJC_IVAR___CKKnowledgeStore_backingStore);
    v28 = v27[3];
    v29 = v27[4];
    __swift_project_boxed_opaque_existential_0(v27, v28);
    (*(*(v29 + 8) + 40))(v9, v7, v6, v28);
  }

  return result;
}

uint64_t sub_1C86C8A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    OUTLINED_FUNCTION_41_1();
    v9 = v31;
    OUTLINED_FUNCTION_24_4();
    v11 = (a1 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      if ((v4 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_14_11();
        v14 = sub_1C86F8FFC();
      }

      else
      {
        v14 = sub_1C86F900C();
      }

      v15 = v14;
      if ((v13 & 0x1000000000000000) != 0)
      {
        result = sub_1C86F8FFC();
      }

      else
      {
        v16 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v16 = v12;
        }

        OUTLINED_FUNCTION_38_1(v16);
        result = sub_1C86F900C();
      }

      v18 = __OFADD__(v15, result);
      v19 = v15 + result;
      if (v18)
      {
        break;
      }

      result = OUTLINED_FUNCTION_1_8();
      v20 = v19 + result;
      if (__OFADD__(v19, result))
      {
        goto LABEL_21;
      }

      MEMORY[0x1CCA7B1D0](v20);
      v21 = OUTLINED_FUNCTION_14_11();
      MEMORY[0x1CCA7B200](v21);
      v22 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v22);
      MEMORY[0x1CCA7B200](v12, v13);

      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_8_1(v23);
        sub_1C869CE68(v26, v24 + 1, 1);
      }

      *(v31 + 16) = v24 + 1;
      v25 = v31 + 16 * v24;
      *(v25 + 32) = 0;
      *(v25 + 40) = 0xE000000000000000;
      v11 += 2;
      if (!--v8)
      {
        v6 = a3;
        v7 = a2;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_11();
    v27 = swift_allocObject();
    *(v27 + 16) = v7;
    *(v27 + 24) = v6;
    v28 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x70);

    v28(v9, sub_1C86CF60C, v27);
  }

  return result;
}

uint64_t sub_1C86C8C34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_11:
    a3(a1, v4);
  }

  v11 = a1;
  v12 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C869CEE8(0, v3, 0);
  v6 = a2 + 32;
  v4 = v19;
  while (1)
  {
    sub_1C868FEF0(v6, v15);
    if (!v16)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v18 = sub_1C869F398(0, &qword_1ED5BC4C0, 0x1E695DFB0);
      *&v17 = v8;
      goto LABEL_7;
    }

    result = sub_1C868FEF0(v15, &v13);
    if (!v14)
    {
      break;
    }

    sub_1C8689930(&v13, &v17);
LABEL_7:
    sub_1C86A5148(v15, &qword_1EC2AD810, &qword_1C86FCC90);
    v19 = v4;
    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1C869CEE8((v9 > 1), v10 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v10 + 1;
    sub_1C8689930(&v17, (v4 + 32 * v10 + 32));
    v6 += 32;
    if (!--v3)
    {
      a3 = v12;
      a1 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C86C8E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void (*a11)(uint64_t a1, void *a2), void *a12, uint64_t (*a13)(void *a1), uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_104();
  a28 = v30;
  a29 = v31;
  v32 = v29;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1C869F2D8(*&v29[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, &a9);
  v39 = a12;
  v40 = a13;
  __swift_project_boxed_opaque_existential_0(&a9, a12);
  v41 = (*(v40 + 5))(v39, v40);
  __swift_destroy_boxed_opaque_existential_0(&a9);
  a9 = 0;
  a10 = 0xE000000000000000;
  v42 = OUTLINED_FUNCTION_47_2();
  v43 = MEMORY[0x1CCA7B260](v42);
  v44 = OUTLINED_FUNCTION_81();
  v45 = MEMORY[0x1CCA7B260](v44);
  v46 = __OFADD__(v43, v45);
  v47 = v43 + v45;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_1_8();
    v46 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (!v46)
    {
      MEMORY[0x1CCA7B1D0](v49);
      v50 = OUTLINED_FUNCTION_47_2();
      MEMORY[0x1CCA7B200](v50);
      v51 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v51);
      v52 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v52);
      v53 = a9;
      v54 = a10;
      __swift_project_boxed_opaque_existential_0(v38, v38[3]);
      v55 = sub_1C86F947C();
      v56 = sub_1C86F8EEC();
      [v41 setObject:v55 forKey:v56];
      swift_unknownObjectRelease();

      sub_1C8686320(v38, &a15);
      v57 = swift_allocObject();
      sub_1C8689930(&a15, (v57 + 16));
      *(v57 + 48) = v32;
      *(v57 + 56) = v53;
      *(v57 + 64) = v54;
      *(v57 + 72) = v36;
      *(v57 + 80) = v34;
      a13 = sub_1C86CF614;
      a14 = v57;
      a9 = MEMORY[0x1E69E9820];
      a10 = 1107296256;
      a11 = sub_1C868E054;
      a12 = &block_descriptor_15_1;
      v58 = _Block_copy(&a9);
      v59 = v32;

      [v41 writeWithCompletionHandler_];
      _Block_release(v58);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_101();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C86C90C0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v10 = sub_1C86F8DBC();
    __swift_project_value_buffer(v10, qword_1ED5BC790);
    sub_1C8686320(a2, v25);
    v11 = a3;

    v12 = a1;
    v13 = sub_1C86F8DAC();
    v14 = sub_1C86F912C();

    if (os_log_type_enabled(v13, v14))
    {
      v21 = a6;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 138478595;
      sub_1C8689930(v25, &v23);
      sub_1C869F398(0, &unk_1EC2AD7D8, 0x1E69E58C0);
      swift_dynamicCast();
      *(v15 + 4) = v22;
      *v16 = v22;
      *(v15 + 12) = 2081;
      *(v15 + 14) = sub_1C8685FDC();
      *(v15 + 22) = 2081;
      *(v15 + 24) = sub_1C8685FDC();
      *(v15 + 32) = 2080;
      swift_getErrorValue();
      sub_1C86F94EC();
      v18 = sub_1C8685FDC();

      *(v15 + 34) = v18;
      _os_log_impl(&dword_1C8683000, v13, v14, "error attaching attribute %{private}@ to entity %{private}s (key=%{private}s. %s", v15, 0x2Au);
      sub_1C86A5148(v16, &unk_1EC2ADAA0, qword_1C86FD218);
      MEMORY[0x1CCA7C540](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v17, -1, -1);
      v19 = v15;
      a6 = v21;
      MEMORY[0x1CCA7C540](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }

  return (a6)(a1, a2, a3, a4, a5);
}

void sub_1C86C947C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C869F2D8(*&v3[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, &aBlock);
  v5 = *(&v51 + 1);
  v6 = v52;
  __swift_project_boxed_opaque_existential_0(&aBlock, *(&v51 + 1));
  v45 = (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v42 = v3;
  v11 = &v3[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v12 = (v8 + 63) >> 6;
  v44 = a1;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v44 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1C8686320(*(v44 + 56) + 32 * v16, v46);
      *&v47 = v19;
      *(&v47 + 1) = v18;
      sub_1C8689930(v46, &v48);

LABEL_10:
      aBlock = v47;
      v51 = v48;
      v52 = v49;
      v20 = *(&v47 + 1);
      if (!*(&v47 + 1))
      {
        break;
      }

      v21 = aBlock;
      sub_1C8689930(&v51, &v47);
      v22 = *v11;
      v23 = v11[1];
      *&v46[0] = 0;
      *(&v46[0] + 1) = 0xE000000000000000;
      if ((v23 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_47_2();
        v25 = sub_1C86F8FFC();
      }

      else
      {
        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = v22;
        }

        OUTLINED_FUNCTION_38_1(v24);
        v25 = sub_1C86F900C();
      }

      v26 = v25;
      if ((v20 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_81();
        v28 = sub_1C86F8FFC();
      }

      else
      {
        v27 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v27 = v21;
        }

        OUTLINED_FUNCTION_38_1(v27);
        v28 = sub_1C86F900C();
      }

      v29 = __OFADD__(v26, v28);
      v30 = v26 + v28;
      if (v29)
      {
        goto LABEL_28;
      }

      v31 = OUTLINED_FUNCTION_1_8();
      v29 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v29)
      {
        goto LABEL_29;
      }

      MEMORY[0x1CCA7B1D0](v32);
      v33 = OUTLINED_FUNCTION_47_2();
      MEMORY[0x1CCA7B200](v33);
      v34 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v34);
      v35 = OUTLINED_FUNCTION_81();
      MEMORY[0x1CCA7B200](v35);

      __swift_project_boxed_opaque_existential_0(&v47, *(&v48 + 1));
      v36 = sub_1C86F947C();
      v37 = sub_1C86F8EEC();

      [v45 setObject:v36 forKey:v37];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(&v47);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_76();
    v38 = swift_allocObject();
    v38[2] = v44;
    v38[3] = v42;
    v38[4] = a2;
    v38[5] = a3;
    *&v52 = sub_1C86CF628;
    *(&v52 + 1) = v38;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v51 = sub_1C868E054;
    *(&v51 + 1) = &block_descriptor_21_0;
    v39 = _Block_copy(&aBlock);

    v40 = v42;

    [v45 writeWithCompletionHandler_];
    _Block_release(v39);
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v10 = 0;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        goto LABEL_10;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C86C9838(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t, void *))
{
  if (a1)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v7 = sub_1C86F8DBC();
    __swift_project_value_buffer(v7, qword_1ED5BC790);

    v8 = a3;
    v9 = a1;
    v10 = sub_1C86F8DAC();
    v11 = sub_1C86F912C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136381187;
      sub_1C86F8EAC();
      v14 = sub_1C8685FDC();

      *(v12 + 4) = v14;
      *(v12 + 12) = 2113;
      *(v12 + 14) = v8;
      *v13 = v8;
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v15 = v8;
      sub_1C86F94EC();
      v16 = sub_1C8685FDC();

      *(v12 + 24) = v16;
      _os_log_impl(&dword_1C8683000, v10, v11, "error attaching attributes %{private}s to entity %{private}@. %s", v12, 0x20u);
      sub_1C86A5148(v13, &unk_1EC2ADAA0, qword_1C86FD218);
      MEMORY[0x1CCA7C540](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v18, -1, -1);
      MEMORY[0x1CCA7C540](v12, -1, -1);
    }
  }

  return a4(a1, a2, a3);
}

void sub_1C86C9B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void (*a11)(uint64_t a1, void *a2), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57_0();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_39_1();
  a9 = 0;
  a10 = 0xE000000000000000;
  v29 = OUTLINED_FUNCTION_14_11();
  v30 = MEMORY[0x1CCA7B260](v29);
  v31 = OUTLINED_FUNCTION_13();
  v32 = MEMORY[0x1CCA7B260](v31);
  v33 = __OFADD__(v30, v32);
  v34 = v30 + v32;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_1_8();
    v33 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (!v33)
    {
      MEMORY[0x1CCA7B1D0](v36);
      v37 = OUTLINED_FUNCTION_14_11();
      MEMORY[0x1CCA7B200](v37);
      v38 = OUTLINED_FUNCTION_7_13();
      MEMORY[0x1CCA7B200](v38);
      v39 = OUTLINED_FUNCTION_13();
      MEMORY[0x1CCA7B200](v39);
      v40 = *(v26 + OBJC_IVAR___CKKnowledgeStoreEntity_store);
      v41 = sub_1C86F8EEC();

      OUTLINED_FUNCTION_18_4();
      a10 = 1107296256;
      a11 = sub_1C868E054;
      a12 = &block_descriptor_24;
      v42 = _Block_copy(&a9);

      [v40 removeValueForKey:v41 completionHandler:v42];
      _Block_release(v42);

      OUTLINED_FUNCTION_32_4();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C86C9CDC(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1C86F8EFC();
  v13 = v12;
  OUTLINED_FUNCTION_6_1();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_1C86C9D98(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v10 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  v36 = a5;
  *(v35 + 16) = a5;
  _Block_copy(a5);
  if (qword_1ED5BC708 != -1)
  {
    swift_once();
  }

  v13 = sub_1C86F8DBC();
  __swift_project_value_buffer(v13, qword_1ED5BC790);
  v14 = a4;

  v15 = a1;
  v16 = sub_1C86F8DAC();
  v17 = sub_1C86F911C();

  v18 = os_log_type_enabled(v16, v17);
  v33 = a2;
  v34 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37[0] = v21;
    *v19 = 138478339;
    *(v19 + 4) = v14;
    *v20 = v14;
    *(v19 + 12) = 2081;
    v22 = v14;
    *(v19 + 14) = sub_1C8685FDC();
    *(v19 + 22) = 2113;
    *(v19 + 24) = v15;
    v20[1] = v15;
    v23 = v15;
    _os_log_impl(&dword_1C8683000, v16, v17, "[<%{private}@> <%{private}s> <%{private}@>]", v19, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0, qword_1C86FD218);
    swift_arrayDestroy();
    MEMORY[0x1CCA7C540](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1CCA7C540](v21, -1, -1);
    MEMORY[0x1CCA7C540](v19, -1, -1);
  }

  v24 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v25 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  v26 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v27 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch(0);
  swift_allocObject();
  v28 = sub_1C86D038C(v12);
  sub_1C869F2D8(*&v14[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, v37);
  v29 = v38;
  v30 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  v32[0] = v15;
  v32[1] = v14;
  v31 = *(v30 + 56);

  v31(v33, v34, v24, v25, v26, v27, sub_1C86CFE38, v28, v29, v30);

  __swift_destroy_boxed_opaque_existential_0(v37);
  sub_1C86D05FC();
  sub_1C86D2558(v32[0], sub_1C869040C, v35);

  _Block_release(v36);
}

uint64_t sub_1C86CA178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_5();
  v9 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_3_2();
  v12 = v11 - v10;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v13 = sub_1C86F8DBC();
  __swift_project_value_buffer(v13, qword_1ED5BC790);
  v14 = v6;

  v15 = v5;
  v16 = sub_1C86F8DAC();
  v17 = sub_1C86F911C();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_37_3();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_3();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v18 = 138478339;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2081;
    v21 = v14;
    *(v18 + 14) = sub_1C8685FDC();
    *(v18 + 22) = 2113;
    *(v18 + 24) = v15;
    v19[1] = v15;
    v22 = v15;
    _os_log_impl(&dword_1C8683000, v16, v17, "[<%{private}@> <%{private}s> <%{private}@>]", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0, qword_1C86FD218);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  v23 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v24 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  v25 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
  v26 = *&v15[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
  sub_1C86D0150();
  type metadata accessor for CKTimedDispatch(0);
  swift_allocObject();
  v27 = sub_1C86D038C(v12);
  sub_1C869F2D8(*&v14[OBJC_IVAR___CKKnowledgeStoreEntity_store] + OBJC_IVAR___CKKnowledgeStore_backingStore, v35);
  v32 = v15;
  v28 = v36;
  v29 = v37;
  __swift_project_boxed_opaque_existential_0(v35, v36);
  v30 = *(v29 + 56);

  v30(a2, a3, v23, v24, v25, v26, sub_1C86CF634, v27, v28, v29);

  __swift_destroy_boxed_opaque_existential_0(v35);
  sub_1C86D05FC();
  sub_1C86D2558(v32, a4, a5);
}

void sub_1C86CA4BC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1C86D05C4(a1);
  }

  else
  {
    sub_1C86F91FC();
  }
}

void sub_1C86CA5C0()
{
  OUTLINED_FUNCTION_17();
  v20 = v2;
  v22 = v3;
  OUTLINED_FUNCTION_26_5();
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_2();
  v5 = v1;
  v21 = v0;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  OUTLINED_FUNCTION_11();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C8690344;
  *(v10 + 24) = v9;
  v11 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);

  v12 = v8;

  v11(v21, v20, v22, sub_1C86CF63C, v10);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v7)
    {

      v18 = OUTLINED_FUNCTION_44_2();
      v19(v18);
      goto LABEL_6;
    }

    v15 = *v7;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_44_2();
  v17(v16);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}
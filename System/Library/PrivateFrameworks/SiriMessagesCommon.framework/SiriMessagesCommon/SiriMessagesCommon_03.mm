uint64_t sub_267B74184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B73D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B741AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B74040();
  *a1 = result;
  return result;
}

uint64_t sub_267B741D4(uint64_t a1)
{
  v2 = sub_267B74600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B74210(uint64_t a1)
{
  v2 = sub_267B74600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateMessageDraftSnippet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802198D8, &unk_267B84FB0);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v11 = *v1;
  v10 = *(v1 + 8);
  v32 = *(v1 + 16);
  v33 = v10;
  v39 = *(v1 + 24);
  v12 = *(v1 + 32);
  v30 = *(v1 + 40);
  v31 = v12;
  v13 = *(v1 + 48);
  v15 = *(v1 + 64);
  v14 = *(v1 + 72);
  v25 = *(v1 + 56);
  v26 = v15;
  v27 = v14;
  v16 = *(v1 + 88);
  v28 = *(v1 + 80);
  v29 = v13;
  v24 = v16;
  v23 = *(v1 + 96);
  v17 = *(v1 + 112);
  v22[1] = *(v1 + 104);
  v22[2] = v17;
  v22[0] = *(v1 + 120);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B74600();
  v18 = v11;
  sub_267B7E27C();
  v34 = v11;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
  sub_267B74B9C(&qword_2802186B0, &protocol conformance descriptor for ModelCodable<A>);
  OUTLINED_FUNCTION_3_12();
  sub_267B7E12C();
  if (v2)
  {
  }

  else
  {
    v19 = v29;

    LOBYTE(v34) = 1;
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0CC();
    LOBYTE(v34) = 2;
    OUTLINED_FUNCTION_3_12();
    sub_267B7E10C();
    LOBYTE(v34) = 3;
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0CC();
    v34 = v19;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v40 = 4;
    sub_267B60A64(v19, v25, v26, v27, v28);
    sub_267B60CD4();
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0EC();
    sub_267B60AAC(v34, v35, v36);
    v34 = v24;
    v40 = 5;
    v20 = sub_267B60D28();

    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0EC();

    if (!v20)
    {
      LOBYTE(v34) = 6;
      OUTLINED_FUNCTION_3_12();
      sub_267B7E10C();
      LOBYTE(v34) = 7;
      OUTLINED_FUNCTION_3_12();
      sub_267B7E0CC();
      v34 = v22[0];
      v40 = 8;
      type metadata accessor for PhotoSharingInfo();
      sub_267B74BEC(&qword_2802186F0, &protocol conformance descriptor for PhotoSharingInfo);
      OUTLINED_FUNCTION_8_10();
      OUTLINED_FUNCTION_3_12();
      sub_267B7E0EC();
    }
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_267B74600()
{
  result = qword_2802198E0;
  if (!qword_2802198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198E0);
  }

  return result;
}

uint64_t UpdateMessageDraftSnippet.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802198E8, &qword_267B84FC0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B74600();
  sub_267B7E25C();
  if (v2)
  {
    v60 = v2;
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_12_4();
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_267B60AAC(v36, v35, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    sub_267B74B9C(&qword_280218700, &protocol conformance descriptor for ModelCodable<A>);
    OUTLINED_FUNCTION_13_5();
    sub_267B7E08C();
    v34 = v39;
    OUTLINED_FUNCTION_2_16(1);
    v7 = sub_267B7E01C();
    v33 = v8;
    OUTLINED_FUNCTION_2_16(2);
    v31 = sub_267B7E06C();
    OUTLINED_FUNCTION_2_16(3);
    v9 = sub_267B7E01C();
    v30 = v10;
    sub_267B60B48();
    OUTLINED_FUNCTION_9_6(&type metadata for AutoSendInfo);
    v26 = a2;
    v27 = v9;
    v37 = v39;
    v11 = v42;
    v28 = v43;
    v29 = v41;
    v12 = OUTLINED_FUNCTION_11_4();
    sub_267B60AAC(v12, v13, v14);
    sub_267B60B9C();
    OUTLINED_FUNCTION_9_6(&type metadata for CorrectionInfo);
    v24 = v7;
    v15 = v40;
    v25 = v39;

    OUTLINED_FUNCTION_2_16(6);
    v16 = sub_267B7E06C();
    OUTLINED_FUNCTION_2_16(7);
    v22 = sub_267B7E01C();
    v23 = v17;
    type metadata accessor for PhotoSharingInfo();
    v56 = 8;
    sub_267B74BEC(&qword_280218728, &protocol conformance descriptor for PhotoSharingInfo);
    OUTLINED_FUNCTION_13_5();
    sub_267B7E04C();
    v60 = 0;
    v18 = v31 & 1;
    v21 = v31 & 1;
    v16 &= 1u;
    v19 = OUTLINED_FUNCTION_1_21();
    v20(v19);
    v32 = v57;
    v38[0] = v39;
    v38[1] = v24;
    v38[2] = v33;
    LOBYTE(v38[3]) = v18;
    *(&v38[3] + 1) = v59[0];
    HIDWORD(v38[3]) = *(v59 + 3);
    v38[4] = v27;
    v38[5] = v30;
    v38[6] = v39;
    v38[7] = v40;
    v38[8] = v41;
    v38[9] = v42;
    v38[10] = v43;
    v38[11] = v39;
    LOBYTE(v38[12]) = v16;
    HIDWORD(v38[12]) = *&v58[3];
    *(&v38[12] + 1) = *v58;
    v38[13] = v22;
    v38[14] = v23;
    v38[15] = v57;
    memcpy(v26, v38, 0x80uLL);
    sub_267B74C30(v38, &v39);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v39 = v34;
    v40 = v24;
    v41 = v33;
    LOBYTE(v42) = v21;
    *(&v42 + 1) = v59[0];
    HIDWORD(v42) = *(v59 + 3);
    v43 = v27;
    v44 = v30;
    v45 = v37;
    v46 = v15;
    v47 = v29;
    v48 = v11;
    v49 = v28;
    v50 = v25;
    v51 = v16;
    *&v52[3] = *&v58[3];
    *v52 = *v58;
    v53 = v22;
    v54 = v23;
    v55 = v32;
    return sub_267B74C68(&v39);
  }
}

uint64_t sub_267B74B9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802186A8, &qword_267B7EF28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B74BEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotoSharingInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B74C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B750FC();
  sub_267B75150();
  return sub_267B7DB8C();
}

uint64_t sub_267B74D04(uint64_t a1, uint64_t a2)
{
  sub_267B750FC();
  sub_267B75150();
  return sub_267B7DB7C();
}

uint64_t get_enum_tag_for_layout_string_18SiriMessagesCommon12AutoSendInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_267B74DB8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B74E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateMessageDraftSnippet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UpdateMessageDraftSnippet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B74FF8()
{
  result = qword_2802198F0;
  if (!qword_2802198F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198F0);
  }

  return result;
}

unint64_t sub_267B75050()
{
  result = qword_2802198F8;
  if (!qword_2802198F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198F8);
  }

  return result;
}

unint64_t sub_267B750A8()
{
  result = qword_280219900;
  if (!qword_280219900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219900);
  }

  return result;
}

unint64_t sub_267B750FC()
{
  result = qword_280219908;
  if (!qword_280219908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219908);
  }

  return result;
}

unint64_t sub_267B75150()
{
  result = qword_280219910;
  if (!qword_280219910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219910);
  }

  return result;
}

void OUTLINED_FUNCTION_4_11()
{

  JUMPOUT(0x26D601760);
}

void OUTLINED_FUNCTION_5_12()
{

  JUMPOUT(0x26D601760);
}

void OUTLINED_FUNCTION_15_2()
{

  JUMPOUT(0x26D601760);
}

uint64_t sub_267B75274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_267B7DA6C();
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

void static MessageAttachmentUtils.makeAttachmentModel(for:isDraft:photoSharingInfo:location:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v207 = a5;
  v208 = a4;
  v202 = a3;
  v204 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219918, &unk_267B85250);
  MEMORY[0x28223BE20](v8 - 8);
  v197 = &v192 - v9;
  v198 = sub_267B7DCBC();
  OUTLINED_FUNCTION_8();
  v196 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_11();
  v194 = v12;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v13);
  v195 = &v192 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_6_11();
  v192 = v16;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_0();
  v200 = v18;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_0();
  v203 = v20;
  OUTLINED_FUNCTION_7_9();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v192 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v192 - v25;
  sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v209 = v28;
  v210 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_11();
  v193 = v29;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_0();
  v199 = v31;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  v205 = v33;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v34);
  v201 = &v192 - v35;
  v36 = sub_267B4B65C();
  v37 = 0;
  v38 = a1 & 0xC000000000000001;
  v39 = (a1 & 0xFFFFFFFFFFFFFF8);
  v40 = &selRef_backingStore;
  while (v36 != v37)
  {
    if (v38)
    {
      v41 = MEMORY[0x26D601950](v37, a1);
    }

    else
    {
      if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v41 = *(a1 + 8 * v37 + 32);
    }

    v5 = v41;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      sub_267B7DC9C();
      v167 = sub_267B7DCAC();
      v168 = v37;
      v169 = v198;
      (v40)(v168, v198);
      v170 = v5;
      if (v167)
      {
        if (qword_280218548 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280218548);
        }

        v171 = sub_267B7DCFC();
        OUTLINED_FUNCTION_15_3(v171, qword_2802286D0);
        v172 = sub_267B7DCDC();
        v173 = sub_267B7DE9C();
        v174 = OUTLINED_FUNCTION_2_8(v173);
        v69 = v207;
        if (v174)
        {
          v175 = OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_5(v175);
          OUTLINED_FUNCTION_1_22();
          _os_log_impl(v176, v177, v178, v179, v180, 2u);
          OUTLINED_FUNCTION_3_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
        v181 = v209;
        v182 = OUTLINED_FUNCTION_3_13();
        *(v182 + 16) = xmmword_267B7E980;
        v183 = v182 + v5;
        v184 = v199;
        (*(v181 + 16))(v183, v199, v6);

        (v40)(v170, v198);
        (*(v181 + 8))(v184, v6);
        *(v69 + 24) = &type metadata for VideoAttachment;
        *(v69 + 32) = sub_267B43774();
        type metadata accessor for SecurityScopedURL();
        v185 = swift_allocObject();
        *(v185 + 16) = v182;
        *v69 = v185;
        goto LABEL_42;
      }

      (v40)(v5, v169);
      v5 = v205;
LABEL_57:
      v39 = v5;
      if (qword_280218548 != -1)
      {
LABEL_118:
        OUTLINED_FUNCTION_0(&qword_280218548);
      }

      v104 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v104, qword_2802286D0);
      v105 = sub_267B7DCDC();
      v106 = sub_267B7DE9C();
      v107 = OUTLINED_FUNCTION_2_8(v106);
      v69 = v207;
      if (v107)
      {
        v108 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v108);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v109, v110, v111, v112, v113, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v114 = v209;
      v77 = OUTLINED_FUNCTION_3_13();
      *(v77 + 16) = xmmword_267B7E980;
      (*(v114 + 32))(v77 + v5, v199, v6);

      *(v69 + 24) = &type metadata for LinkAttachment;
      v78 = sub_267B438DC();
LABEL_41:
      *(v69 + 32) = v78;
      *v69 = v77;
LABEL_42:
      *(v69 + 8) = v204 & 1;
      return;
    }

    v6 = [v41 currentLocation];

    ++v37;
    if (v6)
    {
      if (qword_280218548 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280218548);
      }

      v65 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v65, qword_2802286D0);
      v66 = sub_267B7DCDC();
      v67 = sub_267B7DE9C();
      v68 = OUTLINED_FUNCTION_2_8(v67);
      v69 = v207;
      if (v68)
      {
        v70 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v70);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v71, v72, v73, v74, v75, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v77 = OUTLINED_FUNCTION_2_17(v76);
      *(v77 + 16) = xmmword_267B7E980;
      static MessageAttachmentUtils.makeMapsURL(location:)(v208, v77 + v5);
      *(v69 + 24) = &type metadata for MapAttachment;
      v78 = sub_267B43888();
      goto LABEL_41;
    }
  }

  v37 = 0;
  v6 = v210;
  v206 = (v209 + 32);
  v208 = MEMORY[0x277D84F90];
  while (v36 != v37)
  {
    if (v38)
    {
      v42 = MEMORY[0x26D601950](v37, a1);
    }

    else
    {
      if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v42 = *(a1 + 8 * v37 + 32);
    }

    v6 = v42;
    v40 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      goto LABEL_101;
    }

    v43 = [v42 sharedLink];
    if (v43)
    {
      v44 = v43;
      sub_267B7DA3C();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    OUTLINED_FUNCTION_13_6(v24, v5);
    sub_267B76530(v24, v26);
    OUTLINED_FUNCTION_18_2(v26);
    if (v45)
    {
      sub_267B6BF60(v26, &qword_280218928, "ډ");
      ++v37;
    }

    else
    {
      v5 = *v206;
      (*v206)(v205, v26, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v208 = OUTLINED_FUNCTION_12_5();
      }

      v48 = v208[2];
      v47 = v208[3];
      if (v48 >= v47 >> 1)
      {
        v208 = OUTLINED_FUNCTION_14_4(v47);
      }

      OUTLINED_FUNCTION_8_11();
      v51 = v49 + v50 * v48;
      v6 = v210;
      (v5)(v51, v205, v210);
      ++v37;
    }
  }

  v52 = v203;
  sub_267B75274(v208, v203);

  OUTLINED_FUNCTION_18_2(v52);
  if (!v45)
  {
    v79 = *v206;
    (*v206)(v201, v52, v6);
    v80 = objc_opt_self();
    v81 = sub_267B7D9FC();
    v82 = [v80 isValidMapURL_];

    if (v82)
    {
      v83 = v207;
      if (qword_280218548 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280218548);
      }

      v84 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v84, qword_2802286D0);
      v85 = sub_267B7DCDC();
      v86 = sub_267B7DE9C();
      if (OUTLINED_FUNCTION_2_8(v86))
      {
        v87 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v87);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v88, v89, v90, v91, v92, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v94 = OUTLINED_FUNCTION_2_17(v93);
      v95 = OUTLINED_FUNCTION_10_4(v94, xmmword_267B7E980);
      v79(v95);
      *(v83 + 24) = &type metadata for MapAttachment;
      v96 = sub_267B43888();
    }

    else
    {
      v83 = v207;
      if (qword_280218548 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280218548);
      }

      v115 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v115, qword_2802286D0);
      v116 = sub_267B7DCDC();
      v117 = sub_267B7DE9C();
      if (OUTLINED_FUNCTION_2_8(v117))
      {
        v118 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v118);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v119, v120, v121, v122, v123, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v94 = OUTLINED_FUNCTION_2_17(v124);
      v125 = OUTLINED_FUNCTION_10_4(v94, xmmword_267B7E980);
      v79(v125);
      *(v83 + 24) = &type metadata for LinkAttachment;
      v96 = sub_267B438DC();
    }

    *(v83 + 32) = v96;
    *v83 = v94;
    *(v83 + 8) = v204 & 1;
    return;
  }

  sub_267B6BF60(v52, &qword_280218928, "ډ");
  v53 = v202;
  if (v202)
  {
    swift_beginAccess();
    if (*(v53 + 17) == 1)
    {
      v54 = qword_280218548;

      v55 = v207;
      if (v54 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280218548);
      }

      v56 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v56, qword_2802286D0);

      v57 = sub_267B7DCDC();
      v58 = sub_267B7DE9C();
      if (OUTLINED_FUNCTION_2_8(v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134217984;
        swift_beginAccess();
        *(v59 + 4) = *(*(v53 + 24) + 16);

        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
        OUTLINED_FUNCTION_3_6();
      }

      else
      {
      }

      v126 = MEMORY[0x277D84F90];
      *(v55 + 24) = &type metadata for PhotoAttachment;
      *(v55 + 32) = sub_267B43834();
      type metadata accessor for SecurityScopedURL();
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      v128 = v204 & 1;
      *v55 = v127;
      *(v55 + 8) = v128;
      *(v55 + 16) = v53;
      return;
    }
  }

  if (v36)
  {
    sub_267B587DC(0, v38 == 0, a1);
    v97 = v38 ? MEMORY[0x26D601950](0, a1) : *(a1 + 32);
    v98 = v97;
    v5 = [v97 file];

    if (v5)
    {
      v99 = [v5 fileURL];
      if (v99)
      {
        v100 = v99;
        sub_267B7DA3C();

        sub_267B765A0(v5);
        if (!v101)
        {
          goto LABEL_57;
        }

        v102 = v197;
        sub_267B7DCCC();
        v103 = v198;
        if (__swift_getEnumTagSinglePayload(v102, 1, v198) == 1)
        {
          sub_267B6BF60(v102, &qword_280219918, &unk_267B85250);
          goto LABEL_57;
        }

        v205 = v5;
        v140 = v196;
        v5 = v195;
        (*(v196 + 32))(v195, v102, v103);
        v37 = v194;
        sub_267B7DC8C();
        v141 = sub_267B7DCAC();
        v142 = v103;
        LODWORD(v208) = v141;
        v144 = *(v140 + 8);
        v143 = v140 + 8;
        v40 = v144;
        (v144)(v37, v142);
        if ((v208 & 1) == 0)
        {
          goto LABEL_103;
        }

        v203 = v40;
        v196 = v143;
        if (qword_280218548 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280218548);
        }

        v145 = sub_267B7DCFC();
        OUTLINED_FUNCTION_15_3(v145, qword_2802286D0);
        v146 = sub_267B7DCDC();
        v147 = sub_267B7DE9C();
        v148 = OUTLINED_FUNCTION_2_8(v147);
        v149 = v192;
        if (v148)
        {
          v150 = OUTLINED_FUNCTION_6_2();
          *v150 = 0;
          _os_log_impl(&dword_267B38000, v146, v5, "#MessageAttachmentUtils creating view model for photo", v150, 2u);
          v151 = v150;
          v6 = v210;
          MEMORY[0x26D602240](v151, -1, -1);
        }

        v152 = 0;
        v208 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v36 == v152)
          {
            v186 = v207;
            *(v207 + 24) = &type metadata for PhotoAttachment;
            *(v186 + 32) = sub_267B43834();
            type metadata accessor for SecurityScopedURL();
            v187 = swift_allocObject();
            *(v187 + 16) = v208;
            v188 = v204 & 1;
            if (v53)
            {
              v189 = v53;
            }

            else
            {
              type metadata accessor for PhotoSharingInfo();
              swift_allocObject();
              v189 = PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(1, 0, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, 0xE000000000000000);
            }

            v190 = v195;
            v191 = v203;

            *v186 = v187;
            *(v186 + 8) = v188;
            *(v186 + 16) = v189;
            v191(v190, v198);
            (*(v209 + 8))(v199, v6);
            return;
          }

          if (v38)
          {
            v153 = MEMORY[0x26D601950](v152, a1);
          }

          else
          {
            if (v152 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_118;
            }

            v153 = *(a1 + 8 * v152 + 32);
          }

          v6 = v153;
          v5 = v152 + 1;
          if (__OFADD__(v152, 1))
          {
            __break(1u);
            goto LABEL_115;
          }

          v154 = [v153 file];
          if (!v154)
          {
            break;
          }

          v155 = v154;
          v156 = [v154 fileURL];

          if (v156)
          {
            sub_267B7DA3C();

            v157 = 0;
          }

          else
          {
            v157 = 1;
          }

          v53 = v202;

          OUTLINED_FUNCTION_13_6(v149, v157);
          v158 = v200;
          sub_267B76530(v149, v200);
          OUTLINED_FUNCTION_18_2(v158);
          if (v45)
          {
LABEL_93:
            sub_267B6BF60(v158, &qword_280218928, "ډ");
            ++v152;
          }

          else
          {
            v159 = v6;
            v160 = *v206;
            (*v206)(v193, v158, v159);
            v161 = swift_isUniquelyReferenced_nonNull_native();
            if ((v161 & 1) == 0)
            {
              v208 = OUTLINED_FUNCTION_12_5();
            }

            v163 = v208[2];
            v162 = v208[3];
            if (v163 >= v162 >> 1)
            {
              v208 = OUTLINED_FUNCTION_14_4(v162);
            }

            OUTLINED_FUNCTION_8_11();
            v166 = v210;
            v160(v164 + v165 * v163, v193, v210);
            v6 = v166;
            v152 = v5;
          }
        }

        v158 = v200;
        OUTLINED_FUNCTION_13_6(v200, 1);
        goto LABEL_93;
      }
    }
  }

  if (qword_280218548 != -1)
  {
LABEL_115:
    OUTLINED_FUNCTION_0(&qword_280218548);
  }

  v129 = sub_267B7DCFC();
  OUTLINED_FUNCTION_15_3(v129, qword_2802286D0);
  v130 = sub_267B7DCDC();
  v131 = sub_267B7DEAC();
  v132 = OUTLINED_FUNCTION_2_8(v131);
  v133 = v207;
  if (v132)
  {
    v134 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_5(v134);
    OUTLINED_FUNCTION_1_22();
    _os_log_impl(v135, v136, v137, v138, v139, 2u);
    OUTLINED_FUNCTION_3_6();
  }

  *(v133 + 32) = 0;
  *v133 = 0u;
  *(v133 + 16) = 0u;
}

uint64_t static MessageAttachmentUtils.makeMapsURL(location:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000001BLL, 0x8000000267B87880);
  if (a1)
  {
    [a1 coordinate];
    sub_267B7DE5C();
    MEMORY[0x26D601760](44, 0xE100000000000000);
    [a1 coordinate];
  }

  else
  {
    sub_267B7DE5C();
    MEMORY[0x26D601760](44, 0xE100000000000000);
  }

  sub_267B7DE5C();
  sub_267B7DA5C();
  v7 = sub_267B7DA6C();
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  return result;
}

uint64_t sub_267B76530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B765A0(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B7DD5C();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for MessageAttachmentUtils(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_12_5()
{
  v2 = *(v0 - 160);
  v3 = *(v2 + 16) + 1;

  return sub_267B47304(0, v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 144);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

void *OUTLINED_FUNCTION_14_4@<X0>(unint64_t a1@<X8>)
{
  v4 = *(v2 - 160);

  return sub_267B47304((a1 > 1), v1, 1, v4);
}

uint64_t sub_267B7680C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000267B878C0 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000020 && 0x8000000267B878E0 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x8000000267B87910 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x8000000267B87930 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x8000000267B87950 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ELL && 0x8000000267B87970 == a2;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x8000000267B87990 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000019 && 0x8000000267B879B0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_267B7E16C();

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

unint64_t sub_267B76A7C(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B76B44(uint64_t a1)
{
  v2 = sub_267B77DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76B80(uint64_t a1)
{
  v2 = sub_267B77DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76BBC(uint64_t a1)
{
  v2 = sub_267B77D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76BF8(uint64_t a1)
{
  v2 = sub_267B77D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7680C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B76C64(uint64_t a1)
{
  v2 = sub_267B77C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76CA0(uint64_t a1)
{
  v2 = sub_267B77C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76CDC(uint64_t a1)
{
  v2 = sub_267B77D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76D18(uint64_t a1)
{
  v2 = sub_267B77D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76D54(uint64_t a1)
{
  v2 = sub_267B77F34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76D90(uint64_t a1)
{
  v2 = sub_267B77F34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76DCC(uint64_t a1)
{
  v2 = sub_267B77E8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76E08(uint64_t a1)
{
  v2 = sub_267B77E8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76E44(uint64_t a1)
{
  v2 = sub_267B77E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76E80(uint64_t a1)
{
  v2 = sub_267B77E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76EBC(uint64_t a1)
{
  v2 = sub_267B77CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76EF8(uint64_t a1)
{
  v2 = sub_267B77CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76F34(uint64_t a1)
{
  v2 = sub_267B77EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76F70(uint64_t a1)
{
  v2 = sub_267B77EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagesUIPluginModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219920, &qword_267B85280);
  OUTLINED_FUNCTION_0_19(v2, &v111);
  v105[30] = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219928, &qword_267B85288);
  OUTLINED_FUNCTION_0_19(v6, &v110);
  v105[27] = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v9);
  v105[23] = type metadata accessor for ButtonSnippetModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219930, &qword_267B85290);
  OUTLINED_FUNCTION_0_19(v13, &__dst[64]);
  v105[22] = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219938, &qword_267B85298);
  OUTLINED_FUNCTION_0_19(v17, &__dst[32]);
  v105[19] = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219940, &qword_267B852A0);
  OUTLINED_FUNCTION_0_19(v21, &__dst[8]);
  v105[16] = v22;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v24);
  v105[13] = type metadata accessor for SentMessageSnippetModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v27 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219948, &qword_267B852A8);
  OUTLINED_FUNCTION_0_19(v28, &v108[64]);
  v105[11] = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v31);
  v105[8] = type metadata accessor for MessageDraftSnippetModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v34 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219950, &qword_267B852B0);
  OUTLINED_FUNCTION_0_19(v35, &v108[24]);
  v105[6] = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v38);
  v105[3] = type metadata accessor for AutoSendableBinaryButton(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v41 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219958, &qword_267B852B8);
  OUTLINED_FUNCTION_0_19(v42, v107);
  v105[1] = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  v46 = v105 - v45;
  type metadata accessor for ConfirmationSnippetModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_0();
  v50 = v49 - v48;
  type metadata accessor for MessagesUIPluginModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_0();
  v54 = (v53 - v52);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219960, &qword_267B852C0);
  OUTLINED_FUNCTION_0_19(v55, &v112);
  v107[1] = v56;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v57);
  v59 = v105 - v58;
  v60 = a1[3];
  v61 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v60);
  sub_267B77C30();
  v106 = v59;
  sub_267B7E27C();
  sub_267B77C84(v105[32], v54);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_31_0(v54, type metadata accessor for AutoSendableBinaryButton, v108);
      __dst[0] = 1;
      sub_267B77EE0();
      OUTLINED_FUNCTION_2_18(&type metadata for MessagesUIPluginModel.WatchAutosendButtonsSnippetModelCodingKeys, __dst);
      OUTLINED_FUNCTION_20_1();
      sub_267B78FF4(v89, v90, &protocol conformance descriptor for AutoSendableBinaryButton);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_23_0(v91);
      v92 = OUTLINED_FUNCTION_3_14();
      v93(v92);
      v66 = type metadata accessor for AutoSendableBinaryButton;
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_31_0(v54, type metadata accessor for MessageDraftSnippetModel, &v108[40]);
      __dst[0] = 2;
      sub_267B77E8C();
      OUTLINED_FUNCTION_2_18(&type metadata for MessagesUIPluginModel.MessageDraftSnippetModelCodingKeys, __dst);
      OUTLINED_FUNCTION_18_3();
      sub_267B78FF4(v76, v77, &protocol conformance descriptor for MessageDraftSnippetModel);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_23_0(v78);
      v79 = OUTLINED_FUNCTION_3_14();
      v80(v79);
      v66 = type metadata accessor for MessageDraftSnippetModel;
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_31_0(v54, type metadata accessor for SentMessageSnippetModel, &v108[80]);
      __dst[0] = 3;
      sub_267B77E38();
      OUTLINED_FUNCTION_2_18(&type metadata for MessagesUIPluginModel.SentMessageSnippetModelCodingKeys, __dst);
      OUTLINED_FUNCTION_17_1();
      sub_267B78FF4(v81, v82, &protocol conformance descriptor for SentMessageSnippetModel);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_23_0(v83);
      v84 = OUTLINED_FUNCTION_3_14();
      v85(v84);
      v66 = type metadata accessor for SentMessageSnippetModel;
      goto LABEL_10;
    case 4u:
      v67 = *v54;
      v68 = v54[1];
      v69 = v54[2];
      __dst[0] = 4;
      sub_267B77DE4();
      v70 = v105[18];
      sub_267B7E0BC();
      *__dst = v67;
      *&__dst[8] = v68;
      *&__dst[16] = v69;
      sub_267B706BC();
      v71 = v105[20];
      sub_267B7E12C();
      OUTLINED_FUNCTION_11_5();
      v72(v70, v71);
      v73 = OUTLINED_FUNCTION_3_14();
      v74(v73);

    case 5u:
      v94 = *(v54 + 1);
      *__dst = *v54;
      *&__dst[16] = v94;
      v95 = *(v54 + 3);
      *&__dst[32] = *(v54 + 2);
      *&__dst[48] = v95;
      v108[0] = 5;
      sub_267B77D90();
      OUTLINED_FUNCTION_2_18(&type metadata for MessagesUIPluginModel.ConfirmationButtonSnippetModelCodingKeys, v108);
      *v108 = *__dst;
      *&v108[16] = *&__dst[16];
      *&v108[32] = *&__dst[32];
      *&v108[48] = *&__dst[48];
      sub_267B66C8C();
      OUTLINED_FUNCTION_24_0();
      sub_267B7E12C();
      v96 = OUTLINED_FUNCTION_3_14();
      v97(v96);
      OUTLINED_FUNCTION_11_5();
      v98(v61, v60);
      return sub_267B66C00(__dst);
    case 6u:
      OUTLINED_FUNCTION_31_0(v54, type metadata accessor for ButtonSnippetModel, &__dst[72]);
      __dst[0] = 6;
      sub_267B77D3C();
      OUTLINED_FUNCTION_2_18(&type metadata for MessagesUIPluginModel.ButtonSnippetModelCodingKeys, __dst);
      OUTLINED_FUNCTION_19_0();
      sub_267B78FF4(v99, v100, &protocol conformance descriptor for ButtonSnippetModel);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_23_0(v101);
      v102 = OUTLINED_FUNCTION_3_14();
      v103(v102);
      v66 = type metadata accessor for ButtonSnippetModel;
      goto LABEL_10;
    case 7u:
      memcpy(__dst, v54, sizeof(__dst));
      v108[0] = 7;
      sub_267B77CE8();
      OUTLINED_FUNCTION_2_18(&type metadata for MessagesUIPluginModel.TapbackPromptSnippetModelCodingKeys, v108);
      memcpy(v108, __dst, sizeof(v108));
      sub_267B501A8();
      OUTLINED_FUNCTION_24_0();
      sub_267B7E12C();
      v86 = OUTLINED_FUNCTION_3_14();
      v87(v86);
      OUTLINED_FUNCTION_11_5();
      v88(v61, v60);
      return sub_267B4EBA4(__dst);
    default:
      sub_267B78F04(v54, v50, type metadata accessor for ConfirmationSnippetModel);
      __dst[0] = 0;
      sub_267B77F34();
      OUTLINED_FUNCTION_4_12();
      v61 = v106;
      sub_267B7E0BC();
      OUTLINED_FUNCTION_16_2();
      sub_267B78FF4(v62, v63, &protocol conformance descriptor for ConfirmationSnippetModel);
      OUTLINED_FUNCTION_27_0();
      v64 = v105[2];
      sub_267B7E12C();
      OUTLINED_FUNCTION_11_5();
      v65(v46, v64);
      v66 = type metadata accessor for ConfirmationSnippetModel;
LABEL_10:
      sub_267B77F88(v50, v66);
      OUTLINED_FUNCTION_11_5();
      return v104(v61, v60);
  }
}

uint64_t type metadata accessor for MessagesUIPluginModel(uint64_t a1)
{
  result = qword_280219A08;
  if (!qword_280219A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267B77C30()
{
  result = qword_280219968;
  if (!qword_280219968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219968);
  }

  return result;
}

uint64_t sub_267B77C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesUIPluginModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B77CE8()
{
  result = qword_280219970;
  if (!qword_280219970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219970);
  }

  return result;
}

unint64_t sub_267B77D3C()
{
  result = qword_280219978;
  if (!qword_280219978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219978);
  }

  return result;
}

unint64_t sub_267B77D90()
{
  result = qword_280219980;
  if (!qword_280219980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219980);
  }

  return result;
}

unint64_t sub_267B77DE4()
{
  result = qword_280219988;
  if (!qword_280219988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219988);
  }

  return result;
}

unint64_t sub_267B77E38()
{
  result = qword_280219990;
  if (!qword_280219990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219990);
  }

  return result;
}

unint64_t sub_267B77E8C()
{
  result = qword_280219998;
  if (!qword_280219998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219998);
  }

  return result;
}

unint64_t sub_267B77EE0()
{
  result = qword_2802199A0;
  if (!qword_2802199A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802199A0);
  }

  return result;
}

unint64_t sub_267B77F34()
{
  result = qword_2802199A8;
  if (!qword_2802199A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802199A8);
  }

  return result;
}

uint64_t sub_267B77F88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MessagesUIPluginModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199B0, &qword_267B852C8);
  OUTLINED_FUNCTION_0_19(v3, &v190);
  v177 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199B8, &qword_267B852D0);
  OUTLINED_FUNCTION_0_19(v7, &v189);
  v178 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199C0, &qword_267B852D8);
  OUTLINED_FUNCTION_0_19(v11, &v188);
  v173 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199C8, &qword_267B852E0);
  OUTLINED_FUNCTION_0_19(v15, &v187);
  v171 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199D0, &qword_267B852E8);
  OUTLINED_FUNCTION_0_19(v19, &__src[80]);
  v170 = v20;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_0();
  v182 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199D8, &qword_267B852F0);
  OUTLINED_FUNCTION_0_19(v23, &__src[72]);
  v169 = v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_0();
  v181 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199E0, &qword_267B852F8);
  OUTLINED_FUNCTION_0_19(v27, &__src[64]);
  v168 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199E8, &qword_267B85300);
  OUTLINED_FUNCTION_0_19(v31, &__src[56]);
  v167 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v34);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199F0, &unk_267B85308);
  v180 = *(v184 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  v37 = v161 - v36;
  v179 = type metadata accessor for MessagesUIPluginModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_0();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = v161 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = v161 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v161 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = v161 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = v161 - v55;
  v57 = a1[3];
  v185 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v57);
  sub_267B77C30();
  v183 = v37;
  v58 = v188;
  sub_267B7E25C();
  if (v58)
  {
    goto LABEL_9;
  }

  v161[2] = v54;
  v161[3] = v51;
  v162 = v48;
  v163 = v45;
  v59 = v182;
  v188 = v56;
  v60 = v183;
  v61 = v184;
  sub_267B7E09C();
  result = sub_267B45CC4();
  if (v64 == v65 >> 1)
  {
LABEL_8:
    v81 = v179;
    v80 = v180;
    v82 = sub_267B7DFBC();
    swift_allocError();
    v84 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580);
    *v84 = v81;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D84160], v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v60, v61);
LABEL_9:
    v85 = v185;
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  v161[1] = 0;
  if (v64 < (v65 >> 1))
  {
    v66 = *(v63 + v64);
    sub_267B45CBC();
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    v71 = v178;
    if (v68 == v70 >> 1)
    {
      v72 = v176;
      switch(v66)
      {
        case 1:
          __src[0] = 1;
          sub_267B77EE0();
          OUTLINED_FUNCTION_8_12(&type metadata for MessagesUIPluginModel.WatchAutosendButtonsSnippetModelCodingKeys, __src);
          v105 = type metadata accessor for AutoSendableBinaryButton(0);
          OUTLINED_FUNCTION_20_1();
          sub_267B78FF4(v106, v107, &protocol conformance descriptor for AutoSendableBinaryButton);
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28(v108, v109, v110, v105, v111);
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v146 = OUTLINED_FUNCTION_6_12();
          v147(v146);
          v148 = OUTLINED_FUNCTION_7_10();
          v149(v148);
          goto LABEL_18;
        case 2:
          __src[0] = 2;
          sub_267B77E8C();
          OUTLINED_FUNCTION_30_0(&type metadata for MessagesUIPluginModel.MessageDraftSnippetModelCodingKeys, __src);
          v120 = type metadata accessor for MessageDraftSnippetModel(0);
          OUTLINED_FUNCTION_18_3();
          sub_267B78FF4(v121, v122, &protocol conformance descriptor for MessageDraftSnippetModel);
          v133 = v162;
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28(v123, v124, v125, v120, v126);
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_6_12();
          v135(v134);
          v136 = OUTLINED_FUNCTION_7_10();
          v137(v136);
          OUTLINED_FUNCTION_29_0();
          goto LABEL_19;
        case 3:
          __src[0] = 3;
          sub_267B77E38();
          OUTLINED_FUNCTION_10_5(&type metadata for MessagesUIPluginModel.SentMessageSnippetModelCodingKeys, __src);
          v90 = type metadata accessor for SentMessageSnippetModel(0);
          OUTLINED_FUNCTION_17_1();
          sub_267B78FF4(v91, v92, &protocol conformance descriptor for SentMessageSnippetModel);
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28(v93, v94, v95, v90, v96);
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v138 = OUTLINED_FUNCTION_6_12();
          v139(v138);
          v140 = OUTLINED_FUNCTION_7_10();
          v141(v140);
          goto LABEL_18;
        case 4:
          __src[0] = 4;
          sub_267B77DE4();
          v86 = v175;
          OUTLINED_FUNCTION_30_0(&type metadata for MessagesUIPluginModel.AppDisambiguationSnippetModelCodingKeys, __src);
          v87 = sub_267B70664();
          v88 = v174;
          OUTLINED_FUNCTION_28(&type metadata for AppDisambiguationSnippetModel, v89, v174, &type metadata for AppDisambiguationSnippetModel, v87);
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11_5();
          v130(v86, v88);
          v131 = OUTLINED_FUNCTION_7_10();
          v132(v131);
          v133 = v164;
          *v164 = *__src;
          *(v133 + 8) = *&__src[8];
          OUTLINED_FUNCTION_29_0();
          goto LABEL_19;
        case 5:
          __src[0] = 5;
          sub_267B77D90();
          OUTLINED_FUNCTION_8_12(&type metadata for MessagesUIPluginModel.ConfirmationButtonSnippetModelCodingKeys, __src);
          sub_267B66C34();
          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_28(v112, v113, v114, v115, v116);
          v117 = (v180 + 8);
          swift_unknownObjectRelease();
          v150 = OUTLINED_FUNCTION_26_0();
          v151(v150);
          (*v117)(v183, v184);
          v152 = *&__src[16];
          v133 = v165;
          *v165 = *__src;
          v133[1] = v152;
          v153 = *&__src[48];
          v133[2] = *&__src[32];
          v133[3] = v153;
          OUTLINED_FUNCTION_29_0();
          goto LABEL_19;
        case 6:
          __src[0] = 6;
          sub_267B77D3C();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_10_5(v118, v119);
          type metadata accessor for ButtonSnippetModel(0);
          OUTLINED_FUNCTION_19_0();
          sub_267B78FF4(v127, v128, &protocol conformance descriptor for ButtonSnippetModel);
          v129 = v172;
          OUTLINED_FUNCTION_15_4();
          sub_267B7E08C();
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          (*(v71 + 8))(v59, v66);
          v157 = OUTLINED_FUNCTION_7_10();
          v158(v157);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_23();
          v160 = v129;
          break;
        case 7:
          __src[0] = 7;
          sub_267B77CE8();
          OUTLINED_FUNCTION_8_12(&type metadata for MessagesUIPluginModel.TapbackPromptSnippetModelCodingKeys, __src);
          sub_267B50150();
          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_28(v97, v98, v99, v100, v101);
          v102 = (v180 + 8);
          swift_unknownObjectRelease();
          v103 = OUTLINED_FUNCTION_26_0();
          v104(v103);
          (*v102)(v183, v184);
          v133 = v166;
          memcpy(v166, __src, 0x58uLL);
          OUTLINED_FUNCTION_29_0();
LABEL_19:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_23();
          v160 = v133;
          break;
        default:
          __src[0] = 0;
          sub_267B77F34();
          OUTLINED_FUNCTION_8_12(&type metadata for MessagesUIPluginModel.ConfirmationSnippetModelCodingKeys, __src);
          v73 = type metadata accessor for ConfirmationSnippetModel(0);
          OUTLINED_FUNCTION_16_2();
          sub_267B78FF4(v74, v75, &protocol conformance descriptor for ConfirmationSnippetModel);
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28(v76, v77, v78, v73, v79);
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v142 = OUTLINED_FUNCTION_6_12();
          v143(v142);
          v144 = OUTLINED_FUNCTION_7_10();
          v145(v144);
LABEL_18:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_23();
          v160 = v59;
          break;
      }

      v154 = v188;
      sub_267B78F04(v160, v188, v159);
      v155 = v185;
      OUTLINED_FUNCTION_1_23();
      sub_267B78F04(v154, v72, v156);
      v85 = v155;
      return __swift_destroy_boxed_opaque_existential_0(v85);
    }

    v60 = v183;
    v61 = v184;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_267B78F04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267B78FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B7903C(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AutoSendableBinaryButton(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MessageDraftSnippetModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for SentMessageSnippetModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ButtonSnippetModel(319);
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

_BYTE *storeEnumTagSinglePayload for MessagesUIPluginModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B79254(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B79304()
{
  result = qword_280219A18;
  if (!qword_280219A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A18);
  }

  return result;
}

unint64_t sub_267B7935C()
{
  result = qword_280219A20;
  if (!qword_280219A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A20);
  }

  return result;
}

unint64_t sub_267B793B4()
{
  result = qword_280219A28;
  if (!qword_280219A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A28);
  }

  return result;
}

unint64_t sub_267B7940C()
{
  result = qword_280219A30;
  if (!qword_280219A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A30);
  }

  return result;
}

unint64_t sub_267B79464()
{
  result = qword_280219A38;
  if (!qword_280219A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A38);
  }

  return result;
}

unint64_t sub_267B794BC()
{
  result = qword_280219A40;
  if (!qword_280219A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A40);
  }

  return result;
}

unint64_t sub_267B79514()
{
  result = qword_280219A48;
  if (!qword_280219A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A48);
  }

  return result;
}

unint64_t sub_267B7956C()
{
  result = qword_280219A50;
  if (!qword_280219A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A50);
  }

  return result;
}

unint64_t sub_267B795C4()
{
  result = qword_280219A58;
  if (!qword_280219A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A58);
  }

  return result;
}

unint64_t sub_267B7961C()
{
  result = qword_280219A60;
  if (!qword_280219A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A60);
  }

  return result;
}

unint64_t sub_267B79674()
{
  result = qword_280219A68;
  if (!qword_280219A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A68);
  }

  return result;
}

unint64_t sub_267B796CC()
{
  result = qword_280219A70;
  if (!qword_280219A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A70);
  }

  return result;
}

unint64_t sub_267B79724()
{
  result = qword_280219A78;
  if (!qword_280219A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A78);
  }

  return result;
}

unint64_t sub_267B7977C()
{
  result = qword_280219A80;
  if (!qword_280219A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A80);
  }

  return result;
}

unint64_t sub_267B797D4()
{
  result = qword_280219A88;
  if (!qword_280219A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A88);
  }

  return result;
}

unint64_t sub_267B7982C()
{
  result = qword_280219A90;
  if (!qword_280219A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A90);
  }

  return result;
}

unint64_t sub_267B79884()
{
  result = qword_280219A98;
  if (!qword_280219A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A98);
  }

  return result;
}

unint64_t sub_267B798DC()
{
  result = qword_280219AA0;
  if (!qword_280219AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AA0);
  }

  return result;
}

unint64_t sub_267B79934()
{
  result = qword_280219AA8;
  if (!qword_280219AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AA8);
  }

  return result;
}

unint64_t sub_267B7998C()
{
  result = qword_280219AB0;
  if (!qword_280219AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AB0);
  }

  return result;
}

unint64_t sub_267B799E4()
{
  result = qword_280219AB8;
  if (!qword_280219AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AB8);
  }

  return result;
}

unint64_t sub_267B79A3C()
{
  result = qword_280219AC0;
  if (!qword_280219AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AC0);
  }

  return result;
}

unint64_t sub_267B79A94()
{
  result = qword_280219AC8;
  if (!qword_280219AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AC8);
  }

  return result;
}

unint64_t sub_267B79AEC()
{
  result = qword_280219AD0;
  if (!qword_280219AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AD0);
  }

  return result;
}

unint64_t sub_267B79B44()
{
  result = qword_280219AD8;
  if (!qword_280219AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AD8);
  }

  return result;
}

unint64_t sub_267B79B9C()
{
  result = qword_280219AE0;
  if (!qword_280219AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AE0);
  }

  return result;
}

unint64_t sub_267B79BF4()
{
  result = qword_280219AE8;
  if (!qword_280219AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_18(uint64_t a1, uint64_t a2)
{

  return sub_267B7E0BC();
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1, uint64_t a2)
{

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2)
{

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{

  return sub_267B7E12C();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2)
{

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_31_0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_267B78F04(a1, v4, a2);
}

uint64_t LinkAttachment.init(urls:isDraft:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t LinkAttachment.urls.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_267B79EF0(uint64_t a1)
{
  v2 = sub_267B7A144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B79F2C(uint64_t a1)
{
  v2 = sub_267B7A144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkAttachment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219AF0, &unk_267B85EB0);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *v1;
  v12[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7A144();

  sub_267B7E27C();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
  sub_267B4D3D8(&qword_280218AC8, &qword_280218990, MEMORY[0x277CC9268], MEMORY[0x277D83948]);
  sub_267B7E12C();

  if (!v2)
  {
    v13 = 1;
    sub_267B7E10C();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_267B7A144()
{
  result = qword_280219AF8;
  if (!qword_280219AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AF8);
  }

  return result;
}

uint64_t LinkAttachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B00, &qword_267B85EC0);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7A144();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
  v14[15] = 0;
  sub_267B4D3D8(&qword_280218AD8, &qword_2802189A0, MEMORY[0x277CC9280], MEMORY[0x277D83978]);
  sub_267B7E08C();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_267B7E06C();
  (*(v7 + 8))(v10, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_267B7A3BC(uint64_t a1)
{
  *(a1 + 16) = sub_267B45288();
  result = sub_267B45100();
  *(a1 + 24) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B7A50C()
{
  result = qword_280219B08;
  if (!qword_280219B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B08);
  }

  return result;
}

unint64_t sub_267B7A564()
{
  result = qword_280219B10;
  if (!qword_280219B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B10);
  }

  return result;
}

unint64_t sub_267B7A5BC()
{
  result = qword_280219B18;
  if (!qword_280219B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B18);
  }

  return result;
}

double RecipientLabel.init(contactName:appBundleIdentifiers:launchAppWithIntent:selectedAppIdentifier:unlockDevice:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_280218FC0;
  v16 = qword_280218F90;
  v17 = qword_280218F98;
  a8[8] = qword_280218FC8;
  a8[9] = v16;
  v18 = qword_280218F30;
  v19 = qword_280218F38;
  a8[10] = v17;
  a8[11] = v18;
  v20 = qword_280218F50;
  v21 = qword_280218F58;
  a8[12] = v19;
  a8[13] = v20;
  a8[14] = v21;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  a8[7] = v15;

  return result;
}

uint64_t RecipientLabel.contactName.setter()
{
  OUTLINED_FUNCTION_31();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RecipientLabel.appBundleIdentifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void *RecipientLabel.launchAppWithIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B7A880(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RecipientLabel.launchAppWithIntent.setter(v1);
}

void (*RecipientLabel.launchAppWithIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

uint64_t RecipientLabel.selectedAppIdentifier.setter()
{
  OUTLINED_FUNCTION_31();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void *RecipientLabel.unlockDevice.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_267B7A9A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RecipientLabel.unlockDevice.setter(v1);
}

void (*RecipientLabel.unlockDevice.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B7AA20;
}

void sub_267B7AA20(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 48);
  if (a2)
  {
    v5 = v3;

    *(v2 + 48) = v3;
  }

  else
  {

    *(v2 + 48) = v3;
  }
}

uint64_t RecipientLabel.toLabelText.setter()
{
  OUTLINED_FUNCTION_31();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t RecipientLabel.changeContactLabelText.setter()
{
  OUTLINED_FUNCTION_31();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t RecipientLabel.cancelButtonText.setter()
{
  OUTLINED_FUNCTION_31();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t RecipientLabel.doneButtonText.setter()
{
  OUTLINED_FUNCTION_31();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t sub_267B7AC98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000267B876B0 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000267B870C0 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000267B879D0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65446B636F6C6E75 && a2 == 0xEC00000065636976;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x546C6562614C6F74 && a2 == 0xEB00000000747865;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x8000000267B879F0 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000267B87A10 == a2;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x74747542656E6F64 && a2 == 0xEE00747865546E6FLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_267B7E16C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_267B7AF70(char a1)
{
  result = 0x4E746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x65446B636F6C6E75;
      break;
    case 5:
      result = 0x546C6562614C6F74;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x74747542656E6F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B7B0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7AC98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B7B0E8(uint64_t a1)
{
  v2 = sub_267B7B4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B7B124(uint64_t a1)
{
  v2 = sub_267B7B4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipientLabel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B20, &unk_267B860D0);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = v1[2];
  v27 = v1[3];
  v28 = v9;
  v10 = v1[4];
  v25 = v1[5];
  v26 = v10;
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[9];
  v23[8] = v1[8];
  v24 = v11;
  v23[5] = v13;
  v14 = v1[11];
  v23[6] = v1[10];
  v23[7] = v12;
  v15 = v1[12];
  v16 = v1[13];
  v23[3] = v14;
  v23[4] = v15;
  v17 = v1[14];
  v23[1] = v16;
  v23[2] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7B4B0();
  sub_267B7E27C();
  LOBYTE(v31) = 0;
  v18 = v29;
  sub_267B7E0FC();
  if (!v18)
  {
    v19 = v27;
    v31 = v28;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_7_11();
    sub_267B7E12C();
    v31 = v19;
    v30 = 2;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    OUTLINED_FUNCTION_4_13(&qword_280218DA0);
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_7_11();
    sub_267B7E12C();

    OUTLINED_FUNCTION_11_6(3);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    v31 = v24;
    v30 = 4;
    v21 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B30, &qword_267B860E8);
    OUTLINED_FUNCTION_4_13(&qword_280219B38);
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_7_11();
    sub_267B7E12C();

    OUTLINED_FUNCTION_11_6(5);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_11_6(6);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_11_6(7);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_11_6(8);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_267B7B4B0()
{
  result = qword_280219B28;
  if (!qword_280219B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B28);
  }

  return result;
}

void RecipientLabel.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B40, &qword_267B860F0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7B4B0();

  sub_267B7E25C();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    OUTLINED_FUNCTION_6_13();
    v4 = sub_267B7E05C();
    v32 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189C0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_6_13();
    sub_267B7E08C();
    v29 = v38[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    OUTLINED_FUNCTION_2_19();
    sub_267B40BFC(v6, &qword_280218D98, &qword_267B860E0, v7);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_6_13();
    sub_267B7E08C();
    v27 = v38[0];
    v8 = OUTLINED_FUNCTION_1_24(3);
    v28 = v9;
    v26 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B30, &qword_267B860E8);
    OUTLINED_FUNCTION_2_19();
    sub_267B40BFC(v10, &qword_280219B30, &qword_267B860E8, v11);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_6_13();
    sub_267B7E08C();
    v12 = v38[0];
    v24 = OUTLINED_FUNCTION_1_24(5);
    v25 = v13;

    v14 = OUTLINED_FUNCTION_1_24(6);
    v16 = v15;
    v33 = v14;

    v17 = OUTLINED_FUNCTION_1_24(7);
    v19 = v18;
    v34 = v17;

    v39 = 8;
    OUTLINED_FUNCTION_6_13();
    v35 = sub_267B7E05C();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_0_20();
    v23(v22);

    v37[0] = v4;
    v37[1] = v32;
    v37[2] = v38[0];
    v37[3] = v38[0];
    v37[4] = v26;
    v37[5] = v28;
    v37[6] = v38[0];
    v37[7] = v24;
    v37[8] = v25;
    v37[9] = v33;
    v37[10] = v16;
    v37[11] = v34;
    v37[12] = v19;
    v37[13] = v35;
    v37[14] = v21;
    memcpy(a2, v37, 0x78uLL);
    sub_267B7BB00(v37, v38);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v38[0] = v4;
    v38[1] = v32;
    v38[2] = v29;
    v38[3] = v27;
    v38[4] = v26;
    v38[5] = v28;
    v38[6] = v12;
    v38[7] = v24;
    v38[8] = v25;
    v38[9] = v33;
    v38[10] = v16;
    v38[11] = v34;
    v38[12] = v19;
    v38[13] = v35;
    v38[14] = v21;
    sub_267B7BB38(v38);
  }
}

uint64_t sub_267B7BBA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_267B7BBE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecipientLabel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B7BD2C()
{
  result = qword_280219B50;
  if (!qword_280219B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B50);
  }

  return result;
}

unint64_t sub_267B7BD84()
{
  result = qword_280219B58;
  if (!qword_280219B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B58);
  }

  return result;
}

unint64_t sub_267B7BDDC()
{
  result = qword_280219B60;
  if (!qword_280219B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_13(unint64_t *a1)
{

  return sub_267B40BFC(a1, v1, v2, &protocol conformance descriptor for ModelCodable<A>);
}

uint64_t AutoSendableBinaryButton.init(shouldAutoSend:autoSendTimeout:delayedActionCancelCommand:handleIntent:speechSynthesisId:isFirstPartyApp:responseMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_280218F18;
  *(a8 + 48) = qword_280218F10;
  *(a8 + 56) = v17;
  v18 = qword_280218F38;
  *(a8 + 64) = qword_280218F30;
  *(a8 + 72) = v18;
  v19 = *(type metadata accessor for AutoSendableBinaryButton(0) + 48);
  v20 = sub_267B7DC1C();
  __swift_storeEnumTagSinglePayload(a8 + v19, 1, 1, v20);
  *a8 = a1 & 1;
  *(a8 + 8) = a9;
  v21 = *(a8 + 16);

  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 80) = a6 & 1;
  return sub_267B40A18(a7, a8 + v19);
}

uint64_t type metadata accessor for AutoSendableBinaryButton(uint64_t a1)
{
  result = qword_280219B88;
  if (!qword_280219B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AutoSendableBinaryButton.delayedActionCancelCommand.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_267B7C114(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableBinaryButton.delayedActionCancelCommand.setter(v1);
}

void (*AutoSendableBinaryButton.delayedActionCancelCommand.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

void *AutoSendableBinaryButton.handleIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B7C1B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableBinaryButton.handleIntent.setter(v1);
}

void (*AutoSendableBinaryButton.handleIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

uint64_t AutoSendableBinaryButton.speechSynthesisId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AutoSendableBinaryButton.speechSynthesisId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AutoSendableBinaryButton.sendLabelText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AutoSendableBinaryButton.sendLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AutoSendableBinaryButton.cancelLabelText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AutoSendableBinaryButton.cancelLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t AutoSendableBinaryButton.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoSendableBinaryButton(0) + 48);

  return sub_267B40A88(v3, a1);
}

uint64_t AutoSendableBinaryButton.responseMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutoSendableBinaryButton(0) + 48);

  return sub_267B40A18(a1, v3);
}

uint64_t AutoSendableBinaryButton.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000029, 0x8000000267B87A30);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v1, v2);

  MEMORY[0x26D601760](0xD000000000000015, 0x8000000267B874E0);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x26D601760](v3, v4);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B7C5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7541646C756F6873 && a2 == 0xEE00646E65536F74;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E65536F747561 && a2 == 0xEF74756F656D6954;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000267B86D40 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E49656C646E6168 && a2 == 0xEC000000746E6574;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B86D60 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C646E6573 && a2 == 0xED0000747865546CLL;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614C6C65636E6163 && a2 == 0xEF747865546C6562;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x5074737269467369 && a2 == 0xEF70704179747261;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_267B7E16C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_267B7C8E8(char a1)
{
  result = 0x7541646C756F6873;
  switch(a1)
  {
    case 1:
      result = 0x646E65536F747561;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x6E49656C646E6168;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6562614C646E6573;
      break;
    case 6:
      result = 0x614C6C65636E6163;
      break;
    case 7:
      result = 0x5074737269467369;
      break;
    case 8:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B7CA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7C5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B7CA6C(uint64_t a1)
{
  v2 = sub_267B7CDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B7CAA8(uint64_t a1)
{
  v2 = sub_267B7CDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendableBinaryButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B68, &qword_267B86318);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7CDEC();
  sub_267B7E27C();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E11C();
    v17 = *(v3 + 16);
    HIBYTE(v16) = 2;
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    OUTLINED_FUNCTION_5_0(&qword_2802185C8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v17 = *(v3 + 24);
    HIBYTE(v16) = 3;
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    OUTLINED_FUNCTION_5_0(&qword_2802185D8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    OUTLINED_FUNCTION_2_20(4);
    sub_267B7E0CC();
    OUTLINED_FUNCTION_2_20(5);
    sub_267B7E0FC();
    OUTLINED_FUNCTION_2_20(6);
    sub_267B7E0FC();
    LOBYTE(v17) = 7;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    type metadata accessor for AutoSendableBinaryButton(0);
    LOBYTE(v17) = 8;
    sub_267B7DC1C();
    OUTLINED_FUNCTION_5_14();
    sub_267B7D57C(v14, v15, MEMORY[0x277D61CD0]);
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_267B7CDEC()
{
  result = qword_280219B70;
  if (!qword_280219B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B70);
  }

  return result;
}

uint64_t AutoSendableBinaryButton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B78, &qword_267B86320);
  OUTLINED_FUNCTION_8();
  v45 = v6;
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for AutoSendableBinaryButton(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0;
  v10 = (v9 + 16);
  *(v9 + 3) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_280218F18;
  v12 = qword_280218F38;
  v13 = *(v7 + 48);
  v14 = sub_267B7DC1C();
  v50 = v13;
  __swift_storeEnumTagSinglePayload(&v9[v13], 1, 1, v14);
  v15 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_267B7CDEC();
  v48 = v11;

  v49 = v12;

  v16 = v47;
  sub_267B7E25C();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(v51);

    v22 = *(v9 + 3);

    return sub_267B40B94(&v9[v50]);
  }

  else
  {
    LOBYTE(v53) = 0;
    *v9 = sub_267B7E06C() & 1;
    LOBYTE(v53) = 1;
    sub_267B7E07C();
    *(v9 + 1) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    v52 = 2;
    OUTLINED_FUNCTION_3_15();
    sub_267B40BFC(v18, v19, v20, v21);
    OUTLINED_FUNCTION_8_13();
    sub_267B7E08C();
    v23 = v53;

    *v10 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    v52 = 3;
    OUTLINED_FUNCTION_3_15();
    sub_267B40BFC(v24, v25, v26, v27);
    OUTLINED_FUNCTION_8_13();
    sub_267B7E08C();
    v28 = v53;

    *(v9 + 3) = v28;
    OUTLINED_FUNCTION_1_25(4);
    *(v9 + 4) = sub_267B7E01C();
    *(v9 + 5) = v29;
    OUTLINED_FUNCTION_1_25(5);
    v30 = sub_267B7E05C();
    v32 = v31;

    *(v9 + 6) = v30;
    *(v9 + 7) = v32;
    OUTLINED_FUNCTION_1_25(6);
    v33 = sub_267B7E05C();
    v48 = v32;
    v35 = v34;

    *(v9 + 8) = v33;
    *(v9 + 9) = v35;
    OUTLINED_FUNCTION_1_25(7);
    v9[80] = sub_267B7E06C() & 1;
    LOBYTE(v53) = 8;
    OUTLINED_FUNCTION_5_14();
    sub_267B7D57C(v36, v37, MEMORY[0x277D61CE0]);
    v38 = v44;
    sub_267B7E04C();
    v39 = OUTLINED_FUNCTION_0_21();
    v40(v39);
    sub_267B40A18(v38, &v9[v50]);
    sub_267B7D3B4(v9, v43);
    __swift_destroy_boxed_opaque_existential_0(v51);
    return sub_267B7D418(v9);
  }
}

uint64_t sub_267B7D3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableBinaryButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B7D418(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendableBinaryButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B7D490(uint64_t a1)
{
  result = sub_267B7D57C(&qword_280219B80, type metadata accessor for AutoSendableBinaryButton, &protocol conformance descriptor for AutoSendableBinaryButton);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267B7D57C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267B7D61C(uint64_t a1)
{
  sub_267B40F90(319, &qword_280218630, &qword_280218638, 0x277D47A48);
  if (v1 <= 0x3F)
  {
    sub_267B40F90(319, &qword_280218640, &qword_280218648, 0x277D473D0);
    if (v2 <= 0x3F)
    {
      sub_267B41030();
      if (v3 <= 0x3F)
      {
        sub_267B41080(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AutoSendableBinaryButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B7D804()
{
  result = qword_280219B98;
  if (!qword_280219B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B98);
  }

  return result;
}

unint64_t sub_267B7D85C()
{
  result = qword_280219BA0;
  if (!qword_280219BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219BA0);
  }

  return result;
}

unint64_t sub_267B7D8B4()
{
  result = qword_280219BA8;
  if (!qword_280219BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219BA8);
  }

  return result;
}
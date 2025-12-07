uint64_t sub_217561630(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_21726A630(a1, &v4, &qword_27CB2AD40, &qword_2177583F0);

  return CuratorPropertyProvider.subscript.setter();
}

uint64_t CuratorPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29740, &unk_217778880);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177B09E0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    goto LABEL_17;
  }

  v1 = qword_280BE8190;
  swift_retain_n();
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_84(&qword_280BE8190);
  }

  OUTLINED_FUNCTION_139_7(qword_280C02478);
  OUTLINED_FUNCTION_44_1();

  if (v1)
  {
    swift_getKeyPath("Pv=e");
    OUTLINED_FUNCTION_15_6();
    sub_217351C74(v2, v3);
  }

  else
  {
    v4 = qword_280BE8180;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_1_82(&qword_280BE8180);
    }

    OUTLINED_FUNCTION_139_7(qword_280C02470);
    OUTLINED_FUNCTION_44_1();

    if (v4)
    {
      swift_getKeyPath("hv=e");
      OUTLINED_FUNCTION_15_6();
      sub_217351C78(v5, v6);
    }

    else
    {
      v7 = qword_280BE8138;

      if (v7 != -1)
      {
        OUTLINED_FUNCTION_49(&qword_280BE8138);
      }

      OUTLINED_FUNCTION_139_7(qword_280BE8140);
      OUTLINED_FUNCTION_44_1();

      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25498, &unk_21775D580);
        swift_initStackObject();
        v10 = OUTLINED_FUNCTION_54_0();
        OUTLINED_FUNCTION_139_7(v10);
        OUTLINED_FUNCTION_44_1();

        while (1)
        {
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
LABEL_17:
          OUTLINED_FUNCTION_58_1("Fatal error");
          __break(1u);
        }
      }

      swift_getKeyPath(byte_2177788B8);
      OUTLINED_FUNCTION_15_6();
      sub_217351CB4(v8, v9);
    }
  }

  return sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
}

void (*CuratorPropertyProvider.subscript.modify())(void **a1, char a2)
{
  OUTLINED_FUNCTION_143();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  CuratorPropertyProvider.subscript.getter();
  return sub_2175619FC;
}

void sub_2175619FC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    CuratorPropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    CuratorPropertyProvider.subscript.setter();
  }

  free(v2);
}

void CuratorPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26DE8, &qword_2177673D0);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for CuratorPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28128, &qword_21776C160);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177B0A10);
    v25[0] = v7;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v8 + 216), v22, v23);
    sub_217753018();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v24 = 103;
    goto LABEL_27;
  }

  v2 = v15;
  sub_2171FF30C(v5, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_2171F0738(v12, &qword_27CB26DE8, &qword_2177673D0);
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ELL, 0x80000002177B0A40);
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v24 = 106;
    goto LABEL_27;
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_2173AC5B4(v12, v1);
  v16 = qword_280BE8190;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_2_84(&qword_280BE8190);
  }

  OUTLINED_FUNCTION_174(qword_280C02478);
  OUTLINED_FUNCTION_36_14();

  if (v16)
  {

    v17 = *(v1 + 552);
    sub_217751DE8();
    sub_2173AC558(v1);
    if (!v17)
    {
      v17 = sub_217751DE8();
    }

    *(v3 + 552) = v17;
  }

  else
  {
    v18 = qword_280BE8180;

    if (v18 != -1)
    {
      OUTLINED_FUNCTION_1_82(&qword_280BE8180);
    }

    OUTLINED_FUNCTION_174(qword_280C02470);
    OUTLINED_FUNCTION_36_14();

    if (v18)
    {

      v19 = *(v1 + 624);
      sub_217751DE8();
      sub_2173AC558(v1);
      if (!v19)
      {
        v19 = sub_217751DE8();
      }

      *(v3 + 624) = v19;
    }

    else
    {
      v20 = qword_280BE8138;

      if (v20 != -1)
      {
        OUTLINED_FUNCTION_49(&qword_280BE8138);
      }

      OUTLINED_FUNCTION_174(qword_280BE8140);
      OUTLINED_FUNCTION_36_14();

      if ((v20 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25498, &unk_21775D580);
        swift_initStackObject();
        v21 = OUTLINED_FUNCTION_54_0();
        OUTLINED_FUNCTION_174(v21);
        OUTLINED_FUNCTION_36_14();

        while (1)
        {
          OUTLINED_FUNCTION_28_23();
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177B0A70);
          v25[0] = v2;
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_30_22();
          v24 = 122;
LABEL_27:
          v25[0] = v24;
          OUTLINED_FUNCTION_58_1("Fatal error");
          __break(1u);
        }
      }

      sub_21726A630(v1 + *(v13 + 48), v25, &qword_27CB25330, &unk_21775E9B0);
      sub_2173AC558(v1);
      if (v25[11])
      {
        memcpy(v26, v25, 0x68uLL);
      }

      else
      {
        sub_21726A630(v3 + *(v13 + 48), v26, &qword_27CB25330, &unk_21775E9B0);
        if (v25[11])
        {
          sub_2171F0738(v25, &qword_27CB25330, &unk_21775E9B0);
        }
      }

      sub_21733BBDC(v26, v3 + *(v13 + 48), &qword_27CB25330, &unk_21775E9B0);
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217562004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217765440;
  if (qword_280BE8148 != -1)
  {
    OUTLINED_FUNCTION_14_41(&qword_280BE8148);
  }

  *(v0 + 32) = qword_280C02450;
  v1 = qword_280BE8190;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_84(&qword_280BE8190);
  }

  *(v0 + 40) = qword_280C02478;
  v2 = qword_280BE81A8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_112_0(&qword_280BE81A8);
  }

  *(v0 + 48) = qword_280C02488;
  v3 = qword_280BE8180;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_1_82(&qword_280BE8180);
  }

  *(v0 + 56) = qword_280C02470;
  v4 = qword_280BE8168;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_280BE8168);
  }

  *(v0 + 64) = qword_280C02460;
  v5 = qword_280BE81A0;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_11_49(&qword_280BE81A0);
  }

  *(v0 + 72) = qword_280C02480;
  v6 = qword_280BE8158;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_50_0(&qword_280BE8158);
  }

  *(v0 + 80) = qword_280C02458;
  v7 = qword_280BE8170;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_134(&qword_280BE8170);
  }

  *(v0 + 88) = qword_280C02468;
  v8 = qword_280BE8138;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_49(&qword_280BE8138);
  }

  *(v0 + 96) = qword_280BE8140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25498, &unk_21775D580);
  swift_allocObject();
  *(v0 + 104) = OUTLINED_FUNCTION_54_0();
  qword_280C023C8 = v0;
}

uint64_t CuratorPropertyProvider.knownProperties.getter()
{
  type metadata accessor for CuratorPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t CuratorPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_59_15() + 60);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *CuratorPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_24_32() + 60);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t CuratorPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_15() + 64));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void CuratorPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for CuratorPropertyProvider(0) + 64);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t CuratorPropertyProvider.href.getter()
{
  type metadata accessor for CuratorPropertyProvider(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void CuratorPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = (v1 + *(type metadata accessor for CuratorPropertyProvider(0) + 68));

  *v3 = v2;
  v3[1] = v0;
}

uint64_t CuratorPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for CuratorPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t CuratorPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for CuratorPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t CuratorPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for CuratorPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t CuratorPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for CuratorPropertyProvider(0);

  return sub_217751DE8();
}

void static CuratorPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v142 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_167();
  v19 = OUTLINED_FUNCTION_37_16();
  memcpy(v19, v5, 0x221uLL);
  v20 = OUTLINED_FUNCTION_38_14();
  memcpy(v20, v3, 0x221uLL);
  v21 = OUTLINED_FUNCTION_8_36();
  memcpy(v21, v5, 0x221uLL);
  memcpy(v169, v3, sizeof(v169));
  memcpy(v170, v5, 0x221uLL);
  OUTLINED_FUNCTION_104(v170);
  if (v27)
  {
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v156);
    if (!v27)
    {
      v32 = OUTLINED_FUNCTION_37_16();
      OUTLINED_FUNCTION_157(v32, &v157);
      v33 = OUTLINED_FUNCTION_38_14();
      v34 = &v157;
LABEL_10:
      OUTLINED_FUNCTION_157(v33, v34);
      goto LABEL_11;
    }

    v145 = v8;
    v146 = v6;
    v22 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_4_58(v22);
    v23 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_40_2(v23, v155);
    v24 = OUTLINED_FUNCTION_38_14();
    OUTLINED_FUNCTION_40_2(v24, v155);
    v25 = OUTLINED_FUNCTION_16_31();
    sub_2171F0738(v25, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_4_58(v26);
    OUTLINED_FUNCTION_4_58(v155);
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v156);
    if (v27)
    {
      OUTLINED_FUNCTION_4_58(v152);
      v28 = OUTLINED_FUNCTION_37_16();
      OUTLINED_FUNCTION_21_24(v28);
      v29 = OUTLINED_FUNCTION_38_14();
      OUTLINED_FUNCTION_21_24(v29);
      v30 = OUTLINED_FUNCTION_16_31();
      OUTLINED_FUNCTION_21_24(v30);
      v31 = v152;
LABEL_9:
      sub_217284084(v31);
LABEL_11:
      OUTLINED_FUNCTION_6_38();
      memcpy(v35, v36, 0x449uLL);
      v37 = &unk_27CB25C18;
      v38 = &unk_21775ECE0;
      v39 = v156;
LABEL_12:
      sub_2171F0738(v39, v37, v38);
      goto LABEL_13;
    }

    v145 = v8;
    v146 = v6;
    memcpy(v152, v169, 0x221uLL);
    v40 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_42_15(v40);
    v41 = OUTLINED_FUNCTION_38_14();
    OUTLINED_FUNCTION_42_15(v41);
    v42 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_42_15(v42);
    v43 = static Artwork.== infix(_:_:)(v155, v152);
    memcpy(v150, v152, 0x221uLL);
    sub_217284084(v150);
    memcpy(v151, v155, 0x221uLL);
    sub_217284084(v151);
    OUTLINED_FUNCTION_4_58(v152);
    sub_2171F0738(v152, &qword_27CB24400, &unk_21775E9A0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v44 = *(v3 + 552);
  if (*(v5 + 552))
  {
    if (!v44)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262A00();
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v44)
  {
    goto LABEL_13;
  }

  v47 = *(v5 + 576);
  v153[0] = *(v5 + 560);
  v153[1] = v47;
  v48 = *(v5 + 576);
  v153[2] = *(v5 + 592);
  v49 = *(v5 + 592);
  v153[3] = *(v5 + 608);
  v50 = *(v3 + 576);
  v154[0] = *(v3 + 560);
  v154[1] = v50;
  v51 = *(v3 + 576);
  v154[2] = *(v3 + 592);
  v52 = *(v3 + 592);
  v154[3] = *(v3 + 608);
  v151[0] = v48;
  v151[1] = v49;
  v151[2] = *(v5 + 608);
  v53 = *(&v153[0] + 1);
  v54 = *(&v154[0] + 1);
  v150[0] = v51;
  v150[1] = v52;
  v150[2] = *(v3 + 608);
  if (*(&v153[0] + 1) == 1)
  {
    if (*(&v154[0] + 1) == 1)
    {
      *&v161 = *&v153[0];
      *(&v161 + 1) = 1;
      OUTLINED_FUNCTION_19_20(*(v5 + 576), *(v5 + 592));
      v164 = *(v5 + 608);
      OUTLINED_FUNCTION_40_2(v153, v156);
      OUTLINED_FUNCTION_40_2(v154, v156);
      v55 = OUTLINED_FUNCTION_8_36();
      sub_2171F0738(v55, &qword_27CB24B70, &unk_217759460);
      goto LABEL_29;
    }

    v57 = *&v154[0];
    v58 = *&v153[0];
    OUTLINED_FUNCTION_6_38();
    sub_21726A630(v61, v62, &qword_27CB24B70, &unk_217759460);
    OUTLINED_FUNCTION_6_38();
    sub_21726A630(v63, v64, &qword_27CB24B70, &unk_217759460);
LABEL_26:
    *&v161 = v58;
    *(&v161 + 1) = v53;
    OUTLINED_FUNCTION_19_20(v151[0], v151[1]);
    v164 = v151[2];
    v165 = v57;
    v166 = v54;
    v167 = v150[0];
    v168[0] = v150[1];
    v168[1] = v150[2];
LABEL_27:
    v39 = OUTLINED_FUNCTION_8_36();
    goto LABEL_12;
  }

  v161 = v153[0];
  v56 = *(v5 + 592);
  v162 = *(v5 + 576);
  v163 = v56;
  v164 = *(v5 + 608);
  v156[0] = v153[0];
  v156[1] = v162;
  v156[2] = v56;
  v156[3] = v164;
  if (*(&v154[0] + 1) == 1)
  {
    v57 = *&v154[0];
    v58 = *&v153[0];
    v157 = v161;
    v158 = v162;
    v159 = v163;
    v160 = v164;
    OUTLINED_FUNCTION_43_11(v153);
    OUTLINED_FUNCTION_43_11(v154);
    v59 = OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_43_11(v59);
    v60 = OUTLINED_FUNCTION_16_31();
    sub_217351248(v60);
    goto LABEL_26;
  }

  v65 = *(v3 + 592);
  v158 = *(v3 + 576);
  v159 = v65;
  v160 = *(v3 + 608);
  v157 = v154[0];
  v143 = *&v153[0];
  LODWORD(v144) = static EditorialNotes.== infix(_:_:)(v156, &v157);
  v152[0] = v157;
  v152[1] = v158;
  v152[2] = v159;
  v152[3] = v160;
  sub_21726A630(v153, v155, &qword_27CB24B70, &unk_217759460);
  sub_21726A630(v154, v155, &qword_27CB24B70, &unk_217759460);
  v66 = OUTLINED_FUNCTION_8_36();
  sub_21726A630(v66, v155, &qword_27CB24B70, &unk_217759460);
  sub_217351248(v152);
  v155[0] = v156[0];
  v155[1] = v156[1];
  v155[2] = v156[2];
  v155[3] = v156[3];
  sub_217351248(v155);
  *&v157 = v143;
  *(&v157 + 1) = v53;
  v158 = v151[0];
  v159 = v151[1];
  v160 = v151[2];
  v67 = OUTLINED_FUNCTION_16_31();
  sub_2171F0738(v67, &qword_27CB24B70, &unk_217759460);
  if ((v144 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  v68 = *(v3 + 624);
  if (*(v5 + 624))
  {
    if (!v68)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262CB4();
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v68)
  {
    goto LABEL_13;
  }

  v71 = *(v5 + 632);
  v72 = *(v3 + 632);
  if (v71 == 2)
  {
    if (v72 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v72 == 2 || ((v72 ^ v71) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_45_27(v152);
  memcpy(v155, (v3 + 640), 0x221uLL);
  v73 = OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_45_27(v73);
  memcpy(v169, (v3 + 640), sizeof(v169));
  v74 = OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_45_27(v74);
  v75 = OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_104(v75);
  if (v27)
  {
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v156);
    if (v27)
    {
      OUTLINED_FUNCTION_4_58(v151);
      OUTLINED_FUNCTION_40_2(v152, v150);
      OUTLINED_FUNCTION_40_2(v155, v150);
      sub_2171F0738(v151, &qword_27CB24400, &unk_21775E9A0);
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_21_24(v152);
    v33 = v155;
    v34 = v151;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_58(v151);
  OUTLINED_FUNCTION_4_58(v150);
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_104(v156);
  if (v76)
  {
    OUTLINED_FUNCTION_4_58(v149);
    OUTLINED_FUNCTION_157(v152, v148);
    OUTLINED_FUNCTION_157(v155, v148);
    OUTLINED_FUNCTION_157(v151, v148);
    v31 = v149;
    goto LABEL_9;
  }

  memcpy(v149, v169, 0x221uLL);
  OUTLINED_FUNCTION_41_16(v152);
  OUTLINED_FUNCTION_41_16(v155);
  OUTLINED_FUNCTION_41_16(v151);
  v77 = static Artwork.== infix(_:_:)(v150, v149);
  memcpy(v147, v149, 0x221uLL);
  sub_217284084(v147);
  memcpy(v148, v150, 0x221uLL);
  sub_217284084(v148);
  OUTLINED_FUNCTION_4_58(v149);
  sub_2171F0738(v149, &qword_27CB24400, &unk_21775E9A0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_48:
  v78 = *(v5 + 1200);
  v79 = *(v3 + 1200);
  if (v78)
  {
    if (!v79)
    {
      goto LABEL_13;
    }

    v80 = *(v5 + 1192) == *(v3 + 1192) && v78 == v79;
    if (!v80 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v79)
  {
    goto LABEL_13;
  }

  v144 = type metadata accessor for CuratorPropertyProvider(0);
  v81 = v144[11];
  v82 = *(v17 + 48);
  sub_21726A630(v5 + v81, v0, &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(v3 + v81, v0 + v82, &unk_27CB277C0, &qword_217758DC0);
  v83 = v146;
  if (__swift_getEnumTagSinglePayload(v0, 1, v146) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v0 + v82, 1, v83) == 1)
    {
      sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_64;
    }

LABEL_62:
    v37 = &qword_27CB24840;
    v38 = &unk_217758DD0;
    v39 = v0;
    goto LABEL_12;
  }

  sub_21726A630(v0, v16, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v0 + v82, 1, v83) == 1)
  {
    (*(v145 + 8))(v16, v83);
    goto LABEL_62;
  }

  v84 = v145;
  (*(v145 + 32))(v12, v0 + v82, v83);
  OUTLINED_FUNCTION_7_53();
  sub_2175639A4(v85, v86, MEMORY[0x277CC9278]);
  v87 = sub_217751F08();
  v88 = *(v84 + 8);
  v88(v12, v83);
  v88(v16, v83);
  sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_64:
  v89 = v144[12];
  OUTLINED_FUNCTION_6_38();
  sub_21726A630(v90, v91, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v3 + v89, v168 + 8, &qword_27CB25330, &unk_21775E9B0);
  if (!*(&v167 + 1))
  {
    if (!*&v168[6])
    {
      v99 = OUTLINED_FUNCTION_8_36();
      sub_2171F0738(v99, v100, v101);
      goto LABEL_70;
    }

    goto LABEL_27;
  }

  v92 = OUTLINED_FUNCTION_8_36();
  sub_21726A630(v92, v156, v93, v94);
  if (!*&v168[6])
  {
    sub_2171F0738(v156, &unk_27CB28230, &unk_21775CD50);
    goto LABEL_27;
  }

  memcpy(v151, v168 + 8, 0x68uLL);
  v95 = sub_21733E390(v156, v151);
  sub_2171F0738(v151, &unk_27CB28230, &unk_21775CD50);
  sub_2171F0738(v156, &unk_27CB28230, &unk_21775CD50);
  v96 = OUTLINED_FUNCTION_8_36();
  sub_2171F0738(v96, v97, v98);
  if ((v95 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_70:
  v102 = v144[13];
  v103 = *(v3 + v102);
  if (*(v5 + v102))
  {
    if (!v103)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_21726F358();
    v105 = v104;

    if ((v105 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v103)
  {
    goto LABEL_13;
  }

  v106 = OUTLINED_FUNCTION_136(v144[14]);
  sub_217270140(v106, v107, v108, v109, v110, v111, v112, v113, v142, v143, v144, v145);
  if (v114)
  {
    v115 = v144[15];
    memcpy(v150, (v5 + v115), 0x161uLL);
    memcpy(v149, (v5 + v115), 0x161uLL);
    v116 = v144[15];
    memcpy(v151, (v3 + v116), 0x161uLL);
    memcpy(v148, (v3 + v116), 0x161uLL);
    sub_217269EF4(v150, v147);
    sub_217269EF4(v151, v147);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v116) = v117;
    memcpy(v156, v148, 0x161uLL);
    sub_217269F50(v156);
    v118 = OUTLINED_FUNCTION_8_36();
    memcpy(v118, v149, 0x161uLL);
    v119 = OUTLINED_FUNCTION_8_36();
    sub_217269F50(v119);
    if (v116)
    {
      v120 = v144[16];
      v121 = *(v5 + v120);
      v122 = *(v5 + v120 + 8);
      v123 = (v3 + v120);
      v124 = v121 == *v123 && v122 == v123[1];
      if (v124 || (sub_217753058() & 1) != 0)
      {
        v125 = v144[17];
        v126 = (v5 + v125);
        v127 = *(v5 + v125 + 8);
        v128 = (v3 + v125);
        v129 = v128[1];
        if (!v127)
        {
          if (v129)
          {
            goto LABEL_13;
          }

          goto LABEL_93;
        }

        if (v129)
        {
          v130 = *v126 == *v128 && v127 == v129;
          if (v130 || (sub_217753058() & 1) != 0)
          {
LABEL_93:
            v131 = OUTLINED_FUNCTION_136(v144[18]);
            sub_217261FB0(v131, v132);
            if (v133)
            {
              v134 = OUTLINED_FUNCTION_136(v144[19]);
              sub_217261FB0(v134, v135);
              if (v136)
              {
                v137 = OUTLINED_FUNCTION_136(v144[20]);
                sub_217261FB0(v137, v138);
                if (v139)
                {
                  v140 = OUTLINED_FUNCTION_136(v144[21]);
                  sub_217261FB0(v140, v141);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}

void CuratorPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v36[-v10 - 8];
  OUTLINED_FUNCTION_225_3(v45);
  OUTLINED_FUNCTION_225_3(v46);
  OUTLINED_FUNCTION_104(v46);
  if (v12)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v38, v45, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v39, v45, 0x221uLL);
    sub_217284028(v39, v40);
    Artwork.hash(into:)(v3);
    memcpy(v40, v38, 0x221uLL);
    sub_217284084(v40);
  }

  if (*(v0 + 552))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v13 = *(v0 + 576);
  v41 = *(v0 + 560);
  v42 = v13;
  v14 = *(v0 + 608);
  v43 = *(v0 + 592);
  v44 = v14;
  sub_217265238();
  if (*(v0 + 624))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v15 = *(v0 + 632);
  if (v15 == 2)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v15 & 1);
  }

  OUTLINED_FUNCTION_45_27(v39);
  OUTLINED_FUNCTION_45_27(v40);
  OUTLINED_FUNCTION_104(v40);
  if (v12)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v36, v39, sizeof(v36));
    OUTLINED_FUNCTION_119();
    memcpy(v37, v39, 0x221uLL);
    sub_217284028(v37, v38);
    Artwork.hash(into:)(v3);
    memcpy(v38, v36, 0x221uLL);
    sub_217284084(v38);
  }

  if (*(v0 + 1200))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v16 = type metadata accessor for CuratorPropertyProvider(0);
  sub_21726A630(v0 + v16[11], v11, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v6 + 32))(v1, v11, v4);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_7_53();
    sub_2175639A4(v17, v18, MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v6 + 8))(v1, v4);
  }

  sub_21726A630(v0 + v16[12], v38, &qword_27CB25330, &unk_21775E9B0);
  if (v38[11])
  {
    memcpy(v37, v38, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v37, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v19 = *(v0 + v16[13]);
  if (v19)
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0(v3, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v25 = OUTLINED_FUNCTION_201();
  sub_217281970(v25, v26);
  memcpy(v38, (v0 + v16[15]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v3);
  sub_217751FF8();
  if (*(v0 + v16[17] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v27 = OUTLINED_FUNCTION_201();
  sub_217265A08(v27, v28);
  v29 = OUTLINED_FUNCTION_201();
  sub_217265A08(v29, v30);
  v31 = OUTLINED_FUNCTION_201();
  sub_217265A08(v31, v32);
  v33 = OUTLINED_FUNCTION_201();
  sub_217265A08(v33, v34);
  OUTLINED_FUNCTION_13();
}

uint64_t CuratorPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  CuratorPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_217563880(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  CuratorPropertyProvider.subscript.getter();
  return sub_2175619FC;
}

uint64_t sub_2175638FC(uint64_t a1)
{
  sub_2177531E8();
  CuratorPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175639A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217563A14(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7688, &type metadata for Curator.Kind);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    v2 = v9;
    if (v10 > 0x3F)
    {
      return v2;
    }

    sub_2174B3A3C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE7F80, &unk_27CB28230, &unk_21775CD50);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_2174B3A3C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
    if (v14 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_217351BFC();
      v2 = v15;
      if (v16 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_11_49(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_41(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_45_27(void *a1)
{

  return memcpy(a1, (v1 + 640), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_59_15()
{

  return type metadata accessor for CuratorPropertyProvider(0);
}

uint64_t _MusicLibraryMapping.MappedItem.init(item:mappingItem:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + 80);
  (*(*(*(*a2 + 80) - 8) + 32))(a3, a1, *(*a2 + 80));
  result = type metadata accessor for _MusicLibraryMapping.MappedItem(0, v6, *(v5 + 88), *(v5 + 96));
  *(a3 + *(result + 44)) = a2;
  return result;
}

uint64_t sub_217563DE4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 16);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[9] = v5;
  *v5 = v3;
  v5[1] = sub_217563F00;

  return sub_21762EC0C();
}

uint64_t sub_217563F00()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2175640D8;
  }

  else
  {
    v2 = sub_217564014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_217564014()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  (*(v0[6] + 32))(v1, v0[8], v0[5]);
  _MusicLibraryMapping.MappedItem.init(item:mappingItem:)(v1, *(v2 + *(v3 + 44)), v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2175640D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2175641A0(void *a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v3 = type metadata accessor for _MusicLibraryMapping.Item(319, v2, a1[3], a1[4]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_21756423C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_217564378(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_217564544()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_30_30();
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_75(v1);

  return v4(v3);
}

uint64_t sub_2175645F4()
{
  v0 = OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_1121(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_40();
  MEMORY[0x21CEA23B0](0x65726E6547, 0xE500000000000000);
  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_1413();
  sub_217752C78();
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_1001();
  return OUTLINED_FUNCTION_570("Fatal error");
}

uint64_t sub_2175646C8()
{
  v0 = OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_1121(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_40();
  MEMORY[0x21CEA23B0](0x6B63617254, 0xE500000000000000);
  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_1413();
  sub_217752C78();
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_1001();
  return OUTLINED_FUNCTION_570("Fatal error");
}

uint64_t sub_21756479C()
{
  v0 = OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_1121(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_40();
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_1413();
  sub_217752C78();
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_1001();
  return OUTLINED_FUNCTION_570("Fatal error");
}

uint64_t sub_217564850()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_30_30();
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_75(v1);

  return v4(v3);
}

uint64_t sub_2175648E0()
{
  OUTLINED_FUNCTION_10();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[25] = v5;
  v1[26] = v6;
  v1[23] = v7;
  v1[24] = v8;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2175649C8()
{
  v141 = v0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 176) = MEMORY[0x277D84F90];
  v2 = (v0 + 176);
  result = sub_217204DD0(*(v0 + 200));
  if (result)
  {
    if (result >= 1)
    {
      v4 = 0;
      v5 = *(v0 + 232);
      v119 = (v5 + 112);
      v129 = *(v5 + 120);
      v6 = *(v0 + 200);
      v127 = v6 & 0xC000000000000001;
      v117 = v6 + 32;
      v123 = (v0 + 16);
      v125 = (*(v0 + 248) + 16);
      v134 = result;
      v136 = MEMORY[0x277D84F90];
      v121 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v127)
        {
          v7 = MEMORY[0x21CEA2E30](v4, *(v0 + 200));
        }

        else
        {
          v7 = *(v117 + 8 * v4);
        }

        v129(&v137, v7);
        v8 = v137;
        if (v137 == 34 || (v9 = (*v119)(v7), !v10))
        {
          (*v125)(*(v0 + 288), *(v0 + 240), *(v0 + 224));
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
          if ((OUTLINED_FUNCTION_34_28(v17) & 1) == 0)
          {
            v27 = OUTLINED_FUNCTION_40_25();
            sub_2171F0790(v27, &unk_27CB27620, &unk_217778B30);
LABEL_24:

            MEMORY[0x21CEA25D0](v28);
            v29 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
            {
              OUTLINED_FUNCTION_57(v29);
              sub_2177522F8();
            }

            sub_217752378();

            v121 = *v2;
            goto LABEL_27;
          }

          sub_2171F3F0C((v0 + 56), v123);
          __swift_project_boxed_opaque_existential_1(v123, *(v0 + 40));
          v18 = OUTLINED_FUNCTION_23_41();
          v19(v18);
          v20 = v137;
          if (!v137)
          {
            __swift_destroy_boxed_opaque_existential_1(v123);
            goto LABEL_24;
          }

          v118 = v140;
          v22 = v138;
          v21 = v139;
          v23 = v136;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = OUTLINED_FUNCTION_269();
            sub_2172B2674(v40, v41, v42, v43);
            v23 = v44;
          }

          v25 = *(v23 + 16);
          v24 = *(v23 + 24);
          if (v25 >= v24 >> 1)
          {
            OUTLINED_FUNCTION_57(v24);
            OUTLINED_FUNCTION_161_2();
            sub_2172B2674(v45, v46, v47, v48);
            v23 = v49;
          }

          v136 = v23;
          *(v23 + 16) = v25 + 1;
          v26 = v23 + 32 * v25;
          *(v26 + 32) = v20;
          *(v26 + 40) = v22;
          *(v26 + 48) = v21;
          *(v26 + 56) = v118;
          __swift_destroy_boxed_opaque_existential_1(v123);
        }

        else
        {
          v11 = v9;
          v12 = v10;

          v13 = v136;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = OUTLINED_FUNCTION_269();
            sub_2172B2674(v30, v31, v32, v33);
            v13 = v34;
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            OUTLINED_FUNCTION_57(v14);
            OUTLINED_FUNCTION_161_2();
            sub_2172B2674(v35, v36, v37, v38);
            v13 = v39;
          }

          v136 = v13;
          *(v13 + 16) = v15 + 1;
          v16 = v13 + 32 * v15;
          *(v16 + 32) = v7;
          *(v16 + 40) = v11;
          *(v16 + 48) = v12;
          *(v16 + 56) = v8;
        }

        v2 = (v0 + 176);
LABEL_27:
        if (v134 == ++v4)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  v136 = v1;
  v121 = v1;
LABEL_30:
  *(v0 + 296) = v121;
  *(v0 + 304) = v121;
  result = sub_217204DD0(*(v0 + 192));
  if (result)
  {
    v50 = result;
    if (result < 1)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v51 = 0;
    v52 = v2 - 10;
    v53 = (v2 - 5);
    v132 = *(*(v0 + 232) + 112);
    v54 = *(v0 + 192);
    v130 = v54 & 0xC000000000000001;
    v55 = MEMORY[0x277D84F90];
    v124 = (*(v0 + 248) + 16);
    v126 = v54 + 32;
    v128 = v52;
    do
    {
      if (v130)
      {
        v56 = MEMORY[0x21CEA2E30](v51, *(v0 + 192));
      }

      else
      {
        v56 = *(v126 + 8 * v51);
      }

      v57 = v132(v56);
      if (v58)
      {
        v59 = v57;
        v60 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = OUTLINED_FUNCTION_269();
          sub_2172AFF2C(v74, v75, v76, v77);
          v55 = v78;
        }

        v62 = *(v55 + 16);
        v61 = *(v55 + 24);
        if (v62 >= v61 >> 1)
        {
          OUTLINED_FUNCTION_57(v61);
          OUTLINED_FUNCTION_161_2();
          sub_2172AFF2C(v79, v80, v81, v82);
          v55 = v83;
        }

        *(v55 + 16) = v62 + 1;
        v63 = v55 + 16 * v62;
        *(v63 + 32) = v59;
        *(v63 + 40) = v60;
        v52 = v128;
      }

      else
      {
        (*v124)(*(v0 + 280), *(v0 + 240), *(v0 + 224));
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
        if (OUTLINED_FUNCTION_34_28(v64))
        {
          sub_2171F3F0C(v53, v52);
          __swift_project_boxed_opaque_existential_1(v52, *(v0 + 120));
          v65 = OUTLINED_FUNCTION_23_41();
          v66(v65);
          v67 = v52;
          v68 = v137;
          if (v137)
          {
            v69 = v140;
            v120 = v139;
            v122 = v138;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2172B2674(0, *(v136 + 16) + 1, 1, v136);
              v136 = v84;
            }

            v71 = *(v136 + 16);
            v70 = *(v136 + 24);
            if (v71 >= v70 >> 1)
            {
              v85 = OUTLINED_FUNCTION_57(v70);
              sub_2172B2674(v85, v71 + 1, 1, v136);
              v136 = v86;
            }

            *(v136 + 16) = v71 + 1;
            v72 = v136 + 32 * v71;
            *(v72 + 32) = v68;
            *(v72 + 40) = v122;
            *(v72 + 48) = v120;
            *(v72 + 56) = v69;
            v52 = v128;
            __swift_destroy_boxed_opaque_existential_1(v128);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v67);
            v52 = v67;
          }
        }

        else
        {

          v73 = OUTLINED_FUNCTION_40_25();
          sub_2171F0790(v73, &unk_27CB27620, &unk_217778B30);
        }
      }

      ++v51;
    }

    while (v50 != v51);
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  *(v0 + 312) = v136;
  result = sub_217204DD0(*(v0 + 208));
  if (result)
  {
    v87 = result;
    if (result < 1)
    {
LABEL_78:
      __break(1u);
      return result;
    }

    v88 = 0;
    v89 = *(v0 + 208);
    v133 = v89 & 0xC000000000000001;
    v135 = *(*(v0 + 232) + 112);
    v131 = v89 + 32;
    do
    {
      if (v133)
      {
        v90 = MEMORY[0x21CEA2E30](v88, *(v0 + 208));
      }

      else
      {
        v90 = *(v131 + 8 * v88);
      }

      v91 = v135(v90);
      if (v92)
      {
        v93 = v91;
        v94 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = OUTLINED_FUNCTION_269();
          sub_2172AFF2C(v98, v99, v100, v101);
          v55 = v102;
        }

        v96 = *(v55 + 16);
        v95 = *(v55 + 24);
        if (v96 >= v95 >> 1)
        {
          OUTLINED_FUNCTION_57(v95);
          OUTLINED_FUNCTION_161_2();
          sub_2172AFF2C(v103, v104, v105, v106);
          v55 = v107;
        }

        *(v55 + 16) = v96 + 1;
        v97 = v55 + 16 * v96;
        *(v97 + 32) = v93;
        *(v97 + 40) = v94;
      }

      else
      {
      }

      ++v88;
    }

    while (v87 != v88);
  }

  *(v0 + 320) = v55;
  (*(*(v0 + 248) + 16))(*(v0 + 272), *(v0 + 240), *(v0 + 224));
  if (*(v55 + 16) || *(v136 + 16))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 328) = v108;
    *v108 = v109;
    v108[1] = sub_217565234;

    return static MusicLibraryRequest.augment(_:with:legacyModelRelationshipConfigurations:library:)();
  }

  else
  {

    v111 = *(v0 + 304);
    v112 = *(v0 + 256);
    v114 = *(v0 + 224);
    v113 = *(v0 + 232);
    v115 = *(v0 + 184);
    (*(*(v0 + 248) + 32))(v112, *(v0 + 272), v114, v110);
    LegacyModelLibraryAugmentedItemResult.init(augmentedItem:resolvedRelationshipProperties:unresolvedRelationshipProperties:)(v112, MEMORY[0x277D84F90], v111, v114, *(*(v113 + 16) + 8), v115);

    OUTLINED_FUNCTION_0_2();

    return v116();
  }
}

uint64_t sub_217565234()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217565344()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
  (*(v4 + 8))(v3, v5);
  (*(v4 + 32))(v3, v2, v5);
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[39];
    v18 = MEMORY[0x277D84F90];
    sub_217752BF8();
    v8 = v7 + 32;
    do
    {
      v8 += 32;

      sub_217752BC8();
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
      --v6;
    }

    while (v6);

    v10 = v18;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v11 = v0[38];
  v12 = v0[32];
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[23];
  (*(v0[31] + 32))(v12, v0[34], v14, v9);
  LegacyModelLibraryAugmentedItemResult.init(augmentedItem:resolvedRelationshipProperties:unresolvedRelationshipProperties:)(v12, v10, v11, v14, *(*(v13 + 16) + 8), v15);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_120_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_21756550C()
{
  OUTLINED_FUNCTION_209();
  (*(v0[31] + 8))(v0[34], v0[28]);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175655C8()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  *(v1 + 448) = v23;
  *(v1 + 456) = v0;
  *(v1 + 432) = v21;
  *(v1 + 440) = v22;
  *(v1 + 416) = v19;
  *(v1 + 424) = v20;
  *(v1 + 400) = v4;
  *(v1 + 408) = v5;
  *(v1 + 384) = v6;
  *(v1 + 392) = v7;
  *(v1 + 368) = v8;
  *(v1 + 376) = v9;
  *(v1 + 360) = v10;
  OUTLINED_FUNCTION_0();
  *(v1 + 464) = v11;
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = type metadata accessor for LegacyModelLibraryAugmentedItemResult(0, v20, *(*(v22 + 16) + 8), v12);
  OUTLINED_FUNCTION_66_3();
  *(v1 + 488) = v13;
  *(v1 + 496) = swift_task_alloc();
  *(v1 + 608) = *v3;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_217565710()
{
  OUTLINED_FUNCTION_209();
  v1 = v0[54];
  v2 = v0[46];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v3, *(v4 + 8));
  v0[63] = type metadata accessor for PartialMusicAsyncProperty(0, v1, v5, v6);
  v0[64] = type metadata accessor for AnyMusicProperty();
  v0[65] = sub_217752C68();
  v0[66] = sub_217752C68();
  v0[67] = sub_217752C68();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[68] = v7;
  *v7 = v8;
  v7[1] = sub_217565864;

  return sub_2175648E0();
}

uint64_t sub_217565864()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 552) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217565980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v72 = v20;
  v69 = (v20 + 16);
  v70 = sub_217752C68();
  v21 = sub_217751DE8();
  sub_217543868(v21);
  v22 = sub_217752C68();
  sub_217543868(v22);
  v23 = sub_217204DD0(v70);
  if (v23)
  {
    v31 = v23;
    if (v23 < 1)
    {
      __break(1u);
LABEL_22:
      MEMORY[0x282200740](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      return;
    }

    v32 = 0;
    v33 = *(v20 + 440);
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x21CEA2E30](v32, v70);
      }

      else
      {
        v34 = *(v70 + 8 * v32 + 32);
      }

      ++v32;
      PropertyProviderBackedItem.staticPropertyProvider.getter(*(v20 + 424), *(*(v33 + 24) + 8));
      v35 = *(v20 + 80);
      v36 = *(v20 + 88);
      __swift_project_boxed_opaque_existential_1((v20 + 56), v35);
      (*(v36 + 16))(&v71, v34, v35, v36);
      v37 = *(v20 + 40);
      v38 = *(v20 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v69, v37);
      (*(v38 + 24))(&v71, v34, v37, v38);
      __swift_destroy_boxed_opaque_existential_1((v20 + 56));
    }

    while (v31 != v32);
  }

  v39 = *(v20 + 496);
  v40 = *(v20 + 480);
  *(v20 + 336) = sub_217752338();
  if (sub_217204DD0(*(v39 + *(v40 + 40))))
  {
    v41 = *(v20 + 608);
    v42 = *(v20 + 496);
    v43 = *(v20 + 456);
    v44 = *(v20 + 416);
    __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27600 + 1, &qword_21776B050);
    v45 = swift_task_alloc();
    *(v20 + 560) = v45;
    v46 = *(v20 + 440);
    *(v45 + 16) = *(v20 + 424);
    *(v45 + 32) = v46;
    *(v45 + 48) = v42;
    *(v45 + 56) = v43;
    *(v45 + 64) = v41;
    *(v45 + 72) = v44;
    *(v45 + 80) = v69;
    *(v45 + 88) = v20 + 336;
    v47 = swift_task_alloc();
    *(v20 + 568) = v47;
    *v47 = v20;
    v47[1] = sub_217565F20;
    v73 = MEMORY[0x277D84F78] + 8;
    OUTLINED_FUNCTION_42_26();

    goto LABEL_22;
  }

  v48 = *(v20 + 464);
  v49 = *(v20 + 472);
  v50 = *(v20 + 456);
  v51 = *(v20 + 424);
  v52 = *(v20 + 376);
  v53 = *(v20 + 384);
  v54 = *(v20 + 40);
  v55 = *(v20 + 48);
  __swift_project_boxed_opaque_existential_1(v69, v54);
  *(v20 + 160) = v54;
  *(v20 + 168) = *(v55 + 8);
  __swift_allocate_boxed_opaque_existential_0((v20 + 136));
  OUTLINED_FUNCTION_41_0();
  (*(v56 + 16))();
  v57 = *(v53 + 16);
  *(v20 + 120) = v52;
  *(v20 + 128) = v53;
  __swift_allocate_boxed_opaque_existential_0((v20 + 96));
  v57(v20 + 136, v52, v53);
  (*(v48 + 16))(v49, v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_27_36();
    OUTLINED_FUNCTION_66_3();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v20 + 592) = v58;
    *v58 = v59;
    OUTLINED_FUNCTION_4_75(v58);
    OUTLINED_FUNCTION_42_26();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_32_30();
  sub_2171F0790(v20 + 216, &unk_27CB27620, &unk_217778B30);
  v62 = *(v20 + 336);
  *(v20 + 344) = v62;
  sub_217752418();
  OUTLINED_FUNCTION_33();
  swift_getWitnessTable();
  if (sub_217752738())
  {
    v63 = *(v20 + 488);
    v64 = *(v20 + 496);
    v65 = *(v20 + 480);
    sub_2171F3F0C((v20 + 96), *(v20 + 360));

    (*(v63 + 8))(v64, v65, v66);
    __swift_destroy_boxed_opaque_existential_1(v69);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_42_26();

    v67();
  }

  else
  {
    OUTLINED_FUNCTION_713();
    OUTLINED_FUNCTION_36_28();
    *(v20 + 352) = v62;
    OUTLINED_FUNCTION_11_50();
    swift_getWitnessTable();
    sub_217753028();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_419();
    OUTLINED_FUNCTION_570("Fatal error");
    OUTLINED_FUNCTION_42_26();
  }
}

uint64_t sub_217565F20()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 576) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217566024()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[53];
  v5 = v0[47];
  v6 = v0[48];
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v0[20] = v7;
  v0[21] = *(v8 + 8);
  __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  OUTLINED_FUNCTION_41_0();
  (*(v9 + 16))();
  v10 = *(v6 + 16);
  v0[15] = v5;
  v0[16] = v6;
  __swift_allocate_boxed_opaque_existential_0(v0 + 12);
  v10(v0 + 17, v5, v6);
  (*(v2 + 16))(v1, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_27_36();
    OUTLINED_FUNCTION_66_3();
    v21 = v11 + *v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[74] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_4_75(v12);

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_32_30();
  sub_2171F0790((v0 + 27), &unk_27CB27620, &unk_217778B30);
  v14 = v0[42];
  v0[43] = v14;
  sub_217752418();
  OUTLINED_FUNCTION_33();
  swift_getWitnessTable();
  if (sub_217752738())
  {
    v16 = v0[61];
    v15 = v0[62];
    v17 = v0[60];
    sub_2171F3F0C(v0 + 6, v0[45]);

    (*(v16 + 8))(v15, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    OUTLINED_FUNCTION_0_2();

    return v19();
  }

  else
  {
    OUTLINED_FUNCTION_713();
    OUTLINED_FUNCTION_36_28();
    v0[44] = v14;
    OUTLINED_FUNCTION_11_50();
    swift_getWitnessTable();
    sub_217753028();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_419();
    return OUTLINED_FUNCTION_570("Fatal error");
  }
}

uint64_t sub_21756635C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217566458()
{
  OUTLINED_FUNCTION_209();
  if (*(v0 + 320))
  {
    sub_2171F3F0C((v0 + 296), v0 + 256);
  }

  else
  {
    sub_2171FF30C(v0 + 96, v0 + 256);
    if (*(v0 + 320))
    {
      sub_2171F0790(v0 + 296, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_2171F3F0C((v0 + 256), v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  sub_2171F3F0C((v0 + 96), *(v0 + 360));

  (*(v2 + 8))(v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_0_2();

  return v5();
}

uint64_t sub_217566568()
{
  OUTLINED_FUNCTION_30_0();

  OUTLINED_FUNCTION_28_36();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2175665F0()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];

  (*(v2 + 8))(v1, v3, v4);
  OUTLINED_FUNCTION_28_36();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_217566688()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  (*(v2 + 8))(v1, v3, v4);
  OUTLINED_FUNCTION_28_36();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_21756672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 320) = v15;
  *(v8 + 304) = v14;
  *(v8 + 288) = a8;
  *(v8 + 296) = v13;
  *(v8 + 272) = a6;
  *(v8 + 280) = a7;
  *(v8 + 400) = a5;
  *(v8 + 256) = a3;
  *(v8 + 264) = a4;
  *(v8 + 248) = a2;
  v9 = *(v13 - 8);
  *(v8 + 328) = v9;
  *(v8 + 336) = *(v9 + 64);
  *(v8 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 368) = v10;
  *(v8 + 376) = *(v10 - 8);
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2175668B8, 0, 0);
}

uint64_t sub_2175668B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 256);
  v53 = *(v19 + *(type metadata accessor for LegacyModelLibraryAugmentedItemResult(0, *(v18 + 296), *(*(*(v18 + 312) + 16) + 8), a4) + 40));
  v20 = sub_217204DD0(v53);
  v54 = v20;
  if (v20)
  {
    if (v20 < 1)
    {
      __break(1u);
      return MEMORY[0x2822004E8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v28 = 0;
    v50 = *(v18 + 328);
    v51 = **(v18 + 248);
    v52 = (v18 + 296);
    v49 = *(v18 + 400);
    do
    {
      v60 = v28;
      if ((v53 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x21CEA2E30](v28, v53);
      }

      else
      {
        v29 = *(v53 + 8 * v28 + 32);
      }

      v30 = *(v18 + 360);
      v57 = v30;
      v32 = *(v18 + 336);
      v31 = *(v18 + 344);
      v33 = *(v18 + 264);
      v58 = *(v18 + 272);
      v59 = *(v18 + 352);
      v34 = sub_217752538();
      v55 = *v52;
      v56 = *(v18 + 312);
      v35 = *v52;
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v34);
      (*(v50 + 16))(v31, v33, v35);
      v36 = (*(v50 + 80) + 64) & ~*(v50 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = v55;
      *(v37 + 48) = v56;
      (*(v50 + 32))(v37 + v36, v31, v35);
      v38 = v37 + ((v36 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v38 = v29;
      *(v38 + 8) = v49;
      *(v37 + ((v36 + v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v58;
      sub_2172B6210(v57, v59);
      LODWORD(v31) = __swift_getEnumTagSinglePayload(v59, 1, v34);

      v39 = *(v18 + 352);
      if (v31 == 1)
      {
        sub_2171F0790(*(v18 + 352), &qword_27CB24D78, &qword_217759EA0);
      }

      else
      {
        sub_217752528();
        OUTLINED_FUNCTION_41_0();
        (*(v40 + 8))(v39, v34);
      }

      if (*(v37 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v41 = sub_217752498();
        v43 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27600 + 1, &qword_21776B050);
      v44 = v43 | v41;
      if (v43 | v41)
      {
        v44 = v18 + 144;
        *(v18 + 144) = 0;
        *(v18 + 152) = 0;
        *(v18 + 160) = v41;
        *(v18 + 168) = v43;
      }

      v28 = v60 + 1;
      v45 = *(v18 + 360);
      *(v18 + 208) = 1;
      *(v18 + 216) = v44;
      *(v18 + 224) = v51;
      swift_task_create();

      sub_2171F0790(v45, &qword_27CB24D78, &qword_217759EA0);
    }

    while (v54 != v60 + 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27600 + 1, &qword_21776B050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  sub_217752568();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v18 + 392) = v46;
  *v46 = v47;
  OUTLINED_FUNCTION_8_50(v46);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822004E8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_217566D08()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_217566E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_209();
  v19 = *(v18 + 16);
  if (v19)
  {
    *(v18 + 136) = *(v18 + 56);
    *(v18 + 120) = *(v18 + 40);
    *(v18 + 104) = *(v18 + 24);
    if (*(v18 + 128))
    {
      v20 = *(v18 + 280);
      sub_2171F3F0C((v18 + 104), v18 + 64);
      v21 = *(v18 + 88);
      __swift_project_boxed_opaque_existential_1((v18 + 64), v21);
      *(v18 + 200) = v21;
      __swift_allocate_boxed_opaque_existential_0((v18 + 176));
      OUTLINED_FUNCTION_41_0();
      (*(v22 + 16))();
      v23 = *(v20 + 24);
      v24 = *(v20 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v20, v23);
      (*(v24 + 24))(v18 + 176, v19, v23, v24);
      __swift_destroy_boxed_opaque_existential_1((v18 + 64));
    }

    else
    {
      v27 = *(v18 + 304);
      sub_2171F0790(v18 + 104, &unk_27CB28A10, &qword_21776B0A0);
      type metadata accessor for PartialMusicAsyncProperty(0, v27, v28, v29);
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        *(v18 + 240) = v30;
        sub_217752418();
        sub_2177523C8();
      }

      else
      {
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v18 + 392) = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_8_50(v31);
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822004E8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    (*(*(v18 + 376) + 8))(*(v18 + 384), *(v18 + 368));

    OUTLINED_FUNCTION_0_2();

    return v25();
  }
}

uint64_t sub_217567040()
{
  OUTLINED_FUNCTION_209();
  (*(v0[47] + 8))(v0[48], v0[46]);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175670E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a1;
  *(v8 + 64) = a5;
  *(v8 + 88) = a6;
  v14 = (*(v16 + 128) + **(v16 + 128));
  v12 = swift_task_alloc();
  *(v8 + 72) = v12;
  *v12 = v8;
  v12[1] = sub_217567240;

  return v14(v8 + 16, a5, v8 + 88, a7, a8);
}

uint64_t sub_217567240()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21756733C()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_30_30();
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_75(v1);

  return v4(v3);
}

uint64_t sub_2175673CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a3;
  v8 = *(a3 + 8);
  return (*(v5 + 104))(a1, a2, &v7, v4);
}

uint64_t sub_2175674A8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_2172849C8;
  OUTLINED_FUNCTION_120_0();

  return sub_21756672C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_217567598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2172849C8;
  OUTLINED_FUNCTION_120_0();

  return sub_2175670E4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_18_39()
{

  return sub_217752AA8();
}

uint64_t OUTLINED_FUNCTION_34_28(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_25()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_43_20()
{

  return swift_beginAccess();
}

uint64_t CloudSpatialTimingInformation.init(alignmentDurationLimitInMilliseconds:isCloseMatch:isLongAudio:endOffsetInMilliseconds:offsets:spatialLeadingSilenceInMilliseconds:spatialTrailingSilenceInMilliseconds:startOffsetInMilliseconds:stereoLeadingSilenceInMilliseconds:stereoTrailingSilenceInMilliseconds:timeDrift:timeStampInMilliseconds:version:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 9) = a3;
  *(a9 + 10) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6 & 1;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10 & 1;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 72) = a13;
  result = a14 & 1;
  *(a9 + 80) = a14 & 1;
  *(a9 + 88) = a15;
  *(a9 + 96) = a16 & 1;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18 & 1;
  *(a9 + 120) = a19;
  *(a9 + 128) = a20 & 1;
  *(a9 + 136) = a21;
  *(a9 + 144) = a22 & 1;
  *(a9 + 152) = a23;
  *(a9 + 160) = a24 & 1;
  return result;
}

uint64_t static CloudSpatialTimingInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v63 = *(a1 + 56);
  v65 = *(a1 + 64);
  v61 = *(a1 + 72);
  v64 = *(a1 + 80);
  v58 = *(a1 + 88);
  v62 = *(a1 + 96);
  v55 = *(a1 + 104);
  v59 = *(a1 + 112);
  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  v12 = *(a1 + 144);
  v13 = *(a1 + 152);
  v14 = *(a1 + 160);
  v15 = *(a2 + 8);
  v16 = *(a2 + 9);
  v17 = *(a2 + 10);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  v56 = *(a2 + 88);
  v60 = *(a2 + 96);
  v53 = *(a2 + 104);
  v57 = *(a2 + 112);
  v51 = *(a2 + 120);
  v54 = *(a2 + 128);
  v50 = *(a2 + 136);
  v52 = *(a2 + 144);
  v49 = *(a2 + 152);
  v25 = *(a2 + 160);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 2 || ((v16 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }

LABEL_17:
    if (v5)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v4 == *(a2 + 16))
      {
        v27 = *(a2 + 24);
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (!v18)
      {
        return 0;
      }

      v48 = v13;
      v47 = v14;
      v46 = v11;
      v45 = v12;
      v44 = v9;
      v43 = *(a2 + 160);
      sub_217751DE8();
      sub_2172702B8(v6, v18, v28, v29, v30, v31, v32);
      v34 = v33;

      v25 = v43;
      v9 = v44;
      v12 = v45;
      v11 = v46;
      v14 = v47;
      v13 = v48;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    if (v8)
    {
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v19)
      {
        v35 = v20;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    if (v65)
    {
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      if (v63 == v21)
      {
        v36 = v22;
      }

      else
      {
        v36 = 1;
      }

      if (v36)
      {
        return 0;
      }
    }

    if (v64)
    {
      if (!v24)
      {
        return 0;
      }
    }

    else
    {
      if (v61 == v23)
      {
        v37 = v24;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        return 0;
      }
    }

    if (v62)
    {
      if (!v60)
      {
        return 0;
      }
    }

    else
    {
      v38 = v60;
      if (v58 != v56)
      {
        v38 = 1;
      }

      if (v38)
      {
        return 0;
      }
    }

    if (v59)
    {
      if (!v57)
      {
        return 0;
      }
    }

    else
    {
      v39 = v57;
      if (v55 != v53)
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    if (v10)
    {
      if (!v54)
      {
        return 0;
      }
    }

    else
    {
      v40 = v54;
      if (v9 != v51)
      {
        v40 = 1;
      }

      if (v40)
      {
        return 0;
      }
    }

    if (v12)
    {
      if (!v52)
      {
        return 0;
      }
    }

    else
    {
      v41 = v52;
      if (v11 != v50)
      {
        v41 = 1;
      }

      if (v41)
      {
        return 0;
      }
    }

    if (v14)
    {
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v13 == v49)
      {
        v42 = v25;
      }

      else
      {
        v42 = 1;
      }

      if (v42)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v17 != 2 && ((v17 ^ v3) & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_217567C58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000024 && 0x80000002177B0AA0 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4D65736F6C437369 && a2 == 0xEC00000068637461;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7541676E6F4C7369 && a2 == 0xEB000000006F6964;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000002177B0AD0 == a2;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7374657366666FLL && a2 == 0xE700000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000023 && 0x80000002177B0AF0 == a2;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000024 && 0x80000002177B0B20 == a2;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000002177B0B50 == a2;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000022 && 0x80000002177B0B70 == a2;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000023 && 0x80000002177B0BA0 == a2;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x66697244656D6974 && a2 == 0xE900000000000074;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000017 && 0x80000002177AB850 == a2;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_217753058();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_217568058(char a1)
{
  result = 0x4D65736F6C437369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7541676E6F4C7369;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x7374657366666FLL;
      break;
    case 5:
    case 9:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0x66697244656D6974;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t sub_2175681D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217567C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217568200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217568050();
  *a1 = result;
  return result;
}

uint64_t sub_217568228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175686EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217568264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175686EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudSpatialTimingInformation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29748, &qword_217778B80);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = *(v1 + 9);
  v36 = *(v1 + 10);
  v37 = v9;
  v35 = *(v1 + 16);
  v34 = *(v1 + 24);
  v10 = *(v1 + 40);
  v33 = *(v1 + 32);
  v31 = v10;
  v32 = *(v1 + 48);
  v29 = *(v1 + 56);
  v30 = *(v1 + 64);
  v27 = *(v1 + 72);
  v28 = *(v1 + 80);
  v25 = *(v1 + 88);
  v26 = *(v1 + 96);
  v23 = *(v1 + 104);
  v24 = *(v1 + 112);
  v21 = *(v1 + 120);
  v22 = *(v1 + 128);
  v19 = *(v1 + 136);
  v20 = *(v1 + 144);
  v17[1] = *(v1 + 152);
  v18 = *(v1 + 160);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175686EC(v11, v12, v13);
  sub_2177532F8();
  LOBYTE(v40) = 0;
  v14 = v38;
  sub_217752F28();
  if (!v14)
  {
    v15 = v33;
    LOBYTE(v40) = 1;
    OUTLINED_FUNCTION_8_1();
    sub_217752F08();
    LOBYTE(v40) = 2;
    OUTLINED_FUNCTION_8_1();
    sub_217752F08();
    v38 = v5;
    OUTLINED_FUNCTION_3_76(3);
    OUTLINED_FUNCTION_8_1();
    sub_217752F28();
    v40 = v15;
    v39 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29758, &qword_217778B88);
    sub_217569184(&qword_27CB29760, &qword_27CB29768, &protocol conformance descriptor for <A> CloudAttribute<A>, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_8_1();
    sub_217752F38();
    OUTLINED_FUNCTION_3_76(5);
    OUTLINED_FUNCTION_8_1();
    sub_217752F28();
    OUTLINED_FUNCTION_3_76(6);
    OUTLINED_FUNCTION_8_1();
    sub_217752F28();
    OUTLINED_FUNCTION_3_76(7);
    OUTLINED_FUNCTION_8_1();
    sub_217752F28();
    OUTLINED_FUNCTION_3_76(8);
    OUTLINED_FUNCTION_8_1();
    sub_217752F28();
    OUTLINED_FUNCTION_3_76(9);
    OUTLINED_FUNCTION_8_1();
    sub_217752F28();
    OUTLINED_FUNCTION_3_76(10);
    OUTLINED_FUNCTION_8_1();
    sub_217752F28();
    OUTLINED_FUNCTION_3_76(11);
    sub_217752F28();
    OUTLINED_FUNCTION_3_76(12);
    sub_217752F28();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_2175686EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29750;
  if (!qword_27CB29750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29750);
  }

  return result;
}

unint64_t sub_217568740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29778;
  if (!qword_27CB29778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29778);
  }

  return result;
}

unint64_t sub_217568794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29780;
  if (!qword_27CB29780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29780);
  }

  return result;
}

uint64_t CloudSpatialTimingInformation.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 9);
  v20 = v2[2];
  v25 = *(v2 + 10);
  v26 = *(v2 + 24);
  v27 = v2[4];
  v21 = v2[5];
  v22 = v2[7];
  v28 = *(v2 + 48);
  v29 = *(v2 + 64);
  v30 = *(v2 + 80);
  v23 = v2[9];
  v24 = v2[11];
  v31 = *(v2 + 96);
  v5 = v2[13];
  v6 = *(v2 + 112);
  v7 = v2[15];
  v8 = *(v2 + 128);
  v9 = v2[17];
  v10 = *(v2 + 144);
  v19 = v2[19];
  v11 = *(v2 + 160);
  if (*(v2 + 8) == 1)
  {
    sub_217753208();
  }

  else
  {
    v12 = *v2;
    sub_217753208();
    MEMORY[0x21CEA3550](v12);
  }

  if (v4 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v25 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v26)
  {
    sub_217753208();
    if (v27)
    {
LABEL_10:
      sub_217753208();
      sub_21728199C(a1, v27, v13, v14, v15, v16, v17);
      goto LABEL_13;
    }
  }

  else
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v20);
    if (v27)
    {
      goto LABEL_10;
    }
  }

  sub_217753208();
LABEL_13:
  sub_217753208();
  if (!v28)
  {
    MEMORY[0x21CEA3550](v21);
  }

  sub_217753208();
  if (!v29)
  {
    MEMORY[0x21CEA3550](v22);
  }

  sub_217753208();
  if (!v30)
  {
    MEMORY[0x21CEA3550](v23);
  }

  if (v31)
  {
    sub_217753208();
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v24);
    if (!v6)
    {
LABEL_21:
      sub_217753208();
      MEMORY[0x21CEA3550](v5);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  sub_217753208();
  if (!v8)
  {
LABEL_22:
    sub_217753208();
    MEMORY[0x21CEA3550](v7);
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_28:
    sub_217753208();
    if (!v11)
    {
      goto LABEL_24;
    }

    return sub_217753208();
  }

LABEL_27:
  sub_217753208();
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_23:
  sub_217753208();
  MEMORY[0x21CEA3550](v9);
  if (!v11)
  {
LABEL_24:
    sub_217753208();
    return MEMORY[0x21CEA3550](v19);
  }

  return sub_217753208();
}

uint64_t CloudSpatialTimingInformation.hashValue.getter()
{
  sub_2177531E8();
  CloudSpatialTimingInformation.hash(into:)(v1);
  return sub_217753238();
}

void CloudSpatialTimingInformation.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29788, &qword_217778B98);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175686EC(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v45 = a2;
    LOBYTE(v47) = 0;
    OUTLINED_FUNCTION_1_83();
    v9 = sub_217752E48();
    v100 = v10 & 1;
    OUTLINED_FUNCTION_0_91(1);
    v44 = sub_217752E28();
    OUTLINED_FUNCTION_0_91(2);
    v43 = sub_217752E28();
    OUTLINED_FUNCTION_0_91(3);
    v42 = sub_217752E48();
    v97 = v11 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29758, &qword_217778B88);
    LOBYTE(v46[0]) = 4;
    sub_217569184(&qword_27CB29790, &qword_27CB29798, &protocol conformance descriptor for <A> CloudAttribute<A>, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_1_83();
    sub_217752E58();
    v41 = v9;
    v12 = v47;
    OUTLINED_FUNCTION_0_91(5);
    v40 = sub_217752E48();
    v95 = v13 & 1;
    OUTLINED_FUNCTION_0_91(6);
    v39 = sub_217752E48();
    v93 = v14 & 1;
    OUTLINED_FUNCTION_0_91(7);
    v38 = sub_217752E48();
    v91 = v15 & 1;
    OUTLINED_FUNCTION_0_91(8);
    v37 = sub_217752E48();
    v89 = v16 & 1;
    OUTLINED_FUNCTION_0_91(9);
    v17 = sub_217752E48();
    v87 = v18 & 1;
    OUTLINED_FUNCTION_1_83();
    v19 = sub_217752E48();
    v85 = v20 & 1;
    LOBYTE(v47) = 11;
    OUTLINED_FUNCTION_1_83();
    v36 = sub_217752E48();
    v83 = v21 & 1;
    v80 = 12;
    OUTLINED_FUNCTION_1_83();
    v35 = sub_217752E48();
    v33 = v22;
    v23 = OUTLINED_FUNCTION_4_76();
    v24(v23);
    v81 = v33 & 1;
    v46[0] = v41;
    v25 = v100;
    LOBYTE(v46[1]) = v100;
    BYTE1(v46[1]) = v44;
    BYTE2(v46[1]) = v43;
    v46[2] = v42;
    v26 = v97;
    LOBYTE(v46[3]) = v97;
    v46[4] = v12;
    v46[5] = v40;
    v27 = v95;
    LOBYTE(v46[6]) = v95;
    v46[7] = v39;
    v28 = v93;
    LOBYTE(v46[8]) = v93;
    v46[9] = v38;
    v29 = v91;
    LOBYTE(v46[10]) = v91;
    v46[11] = v37;
    v30 = v89;
    LOBYTE(v46[12]) = v89;
    v46[13] = v17;
    v31 = v87;
    LOBYTE(v46[14]) = v87;
    v46[15] = v19;
    v32 = v85;
    LOBYTE(v46[16]) = v85;
    v46[17] = v36;
    v34 = v83;
    LOBYTE(v46[18]) = v83;
    v46[19] = v35;
    LODWORD(v101) = v81;
    LOBYTE(v46[20]) = v81;
    memcpy(v45, v46, 0xA1uLL);
    sub_217569284(v46, &v47);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v47 = v41;
    v48 = v25;
    v49 = v44;
    v50 = v43;
    v51 = v98;
    v52 = v99;
    v53 = v42;
    v54 = v26;
    *v55 = *v96;
    *&v55[3] = *&v96[3];
    v56 = v12;
    v57 = v40;
    v58 = v27;
    *&v59[3] = *&v94[3];
    *v59 = *v94;
    v60 = v39;
    v61 = v28;
    *&v62[3] = *&v92[3];
    *v62 = *v92;
    v63 = v38;
    v64 = v29;
    *v65 = *v90;
    *&v65[3] = *&v90[3];
    v66 = v37;
    v67 = v30;
    *&v68[3] = *&v88[3];
    *v68 = *v88;
    v69 = v17;
    v70 = v31;
    *v71 = *v86;
    *&v71[3] = *&v86[3];
    v72 = v19;
    v73 = v32;
    *v74 = *v84;
    *&v74[3] = *&v84[3];
    v75 = v36;
    v76 = v34;
    *&v77[3] = *&v82[3];
    *v77 = *v82;
    v78 = v35;
    v79 = v101;
    sub_2175692BC(&v47);
  }
}

uint64_t sub_217569148(uint64_t a1)
{
  sub_2177531E8();
  CloudSpatialTimingInformation.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_217569184(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29758, &qword_217778B88);
    sub_21756920C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21756920C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29770, &qword_217778B90);
    v9 = sub_217568740(v4, v5, v6);
    sub_217568794(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2175692F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB297A0;
  if (!qword_27CB297A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB297A0);
  }

  return result;
}

uint64_t sub_21756934C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 161))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2175693A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudSpatialTimingInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudSpatialTimingInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217569598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB297A8;
  if (!qword_27CB297A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB297A8);
  }

  return result;
}

unint64_t sub_2175695F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB297B0;
  if (!qword_27CB297B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB297B0);
  }

  return result;
}

unint64_t sub_217569648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB297B8;
  if (!qword_27CB297B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB297B8);
  }

  return result;
}

uint64_t CloudPlaylist.Collaborator.init(id:attributes:relationships:views:meta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = a6[1];
  *a7 = a1;
  a7[1] = a2;
  v13 = type metadata accessor for CloudPlaylist.Collaborator(0);
  result = sub_217569740(a3, a7 + v13[5]);
  *(a7 + v13[6]) = v9;
  *(a7 + v13[7]) = v10;
  v15 = (a7 + v13[8]);
  *v15 = v11;
  v15[1] = v12;
  return result;
}

uint64_t sub_217569740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CloudPlaylist.Collaborator.Attributes.init(artwork:handle:isPrivate:isVerified:name:url:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memcpy(a9, __src, 0x1B8uLL);
  *(a9 + 440) = a2;
  *(a9 + 448) = a3;
  *(a9 + 456) = a4;
  *(a9 + 457) = a5;
  *(a9 + 464) = a6;
  *(a9 + 472) = a7;
  v17 = a9 + *(type metadata accessor for CloudPlaylist.Collaborator.Attributes(0) + 36);

  return sub_21751AF10(a8, v17);
}

uint64_t CloudPlaylist.Collaborator.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudPlaylist.Collaborator.Attributes.url.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudPlaylist.Collaborator.Attributes(v2);
  return sub_21738C4B0(v1 + *(v3 + 36), v0, &unk_27CB277C0, &qword_217758DC0);
}

BOOL static CloudPlaylist.Collaborator.Attributes.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_111();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  memcpy(v56, v5, sizeof(v56));
  OUTLINED_FUNCTION_11_3();
  memcpy(v18, v19, v20);
  memcpy(v54, v5, 0x1B8uLL);
  OUTLINED_FUNCTION_11_3();
  memcpy(v21, v22, v23);
  memcpy(v58, v5, 0x1B8uLL);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v58) == 1)
  {
    OUTLINED_FUNCTION_25_2(v53);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v53) == 1)
    {
      v48 = v8;
      v49 = v6;
      memcpy(v55, v54, sizeof(v55));
      sub_21738C4B0(v56, v52, &qword_27CB25000, &unk_21776EA00);
      sub_21738C4B0(v57, v52, &qword_27CB25000, &unk_21776EA00);
      sub_2171F0738(v55, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_10;
    }

LABEL_5:
    memcpy(v53, v54, sizeof(v53));
    sub_21738C4B0(v56, v55, &qword_27CB25000, &unk_21776EA00);
    sub_21738C4B0(v57, v55, &qword_27CB25000, &unk_21776EA00);
    v24 = &unk_27CB25008;
    v25 = &unk_21778F850;
    v26 = v53;
LABEL_6:
    sub_2171F0738(v26, v24, v25);
    return 0;
  }

  OUTLINED_FUNCTION_25_2(v52);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v52) == 1)
  {
    goto LABEL_5;
  }

  v48 = v8;
  v49 = v6;
  OUTLINED_FUNCTION_25_2(v50);
  OUTLINED_FUNCTION_25_2(v53);
  memcpy(v55, v54, sizeof(v55));
  sub_21738C4B0(v56, v51, &qword_27CB25000, &unk_21776EA00);
  sub_21738C4B0(v57, v51, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v29 = v28;
  sub_2171F0738(v50, &qword_27CB25000, &unk_21776EA00);
  memcpy(v51, v54, sizeof(v51));
  sub_2171F0738(v51, &qword_27CB25000, &unk_21776EA00);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v30 = *(v5 + 448);
  v31 = *(v3 + 448);
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    v32 = *(v5 + 440) == *(v3 + 440) && v30 == v31;
    if (!v32 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v33 = *(v5 + 456);
  v34 = *(v3 + 456);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v34 == 2 || ((v34 ^ v33) & 1) != 0)
    {
      return result;
    }
  }

  v35 = *(v5 + 457);
  v36 = *(v3 + 457);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }

    goto LABEL_29;
  }

  result = 0;
  if (v36 != 2 && ((v36 ^ v35) & 1) == 0)
  {
LABEL_29:
    v37 = *(v5 + 472);
    v38 = *(v3 + 472);
    if (v37)
    {
      if (!v38)
      {
        return 0;
      }

      v39 = *(v5 + 464) == *(v3 + 464) && v37 == v38;
      if (!v39 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v38)
    {
      return 0;
    }

    v40 = *(type metadata accessor for CloudPlaylist.Collaborator.Attributes(0) + 36);
    v41 = *(v14 + 48);
    sub_21738C4B0(v5 + v40, v17, &unk_27CB277C0, &qword_217758DC0);
    sub_21738C4B0(v3 + v40, &v17[v41], &unk_27CB277C0, &qword_217758DC0);
    v42 = v49;
    if (__swift_getEnumTagSinglePayload(v17, 1, v49) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v17[v41], 1, v42) == 1)
      {
        sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
        return 1;
      }
    }

    else
    {
      sub_21738C4B0(v17, v1, &unk_27CB277C0, &qword_217758DC0);
      if (__swift_getEnumTagSinglePayload(&v17[v41], 1, v42) != 1)
      {
        v43 = v48;
        (*(v48 + 32))(v12, &v17[v41], v42);
        OUTLINED_FUNCTION_0_92();
        sub_21756A5B4(v44, v45, MEMORY[0x277CC9278]);
        v46 = sub_217751F08();
        v47 = *(v43 + 8);
        v47(v12, v42);
        v47(v1, v42);
        sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
        return (v46 & 1) != 0;
      }

      (*(v48 + 8))(v1, v42);
    }

    v24 = &qword_27CB24840;
    v25 = &unk_217758DD0;
    v26 = v17;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_217569F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461766972507369 && a2 == 0xE900000000000065;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_217753058();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21756A12C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 0x7461766972507369;
      break;
    case 3:
      result = 0x6966697265567369;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21756A1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217569F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21756A21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756A560(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21756A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756A560(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylist.Collaborator.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB297D8, &qword_217778DE8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_111();
  v8 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21756A560(v8, v9, v10);
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  OUTLINED_FUNCTION_11_3();
  memcpy(v11, v12, v13);
  OUTLINED_FUNCTION_11_3();
  memcpy(v14, v15, v16);
  sub_21738C4B0(&v21, v19, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8, &protocol conformance descriptor for <A> CloudAttribute<A>);
  OUTLINED_FUNCTION_13_42();
  sub_217752F38();
  if (v0)
  {
    memcpy(v19, v20, sizeof(v19));
    sub_2171F0738(v19, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v19, v20, sizeof(v19));
    sub_2171F0738(v19, &qword_27CB25000, &unk_21776EA00);
    OUTLINED_FUNCTION_13_42();
    sub_217752EF8();
    OUTLINED_FUNCTION_13_42();
    sub_217752F08();
    OUTLINED_FUNCTION_13_42();
    sub_217752F08();
    OUTLINED_FUNCTION_13_42();
    sub_217752EF8();
    type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
    sub_2177516D8();
    OUTLINED_FUNCTION_0_92();
    sub_21756A5B4(v17, v18, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_13_42();
    sub_217752F38();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21756A560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB297E0;
  if (!qword_27CB297E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB297E0);
  }

  return result;
}

uint64_t sub_21756A5B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CloudPlaylist.Collaborator.Attributes.hash(into:)(const void *a1)
{
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_128();
  memcpy(v18, v1, sizeof(v18));
  v12 = *(v1 + 432);
  memcpy(v19, v1, sizeof(v19));
  v20 = v12;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v19) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v17, v18, sizeof(v17));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(a1);
    sub_217751DE8();
    sub_217265A08(a1, v12);
  }

  if (*(v1 + 448))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v1 + 456) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v1 + 457) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v1 + 472))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v13 = type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
  sub_21738C4B0(v1 + *(v13 + 36), v2, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    return OUTLINED_FUNCTION_120();
  }

  (*(v6 + 32))(v10, v2, v4);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_0_92();
  sub_21756A5B4(v15, v16, MEMORY[0x277CC9270]);
  sub_217751EB8();
  return (*(v6 + 8))(v10, v4);
}

void CloudPlaylist.Collaborator.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v53 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB297E8, &qword_217778DF0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v32 = type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v54 = v35 - v34;
  v55 = v28;
  v36 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_21756A560(v36, v37, v38);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    a13 = 0;
    v40 = sub_21751AE98(&qword_280BE42D0, &protocol conformance descriptor for <A> CloudAttribute<A>);
    OUTLINED_FUNCTION_24_2(v39, &a13, v41, v42, v40);
    memcpy(v54, v56, 0x1B8uLL);
    OUTLINED_FUNCTION_2_85(1);
    *(v54 + 440) = sub_217752E18();
    *(v54 + 448) = v43;
    OUTLINED_FUNCTION_2_85(2);
    *(v54 + 456) = sub_217752E28();
    OUTLINED_FUNCTION_2_85(3);
    *(v54 + 457) = sub_217752E28();
    OUTLINED_FUNCTION_2_85(4);
    *(v54 + 464) = sub_217752E18();
    *(v54 + 472) = v44;
    v45 = sub_2177516D8();
    a12 = 5;
    OUTLINED_FUNCTION_0_92();
    v48 = sub_21756A5B4(v46, v47, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_24_2(v45, &a12, v49, v50, v48);
    v51 = OUTLINED_FUNCTION_11_5();
    v52(v51);
    sub_21751AF10(v24, v54 + *(v32 + 36));
    sub_21756C834(v54, v53, type metadata accessor for CloudPlaylist.Collaborator.Attributes);
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_21756C890(v54, type metadata accessor for CloudPlaylist.Collaborator.Attributes);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21756AD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C444(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21756AD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C444(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21756ADF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C498(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21756AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C498(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_21756AEB4()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_170();
}

__n128 CloudPlaylist.Collaborator.Metadata.init(role:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t CloudPlaylist.Collaborator.Metadata.role.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_217751DE8();
}

uint64_t static CloudPlaylist.Collaborator.Metadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_21756B098(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21756B124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21756B098(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21756B150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C4EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21756B18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C4EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylist.Collaborator.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29810, &qword_217778E08);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21756C4EC(v7, v8, v9);
  sub_217751DE8();
  OUTLINED_FUNCTION_22();
  v10 = sub_2177532F8();
  sub_21756C540(v10, v11, v12);
  sub_217752F38();

  (*(v5 + 8))(v0, v3, v13);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPlaylist.Collaborator.Metadata.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_119();

  return sub_217751FF8();
}

uint64_t CloudPlaylist.Collaborator.Metadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudPlaylist.Collaborator.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29828, &qword_217778E10);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21756C4EC(v11, v12, v13);
  OUTLINED_FUNCTION_22();
  v14 = sub_2177532C8();
  if (!v0)
  {
    sub_21756C594(v14, v15, v16);
    sub_217752E58();
    (*(v7 + 8))(v10, v5);
    *v4 = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

void CloudPlaylist.Collaborator.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CloudPlaylist.Collaborator.attributes.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudPlaylist.Collaborator(v2);
  return sub_21756C834(v1 + *(v3 + 20), v0, type metadata accessor for CloudPlaylist.Collaborator.Attributes);
}

uint64_t CloudPlaylist.Collaborator.relationships.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudPlaylist.Collaborator(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t CloudPlaylist.Collaborator.views.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudPlaylist.Collaborator(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudPlaylist.Collaborator.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = (v1 + *(type metadata accessor for CloudPlaylist.Collaborator(v2) + 32));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_2171FB568(v4, v5);
}

uint64_t sub_21756B738()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4B60 != -1)
  {
    swift_once();
  }

  v1 = qword_280BE4B70;
  v2 = byte_280BE4B78;
  *(v0 + 32) = qword_280BE4B68;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB297D0 = v0;

  return sub_217751DE8();
}

BOOL static CloudPlaylist.Collaborator.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudPlaylist.Collaborator(0);
  if (!static CloudPlaylist.Collaborator.Attributes.== infix(_:_:)(a1 + v5[5]) || *(a1 + v5[6]) != *(a2 + v5[6]) || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v6 = v5[8];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = *(v7 + 1);
  v10 = (a2 + v6);
  v12 = *v10;
  v11 = v10[1];
  if (v9 != 1)
  {
    v29[0] = v8;
    v29[1] = v9;
    if (v11 != 1)
    {
      v28[0] = v12;
      v28[1] = v11;
      v21 = OUTLINED_FUNCTION_93();
      sub_2171FB568(v21, v22);
      sub_2171FB568(v12, v11);
      v23 = OUTLINED_FUNCTION_93();
      sub_2171FB568(v23, v24);
      v25 = static CloudPlaylist.Collaborator.Metadata.== infix(_:_:)(v29, v28);

      v26 = OUTLINED_FUNCTION_93();
      sub_217283988(v26, v27);
      return (v25 & 1) != 0;
    }

    v14 = OUTLINED_FUNCTION_93();
    sub_2171FB568(v14, v15);
    sub_2171FB568(v12, 1);
    v16 = OUTLINED_FUNCTION_93();
    sub_2171FB568(v16, v17);

    goto LABEL_15;
  }

  sub_2171FB568(v8, 1);
  if (v11 != 1)
  {
    sub_2171FB568(v12, v11);
LABEL_15:
    v18 = OUTLINED_FUNCTION_93();
    sub_217283988(v18, v19);
    sub_217283988(v12, v11);
    return 0;
  }

  v13 = 1;
  sub_2171FB568(v12, 1);
  sub_217283988(v8, 1);
  return v13;
}

uint64_t sub_21756B9A8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21756BA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21756BA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C5E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21756BACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21756C5E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudPlaylist.Collaborator.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29838, &qword_217778E18);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21756C5E8(v11, v12, v13);
  v14 = sub_2177532F8();
  v15 = v3[1];
  v36 = *v3;
  v37 = v15;
  v35 = 0;
  sub_2172E1B18(v14, v16, v17);
  OUTLINED_FUNCTION_4_5();
  sub_217752F88();
  if (!v2)
  {
    v19 = type metadata accessor for CloudPlaylist.Collaborator(0);
    LOBYTE(v36) = 1;
    type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
    OUTLINED_FUNCTION_8_51();
    sub_21756A5B4(v20, v21, &protocol conformance descriptor for CloudPlaylist.Collaborator.Attributes);
    v22 = sub_217752F88();
    LOBYTE(v36) = *(v3 + v19[6]);
    v35 = 2;
    sub_21756C63C(v22, v23, v24);
    OUTLINED_FUNCTION_4_5();
    v25 = sub_217752F38();
    LOBYTE(v36) = *(v3 + v19[7]);
    v35 = 3;
    sub_21756C690(v25, v26, v27);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v28 = (v3 + v19[8]);
    v29 = v28[1];
    v36 = *v28;
    v37 = v29;
    v35 = 4;
    v30 = sub_2171FB568(v36, v29);
    sub_21756C6E4(v30, v31, v32);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v18.n128_f64[0] = sub_217283988(v36, v37);
  }

  return (*(v7 + 8))(v10, v5, v18);
}

uint64_t CloudPlaylist.Collaborator.hash(into:)(const void *a1)
{
  sub_217751FF8();
  v3 = type metadata accessor for CloudPlaylist.Collaborator(0);
  CloudPlaylist.Collaborator.Attributes.hash(into:)(a1);
  sub_217753208();
  sub_217753208();
  v4 = *(v1 + *(v3 + 32) + 8);
  if (v4 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (!v4)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_21756BE60(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

void CloudPlaylist.Collaborator.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v56 = v26;
  type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29868, &qword_217778E20);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_111();
  v32 = type metadata accessor for CloudPlaylist.Collaborator(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v36 = (v35 - v34);
  v57 = v25;
  v37 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_21756C5E8(v37, v38, v39);
  v40 = sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_2172E1C68(v40, v41, v42);
    sub_217752EA8();
    *v36 = v58;
    LOBYTE(v58) = 1;
    OUTLINED_FUNCTION_8_51();
    sub_21756A5B4(v43, v44, &protocol conformance descriptor for CloudPlaylist.Collaborator.Attributes);
    sub_217752EA8();
    v45 = sub_217569740(v30, v36 + v32[5]);
    sub_21756C738(v45, v46, v47);
    OUTLINED_FUNCTION_5_62();
    v48 = sub_217752E58();
    *(v36 + v32[6]) = 1;
    sub_21756C78C(v48, v49, v50);
    OUTLINED_FUNCTION_5_62();
    v51 = sub_217752E58();
    *(v36 + v32[7]) = 1;
    sub_21756C7E0(v51, v52, v53);
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    v54 = OUTLINED_FUNCTION_10_0();
    v55(v54);
    *(v36 + v32[8]) = v58;
    sub_21756C834(v36, v56, type metadata accessor for CloudPlaylist.Collaborator);
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_21756C890(v36, type metadata accessor for CloudPlaylist.Collaborator);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21756C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudPlaylist.Collaborator.Role.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21756C328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudPlaylist.Collaborator.Role.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_21756C368@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylist.Collaborator.Role.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21756C444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB297F8;
  if (!qword_27CB297F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB297F8);
  }

  return result;
}

unint64_t sub_21756C498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29808;
  if (!qword_27CB29808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29808);
  }

  return result;
}

unint64_t sub_21756C4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29818;
  if (!qword_27CB29818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29818);
  }

  return result;
}

unint64_t sub_21756C540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29820;
  if (!qword_27CB29820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29820);
  }

  return result;
}

unint64_t sub_21756C594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29830;
  if (!qword_27CB29830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29830);
  }

  return result;
}

unint64_t sub_21756C5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29840;
  if (!qword_27CB29840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29840);
  }

  return result;
}

unint64_t sub_21756C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29850;
  if (!qword_27CB29850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29850);
  }

  return result;
}

unint64_t sub_21756C690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29858;
  if (!qword_27CB29858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29858);
  }

  return result;
}

unint64_t sub_21756C6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29860;
  if (!qword_27CB29860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29860);
  }

  return result;
}

unint64_t sub_21756C738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29878;
  if (!qword_27CB29878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29878);
  }

  return result;
}

unint64_t sub_21756C78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29880;
  if (!qword_27CB29880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29880);
  }

  return result;
}

unint64_t sub_21756C7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29888;
  if (!qword_27CB29888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29888);
  }

  return result;
}

uint64_t sub_21756C834(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_21756C890(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21756C934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29898;
  if (!qword_27CB29898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29898);
  }

  return result;
}

unint64_t sub_21756C98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298A0;
  if (!qword_27CB298A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298A0);
  }

  return result;
}

unint64_t sub_21756C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298A8;
  if (!qword_27CB298A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298A8);
  }

  return result;
}

unint64_t sub_21756CB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298B8;
  if (!qword_27CB298B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298B8);
  }

  return result;
}

void sub_21756CBA8(uint64_t a1)
{
  type metadata accessor for CloudPlaylist.Collaborator.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE46C8, &type metadata for CloudPlaylist.Collaborator.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE46D0, &type metadata for CloudPlaylist.Collaborator.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE46C0, &type metadata for CloudPlaylist.Collaborator.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21756CCC4(uint64_t a1)
{
  sub_21751B0BC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2172E2DB0(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *_s12CollaboratorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_21756CED8(_BYTE *result, int a2, int a3)
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

_BYTE *_s12CollaboratorV10AttributesV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21756D084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298C0;
  if (!qword_27CB298C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298C0);
  }

  return result;
}

unint64_t sub_21756D0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298C8;
  if (!qword_27CB298C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298C8);
  }

  return result;
}

unint64_t sub_21756D134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298D0;
  if (!qword_27CB298D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298D0);
  }

  return result;
}

unint64_t sub_21756D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298D8;
  if (!qword_27CB298D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298D8);
  }

  return result;
}

unint64_t sub_21756D1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298E0;
  if (!qword_27CB298E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298E0);
  }

  return result;
}

unint64_t sub_21756D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298E8;
  if (!qword_27CB298E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298E8);
  }

  return result;
}

unint64_t sub_21756D294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298F0;
  if (!qword_27CB298F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298F0);
  }

  return result;
}

unint64_t sub_21756D2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB298F8;
  if (!qword_27CB298F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB298F8);
  }

  return result;
}

unint64_t sub_21756D344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29900;
  if (!qword_27CB29900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29900);
  }

  return result;
}

unint64_t sub_21756D39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29908;
  if (!qword_27CB29908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29908);
  }

  return result;
}

unint64_t sub_21756D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29910;
  if (!qword_27CB29910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29910);
  }

  return result;
}

unint64_t sub_21756D44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29918;
  if (!qword_27CB29918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29918);
  }

  return result;
}

unint64_t sub_21756D4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29920;
  if (!qword_27CB29920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29920);
  }

  return result;
}

unint64_t sub_21756D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29928;
  if (!qword_27CB29928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29928);
  }

  return result;
}

MusicKit::CloudContentRating_optional __swiftcall CloudContentRating.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

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

uint64_t CloudContentRating.rawValue.getter()
{
  if (*v0)
  {
    return 0x746963696C707865;
  }

  else
  {
    return 0x6E61656C63;
  }
}

uint64_t sub_21756D654@<X0>(uint64_t *a1@<X8>)
{
  result = CloudContentRating.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21756D680()
{
  result = qword_27CB29930;
  if (!qword_27CB29930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29938, &qword_217779878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29930);
  }

  return result;
}

unint64_t sub_21756D7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29940;
  if (!qword_27CB29940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29940);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudContentRating(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21756D8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29948;
  if (!qword_27CB29948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29948);
  }

  return result;
}

uint64_t MusicSubscription.Error.errorDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_93(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(&v6);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicSubscription.Error.failureReason.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_93(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(v6);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicSubscription.Error.recoverySuggestion.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_93(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(v6);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicSubscription.Error.helpAnchor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_93(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(v6);
  return OUTLINED_FUNCTION_93();
}

void MusicSubscription.Error.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 3;
  if (v3 < 3)
  {
    v4 = v3;
  }

  *a2 = v4;
}

uint64_t MusicSubscription.Error.rawValue.getter()
{
  OUTLINED_FUNCTION_1_84();
  if (v0 != 1)
  {
    v2 |= 0xEuLL;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21756DB34@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSubscription.Error.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicSubscription.Error.description.getter()
{
  OUTLINED_FUNCTION_1_84();
  v4 = 0x80000002177AA2C0;
  if (v0 != 1)
  {
    v3 |= 0xEuLL;
    v4 = 0x80000002177AA2E0;
  }

  if (v0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x21CEA23B0](v5, v6);

  return 46;
}

void sub_21756DBF8(void *a1@<X0>, char *a2@<X8>)
{
  v10 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  type metadata accessor for ICError(0);
  if (swift_dynamicCast())
  {
    v5 = v9;
    v10 = v9;
    sub_21756DF1C();
    sub_2177515E8();
    switch(v9)
    {
      case 0xFFFFFFFFFFFFE49ELL:
        static MusicAuthorization.currentStatus.getter(&v8);
        switch(v8)
        {
          case 3:

            goto LABEL_5;
          default:
            v7 = sub_217753058();

            if ((v7 & 1) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_6;
        }

      case 0xFFFFFFFFFFFFE49FLL:

LABEL_11:
        v6 = 1;
        goto LABEL_7;
      case 0xFFFFFFFFFFFFE4A1:

        v6 = 2;
        goto LABEL_7;
      default:

        break;
    }
  }

LABEL_5:

LABEL_6:
  v6 = 0;
LABEL_7:
  *a2 = v6;
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21756DF1C()
{
  result = qword_280BE75F8;
  if (!qword_280BE75F8)
  {
    type metadata accessor for ICError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE75F8);
  }

  return result;
}

void CloudResource<>.legacyModelCodableIdentifierSet<A>(for:configuration:)(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v18 = *a1;
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  (*(*(a4 + 16) + 8))(&v21);
  v12 = sub_21721478C();
  CloudResource.id.getter(a2);
  v13 = sub_217751F18();

  (*(a5 + 48))(a3, a5, v14);
  if (v15)
  {
    v16 = sub_217751F18();
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() identifierSetWithIdentifier:v13 modelObjectType:v12 specificLibraryDatabaseID:v16 isPossibleLibraryPersistentID:0 source:2];

  v21 = v18;
  v22 = v11;
  v23 = v10;
  v20 = &unk_28295F998;
  v19 = 4;
  sub_217751DE8();
  sub_2172B6904(v17, &v21, &v20, &v19, a6);

  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;

  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
}

uint64_t static MusicPersonalRecommendation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v97 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v97 - v15;
  v17 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v17 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_21;
  }

  v18 = *(a1 + 24);
  v19 = *(a2 + 24);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 16) == *(a2 + 16) && v18 == v19;
    if (!v20 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v19)
  {
    goto LABEL_21;
  }

  v21 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!v21)
    {
      v98 = v6;

      goto LABEL_24;
    }

LABEL_20:
    sub_217751DE8();

    goto LABEL_21;
  }

  if (!v21)
  {
    goto LABEL_20;
  }

  v98 = v6;
  swift_bridgeObjectRetain_n();
  sub_217751DE8();
  sub_217270404();
  v23 = v22;
  swift_bridgeObjectRelease_n();

  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v26 = *(a1 + 40);
  v27 = *(a2 + 40);
  if (v26 == 10)
  {
    if (v27 != 10)
    {
      goto LABEL_21;
    }
  }

  else if (v26 != v27)
  {
    goto LABEL_21;
  }

  v28 = *(a1 + 56);
  v29 = *(a2 + 56);
  if (v28)
  {
    if (!v29)
    {
      goto LABEL_21;
    }

    v30 = *(a1 + 48) == *(a2 + 48) && v28 == v29;
    if (!v30 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v29)
  {
    goto LABEL_21;
  }

  v31 = *(a1 + 72);
  v32 = *(a2 + 72);
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_21;
    }

    v33 = *(a1 + 64) == *(a2 + 64) && v31 == v32;
    if (!v33 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v32)
  {
    goto LABEL_21;
  }

  v97 = type metadata accessor for MusicPersonalRecommendation(0);
  v34 = v97[10];
  v35 = *(v13 + 48);
  sub_21738C4B0(a1 + v34, v16, &qword_27CB241C0, &qword_217759480);
  sub_21738C4B0(a2 + v34, &v16[v35], &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_73(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_73(&v16[v35]);
    if (v17)
    {
      sub_2171F0738(v16, &qword_27CB241C0, &qword_217759480);
      goto LABEL_56;
    }

LABEL_54:
    sub_2171F0738(v16, &qword_27CB25C10, &unk_217765A50);
    goto LABEL_21;
  }

  sub_21738C4B0(v16, v12, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_73(&v16[v35]);
  if (v36)
  {
    (*(v98 + 8))(v12, v4);
    goto LABEL_54;
  }

  v37 = v98;
  (*(v98 + 32))(v9, &v16[v35], v4);
  OUTLINED_FUNCTION_9_46();
  sub_217572468(v38, v39, MEMORY[0x277CC9598]);
  v40 = sub_217751F08();
  v41 = *(v37 + 8);
  v41(v9, v4);
  v41(v12, v4);
  sub_2171F0738(v16, &qword_27CB241C0, &qword_217759480);
  if ((v40 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_56:
  v42 = v97;
  v43 = v97[11];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 == 7)
  {
    if (v45 != 7)
    {
      goto LABEL_21;
    }
  }

  else if (v44 != v45)
  {
    goto LABEL_21;
  }

  v46 = v97[12];
  v47 = *(a1 + v46);
  v48 = *(a2 + v46);
  if (v47 == 2)
  {
    if (v48 != 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
    if (v48 == 2 || ((v48 ^ v47) & 1) != 0)
    {
      return v24 & 1;
    }
  }

  v49 = v97[13];
  v51 = *(a1 + v49);
  v50 = *(a1 + v49 + 8);
  v52 = *(a1 + v49 + 16);
  v53 = (a2 + v49);
  v55 = *v53;
  v54 = v53[1];
  v56 = v53[2];
  if (v52)
  {
    if (v56)
    {
      v57 = OUTLINED_FUNCTION_8_52();
      sub_2172E1074(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_13_43();
      sub_2172E1074(v60, v61, v62);
      OUTLINED_FUNCTION_8_52();
      v63 = sub_2172AA364();
      v64 = OUTLINED_FUNCTION_13_43();
      sub_2172E141C(v64, v65, v66);
      v67 = OUTLINED_FUNCTION_8_52();
      sub_2172E141C(v67, v68, v69);
      if ((v63 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_72;
    }

LABEL_70:
    v70 = OUTLINED_FUNCTION_8_52();
    sub_2172E1074(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_13_43();
    sub_2172E1074(v73, v74, v75);
    v76 = OUTLINED_FUNCTION_8_52();
    sub_2172E141C(v76, v77, v78);
    v79 = OUTLINED_FUNCTION_13_43();
    sub_2172E141C(v79, v80, v81);
    goto LABEL_21;
  }

  if (v56)
  {
    goto LABEL_70;
  }

  sub_2172E1074(v51, v50, 0);
  sub_2172E1074(v55, v54, 0);
  sub_2172E141C(v51, v50, 0);
LABEL_72:
  v82 = v42[14];
  v83 = *(a1 + v82);
  v84 = *(a2 + v82);
  if (v83 == 2)
  {
    if (v84 == 2)
    {
      goto LABEL_77;
    }

LABEL_21:
    v24 = 0;
    return v24 & 1;
  }

  v24 = 0;
  if (v84 != 2 && ((v84 ^ v83) & 1) == 0)
  {
LABEL_77:
    OUTLINED_FUNCTION_28_37(v42[15]);
    sub_217270BE0();
    if (v85 & 1) != 0 && (sub_21756ED88(a1 + v42[16], a2 + v42[16]))
    {
      v86 = OUTLINED_FUNCTION_28_37(v97[17]);
      sub_217261FB0(v86, v87);
      if (v88)
      {
        v89 = OUTLINED_FUNCTION_28_37(v97[18]);
        sub_217261FB0(v89, v90);
        if (v91)
        {
          v92 = OUTLINED_FUNCTION_28_37(v97[19]);
          sub_217261FB0(v92, v93);
          if (v94)
          {
            v95 = OUTLINED_FUNCTION_28_37(v97[20]);
            sub_217261FB0(v95, v96);
            return v24 & 1;
          }
        }
      }
    }

    goto LABEL_21;
  }

  return v24 & 1;
}

uint64_t MusicPersonalRecommendation._displayKind.getter()
{
  result = OUTLINED_FUNCTION_30_31();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t MusicPersonalRecommendation._metrics.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_30_31() + 52));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_2172E1074(v3, v4, v5);
}

uint64_t MusicPersonalRecommendation.types.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicPersonalRecommendation(0) + 60));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v23 = MEMORY[0x277D84F90];
  sub_217277000(0, v2, 0);
  v4 = 0;
  v3 = v23;
  v5 = v1 + 56;
  while (v4 < *(v1 + 16))
  {
    v6 = dynamic_cast_existential_1_conditional(*(v5 - 24), *(v5 - 24), &protocol descriptor for MusicPersonalRecommendationItem);
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = v6;
    v9 = v7;
    v11 = *(v23 + 16);
    v10 = *(v23 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_217277000(v10 > 1, v11 + 1, 1);
    }

    *(v23 + 16) = v11 + 1;
    v12 = v23 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    ++v4;
    v5 += 32;
    if (v2 == v4)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
  sub_217751DE8();
  sub_217285954(1);
  v14 = sub_217752918();
  v16 = v15;

  MEMORY[0x21CEA23B0](v14, v16, v17);

  sub_217751DE8();
  v22 = sub_2172857F8(1uLL);
  sub_217285A70(v22, v18, v19);
  sub_217751DE8();
  sub_217752048();

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v20);

  MEMORY[0x21CEA23B0](0xD000000000000034, 0x80000002177B0C00, v21);
  result = sub_217752D08();
  __break(1u);
  return result;
}

void *MusicPersonalRecommendation.albums.getter()
{
  v0 = OUTLINED_FUNCTION_30_31();
  v8 = OUTLINED_FUNCTION_18_40(v0, v1, v2, v3, v4, v5, v6, v7, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  if (v39 == 3)
  {
    v17 = OUTLINED_FUNCTION_11_51(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_16_48(v17, v18, v19, v20, v21, v22, v23, v24, v25);
    sub_2177428E4();
    return sub_2171F0738(&v25, &qword_27CB25928, &unk_21775D9A0);
  }

  else if (v39)
  {
    sub_2174AA1AC(MEMORY[0x277D84F90]);
    return sub_21755F790(v38);
  }

  else
  {
    return OUTLINED_FUNCTION_17_39(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  }
}

void *MusicPersonalRecommendation.playlists.getter()
{
  v0 = OUTLINED_FUNCTION_30_31();
  v8 = OUTLINED_FUNCTION_18_40(v0, v1, v2, v3, v4, v5, v6, v7, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  if (v39 == 3)
  {
    v17 = OUTLINED_FUNCTION_11_51(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_16_48(v17, v18, v19, v20, v21, v22, v23, v24, v25);
    sub_217742C00();
    return sub_2171F0738(&v25, &qword_27CB25928, &unk_21775D9A0);
  }

  else if (v39 == 1)
  {
    return OUTLINED_FUNCTION_17_39(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    sub_2174AA0FC(MEMORY[0x277D84F90]);
    return sub_21755F790(v38);
  }
}

void *MusicPersonalRecommendation.stations.getter()
{
  v0 = OUTLINED_FUNCTION_30_31();
  v8 = OUTLINED_FUNCTION_18_40(v0, v1, v2, v3, v4, v5, v6, v7, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  if (v39 == 3)
  {
    v17 = OUTLINED_FUNCTION_11_51(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_16_48(v17, v18, v19, v20, v21, v22, v23, v24, v25);
    sub_217742F20();
    return sub_2171F0738(&v25, &qword_27CB25928, &unk_21775D9A0);
  }

  else if (v39 == 2)
  {
    return OUTLINED_FUNCTION_17_39(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    sub_2174AA04C(MEMORY[0x277D84F90]);
    return sub_21755F790(v38);
  }
}

void *MusicPersonalRecommendation.items.getter()
{
  v0 = OUTLINED_FUNCTION_30_31();
  v8 = OUTLINED_FUNCTION_18_40(v0, v1, v2, v3, v4, v5, v6, v7, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  switch(v56)
  {
    case 1:
      v35 = OUTLINED_FUNCTION_11_51(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      OUTLINED_FUNCTION_16_48(v35, v36, v37, v38, v39, v40, v41, v42, v43);
      sub_2177422CC();
      v24 = &unk_27CB28230;
      v25 = &unk_21775CD50;
      return sub_2171F0738(&v43, v24, v25);
    case 2:
      v26 = OUTLINED_FUNCTION_11_51(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      OUTLINED_FUNCTION_16_48(v26, v27, v28, v29, v30, v31, v32, v33, v43);
      sub_2177425D8();
      v24 = &qword_27CB255B8;
      v25 = &unk_21775D470;
      return sub_2171F0738(&v43, v24, v25);
    case 3:
      return OUTLINED_FUNCTION_17_39(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
    default:
      v16 = OUTLINED_FUNCTION_11_51(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      OUTLINED_FUNCTION_16_48(v16, v17, v18, v19, v20, v21, v22, v23, v43);
      sub_217741FC4();
      v24 = &qword_27CB25388;
      v25 = &unk_21775D410;
      return sub_2171F0738(&v43, v24, v25);
  }
}

uint64_t sub_21756ED88(uint64_t a1, uint64_t a2)
{
  sub_21755F734(a1, v123);
  v3 = sub_21755F734(a2, &v124);
  switch(v123[104])
  {
    case 1:
      v58 = OUTLINED_FUNCTION_37_27(v3, v4, v5, v6, v7, v8, v9, v10, v87, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, *v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
      if (v125 == 1)
      {
        v66 = OUTLINED_FUNCTION_22_38(v58, v59, v60, v61, v62, v63, v64, v65, v93);
        v74 = OUTLINED_FUNCTION_36_29(v66, v67, v68, v69, v70, v71, v72, v73, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
        v39 = sub_21733E390(v74, v75);
        goto LABEL_15;
      }

      v19 = &unk_27CB28230;
      v20 = &unk_21775CD50;
      goto LABEL_13;
    case 2:
      v21 = OUTLINED_FUNCTION_37_27(v3, v4, v5, v6, v7, v8, v9, v10, v87, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, *v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
      if (v125 == 2)
      {
        v29 = OUTLINED_FUNCTION_22_38(v21, v22, v23, v24, v25, v26, v27, v28, v89);
        v37 = OUTLINED_FUNCTION_36_29(v29, v30, v31, v32, v33, v34, v35, v36, v90, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
        v39 = sub_21733E91C(v37, v38);
        goto LABEL_15;
      }

      v19 = &qword_27CB255B8;
      v20 = &unk_21775D470;
      goto LABEL_13;
    case 3:
      v40 = OUTLINED_FUNCTION_37_27(v3, v4, v5, v6, v7, v8, v9, v10, v87, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, *v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
      if (v125 == 3)
      {
        v48 = OUTLINED_FUNCTION_22_38(v40, v41, v42, v43, v44, v45, v46, v47, v91);
        v56 = OUTLINED_FUNCTION_36_29(v48, v49, v50, v51, v52, v53, v54, v55, v92, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
        v39 = sub_21733EAC0(v56, v57);
        goto LABEL_15;
      }

      v19 = &qword_27CB25928;
      v20 = &unk_21775D9A0;
      goto LABEL_13;
    default:
      v11 = OUTLINED_FUNCTION_37_27(v3, v4, v5, v6, v7, v8, v9, v10, v87, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, *v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
      if (v125)
      {
        v19 = &qword_27CB25388;
        v20 = &unk_21775D410;
LABEL_13:
        sub_2171F0738(v109, v19, v20);
        sub_2171F0738(v123, &qword_27CB29BB8, &qword_21777AB48);
        v39 = 0;
      }

      else
      {
        v76 = OUTLINED_FUNCTION_22_38(v11, v12, v13, v14, v15, v16, v17, v18, v88);
        v84 = OUTLINED_FUNCTION_36_29(v76, v77, v78, v79, v80, v81, v82, v83, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
        v39 = sub_21733E33C(v84, v85);
LABEL_15:
        OUTLINED_FUNCTION_169_1(&v96);
        OUTLINED_FUNCTION_169_1(v109);
        sub_21755F790(v123);
      }

      return v39 & 1;
  }
}

uint64_t sub_21756EF4C()
{
  v1 = sub_21755F734(v0, v26);
  switch(v26[104])
  {
    case 1:
      OUTLINED_FUNCTION_21_35(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      MEMORY[0x21CEA3550](1);
      OUTLINED_FUNCTION_156_0();
      _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
      v9 = &unk_27CB28230;
      v10 = &unk_21775CD50;
      break;
    case 2:
      OUTLINED_FUNCTION_21_35(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      MEMORY[0x21CEA3550](2);
      OUTLINED_FUNCTION_156_0();
      _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
      v9 = &qword_27CB255B8;
      v10 = &unk_21775D470;
      break;
    case 3:
      OUTLINED_FUNCTION_21_35(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      MEMORY[0x21CEA3550](3);
      OUTLINED_FUNCTION_156_0();
      _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
      v9 = &qword_27CB25928;
      v10 = &unk_21775D9A0;
      break;
    default:
      OUTLINED_FUNCTION_21_35(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      MEMORY[0x21CEA3550](0);
      OUTLINED_FUNCTION_156_0();
      _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
      v9 = &qword_27CB25388;
      v10 = &unk_21775D410;
      break;
  }

  return sub_2171F0738(v13, v9, v10);
}

uint64_t sub_21756F060()
{
  sub_2177531E8();
  sub_21756EF4C();
  return sub_217753238();
}

uint64_t sub_21756F0AC(uint64_t a1)
{
  sub_2177531E8();
  sub_21756EF4C();
  return sub_217753238();
}

uint64_t MusicPersonalRecommendation.hash(into:)(const void *a1)
{
  v3 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  sub_217751FF8();
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_31_29();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v12 = *(v1 + 32);
  if (v12)
  {
    OUTLINED_FUNCTION_24();
    sub_21727D208(a1, v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v13 = *(v1 + 40);
  if (v13 == 10)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v13);
  }

  if (*(v1 + 56))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_31_29();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (*(v1 + 72))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_31_29();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v14 = type metadata accessor for MusicPersonalRecommendation(0);
  sub_21738C4B0(v1 + v14[10], v11, &qword_27CB241C0, &qword_217759480);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    (*(v5 + 32))(v8, v11, v3);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_9_46();
    sub_217572468(v15, v16, MEMORY[0x277CC9588]);
    sub_217751EB8();
    (*(v5 + 8))(v8, v3);
  }

  v17 = *(v1 + v14[11]);
  if (v17 == 7)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v17);
  }

  if (*(v1 + v14[12]) != 2)
  {
    OUTLINED_FUNCTION_24();
  }

  sub_217753208();
  v18 = v1 + v14[13];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v18 + 8);
    OUTLINED_FUNCTION_24();
    if (v20)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217751DE8();
    sub_217265A08(a1, v19);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (*(v1 + v14[14]) != 2)
  {
    OUTLINED_FUNCTION_24();
  }

  sub_217753208();
  OUTLINED_FUNCTION_27_37();
  sub_21727D7C8();
  sub_21756EF4C();
  v21 = OUTLINED_FUNCTION_27_37();
  sub_217265A08(v21, v22);
  v23 = OUTLINED_FUNCTION_27_37();
  sub_217265A08(v23, v24);
  v25 = OUTLINED_FUNCTION_27_37();
  sub_217265A08(v25, v26);
  v27 = OUTLINED_FUNCTION_27_37();
  return sub_217265A08(v27, v28);
}

uint64_t MusicPersonalRecommendation.hashValue.getter()
{
  sub_2177531E8();
  MusicPersonalRecommendation.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_21756F4B0(uint64_t a1)
{
  sub_2177531E8();
  MusicPersonalRecommendation.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_21756F4EC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPersonalRecommendation.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicPersonalRecommendation.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EEBB4();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_21756F5BC(int a1)
{
  v3 = v1;
  v69 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v13 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v67 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v71 = &v67 - v20;
  strcpy(v74, "\n  id: ");
  BYTE1(v74[1]) = 0;
  WORD1(v74[1]) = 0;
  HIDWORD(v74[1]) = -402653184;
  MEMORY[0x21CEA23B0](*v1, v1[1], v19);
  OUTLINED_FUNCTION_19_29();
  v76 = v74[0];
  v77 = v74[1];
  v21 = v1[7];
  v70 = v1;
  if (v21)
  {
    v22 = v1[6];
    strcpy(v74, ",\n  title: ");
    BYTE5(v74[1]) = 0;
    HIWORD(v74[1]) = -5120;
    MEMORY[0x21CEA23B0](v22);
    OUTLINED_FUNCTION_19_29();
    MEMORY[0x21CEA23B0](v74[0], v74[1]);
    v3 = v70;
  }

  v23 = v3[9];
  if (v23)
  {
    v2 = v3[8];
    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_217752AA8();

    strcpy(v74, ",\n  reason: ");
    HIWORD(v74[1]) = -4864;
    MEMORY[0x21CEA23B0](v2, v23, v24);
    OUTLINED_FUNCTION_19_29();
    MEMORY[0x21CEA23B0](v74[0], v74[1]);
    v3 = v70;
  }

  OUTLINED_FUNCTION_35_26();
  v25 = type metadata accessor for MusicPersonalRecommendation(0);
  sub_21738C4B0(v3 + *(v25 + 40), v12, &qword_27CB241C0, &qword_217759480);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v68 = v25;
  if (EnumTagSinglePayload != 1)
  {
    v2 = v15 + 32;
    v27 = *(v15 + 32);
    v3 = v71;
    v27(v71, v12, v13);
    if (qword_280BE8910 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

  sub_2171F0738(v12, &qword_27CB241C0, &qword_217759480);
  while (1)
  {
    if ((v69 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_29();
      if (sub_2173C2FA0() == 1)
      {
        break;
      }
    }

    strcpy(v74, ",\n  types: [");
    BYTE5(v74[1]) = 0;
    HIWORD(v74[1]) = -5120;
    OUTLINED_FUNCTION_33_29();
    v71 = v38;
    v39 = sub_2173C2FA0();
    v13 = MEMORY[0x277D84F90];
    if (!v39)
    {
LABEL_22:
      v73[0] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
      sub_2173C2F20();
      v52 = sub_217751ED8();
      v54 = v53;

      MEMORY[0x21CEA23B0](v52, v54, v55);

      MEMORY[0x21CEA23B0](93, 0xE100000000000000, v56);
      MEMORY[0x21CEA23B0](v74[0], v74[1]);

      v3 = v70;
      break;
    }

    v15 = v39;
    v72[0] = MEMORY[0x277D84F90];
    sub_217275C90(0, v39 & ~(v39 >> 63), 0, v40, v41, v42, v43);
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v2 = 0;
    v13 = v72[0];
    v27 = (v71 + 56);
    while (v2 < *(v71 + 2))
    {
      v44 = *v27;
      v73[0] = *(v27 - 1);
      v73[1] = v44;
      sub_217751DE8();
      MEMORY[0x21CEA23B0](0x666C65732ELL, 0xE500000000000000);
      v3 = v73[0];
      v9 = v73[1];
      v72[0] = v13;
      v50 = *(v13 + 16);
      v49 = *(v13 + 24);
      v6 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        sub_217275C90(v49 > 1, v50 + 1, 1, v45, v46, v47, v48);
        v13 = v72[0];
      }

      ++v2;
      *(v13 + 16) = v6;
      v51 = v13 + 16 * v50;
      *(v51 + 32) = v3;
      *(v51 + 40) = v9;
      v27 = (v27 + 32);
      if (v15 == v2)
      {
        OUTLINED_FUNCTION_35_26();
        v25 = v68;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
LABEL_8:
    v28 = type metadata accessor for CloudFormatter(0);
    v29 = __swift_project_value_buffer(v28, qword_280BE8918);
    (*(v15 + 16))(v9, v3, v13);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
    sub_21738C4B0(v9, v6, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      OUTLINED_FUNCTION_169_1(v9);
      (*(v15 + 8))(v3, v13);
      OUTLINED_FUNCTION_169_1(v6);
      OUTLINED_FUNCTION_35_26();
    }

    else
    {
      v30 = v67;
      v27(v67, v6, v13);
      v31 = *(v29 + *(v28 + 24));
      v32 = sub_2177517A8();
      v33 = [v31 stringFromDate_];

      v6 = sub_217751F48();
      v2 = v34;

      v35 = *(v15 + 8);
      v35(v30, v13);
      sub_2171F0738(v9, &qword_27CB241C0, &qword_217759480);
      v74[0] = 0;
      v74[1] = 0xE000000000000000;
      sub_217752AA8();

      v74[0] = 0xD000000000000016;
      v74[1] = 0x80000002177B0CB0;
      MEMORY[0x21CEA23B0](v6, v2, v36);
      OUTLINED_FUNCTION_35_26();

      OUTLINED_FUNCTION_19_29();
      MEMORY[0x21CEA23B0](v74[0], v74[1]);

      (v35)(v71, v13, v37);
    }

    v3 = v70;
    v25 = v68;
  }

  sub_21755F734(v3 + *(v25 + 64), v74);
  switch(v75)
  {
    case 1:
      OUTLINED_FUNCTION_15_46();
      OUTLINED_FUNCTION_6_59();
      sub_217598C8C();
      OUTLINED_FUNCTION_14_42();
      v57 = &unk_27CB28230;
      v58 = &unk_21775CD50;
      break;
    case 2:
      OUTLINED_FUNCTION_15_46();
      OUTLINED_FUNCTION_6_59();
      sub_217598F7C();
      OUTLINED_FUNCTION_14_42();
      v57 = &qword_27CB255B8;
      v58 = &unk_21775D470;
      break;
    case 3:
      memcpy(v73, v74, sizeof(v73));
      OUTLINED_FUNCTION_6_59();
      sub_2175993E8();
      v72[0] = v76;
      v72[1] = v77;
      v72[7] = v2 + 10;
      v72[8] = 0x80000002177B0C60;
      v72[5] = 1835365449;
      v72[6] = 0xE400000000000000;
      sub_21733A5C8(v59, v60, v61);
      v62 = sub_217752998();
      v64 = v63;

      v76 = v62;
      v77 = v64;
      sub_21738C4B0(&v73[2], v72, &qword_27CB24188, &dword_217758930);
      v57 = &qword_27CB25928;
      v58 = &unk_21775D9A0;
      break;
    default:
      OUTLINED_FUNCTION_15_46();
      OUTLINED_FUNCTION_6_59();
      sub_21759899C();
      OUTLINED_FUNCTION_14_42();
      v57 = &qword_27CB25388;
      v58 = &unk_21775D410;
      break;
  }

  sub_2171F0738(v73, v57, v58);
  v65 = v72[3];
  OUTLINED_FUNCTION_169_1(v72);
  if (v65)
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  v74[0] = v2 + 6;
  v74[1] = 0x80000002177B0C90;
  MEMORY[0x21CEA23B0](v76, v77);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v66);
}

uint64_t sub_21756FEF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657469726F766166 && a2 == 0xE900000000000073;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002177B0C40 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x536B73417473756ALL && a2 == 0xEB00000000697269;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x59726F466564616DLL && a2 == 0xEA0000000000756FLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F4673646F6F6DLL && a2 == 0xEB00000000756F59;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x61656C655277656ELL && a2 == 0xEB00000000736573;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x796C746E65636572 && a2 == 0xEE00646579616C50;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x694D79616C706572 && a2 == 0xEB00000000736578;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x736E6F6974617473 && a2 == 0xEE00756F59726F46;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x736B636950706F74 && a2 == 0xE800000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_217753058();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_217570244(char a1)
{
  result = 0x657469726F766166;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x536B73417473756ALL;
      break;
    case 3:
      result = 0x59726F466564616DLL;
      break;
    case 4:
      result = 0x726F4673646F6F6DLL;
      break;
    case 5:
      result = 0x61656C655277656ELL;
      break;
    case 6:
      result = 0x796C746E65636572;
      break;
    case 7:
      result = 0x694D79616C706572;
      break;
    case 8:
      result = 0x736E6F6974617473;
      break;
    case 9:
      result = 0x736B636950706F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175703B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21756FEF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175703D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21757023C();
  *a1 = result;
  return result;
}

uint64_t sub_217570400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572084(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21757043C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572084(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217570478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175723CC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175704B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175723CC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175704F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572378(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21757052C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572378(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217570568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572324(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175705A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572324(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175705E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175722D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21757061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175722D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217570658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21757227C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217570694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21757227C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175706D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572228(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21757070C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572228(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217570748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175721D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217570784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175721D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175707C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572180(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175707FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217572180(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217570838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21757212C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217570874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21757212C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175708B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175720D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175708EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175720D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MusicPersonalRecommendation._Kind.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29998, &qword_217779B30);
  OUTLINED_FUNCTION_0_0();
  v89 = v5;
  v90 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_150();
  v88 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299A0, &qword_217779B38);
  OUTLINED_FUNCTION_0_0();
  v86 = v9;
  v87 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v85 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299A8, &qword_217779B40);
  OUTLINED_FUNCTION_0_0();
  v83 = v13;
  v84 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  v82 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299B0, &qword_217779B48);
  OUTLINED_FUNCTION_0_0();
  v80 = v17;
  v81 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_150();
  v79 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299B8, &qword_217779B50);
  OUTLINED_FUNCTION_0_0();
  v77 = v21;
  v78 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_150();
  v76 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299C0, &qword_217779B58);
  OUTLINED_FUNCTION_0_0();
  v74 = v25;
  v75 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_150();
  v73 = v27;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299C8, &qword_217779B60);
  OUTLINED_FUNCTION_0_0();
  v71 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_150();
  v70 = v30;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299D0, &qword_217779B68);
  OUTLINED_FUNCTION_0_0();
  v68 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_150();
  v67 = v33;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299D8, &qword_217779B70);
  OUTLINED_FUNCTION_0_0();
  v65[2] = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = v65 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299E0, &qword_217779B78);
  OUTLINED_FUNCTION_0_0();
  v65[1] = v39;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB299E8, &qword_217779B80);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  v45 = v65 - v44;
  v46 = *v2;
  v47 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217572084(v47, v48, v49);
  v50 = sub_2177532F8();
  v53 = (v42 + 8);
  switch(v46)
  {
    case 1:
      v93[0] = 1;
      sub_217572378(v50, v51, v52);
      v62 = v91;
      sub_217752EE8();
      OUTLINED_FUNCTION_12_1();
      v63(v37, v66);
      return (*v53)(v45, v62);
    case 2:
      v94 = 2;
      sub_217572324(v50, v51, v52);
      v59 = v67;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.JustAskSiriCodingKeys, &v94);
      OUTLINED_FUNCTION_12_1();
      v54 = v59;
      v60 = &v102;
      goto LABEL_7;
    case 3:
      v95 = 3;
      sub_2175722D0(v50, v51, v52);
      v61 = v70;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.MadeForYouCodingKeys, &v95);
      OUTLINED_FUNCTION_12_1();
      v54 = v61;
      v60 = &v103;
LABEL_7:
      v56 = *(v60 - 32);
      break;
    case 4:
      v96 = 4;
      sub_21757227C(v50, v51, v52);
      v57 = v73;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.MoodsForYouCodingKeys, &v96);
      v58 = v74;
      v56 = v75;
      goto LABEL_13;
    case 5:
      v97 = 5;
      sub_217572228(v50, v51, v52);
      v57 = v76;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.NewReleasesCodingKeys, &v97);
      v58 = v77;
      v56 = v78;
      goto LABEL_13;
    case 6:
      v98 = 6;
      sub_2175721D4(v50, v51, v52);
      v57 = v79;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.RecentlyPlayedCodingKeys, &v98);
      v58 = v80;
      v56 = v81;
      goto LABEL_13;
    case 7:
      v99 = 7;
      sub_217572180(v50, v51, v52);
      v57 = v82;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.ReplayMixesCodingKeys, &v99);
      v58 = v83;
      v56 = v84;
      goto LABEL_13;
    case 8:
      v100 = 8;
      sub_21757212C(v50, v51, v52);
      v57 = v85;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.StationsForYouCodingKeys, &v100);
      v58 = v86;
      v56 = v87;
      goto LABEL_13;
    case 9:
      v101 = 9;
      sub_2175720D8(v50, v51, v52);
      v57 = v88;
      OUTLINED_FUNCTION_1_85(&type metadata for MusicPersonalRecommendation._Kind.TopPicksCodingKeys, &v101);
      v58 = v89;
      v56 = v90;
LABEL_13:
      v55 = *(v58 + 8);
      v54 = v57;
      break;
    default:
      v92 = 0;
      sub_2175723CC(v50, v51, v52);
      v37 = v91;
      sub_217752EE8();
      v54 = OUTLINED_FUNCTION_4_77();
      v56 = v38;
      break;
  }

  v55(v54, v56);
  return (*v53)(v45, v37);
}

uint64_t MusicPersonalRecommendation._Kind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v121 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A48, &qword_217779B88);
  OUTLINED_FUNCTION_0_0();
  v114 = v4;
  v115 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v120 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A50, &qword_217779B90);
  OUTLINED_FUNCTION_0_0();
  v112 = v8;
  v113 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v119 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A58, &qword_217779B98);
  OUTLINED_FUNCTION_0_0();
  v110 = v12;
  v111 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_150();
  v124 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A60, &qword_217779BA0);
  OUTLINED_FUNCTION_0_0();
  v108 = v16;
  v109 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_150();
  v123 = v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A68, &qword_217779BA8);
  OUTLINED_FUNCTION_0_0();
  v106 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_150();
  v122 = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A70, &qword_217779BB0);
  OUTLINED_FUNCTION_0_0();
  v104 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_150();
  v118 = v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A78, &qword_217779BB8);
  OUTLINED_FUNCTION_0_0();
  v102 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_150();
  v117 = v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A80, &qword_217779BC0);
  OUTLINED_FUNCTION_0_0();
  v100 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_150();
  v116 = v30;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A88, &qword_217779BC8);
  OUTLINED_FUNCTION_0_0();
  v98 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A90, &qword_217779BD0);
  OUTLINED_FUNCTION_0_0();
  v97 = v36;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v39 = &v91 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29A98, &unk_217779BD8);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  v45 = &v91 - v44;
  v46 = a1[3];
  v125 = a1;
  v47 = __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_217572084(v47, v48, v49);
  v50 = v126;
  sub_2177532C8();
  if (v50)
  {
    goto LABEL_11;
  }

  v94 = v39;
  v93 = v35;
  v95 = v34;
  v51 = v122;
  v52 = v123;
  v53 = v124;
  v126 = v42;
  v54 = v45;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v57 == v58 >> 1)
  {
    v96 = result;
    v59 = v126;
    v60 = v45;
LABEL_10:
    v76 = sub_217752B48();
    swift_allocError();
    v78 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v78 = &type metadata for MusicPersonalRecommendation._Kind;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    OUTLINED_FUNCTION_20_7();
    (*(v59 + 8))(v60, v40);
LABEL_11:
    v79 = v125;
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v92 = 0;
  if (v57 < (v58 >> 1))
  {
    v61 = v40;
    v62 = *(v56 + v57);
    v63 = sub_21733CF64();
    v65 = v64;
    v67 = v66;
    v68 = swift_unknownObjectRelease();
    v96 = v63;
    v60 = v54;
    if (v65 == v67 >> 1)
    {
      v71 = v62;
      v72 = v121;
      v73 = v92;
      switch(v62)
      {
        case 1:
          v128 = 1;
          sub_217572378(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for MusicPersonalRecommendation._Kind.FriendsListeningCodingKeys, &v128);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v137;
          goto LABEL_19;
        case 2:
          v129 = 2;
          sub_217572324(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for MusicPersonalRecommendation._Kind.JustAskSiriCodingKeys, &v129);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v138;
          goto LABEL_19;
        case 3:
          v130 = 3;
          sub_2175722D0(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for MusicPersonalRecommendation._Kind.MadeForYouCodingKeys, &v130);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v139;
          goto LABEL_19;
        case 4:
          v131 = 4;
          sub_21757227C(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for MusicPersonalRecommendation._Kind.MoodsForYouCodingKeys, &v131);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v140;
LABEL_19:
          v83 = *(v82 - 32);
          goto LABEL_25;
        case 5:
          v132 = 5;
          sub_217572228(v68, v69, v70);
          OUTLINED_FUNCTION_3_77(&type metadata for MusicPersonalRecommendation._Kind.NewReleasesCodingKeys, &v132);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v83 = v107;
          goto LABEL_25;
        case 6:
          v133 = 6;
          sub_2175721D4(v68, v69, v70);
          v53 = v52;
          OUTLINED_FUNCTION_3_77(&type metadata for MusicPersonalRecommendation._Kind.RecentlyPlayedCodingKeys, &v133);
          OUTLINED_FUNCTION_20_7();
          v84 = v108;
          v83 = v109;
          goto LABEL_24;
        case 7:
          v134 = 7;
          sub_217572180(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for MusicPersonalRecommendation._Kind.ReplayMixesCodingKeys, &v134);
          OUTLINED_FUNCTION_20_7();
          v84 = v110;
          v83 = v111;
          goto LABEL_24;
        case 8:
          v135 = 8;
          sub_21757212C(v68, v69, v70);
          v53 = v119;
          OUTLINED_FUNCTION_2_86(&type metadata for MusicPersonalRecommendation._Kind.StationsForYouCodingKeys, &v135);
          OUTLINED_FUNCTION_20_7();
          v84 = v112;
          v83 = v113;
          goto LABEL_24;
        case 9:
          v136 = 9;
          sub_2175720D8(v68, v69, v70);
          v53 = v120;
          OUTLINED_FUNCTION_2_86(&type metadata for MusicPersonalRecommendation._Kind.TopPicksCodingKeys, &v136);
          OUTLINED_FUNCTION_20_7();
          v84 = v114;
          v83 = v115;
LABEL_24:
          v81 = *(v84 + 8);
          v80 = v53;
LABEL_25:
          v81(v80, v83);
          v89 = OUTLINED_FUNCTION_12_38();
          v90(v89, v51);
          v79 = v125;
          goto LABEL_26;
        default:
          v127 = 0;
          sub_2175723CC(v68, v69, v70);
          v74 = v94;
          sub_217752DE8();
          if (v73)
          {
            v75 = OUTLINED_FUNCTION_12_38();
            v85(v75, v61);
            OUTLINED_FUNCTION_20_7();
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_20_7();
          OUTLINED_FUNCTION_12_1();
          v86(v74, v93);
          v87 = OUTLINED_FUNCTION_12_38();
          v88(v87, v61);
          v79 = v125;
          v71 = v62;
LABEL_26:
          *v72 = v71;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    v59 = v126;
    v40 = v61;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_217571BA8(uint64_t a1)
{
  sub_2177531E8();
  MusicPersonalRecommendation._DisplayKind.hash(into:)();
  return sub_217753238();
}

uint64_t type metadata accessor for MusicPersonalRecommendation(uint64_t a1)
{
  result = qword_27CB29AB8;
  if (!qword_27CB29AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217571C80()
{
  sub_2177531E8();
  v0 = OUTLINED_FUNCTION_156_0();
  MEMORY[0x21CEA3550](v0);
  return sub_217753238();
}

uint64_t sub_217571CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643C0;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6220;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE6248;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE6250);
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  qword_27CB29950 = v0;

  return sub_217751DE8();
}

uint64_t static MusicPersonalRecommendation.supportedTypeValues.getter()
{
  if (qword_27CB23C88 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

double sub_217571E5C()
{
  v0 = type metadata accessor for MusicPersonalRecommendation(0);
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v1 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD00000000000001BLL, 0x8000000217779EA0, v0, &protocol witness table for MusicPersonalRecommendation, v3);
  os_unfair_lock_unlock(v1[2]);
  result = *v3;
  xmmword_27CB29958 = v3[0];
  xmmword_27CB29968 = v3[1];
  return result;
}

uint64_t static MusicPersonalRecommendation.typeValue.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23C90 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB29958);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_217571F9C()
{
  if (qword_27CB23C90 != -1)
  {
    swift_once();
  }

  xmmword_27CB29978 = xmmword_27CB29958;
  xmmword_27CB29988 = xmmword_27CB29968;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.personalRecommendation.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23C98 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB29978);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

unint64_t sub_217572084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB299F0;
  if (!qword_27CB299F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB299F0);
  }

  return result;
}

unint64_t sub_2175720D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB299F8;
  if (!qword_27CB299F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB299F8);
  }

  return result;
}

unint64_t sub_21757212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A00;
  if (!qword_27CB29A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A00);
  }

  return result;
}

unint64_t sub_217572180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A08;
  if (!qword_27CB29A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A08);
  }

  return result;
}

unint64_t sub_2175721D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A10;
  if (!qword_27CB29A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A10);
  }

  return result;
}

unint64_t sub_217572228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A18;
  if (!qword_27CB29A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A18);
  }

  return result;
}

unint64_t sub_21757227C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A20;
  if (!qword_27CB29A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A20);
  }

  return result;
}

unint64_t sub_2175722D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A28;
  if (!qword_27CB29A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A28);
  }

  return result;
}

unint64_t sub_217572324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A30;
  if (!qword_27CB29A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A30);
  }

  return result;
}

unint64_t sub_217572378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A38;
  if (!qword_27CB29A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A38);
  }

  return result;
}

unint64_t sub_2175723CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29A40;
  if (!qword_27CB29A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29A40);
  }

  return result;
}

uint64_t sub_217572468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2175724B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29AA8;
  if (!qword_27CB29AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29AA8);
  }

  return result;
}

unint64_t sub_21757250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29AB0;
  if (!qword_27CB29AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29AB0);
  }

  return result;
}

uint64_t sub_217572588(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_27CB29AC8, &type metadata for CloudQueryParameters);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_27CB29AD0, &type metadata for MusicPersonalRecommendation._Kind);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_217572758(319);
    v2 = v7;
    if (v8 > 0x3F)
    {
      return v2;
    }

    sub_2172E2E58(319, &qword_27CB29AD8, &type metadata for MusicPersonalRecommendation._DisplayKind);
    v2 = v9;
    if (v10 > 0x3F)
    {
      return v2;
    }

    sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
    v2 = v11;
    if (v12 > 0x3F)
    {
      return v2;
    }

    sub_2175727B0(319);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_217572814(319);
    v2 = v14;
    if (v15 <= 0x3F)
    {
      sub_217351BFC();
      v2 = v16;
      if (v17 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_217572758(uint64_t a1)
{
  if (!qword_280BE99F0)
  {
    sub_2177517D8();
    v1 = sub_2177528F8();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE99F0);
    }
  }
}

void sub_2175727B0(uint64_t a1)
{
  if (!qword_27CB29AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29AE8, &qword_217779EE0);
    v1 = sub_2177528F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB29AE0);
    }
  }
}

void sub_217572814(uint64_t a1)
{
  if (!qword_27CB29AF0)
  {
    v2 = type metadata accessor for MusicPersonalRecommendation(255);
    v4 = type metadata accessor for MusicItemTypeValueCollection(a1, v2, &protocol witness table for MusicPersonalRecommendation, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27CB29AF0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MusicPersonalRecommendation._DisplayKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t _s8ItemKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2175729E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_217572B78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 105))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 104);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217572BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_217572C08(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

unint64_t sub_217572C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29AF8;
  if (!qword_27CB29AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29AF8);
  }

  return result;
}

unint64_t sub_217572CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B00;
  if (!qword_27CB29B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B00);
  }

  return result;
}

unint64_t sub_217572CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B08;
  if (!qword_27CB29B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B08);
  }

  return result;
}

unint64_t sub_217572D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B10;
  if (!qword_27CB29B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B10);
  }

  return result;
}

unint64_t sub_217572DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B18;
  if (!qword_27CB29B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B18);
  }

  return result;
}

unint64_t sub_217572E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B20;
  if (!qword_27CB29B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B20);
  }

  return result;
}

unint64_t sub_217572E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B28;
  if (!qword_27CB29B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B28);
  }

  return result;
}

unint64_t sub_217572EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B30;
  if (!qword_27CB29B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B30);
  }

  return result;
}

unint64_t sub_217572F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B38;
  if (!qword_27CB29B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B38);
  }

  return result;
}

unint64_t sub_217572F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B40;
  if (!qword_27CB29B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B40);
  }

  return result;
}

unint64_t sub_217572FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B48;
  if (!qword_27CB29B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B48);
  }

  return result;
}

unint64_t sub_217573014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B50;
  if (!qword_27CB29B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B50);
  }

  return result;
}

unint64_t sub_21757306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B58;
  if (!qword_27CB29B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B58);
  }

  return result;
}

unint64_t sub_2175730C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B60;
  if (!qword_27CB29B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B60);
  }

  return result;
}

unint64_t sub_21757311C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B68;
  if (!qword_27CB29B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B68);
  }

  return result;
}

unint64_t sub_217573174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B70;
  if (!qword_27CB29B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B70);
  }

  return result;
}

unint64_t sub_2175731CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B78;
  if (!qword_27CB29B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B78);
  }

  return result;
}

unint64_t sub_217573224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B80;
  if (!qword_27CB29B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B80);
  }

  return result;
}

unint64_t sub_21757327C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B88;
  if (!qword_27CB29B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B88);
  }

  return result;
}

unint64_t sub_2175732D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B90;
  if (!qword_27CB29B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B90);
  }

  return result;
}

unint64_t sub_21757332C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29B98;
  if (!qword_27CB29B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29B98);
  }

  return result;
}

unint64_t sub_217573384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29BA0;
  if (!qword_27CB29BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29BA0);
  }

  return result;
}

unint64_t sub_2175733DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29BA8;
  if (!qword_27CB29BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29BA8);
  }

  return result;
}

unint64_t sub_217573434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29BB0;
  if (!qword_27CB29BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29BB0);
  }

  return result;
}

void *OUTLINED_FUNCTION_11_51(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(__srca, a21);
  __src = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_14_42()
{

  return sub_21738C4B0(v3 + 16, v0 + 40, v1, v2);
}

void *OUTLINED_FUNCTION_15_46()
{

  return memcpy((v0 + 112), (v0 + 216), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_18_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  v23 = v21 + *(a1 + 64);

  return sub_21755F734(v23, va);
}

void *OUTLINED_FUNCTION_21_35(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(__srca, a22);
  __src = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x68uLL);
}

void *OUTLINED_FUNCTION_22_38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, (v9 + 112), 0x68uLL);
}

Swift::Int __swiftcall LegacyModelKeepLocalEnabledStatus.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForKeepLocalEnabledState_];
}

uint64_t sub_2175735C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701736302 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_217573774(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = 1701736302;
      break;
    case 2:
      result = 0x64656C62616E65;
      break;
    case 3:
      result = 0x6974616D6F747561;
      break;
    case 4:
      result = 0x656C6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217573814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21757401C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217573850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21757401C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21757388C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217573FC8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175738C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217573FC8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21757390C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175735C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217573934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217573F74(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217573970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217573F74(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175739AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217574118(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175739E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217574118(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217573A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217574070(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217573A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217574070(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217573A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175740C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217573AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175740C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LegacyModelKeepLocalEnabledStatus.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29BC0, &qword_21777AB50);
  OUTLINED_FUNCTION_0_0();
  v55 = v4;
  v56 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v54 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29BC8, &qword_21777AB58);
  OUTLINED_FUNCTION_0_0();
  v52 = v8;
  v53 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v51 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29BD0, &qword_21777AB60);
  OUTLINED_FUNCTION_0_0();
  v49 = v12;
  v50 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_150();
  v48 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29BD8, &qword_21777AB68);
  OUTLINED_FUNCTION_0_0();
  v46 = v16;
  v47 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_150();
  v45 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29BE0, &qword_21777AB70);
  OUTLINED_FUNCTION_0_0();
  v43 = v20;
  v44 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29BE8, &qword_21777AB78);
  OUTLINED_FUNCTION_0_0();
  v26 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - v28;
  v30 = *v1;
  v31 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217573F74(v31, v32, v33);
  v34 = sub_2177532F8();
  v37 = (v26 + 8);
  switch(v30)
  {
    case 1:
      v58 = 1;
      sub_2175740C4(v34, v35, v36);
      v38 = v45;
      OUTLINED_FUNCTION_4_12(&type metadata for LegacyModelKeepLocalEnabledStatus.NoneCodingKeys, &v58);
      v40 = v46;
      v39 = v47;
      goto LABEL_7;
    case 2:
      v59 = 2;
      sub_217574070(v34, v35, v36);
      v38 = v48;
      OUTLINED_FUNCTION_4_12(&type metadata for LegacyModelKeepLocalEnabledStatus.EnabledCodingKeys, &v59);
      v40 = v49;
      v39 = v50;
      goto LABEL_7;
    case 3:
      v60 = 3;
      sub_21757401C(v34, v35, v36);
      v38 = v51;
      OUTLINED_FUNCTION_4_12(&type metadata for LegacyModelKeepLocalEnabledStatus.AutomaticCodingKeys, &v60);
      v40 = v52;
      v39 = v53;
      goto LABEL_7;
    case 4:
      v61 = 4;
      sub_217573FC8(v34, v35, v36);
      v38 = v54;
      OUTLINED_FUNCTION_4_12(&type metadata for LegacyModelKeepLocalEnabledStatus.CancelledCodingKeys, &v61);
      v40 = v55;
      v39 = v56;
LABEL_7:
      (*(v40 + 8))(v38, v39);
      break;
    default:
      v57 = 0;
      sub_217574118(v34, v35, v36);
      sub_217752EE8();
      (*(v43 + 8))(v23, v44);
      break;
  }

  return (*v37)(v29, v24);
}